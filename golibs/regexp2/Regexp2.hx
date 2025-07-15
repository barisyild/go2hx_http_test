package regexp2;
var defaultClockPeriod : stdgo._internal.time.Time_duration.Duration = 100000000i64;
var none : RegexOptions = 0i64;
var ignoreCase : stdgo.GoUInt64 = 1i64;
var multiline : stdgo.GoUInt64 = 2i64;
var explicitCapture : stdgo.GoUInt64 = 4i64;
var compiled : stdgo.GoUInt64 = 8i64;
var singleline : stdgo.GoUInt64 = 16i64;
var ignorePatternWhitespace : stdgo.GoUInt64 = 32i64;
var rightToLeft : stdgo.GoUInt64 = 64i64;
var debug : stdgo.GoUInt64 = 128i64;
var eCMAScript : stdgo.GoUInt64 = 256i64;
var rE2 : stdgo.GoUInt64 = 512i64;
var unicode : stdgo.GoUInt64 = 1024i64;
var defaultMatchTimeout(get, set) : stdgo._internal.time.Time_duration.Duration;
private function get_defaultMatchTimeout():stdgo._internal.time.Time_duration.Duration return _internal.githubdotcom.dlclark.regexp2.Regexp2_defaultmatchtimeout.defaultMatchTimeout;
private function set_defaultMatchTimeout(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
    _internal.githubdotcom.dlclark.regexp2.Regexp2_defaultmatchtimeout.defaultMatchTimeout = v;
    return v;
}
var defaultUnmarshalOptions(get, set) : RegexOptions;
private function get_defaultUnmarshalOptions():RegexOptions return _internal.githubdotcom.dlclark.regexp2.Regexp2_defaultunmarshaloptions.defaultUnmarshalOptions;
private function set_defaultUnmarshalOptions(v:RegexOptions):_internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions {
    _internal.githubdotcom.dlclark.regexp2.Regexp2_defaultunmarshaloptions.defaultUnmarshalOptions = v;
    return v;
}
typedef Match = _internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match;
typedef Group = _internal.githubdotcom.dlclark.regexp2.Regexp2_group.Group;
typedef Capture = _internal.githubdotcom.dlclark.regexp2.Regexp2_capture.Capture;
typedef Regexp = _internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp;
typedef RegexOptions = _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions;
typedef MatchEvaluator = _internal.githubdotcom.dlclark.regexp2.Regexp2_matchevaluator.MatchEvaluator;
typedef MatchPointer = _internal.githubdotcom.dlclark.regexp2.Regexp2_matchpointer.MatchPointer;
typedef GroupPointer = _internal.githubdotcom.dlclark.regexp2.Regexp2_grouppointer.GroupPointer;
typedef CapturePointer = _internal.githubdotcom.dlclark.regexp2.Regexp2_capturepointer.CapturePointer;
typedef RegexpPointer = _internal.githubdotcom.dlclark.regexp2.Regexp2_regexppointer.RegexpPointer;
typedef RegexOptionsPointer = _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptionspointer.RegexOptionsPointer;
typedef MatchEvaluatorPointer = _internal.githubdotcom.dlclark.regexp2.Regexp2_matchevaluatorpointer.MatchEvaluatorPointer;
typedef MatchPointerPointer = _internal.githubdotcom.dlclark.regexp2.Regexp2_matchpointerpointer.MatchPointerPointer;
typedef GroupPointerPointer = _internal.githubdotcom.dlclark.regexp2.Regexp2_grouppointerpointer.GroupPointerPointer;
typedef CapturePointerPointer = _internal.githubdotcom.dlclark.regexp2.Regexp2_capturepointerpointer.CapturePointerPointer;
typedef RegexpPointerPointer = _internal.githubdotcom.dlclark.regexp2.Regexp2_regexppointerpointer.RegexpPointerPointer;
typedef RegexOptionsPointerPointer = _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptionspointerpointer.RegexOptionsPointerPointer;
typedef MatchEvaluatorPointerPointer = _internal.githubdotcom.dlclark.regexp2.Regexp2_matchevaluatorpointerpointer.MatchEvaluatorPointerPointer;
/**
    * 
    * Package regexp2 is a regexp package that has an interface similar to Go's framework regexp engine but uses a
    * more feature full regex engine behind the scenes.
    * 
    * It doesn't have constant time guarantees, but it allows backtracking and is compatible with Perl5 and .NET.
    * You'll likely be better off with the RE2 engine from the regexp package and should only use this if you
    * need to write very complex patterns or require compatibility with .NET.
    * 
**/
class Regexp2 {
    static public inline function testDeadline(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testdeadline.testDeadline(_t);
    static public inline function testStopTimeoutClock(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_teststoptimeoutclock.testStopTimeoutClock(_t);
    static public inline function testIncorrectDeadline(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testincorrectdeadline.testIncorrectDeadline(_t);
    static public inline function testIncorrectTimeoutError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testincorrecttimeouterror.testIncorrectTimeoutError(_t);
    /**
        * Compile parses a regular expression and returns, if successful,
        * a Regexp object that can be used to match against text.
    **/
    static public inline function compile(_expr:stdgo.GoString, _opt:RegexOptions):{ var _0 : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>; var _1 : stdgo.Error; } return _internal.githubdotcom.dlclark.regexp2.Regexp2_compile.compile(_expr, _opt);
    /**
        * MustCompile is like Compile but panics if the expression cannot be parsed.
        * It simplifies safe initialization of global variables holding compiled regular
        * expressions.
    **/
    static public inline function mustCompile(_str:stdgo.GoString, _opt:RegexOptions):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> return _internal.githubdotcom.dlclark.regexp2.Regexp2_mustcompile.mustCompile(_str, _opt);
    /**
        * Escape adds backslashes to any special characters in the input string
    **/
    static public inline function escape(_input:stdgo.GoString):stdgo.GoString return _internal.githubdotcom.dlclark.regexp2.Regexp2_escape.escape(_input);
    /**
        * Unescape removes any backslashes from previously-escaped special characters in the input string
    **/
    static public inline function unescape(_input:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return _internal.githubdotcom.dlclark.regexp2.Regexp2_unescape.unescape(_input);
    /**
        * SetTimeoutPeriod is a debug function that sets the frequency of the timeout goroutine's sleep cycle.
        * Defaults to 100ms. The only benefit of setting this lower is that the 1 background goroutine that manages
        * timeouts may exit slightly sooner after all the timeouts have expired. See Github issue #63
    **/
    static public inline function setTimeoutCheckPeriod(_d:stdgo._internal.time.Time_duration.Duration):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_settimeoutcheckperiod.setTimeoutCheckPeriod(_d);
    /**
        * StopTimeoutClock should only be used in unit tests to prevent the timeout clock goroutine
        * from appearing like a leaking goroutine
    **/
    static public inline function stopTimeoutClock():Void _internal.githubdotcom.dlclark.regexp2.Regexp2_stoptimeoutclock.stopTimeoutClock();
    static public inline function testMono_Basics(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testmono_basics.testMono_Basics(_t);
    static public inline function testIgnoreCase_Simple(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testignorecase_simple.testIgnoreCase_Simple(_t);
    static public inline function testIgnoreCase_Inline(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testignorecase_inline.testIgnoreCase_Inline(_t);
    static public inline function testIgnoreCase_Revert(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testignorecase_revert.testIgnoreCase_Revert(_t);
    static public inline function testPcre_Basics(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testpcre_basics.testPcre_Basics(_t);
    static public inline function benchmarkLiteral(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkliteral.benchmarkLiteral(_b);
    static public inline function benchmarkNotLiteral(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarknotliteral.benchmarkNotLiteral(_b);
    static public inline function benchmarkMatchClass(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatchclass.benchmarkMatchClass(_b);
    static public inline function benchmarkMatchClass_InRange(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatchclass_inrange.benchmarkMatchClass_InRange(_b);
    /**
        * 
        * func BenchmarkReplaceAll(b *testing.B) {
        * 
        * 	x := "abcdefghijklmnopqrstuvwxyz"
        * 	b.StopTimer()
        * 	re := MustCompile("[cjrw]", 0)
        * 	b.StartTimer()
        * 	for i := 0; i < b.N; i++ {
        * 		re.ReplaceAllString(x, "")
        * 	}
        * 
        * }
        * 
    **/
    static public inline function benchmarkAnchoredLiteralShortNonMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkanchoredliteralshortnonmatch.benchmarkAnchoredLiteralShortNonMatch(_b);
    static public inline function benchmarkAnchoredLiteralLongNonMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkanchoredliterallongnonmatch.benchmarkAnchoredLiteralLongNonMatch(_b);
    static public inline function benchmarkAnchoredShortMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkanchoredshortmatch.benchmarkAnchoredShortMatch(_b);
    static public inline function benchmarkAnchoredLongMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkanchoredlongmatch.benchmarkAnchoredLongMatch(_b);
    static public inline function benchmarkOnePassShortA(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkonepassshorta.benchmarkOnePassShortA(_b);
    static public inline function benchmarkNotOnePassShortA(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarknotonepassshorta.benchmarkNotOnePassShortA(_b);
    static public inline function benchmarkOnePassShortB(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkonepassshortb.benchmarkOnePassShortB(_b);
    static public inline function benchmarkNotOnePassShortB(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarknotonepassshortb.benchmarkNotOnePassShortB(_b);
    static public inline function benchmarkOnePassLongPrefix(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkonepasslongprefix.benchmarkOnePassLongPrefix(_b);
    static public inline function benchmarkOnePassLongNotPrefix(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkonepasslongnotprefix.benchmarkOnePassLongNotPrefix(_b);
    static public inline function benchmarkMatchEasy0_32(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatcheasy0_32.benchmarkMatchEasy0_32(_b);
    static public inline function benchmarkMatchEasy0_1K(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatcheasy0_1k.benchmarkMatchEasy0_1K(_b);
    static public inline function benchmarkMatchEasy0_32K(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatcheasy0_32k.benchmarkMatchEasy0_32K(_b);
    static public inline function benchmarkMatchEasy0_1M(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatcheasy0_1m.benchmarkMatchEasy0_1M(_b);
    static public inline function benchmarkMatchEasy0_32M(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatcheasy0_32m.benchmarkMatchEasy0_32M(_b);
    static public inline function benchmarkMatchEasy1_32(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatcheasy1_32.benchmarkMatchEasy1_32(_b);
    static public inline function benchmarkMatchEasy1_1K(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatcheasy1_1k.benchmarkMatchEasy1_1K(_b);
    static public inline function benchmarkMatchEasy1_32K(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatcheasy1_32k.benchmarkMatchEasy1_32K(_b);
    static public inline function benchmarkMatchEasy1_1M(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatcheasy1_1m.benchmarkMatchEasy1_1M(_b);
    static public inline function benchmarkMatchEasy1_32M(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatcheasy1_32m.benchmarkMatchEasy1_32M(_b);
    static public inline function benchmarkMatchMedium_32(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatchmedium_32.benchmarkMatchMedium_32(_b);
    static public inline function benchmarkMatchMedium_1K(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatchmedium_1k.benchmarkMatchMedium_1K(_b);
    static public inline function benchmarkMatchMedium_32K(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatchmedium_32k.benchmarkMatchMedium_32K(_b);
    static public inline function benchmarkMatchMedium_1M(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatchmedium_1m.benchmarkMatchMedium_1M(_b);
    static public inline function benchmarkMatchMedium_32M(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatchmedium_32m.benchmarkMatchMedium_32M(_b);
    static public inline function benchmarkMatchHard_32(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatchhard_32.benchmarkMatchHard_32(_b);
    static public inline function benchmarkMatchHard_1K(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatchhard_1k.benchmarkMatchHard_1K(_b);
    static public inline function benchmarkMatchHard_32K(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatchhard_32k.benchmarkMatchHard_32K(_b);
    static public inline function benchmarkMatchHard_1M(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatchhard_1m.benchmarkMatchHard_1M(_b);
    static public inline function benchmarkMatchHard_32M(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatchhard_32m.benchmarkMatchHard_32M(_b);
    static public inline function benchmarkMatchHard1_32(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatchhard1_32.benchmarkMatchHard1_32(_b);
    static public inline function benchmarkMatchHard1_1K(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatchhard1_1k.benchmarkMatchHard1_1K(_b);
    static public inline function benchmarkMatchHard1_32K(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatchhard1_32k.benchmarkMatchHard1_32K(_b);
    static public inline function benchmarkMatchHard1_1M(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatchhard1_1m.benchmarkMatchHard1_1M(_b);
    static public inline function benchmarkMatchHard1_32M(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkmatchhard1_32m.benchmarkMatchHard1_32M(_b);
    /**
        * TestProgramTooLongForBacktrack tests that a regex which is too long
        * for the backtracker still executes properly.
    **/
    static public inline function testProgramTooLongForBacktrack(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testprogramtoolongforbacktrack.testProgramTooLongForBacktrack(_t);
    static public inline function benchmarkLeading(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkleading.benchmarkLeading(_b);
    static public inline function benchmarkShortSearch(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkshortsearch.benchmarkShortSearch(_b);
    static public inline function testRE2CompatCapture(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testre2compatcapture.testRE2CompatCapture(_t);
    static public inline function testRE2CompatCapture_Invalid(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testre2compatcapture_invalid.testRE2CompatCapture_Invalid(_t);
    static public inline function testRE2NamedAscii(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testre2namedascii.testRE2NamedAscii(_t);
    static public inline function testRE2NamedAscii_Concat(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testre2namedascii_concat.testRE2NamedAscii_Concat(_t);
    static public inline function testRE2Dollar_Singleline(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testre2dollar_singleline.testRE2Dollar_Singleline(_t);
    static public inline function testRE2Dollar_Multiline(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testre2dollar_multiline.testRE2Dollar_Multiline(_t);
    static public inline function testRE2ExtendedZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testre2extendedzero.testRE2ExtendedZero(_t);
    static public inline function testRegularExtendedZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testregularextendedzero.testRegularExtendedZero(_t);
    static public inline function testRE2Word(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testre2word.testRE2Word(_t);
    static public inline function testRegularWord(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testregularword.testRegularWord(_t);
    static public inline function testRE2Space(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testre2space.testRE2Space(_t);
    static public inline function testRegularSpace(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testregularspace.testRegularSpace(_t);
    static public inline function testEscapeLiteralDefaults(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testescapeliteraldefaults.testEscapeLiteralDefaults(_t);
    static public inline function testBacktrack_CatastrophicTimeout(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testbacktrack_catastrophictimeout.testBacktrack_CatastrophicTimeout(_t);
    static public inline function testSetPrefix(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testsetprefix.testSetPrefix(_t);
    static public inline function testSetInCode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testsetincode.testSetInCode(_t);
    static public inline function testRegexp_Basic(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testregexp_basic.testRegexp_Basic(_t);
    /**
        * check all our functions and properties around basic capture groups and referential for Group 0
    **/
    static public inline function testCapture_Basic(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testcapture_basic.testCapture_Basic(_t);
    static public inline function testEscapeUnescape_Basic(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testescapeunescape_basic.testEscapeUnescape_Basic(_t);
    static public inline function testGroups_Basic(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testgroups_basic.testGroups_Basic(_t);
    static public inline function testErr_GroupName(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testerr_groupname.testErr_GroupName(_t);
    static public inline function testConstantUneffected(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testconstantuneffected.testConstantUneffected(_t);
    static public inline function testAlternationConstAndEscape(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testalternationconstandescape.testAlternationConstAndEscape(_t);
    static public inline function testStartingCharsOptionalNegate(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_teststartingcharsoptionalnegate.testStartingCharsOptionalNegate(_t);
    static public inline function testParseNegativeDigit(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testparsenegativedigit.testParseNegativeDigit(_t);
    static public inline function testRunNegativeDigit(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testrunnegativedigit.testRunNegativeDigit(_t);
    static public inline function testCancellingClasses(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testcancellingclasses.testCancellingClasses(_t);
    static public inline function testConcatLoopCaptureSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testconcatloopcaptureset.testConcatLoopCaptureSet(_t);
    static public inline function testFirstcharsIgnoreCase(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testfirstcharsignorecase.testFirstcharsIgnoreCase(_t);
    static public inline function testRepeatingGroup(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testrepeatinggroup.testRepeatingGroup(_t);
    static public inline function testFindNextMatch_Basic(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testfindnextmatch_basic.testFindNextMatch_Basic(_t);
    static public inline function testUnicodeSupplementaryCharSetMatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testunicodesupplementarycharsetmatch.testUnicodeSupplementaryCharSetMatch(_t);
    static public inline function testUnicodeSupplementaryCharInRange(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testunicodesupplementarycharinrange.testUnicodeSupplementaryCharInRange(_t);
    static public inline function testUnicodeScriptSets(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testunicodescriptsets.testUnicodeScriptSets(_t);
    static public inline function testHexadecimalCurlyBraces(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testhexadecimalcurlybraces.testHexadecimalCurlyBraces(_t);
    static public inline function testEmptyCharClass(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testemptycharclass.testEmptyCharClass(_t);
    static public inline function testECMAEmptyCharClass(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testecmaemptycharclass.testECMAEmptyCharClass(_t);
    static public inline function testDot(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testdot.testDot(_t);
    static public inline function testECMADot(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testecmadot.testECMADot(_t);
    static public inline function testDecimalLookahead(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testdecimallookahead.testDecimalLookahead(_t);
    static public inline function testECMADecimalLookahead(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testecmadecimallookahead.testECMADecimalLookahead(_t);
    static public inline function testECMAOctal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testecmaoctal.testECMAOctal(_t);
    static public inline function testECMAInvalidEscape(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testecmainvalidescape.testECMAInvalidEscape(_t);
    static public inline function testECMANamedGroup(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testecmanamedgroup.testECMANamedGroup(_t);
    static public inline function testECMAInvalidEscapeCharClass(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testecmainvalidescapecharclass.testECMAInvalidEscapeCharClass(_t);
    static public inline function testECMAScriptXCurlyBraceEscape(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testecmascriptxcurlybraceescape.testECMAScriptXCurlyBraceEscape(_t);
    static public inline function testEcmaScriptUnicodeRange(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testecmascriptunicoderange.testEcmaScriptUnicodeRange(_t);
    static public inline function testNegateRange(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testnegaterange.testNegateRange(_t);
    static public inline function testECMANegateRange(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testecmanegaterange.testECMANegateRange(_t);
    static public inline function testDollar(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testdollar.testDollar(_t);
    static public inline function testECMADollar(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testecmadollar.testECMADollar(_t);
    static public inline function testThreeByteUnicode_InputOnly(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testthreebyteunicode_inputonly.testThreeByteUnicode_InputOnly(_t);
    static public inline function testMultibyteUnicode_MatchPartialPattern(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testmultibyteunicode_matchpartialpattern.testMultibyteUnicode_MatchPartialPattern(_t);
    static public inline function testMultibyteUnicode_Match(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testmultibyteunicode_match.testMultibyteUnicode_Match(_t);
    static public inline function testAlternationNamedOptions_Errors(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testalternationnamedoptions_errors.testAlternationNamedOptions_Errors(_t);
    static public inline function testAlternationNamedOptions_Success(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testalternationnamedoptions_success.testAlternationNamedOptions_Success(_t);
    static public inline function testAlternationConstruct_Matches(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testalternationconstruct_matches.testAlternationConstruct_Matches(_t);
    static public inline function testStartAtEnd(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_teststartatend.testStartAtEnd(_t);
    static public inline function testParserFuzzCrashes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testparserfuzzcrashes.testParserFuzzCrashes(_t);
    static public inline function testParserFuzzHangs(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testparserfuzzhangs.testParserFuzzHangs(_t);
    static public inline function benchmarkParserPrefixLongLen(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_benchmarkparserprefixlonglen.benchmarkParserPrefixLongLen(_b);
    static public inline function testControlBracketFail(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testcontrolbracketfail.testControlBracketFail(_t);
    static public inline function testControlBracketGroups(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testcontrolbracketgroups.testControlBracketGroups(_t);
    static public inline function testBadGroupConstruct(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testbadgroupconstruct.testBadGroupConstruct(_t);
    static public inline function testEmptyCaptureLargeRepeat(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testemptycapturelargerepeat.testEmptyCaptureLargeRepeat(_t);
    static public inline function testFuzzBytes_NoCompile(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testfuzzbytes_nocompile.testFuzzBytes_NoCompile(_t);
    static public inline function testFuzzBytes_Match(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testfuzzbytes_match.testFuzzBytes_Match(_t);
    static public inline function testConcatAccidentalPatternCharge(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testconcataccidentalpatterncharge.testConcatAccidentalPatternCharge(_t);
    static public inline function testGoodReverseOrderMessage(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testgoodreverseordermessage.testGoodReverseOrderMessage(_t);
    static public inline function testParseShortSlashP(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testparseshortslashp.testParseShortSlashP(_t);
    static public inline function testParseShortSlashNegateP(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testparseshortslashnegatep.testParseShortSlashNegateP(_t);
    static public inline function testParseShortSlashPEnd(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testparseshortslashpend.testParseShortSlashPEnd(_t);
    static public inline function testMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testmarshal.testMarshal(_t);
    static public inline function testUnMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testunmarshal.testUnMarshal(_t);
    static public inline function testRegexpECMAScriptWithSingleline(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testregexpecmascriptwithsingleline.testRegexpECMAScriptWithSingleline(_t);
    static public inline function testReplace_Basic(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testreplace_basic.testReplace_Basic(_t);
    static public inline function testReplace_NamedGroup(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testreplace_namedgroup.testReplace_NamedGroup(_t);
    static public inline function testReplace_IgnoreCaseUpper(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testreplace_ignorecaseupper.testReplace_IgnoreCaseUpper(_t);
    static public inline function testReplace_IgnoreCaseLower(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testreplace_ignorecaselower.testReplace_IgnoreCaseLower(_t);
    static public inline function testReplace_NumberGroup(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testreplace_numbergroup.testReplace_NumberGroup(_t);
    static public inline function testReplace_LimitCount(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testreplace_limitcount.testReplace_LimitCount(_t);
    static public inline function testReplace_LimitCountSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testreplace_limitcountslice.testReplace_LimitCountSlice(_t);
    static public inline function testReplace_BeginBeforeAfterEnd(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testreplace_beginbeforeafterend.testReplace_BeginBeforeAfterEnd(_t);
    static public inline function testReplace_BadSyntax(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testreplace_badsyntax.testReplace_BadSyntax(_t);
    static public inline function testReplaceFunc_Basic(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testreplacefunc_basic.testReplaceFunc_Basic(_t);
    static public inline function testReplaceFunc_Multiple(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testreplacefunc_multiple.testReplaceFunc_Multiple(_t);
    static public inline function testReplaceFunc_Groups(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testreplacefunc_groups.testReplaceFunc_Groups(_t);
    static public inline function testReplace_RefNumsDollarAmbiguous(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testreplace_refnumsdollarambiguous.testReplace_RefNumsDollarAmbiguous(_t);
    static public inline function testReplace_NestedGroups(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testreplace_nestedgroups.testReplace_NestedGroups(_t);
    static public inline function testRightToLeft_Basic(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testrighttoleft_basic.testRightToLeft_Basic(_t);
    static public inline function testRightToLeft_StartAt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testrighttoleft_startat.testRightToLeft_StartAt(_t);
    static public inline function testRightToLeft_Replace(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void _internal.githubdotcom.dlclark.regexp2.Regexp2_testrighttoleft_replace.testRightToLeft_Replace(_t);
}
