package stdgo.internal.bisect;
typedef Writer = stdgo._internal.internal.bisect.Bisect_writer.Writer;
typedef Matcher = stdgo._internal.internal.bisect.Bisect_matcher.Matcher;
typedef MatcherPointer = stdgo._internal.internal.bisect.Bisect_matcherpointer.MatcherPointer;
typedef MatcherPointerPointer = stdgo._internal.internal.bisect.Bisect_matcherpointerpointer.MatcherPointerPointer;
/**
    * Package bisect can be used by compilers and other programs
    * to serve as a target for the bisect debugging tool.
    * See [golang.org/x/tools/cmd/bisect] for details about using the tool.
    * 
    * To be a bisect target, allowing bisect to help determine which of a set of independent
    * changes provokes a failure, a program needs to:
    * 
    *  1. Define a way to accept a change pattern on its command line or in its environment.
    *     The most common mechanism is a command-line flag.
    *     The pattern can be passed to [New] to create a [Matcher], the compiled form of a pattern.
    * 
    *  2. Assign each change a unique ID. One possibility is to use a sequence number,
    *     but the most common mechanism is to hash some kind of identifying information
    *     like the file and line number where the change might be applied.
    *     [Hash] hashes its arguments to compute an ID.
    * 
    *  3. Enable each change that the pattern says should be enabled.
    *     The [Matcher.ShouldEnable] method answers this question for a given change ID.
    * 
    *  4. Print a report identifying each change that the pattern says should be printed.
    *     The [Matcher.ShouldPrint] method answers this question for a given change ID.
    *     The report consists of one more lines on standard error or standard output
    *     that contain a “match marker”. [Marker] returns the match marker for a given ID.
    *     When bisect reports a change as causing the failure, it identifies the change
    *     by printing the report lines with the match marker removed.
    * 
    * # Example Usage
    * 
    * A program starts by defining how it receives the pattern. In this example, we will assume a flag.
    * The next step is to compile the pattern:
    * 
    * 	m, err := bisect.New(patternFlag)
    * 	if err != nil {
    * 		log.Fatal(err)
    * 	}
    * 
    * Then, each time a potential change is considered, the program computes
    * a change ID by hashing identifying information (source file and line, in this case)
    * and then calls m.ShouldPrint and m.ShouldEnable to decide whether to
    * print and enable the change, respectively. The two can return different values
    * depending on whether bisect is trying to find a minimal set of changes to
    * disable or to enable to provoke the failure.
    * 
    * It is usually helpful to write a helper function that accepts the identifying information
    * and then takes care of hashing, printing, and reporting whether the identified change
    * should be enabled. For example, a helper for changes identified by a file and line number
    * would be:
    * 
    * 	func ShouldEnable(file string, line int) {
    * 		h := bisect.Hash(file, line)
    * 		if m.ShouldPrint(h) {
    * 			fmt.Fprintf(os.Stderr, "%v %s:%d\n", bisect.Marker(h), file, line)
    * 		}
    * 		return m.ShouldEnable(h)
    * 	}
    * 
    * Finally, note that New returns a nil Matcher when there is no pattern,
    * meaning that the target is not running under bisect at all,
    * so all changes should be enabled and none should be printed.
    * In that common case, the computation of the hash can be avoided entirely
    * by checking for m == nil first:
    * 
    * 	func ShouldEnable(file string, line int) bool {
    * 		if m == nil {
    * 			return false
    * 		}
    * 		h := bisect.Hash(file, line)
    * 		if m.ShouldPrint(h) {
    * 			fmt.Fprintf(os.Stderr, "%v %s:%d\n", bisect.Marker(h), file, line)
    * 		}
    * 		return m.ShouldEnable(h)
    * 	}
    * 
    * When the identifying information is expensive to format, this code can call
    * [Matcher.MarkerOnly] to find out whether short report lines containing only the
    * marker are permitted for a given run. (Bisect permits such lines when it is
    * still exploring the space of possible changes and will not be showing the
    * output to the user.) If so, the client can choose to print only the marker:
    * 
    * 	func ShouldEnable(file string, line int) bool {
    * 		if m == nil {
    * 			return false
    * 		}
    * 		h := bisect.Hash(file, line)
    * 		if m.ShouldPrint(h) {
    * 			if m.MarkerOnly() {
    * 				bisect.PrintMarker(os.Stderr)
    * 			} else {
    * 				fmt.Fprintf(os.Stderr, "%v %s:%d\n", bisect.Marker(h), file, line)
    * 			}
    * 		}
    * 		return m.ShouldEnable(h)
    * 	}
    * 
    * This specific helper – deciding whether to enable a change identified by
    * file and line number and printing about the change when necessary – is
    * provided by the [Matcher.FileLine] method.
    * 
    * Another common usage is deciding whether to make a change in a function
    * based on the caller's stack, to identify the specific calling contexts that the
    * change breaks. The [Matcher.Stack] method takes care of obtaining the stack,
    * printing it when necessary, and reporting whether to enable the change
    * based on that stack.
    * 
    * # Pattern Syntax
    * 
    * Patterns are generated by the bisect tool and interpreted by [New].
    * Users should not have to understand the patterns except when
    * debugging a target's bisect support or debugging the bisect tool itself.
    * 
    * The pattern syntax selecting a change is a sequence of bit strings
    * separated by + and - operators. Each bit string denotes the set of
    * changes with IDs ending in those bits, + is set addition, - is set subtraction,
    * and the expression is evaluated in the usual left-to-right order.
    * The special binary number “y” denotes the set of all changes,
    * standing in for the empty bit string.
    * In the expression, all the + operators must appear before all the - operators.
    * A leading + adds to an empty set. A leading - subtracts from the set of all
    * possible suffixes.
    * 
    * For example:
    * 
    *   - “01+10” and “+01+10” both denote the set of changes
    *     with IDs ending with the bits 01 or 10.
    * 
    *   - “01+10-1001” denotes the set of changes with IDs
    *     ending with the bits 01 or 10, but excluding those ending in 1001.
    * 
    *   - “-01-1000” and “y-01-1000 both denote the set of all changes
    *     with IDs not ending in 01 nor 1000.
    * 
    *   - “0+1-01+001” is not a valid pattern, because all the + operators do not
    *     appear before all the - operators.
    * 
    * In the syntaxes described so far, the pattern specifies the changes to
    * enable and report. If a pattern is prefixed by a “!”, the meaning
    * changes: the pattern specifies the changes to DISABLE and report. This
    * mode of operation is needed when a program passes with all changes
    * enabled but fails with no changes enabled. In this case, bisect
    * searches for minimal sets of changes to disable.
    * Put another way, the leading “!” inverts the result from [Matcher.ShouldEnable]
    * but does not invert the result from [Matcher.ShouldPrint].
    * 
    * As a convenience for manual debugging, “n” is an alias for “!y”,
    * meaning to disable and report all changes.
    * 
    * Finally, a leading “v” in the pattern indicates that the reports will be shown
    * to the user of bisect to describe the changes involved in a failure.
    * At the API level, the leading “v” causes [Matcher.Visible] to return true.
    * See the next section for details.
    * 
    * # Match Reports
    * 
    * The target program must enable only those changed matched
    * by the pattern, and it must print a match report for each such change.
    * A match report consists of one or more lines of text that will be
    * printed by the bisect tool to describe a change implicated in causing
    * a failure. Each line in the report for a given change must contain a
    * match marker with that change ID, as returned by [Marker].
    * The markers are elided when displaying the lines to the user.
    * 
    * A match marker has the form “[bisect-match 0x1234]” where
    * 0x1234 is the change ID in hexadecimal.
    * An alternate form is “[bisect-match 010101]”, giving the change ID in binary.
    * 
    * When [Matcher.Visible] returns false, the match reports are only
    * being processed by bisect to learn the set of enabled changes,
    * not shown to the user, meaning that each report can be a match
    * marker on a line by itself, eliding the usual textual description.
    * When the textual description is expensive to compute,
    * checking [Matcher.Visible] can help the avoid that expense
    * in most runs.
**/
class Bisect {
    /**
        * New creates and returns a new Matcher implementing the given pattern.
        * The pattern syntax is defined in the package doc comment.
        * 
        * In addition to the pattern syntax syntax, New("") returns nil, nil.
        * The nil *Matcher is valid for use: it returns true from ShouldEnable
        * and false from ShouldPrint for all changes. Callers can avoid calling
        * [Hash], [Matcher.ShouldEnable], and [Matcher.ShouldPrint] entirely
        * when they recognize the nil Matcher.
    **/
    static public inline function new_(_pattern:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_matcher.Matcher>; var _1 : stdgo.Error; } return stdgo._internal.internal.bisect.Bisect_new_.new_(_pattern);
    /**
        * PrintMarker prints to w a one-line report containing only the marker for h.
        * It is appropriate to use when [Matcher.ShouldPrint] and [Matcher.MarkerOnly] both return true.
    **/
    static public inline function printMarker(_w:Writer, _h:stdgo.GoUInt64):stdgo.Error return stdgo._internal.internal.bisect.Bisect_printmarker.printMarker(_w, _h);
    /**
        * Marker returns the match marker text to use on any line reporting details
        * about a match of the given ID.
        * It always returns the hexadecimal format.
    **/
    static public inline function marker(_id:stdgo.GoUInt64):stdgo.GoString return stdgo._internal.internal.bisect.Bisect_marker.marker(_id);
    /**
        * AppendMarker is like [Marker] but appends the marker to dst.
    **/
    static public inline function appendMarker(_dst:stdgo.Slice<stdgo.GoUInt8>, _id:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.internal.bisect.Bisect_appendmarker.appendMarker(_dst, _id);
    /**
        * CutMarker finds the first match marker in line and removes it,
        * returning the shortened line (with the marker removed),
        * the ID from the match marker,
        * and whether a marker was found at all.
        * If there is no marker, CutMarker returns line, 0, false.
    **/
    static public inline function cutMarker(_line:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoUInt64; var _2 : Bool; } return stdgo._internal.internal.bisect.Bisect_cutmarker.cutMarker(_line);
    /**
        * Hash computes a hash of the data arguments,
        * each of which must be of type string, byte, int, uint, int32, uint32, int64, uint64, uintptr, or a slice of one of those types.
    **/
    static public inline function hash(_data:haxe.Rest<stdgo.AnyInterface>):stdgo.GoUInt64 return stdgo._internal.internal.bisect.Bisect_hash.hash(...[for (i in _data) i]);
}
