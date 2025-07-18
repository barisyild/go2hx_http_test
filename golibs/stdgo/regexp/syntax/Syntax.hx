package stdgo.regexp.syntax;
var errInternalError : ErrorCode = ("regexp/syntax: internal error" : stdgo.GoString);
var errInvalidCharClass : ErrorCode = ("invalid character class" : stdgo.GoString);
var errInvalidCharRange : ErrorCode = ("invalid character class range" : stdgo.GoString);
var errInvalidEscape : ErrorCode = ("invalid escape sequence" : stdgo.GoString);
var errInvalidNamedCapture : ErrorCode = ("invalid named capture" : stdgo.GoString);
var errInvalidPerlOp : ErrorCode = ("invalid or unsupported Perl syntax" : stdgo.GoString);
var errInvalidRepeatOp : ErrorCode = ("invalid nested repetition operator" : stdgo.GoString);
var errInvalidRepeatSize : ErrorCode = ("invalid repeat count" : stdgo.GoString);
var errInvalidUTF8 : ErrorCode = ("invalid UTF-8" : stdgo.GoString);
var errMissingBracket : ErrorCode = ("missing closing ]" : stdgo.GoString);
var errMissingParen : ErrorCode = ("missing closing )" : stdgo.GoString);
var errMissingRepeatArgument : ErrorCode = ("missing argument to repetition operator" : stdgo.GoString);
var errTrailingBackslash : ErrorCode = ("trailing backslash at end of expression" : stdgo.GoString);
var errUnexpectedParen : ErrorCode = ("unexpected )" : stdgo.GoString);
var errNestingDepth : ErrorCode = ("expression nests too deeply" : stdgo.GoString);
var errLarge : ErrorCode = ("expression too large" : stdgo.GoString);
var foldCase : Flags = 1i64;
var literal : Flags = 2i64;
var classNL : Flags = 4i64;
var dotNL : Flags = 8i64;
var oneLine : Flags = 16i64;
var nonGreedy : Flags = 32i64;
var perlX : Flags = 64i64;
var unicodeGroups : Flags = 128i64;
var wasDollar : Flags = 256i64;
var simple : Flags = 512i64;
var matchNL : Flags = 12i64;
var perl : Flags = 212i64;
var pOSIX : Flags = 0i64;
var instAlt : InstOp = 0i64;
var instAltMatch : InstOp = 1i64;
var instCapture : InstOp = 2i64;
var instEmptyWidth : InstOp = 3i64;
var instMatch : InstOp = 4i64;
var instFail : InstOp = 5i64;
var instNop : InstOp = 6i64;
var instRune : InstOp = 7i64;
var instRune1 : InstOp = 8i64;
var instRuneAny : InstOp = 9i64;
var instRuneAnyNotNL : InstOp = 10i64;
var emptyBeginLine : EmptyOp = 1i64;
var emptyEndLine : EmptyOp = 2i64;
var emptyBeginText : EmptyOp = 4i64;
var emptyEndText : EmptyOp = 8i64;
var emptyWordBoundary : EmptyOp = 16i64;
var emptyNoWordBoundary : EmptyOp = 32i64;
var opNoMatch : Op = 1i64;
var opEmptyMatch : Op = 2i64;
var opLiteral : Op = 3i64;
var opCharClass : Op = 4i64;
var opAnyCharNotNL : Op = 5i64;
var opAnyChar : Op = 6i64;
var opBeginLine : Op = 7i64;
var opEndLine : Op = 8i64;
var opBeginText : Op = 9i64;
var opEndText : Op = 10i64;
var opWordBoundary : Op = 11i64;
var opNoWordBoundary : Op = 12i64;
var opCapture : Op = 13i64;
var opStar : Op = 14i64;
var opPlus : Op = 15i64;
var opQuest : Op = 16i64;
var opRepeat : Op = 17i64;
var opConcat : Op = 18i64;
var opAlternate : Op = 19i64;
typedef Error = stdgo._internal.regexp.syntax.Syntax_error.Error;
typedef Prog = stdgo._internal.regexp.syntax.Syntax_prog.Prog;
typedef Inst = stdgo._internal.regexp.syntax.Syntax_inst.Inst;
typedef Regexp = stdgo._internal.regexp.syntax.Syntax_regexp.Regexp;
typedef ErrorCode = stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode;
typedef Flags = stdgo._internal.regexp.syntax.Syntax_flags.Flags;
typedef InstOp = stdgo._internal.regexp.syntax.Syntax_instop.InstOp;
typedef EmptyOp = stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp;
typedef Op = stdgo._internal.regexp.syntax.Syntax_op.Op;
typedef ErrorPointer = stdgo._internal.regexp.syntax.Syntax_errorpointer.ErrorPointer;
typedef ProgPointer = stdgo._internal.regexp.syntax.Syntax_progpointer.ProgPointer;
typedef InstPointer = stdgo._internal.regexp.syntax.Syntax_instpointer.InstPointer;
typedef RegexpPointer = stdgo._internal.regexp.syntax.Syntax_regexppointer.RegexpPointer;
typedef ErrorCodePointer = stdgo._internal.regexp.syntax.Syntax_errorcodepointer.ErrorCodePointer;
typedef FlagsPointer = stdgo._internal.regexp.syntax.Syntax_flagspointer.FlagsPointer;
typedef InstOpPointer = stdgo._internal.regexp.syntax.Syntax_instoppointer.InstOpPointer;
typedef EmptyOpPointer = stdgo._internal.regexp.syntax.Syntax_emptyoppointer.EmptyOpPointer;
typedef OpPointer = stdgo._internal.regexp.syntax.Syntax_oppointer.OpPointer;
typedef ErrorPointerPointer = stdgo._internal.regexp.syntax.Syntax_errorpointerpointer.ErrorPointerPointer;
typedef ProgPointerPointer = stdgo._internal.regexp.syntax.Syntax_progpointerpointer.ProgPointerPointer;
typedef InstPointerPointer = stdgo._internal.regexp.syntax.Syntax_instpointerpointer.InstPointerPointer;
typedef RegexpPointerPointer = stdgo._internal.regexp.syntax.Syntax_regexppointerpointer.RegexpPointerPointer;
typedef ErrorCodePointerPointer = stdgo._internal.regexp.syntax.Syntax_errorcodepointerpointer.ErrorCodePointerPointer;
typedef FlagsPointerPointer = stdgo._internal.regexp.syntax.Syntax_flagspointerpointer.FlagsPointerPointer;
typedef InstOpPointerPointer = stdgo._internal.regexp.syntax.Syntax_instoppointerpointer.InstOpPointerPointer;
typedef EmptyOpPointerPointer = stdgo._internal.regexp.syntax.Syntax_emptyoppointerpointer.EmptyOpPointerPointer;
typedef OpPointerPointer = stdgo._internal.regexp.syntax.Syntax_oppointerpointer.OpPointerPointer;
/**
    * 
    * Package syntax parses regular expressions into parse trees and compiles
    * parse trees into programs. Most clients of regular expressions will use the
    * facilities of package regexp (such as Compile and Match) instead of this package.
    * 
    * # Syntax
    * 
    * The regular expression syntax understood by this package when parsing with the Perl flag is as follows.
    * Parts of the syntax can be disabled by passing alternate flags to Parse.
    * 
    * Single characters:
    * 
    * 	.              any character, possibly including newline (flag s=true)
    * 	[xyz]          character class
    * 	[^xyz]         negated character class
    * 	\d             Perl character class
    * 	\D             negated Perl character class
    * 	[[:alpha:]]    ASCII character class
    * 	[[:^alpha:]]   negated ASCII character class
    * 	\pN            Unicode character class (one-letter name)
    * 	\p{Greek}      Unicode character class
    * 	\PN            negated Unicode character class (one-letter name)
    * 	\P{Greek}      negated Unicode character class
    * 
    * Composites:
    * 
    * 	xy             x followed by y
    * 	x|y            x or y (prefer x)
    * 
    * Repetitions:
    * 
    * 	x*             zero or more x, prefer more
    * 	x+             one or more x, prefer more
    * 	x?             zero or one x, prefer one
    * 	x{n,m}         n or n+1 or ... or m x, prefer more
    * 	x{n,}          n or more x, prefer more
    * 	x{n}           exactly n x
    * 	x*?            zero or more x, prefer fewer
    * 	x+?            one or more x, prefer fewer
    * 	x??            zero or one x, prefer zero
    * 	x{n,m}?        n or n+1 or ... or m x, prefer fewer
    * 	x{n,}?         n or more x, prefer fewer
    * 	x{n}?          exactly n x
    * 
    * Implementation restriction: The counting forms x{n,m}, x{n,}, and x{n}
    * reject forms that create a minimum or maximum repetition count above 1000.
    * Unlimited repetitions are not subject to this restriction.
    * 
    * Grouping:
    * 
    * 	(re)           numbered capturing group (submatch)
    * 	(?P<name>re)   named & numbered capturing group (submatch)
    * 	(?:re)         non-capturing group
    * 	(?flags)       set flags within current group; non-capturing
    * 	(?flags:re)    set flags during re; non-capturing
    * 
    * 	Flag syntax is xyz (set) or -xyz (clear) or xy-z (set xy, clear z). The flags are:
    * 
    * 	i              case-insensitive (default false)
    * 	m              multi-line mode: ^ and $ match begin/end line in addition to begin/end text (default false)
    * 	s              let . match \n (default false)
    * 	U              ungreedy: swap meaning of x* and x*?, x+ and x+?, etc (default false)
    * 
    * Empty strings:
    * 
    * 	^              at beginning of text or line (flag m=true)
    * 	$              at end of text (like \z not \Z) or line (flag m=true)
    * 	\A             at beginning of text
    * 	\b             at ASCII word boundary (\w on one side and \W, \A, or \z on the other)
    * 	\B             not at ASCII word boundary
    * 	\z             at end of text
    * 
    * Escape sequences:
    * 
    * 	\a             bell (== \007)
    * 	\f             form feed (== \014)
    * 	\t             horizontal tab (== \011)
    * 	\n             newline (== \012)
    * 	\r             carriage return (== \015)
    * 	\v             vertical tab character (== \013)
    * 	\*             literal *, for any punctuation character *
    * 	\123           octal character code (up to three digits)
    * 	\x7F           hex character code (exactly two digits)
    * 	\x{10FFFF}     hex character code
    * 	\Q...\E        literal text ... even if ... has punctuation
    * 
    * Character class elements:
    * 
    * 	x              single character
    * 	A-Z            character range (inclusive)
    * 	\d             Perl character class
    * 	[:foo:]        ASCII character class foo
    * 	\p{Foo}        Unicode character class Foo
    * 	\pF            Unicode character class F (one-letter name)
    * 
    * Named character classes as character class elements:
    * 
    * 	[\d]           digits (== \d)
    * 	[^\d]          not digits (== \D)
    * 	[\D]           not digits (== \D)
    * 	[^\D]          not not digits (== \d)
    * 	[[:name:]]     named ASCII class inside character class (== [:name:])
    * 	[^[:name:]]    named ASCII class inside negated character class (== [:^name:])
    * 	[\p{Name}]     named Unicode property inside character class (== \p{Name})
    * 	[^\p{Name}]    named Unicode property inside negated character class (== \P{Name})
    * 
    * Perl character classes (all ASCII-only):
    * 
    * 	\d             digits (== [0-9])
    * 	\D             not digits (== [^0-9])
    * 	\s             whitespace (== [\t\n\f\r ])
    * 	\S             not whitespace (== [^\t\n\f\r ])
    * 	\w             word characters (== [0-9A-Za-z_])
    * 	\W             not word characters (== [^0-9A-Za-z_])
    * 
    * ASCII character classes:
    * 
    * 	[[:alnum:]]    alphanumeric (== [0-9A-Za-z])
    * 	[[:alpha:]]    alphabetic (== [A-Za-z])
    * 	[[:ascii:]]    ASCII (== [\x00-\x7F])
    * 	[[:blank:]]    blank (== [\t ])
    * 	[[:cntrl:]]    control (== [\x00-\x1F\x7F])
    * 	[[:digit:]]    digits (== [0-9])
    * 	[[:graph:]]    graphical (== [!-~] == [A-Za-z0-9!"#$%&'()*+,\-./:;<=>?@[\\\]^_`{|}~])
    * 	[[:lower:]]    lower case (== [a-z])
    * 	[[:print:]]    printable (== [ -~] == [ [:graph:]])
    * 	[[:punct:]]    punctuation (== [!-/:-@[-`{-~])
    * 	[[:space:]]    whitespace (== [\t\n\v\f\r ])
    * 	[[:upper:]]    upper case (== [A-Z])
    * 	[[:word:]]     word characters (== [0-9A-Za-z_])
    * 	[[:xdigit:]]   hex digit (== [0-9A-Fa-f])
    * 
    * Unicode character classes are those in unicode.Categories and unicode.Scripts.
    * 
**/
class Syntax {
    /**
        * Compile compiles the regexp into a program to be executed.
        * The regexp should have been simplified already (returned from re.Simplify).
    **/
    static public inline function compile(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>; var _1 : stdgo.Error; } return stdgo._internal.regexp.syntax.Syntax_compile.compile(_re);
    /**
        * Parse parses a regular expression string s, controlled by the specified
        * Flags, and returns a regular expression parse tree. The syntax is
        * described in the top-level comment.
    **/
    static public inline function parse(_s:stdgo.GoString, _flags:Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } return stdgo._internal.regexp.syntax.Syntax_parse.parse(_s, _flags);
    /**
        * EmptyOpContext returns the zero-width assertions
        * satisfied at the position between the runes r1 and r2.
        * Passing r1 == -1 indicates that the position is
        * at the beginning of the text.
        * Passing r2 == -1 indicates that the position is
        * at the end of the text.
    **/
    static public inline function emptyOpContext(_r1:stdgo.GoInt32, _r2:stdgo.GoInt32):stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp return stdgo._internal.regexp.syntax.Syntax_emptyopcontext.emptyOpContext(_r1, _r2);
    /**
        * IsWordChar reports whether r is considered a “word character”
        * during the evaluation of the \b and \B zero-width assertions.
        * These assertions are ASCII-only: the word characters are [A-Za-z0-9_].
    **/
    static public inline function isWordChar(_r:stdgo.GoInt32):Bool return stdgo._internal.regexp.syntax.Syntax_iswordchar.isWordChar(_r);
}
