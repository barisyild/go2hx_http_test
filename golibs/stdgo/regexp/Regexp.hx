package stdgo.regexp;
typedef Regexp_ = stdgo._internal.regexp.Regexp_regexp.Regexp;
typedef RegexpPointer = stdgo._internal.regexp.Regexp_regexppointer.RegexpPointer;
typedef RegexpPointerPointer = stdgo._internal.regexp.Regexp_regexppointerpointer.RegexpPointerPointer;
/**
    * Package regexp implements regular expression search.
    * 
    * The syntax of the regular expressions accepted is the same
    * general syntax used by Perl, Python, and other languages.
    * More precisely, it is the syntax accepted by RE2 and described at
    * https://golang.org/s/re2syntax, except for \C.
    * For an overview of the syntax, run
    * 
    * 	go doc regexp/syntax
    * 
    * The regexp implementation provided by this package is
    * guaranteed to run in time linear in the size of the input.
    * (This is a property not guaranteed by most open source
    * implementations of regular expressions.) For more information
    * about this property, see
    * 
    * 	https://swtch.com/~rsc/regexp/regexp1.html
    * 
    * or any book about automata theory.
    * 
    * All characters are UTF-8-encoded code points.
    * Following utf8.DecodeRune, each byte of an invalid UTF-8 sequence
    * is treated as if it encoded utf8.RuneError (U+FFFD).
    * 
    * There are 16 methods of Regexp that match a regular expression and identify
    * the matched text. Their names are matched by this regular expression:
    * 
    * 	Find(All)?(String)?(Submatch)?(Index)?
    * 
    * If 'All' is present, the routine matches successive non-overlapping
    * matches of the entire expression. Empty matches abutting a preceding
    * match are ignored. The return value is a slice containing the successive
    * return values of the corresponding non-'All' routine. These routines take
    * an extra integer argument, n. If n >= 0, the function returns at most n
    * matches/submatches; otherwise, it returns all of them.
    * 
    * If 'String' is present, the argument is a string; otherwise it is a slice
    * of bytes; return values are adjusted as appropriate.
    * 
    * If 'Submatch' is present, the return value is a slice identifying the
    * successive submatches of the expression. Submatches are matches of
    * parenthesized subexpressions (also known as capturing groups) within the
    * regular expression, numbered from left to right in order of opening
    * parenthesis. Submatch 0 is the match of the entire expression, submatch 1 is
    * the match of the first parenthesized subexpression, and so on.
    * 
    * If 'Index' is present, matches and submatches are identified by byte index
    * pairs within the input string: result[2*n:2*n+2] identifies the indexes of
    * the nth submatch. The pair for n==0 identifies the match of the entire
    * expression. If 'Index' is not present, the match is identified by the text
    * of the match/submatch. If an index is negative or text is nil, it means that
    * subexpression did not match any string in the input. For 'String' versions
    * an empty string means either no match or an empty match.
    * 
    * There is also a subset of the methods that can be applied to text read
    * from a RuneReader:
    * 
    * 	MatchReader, FindReaderIndex, FindReaderSubmatchIndex
    * 
    * This set may grow. Note that regular expression matches may need to
    * examine text beyond the text returned by a match, so the methods that
    * match text from a RuneReader may read arbitrarily far into the input
    * before returning.
    * 
    * (There are a few other methods that do not match this pattern.)
**/
class Regexp {
    /**
        * Compile parses a regular expression and returns, if successful,
        * a Regexp object that can be used to match against text.
        * 
        * When matching against text, the regexp returns a match that
        * begins as early as possible in the input (leftmost), and among those
        * it chooses the one that a backtracking search would have found first.
        * This so-called leftmost-first matching is the same semantics
        * that Perl, Python, and other implementations use, although this
        * package implements it without the expense of backtracking.
        * For POSIX leftmost-longest matching, see CompilePOSIX.
    **/
    static public inline function compile(_expr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>; var _1 : stdgo.Error; } return stdgo._internal.regexp.Regexp_compile.compile(_expr);
    /**
        * CompilePOSIX is like Compile but restricts the regular expression
        * to POSIX ERE (egrep) syntax and changes the match semantics to
        * leftmost-longest.
        * 
        * That is, when matching against text, the regexp returns a match that
        * begins as early as possible in the input (leftmost), and among those
        * it chooses a match that is as long as possible.
        * This so-called leftmost-longest matching is the same semantics
        * that early regular expression implementations used and that POSIX
        * specifies.
        * 
        * However, there can be multiple leftmost-longest matches, with different
        * submatch choices, and here this package diverges from POSIX.
        * Among the possible leftmost-longest matches, this package chooses
        * the one that a backtracking search would have found first, while POSIX
        * specifies that the match be chosen to maximize the length of the first
        * subexpression, then the second, and so on from left to right.
        * The POSIX rule is computationally prohibitive and not even well-defined.
        * See https://swtch.com/~rsc/regexp/regexp2.html#posix for details.
    **/
    static public inline function compilePOSIX(_expr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>; var _1 : stdgo.Error; } return stdgo._internal.regexp.Regexp_compileposix.compilePOSIX(_expr);
    /**
        * MustCompile is like Compile but panics if the expression cannot be parsed.
        * It simplifies safe initialization of global variables holding compiled regular
        * expressions.
    **/
    static public inline function mustCompile(_str:stdgo.GoString):stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> return stdgo._internal.regexp.Regexp_mustcompile.mustCompile(_str);
    /**
        * MustCompilePOSIX is like CompilePOSIX but panics if the expression cannot be parsed.
        * It simplifies safe initialization of global variables holding compiled regular
        * expressions.
    **/
    static public inline function mustCompilePOSIX(_str:stdgo.GoString):stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> return stdgo._internal.regexp.Regexp_mustcompileposix.mustCompilePOSIX(_str);
    /**
        * MatchReader reports whether the text returned by the RuneReader
        * contains any match of the regular expression pattern.
        * More complicated queries need to use Compile and the full Regexp interface.
    **/
    static public inline function matchReader(_pattern:stdgo.GoString, _r:stdgo._internal.io.Io_runereader.RuneReader):{ var _0 : Bool; var _1 : stdgo.Error; } return stdgo._internal.regexp.Regexp_matchreader.matchReader(_pattern, _r);
    /**
        * MatchString reports whether the string s
        * contains any match of the regular expression pattern.
        * More complicated queries need to use Compile and the full Regexp interface.
    **/
    static public inline function matchString(_pattern:stdgo.GoString, _s:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } return stdgo._internal.regexp.Regexp_matchstring.matchString(_pattern, _s);
    /**
        * Match reports whether the byte slice b
        * contains any match of the regular expression pattern.
        * More complicated queries need to use Compile and the full Regexp interface.
    **/
    static public inline function match(_pattern:stdgo.GoString, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Bool; var _1 : stdgo.Error; } return stdgo._internal.regexp.Regexp_match.match(_pattern, _b);
    /**
        * QuoteMeta returns a string that escapes all regular expression metacharacters
        * inside the argument text; the returned string is a regular expression matching
        * the literal text.
    **/
    static public inline function quoteMeta(_s:stdgo.GoString):stdgo.GoString return stdgo._internal.regexp.Regexp_quotemeta.quoteMeta(_s);
}
