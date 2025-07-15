package _internal.githubdotcom.dlclark.regexp2;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.log.Log;
import _internal.githubdotcom.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.unicode.Unicode;
function testMono_Basics(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L31"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L32"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("xbc" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L33"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("axc" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L34"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abx" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L35"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("xabcy" : stdgo.GoString), ("Pass. Group[0]=(1,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L36"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ababc" : stdgo.GoString), ("Pass. Group[0]=(2,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L37"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab*c" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L38"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab*bc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L39"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab*bc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbc" : stdgo.GoString), ("Pass. Group[0]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L40"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab*bc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbbbc" : stdgo.GoString), ("Pass. Group[0]=(0,6)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L41"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (".{1}" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbbbc" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L42"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (".{3,4}" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbbbc" : stdgo.GoString), ("Pass. Group[0]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L43"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab{0,}bc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbbbc" : stdgo.GoString), ("Pass. Group[0]=(0,6)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L44"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab+bc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbc" : stdgo.GoString), ("Pass. Group[0]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L45"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab+bc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L46"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab+bc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abq" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L47"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab{1,}bc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abq" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L48"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab+bc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbbbc" : stdgo.GoString), ("Pass. Group[0]=(0,6)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L49"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab{1,}bc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbbbc" : stdgo.GoString), ("Pass. Group[0]=(0,6)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L50"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab{1,3}bc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbbbc" : stdgo.GoString), ("Pass. Group[0]=(0,6)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L51"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab{3,4}bc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbbbc" : stdgo.GoString), ("Pass. Group[0]=(0,6)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L52"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab{4,5}bc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbbbc" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L53"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab?bc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbc" : stdgo.GoString), ("Pass. Group[0]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L54"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab?bc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L55"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab{0,1}bc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L56"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab?bc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbbbc" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L57"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab?c" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L58"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab{0,1}c" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L59"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^abc$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L60"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^abc$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcc" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L61"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^abc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L62"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^abc$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aabc" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L63"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abc$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aabc" : stdgo.GoString), ("Pass. Group[0]=(1,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L64"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abc$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aabcd" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L65"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L66"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(3,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L67"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a.c" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L68"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a.c" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("axc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L69"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a.*c" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("axyzc" : stdgo.GoString), ("Pass. Group[0]=(0,5)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L70"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a.*c" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("axyzd" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L71"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[bc]d" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L72"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[bc]d" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abd" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L73"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[b-d]e" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abd" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L74"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[b-d]e" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ace" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L75"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[b-d]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aac" : stdgo.GoString), ("Pass. Group[0]=(1,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L76"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[-b]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a-" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L77"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[b-]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a-" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L78"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[b-a]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L79"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[]b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L80"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L81"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a]" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L82"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[]]b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a]b" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L83"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[^bc]d" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aed" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L84"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[^bc]d" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abd" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L85"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[^-b]c" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("adc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L86"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[^-b]c" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a-c" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L87"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[^]b]c" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a]c" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L88"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[^]b]c" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("adc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L89"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\ba\\b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a-" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L90"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\ba\\b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-a" : stdgo.GoString), ("Pass. Group[0]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L91"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\ba\\b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-a-" : stdgo.GoString), ("Pass. Group[0]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L92"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\by\\b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("xy" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L93"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\by\\b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("yz" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L94"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\by\\b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("xyz" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L95"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\Ba\\B" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a-" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L96"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\Ba\\B" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-a" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L97"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\Ba\\B" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-a-" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L98"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\By\\b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("xy" : stdgo.GoString), ("Pass. Group[0]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L99"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\by\\B" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("yz" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L100"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\By\\B" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("xyz" : stdgo.GoString), ("Pass. Group[0]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L101"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\w" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L102"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\w" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L103"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\W" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L104"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\W" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L105"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\sb" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a b" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L106"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\sb" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a-b" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L107"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\Sb" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a b" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L108"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\Sb" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a-b" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L109"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\d" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("1" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L110"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\d" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L111"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\D" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("1" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L112"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\D" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L113"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[\\w]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L114"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[\\w]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L115"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[\\W]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L116"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[\\W]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L117"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[\\s]b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a b" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L118"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[\\s]b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a-b" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L119"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[\\S]b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a b" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L120"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[\\S]b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a-b" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L121"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[\\d]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("1" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L122"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[\\d]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L123"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[\\D]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("1" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L124"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[\\D]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L125"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab|cd" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L126"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab|cd" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcd" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L127"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("()ef" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("def" : stdgo.GoString), ("Pass. Group[0]=(1,2) Group[1]=(1,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L128"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("*a" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L129"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(*)b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L130"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("$b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L131"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L132"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\(b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a(b" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L133"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\(*b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L134"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\(*b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a((b" : stdgo.GoString), ("Pass. Group[0]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L135"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\\\b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\\b" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L136"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abc)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L137"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(abc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L138"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((a))" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,1) Group[1]=(0,1) Group[2]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L139"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a)b(c)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(0,1) Group[2]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L140"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a+b+c" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aabbabc" : stdgo.GoString), ("Pass. Group[0]=(4,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L141"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a{1,}b{1,}c" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aabbabc" : stdgo.GoString), ("Pass. Group[0]=(4,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L142"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a**" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L143"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a.+?c" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcabc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L144"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a+|b)*" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1)(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L145"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a+|b){0,}" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1)(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L146"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a+|b)+" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1)(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L147"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a+|b){1,}" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1)(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L148"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a+|b)?" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(0,1) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L149"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a+|b){0,1}" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(0,1) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L150"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (")(" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L151"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[^ab]*" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("cde" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L152"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L153"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a*" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("Pass. Group[0]=(0,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L154"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("([abc])*d" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbbcd" : stdgo.GoString), ("Pass. Group[0]=(0,6) Group[1]=(0,1)(1,1)(2,1)(3,1)(4,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L155"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("([abc])*bcd" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcd" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L156"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a|b|c|d|e" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("e" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L157"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a|b|c|d|e)f" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ef" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L158"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abcd*efg" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcdefg" : stdgo.GoString), ("Pass. Group[0]=(0,7)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L159"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab*" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("xabyabbbz" : stdgo.GoString), ("Pass. Group[0]=(1,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L160"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab*" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("xayabbbz" : stdgo.GoString), ("Pass. Group[0]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L161"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(ab|cd)e" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcde" : stdgo.GoString), ("Pass. Group[0]=(2,3) Group[1]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L162"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[abhgefdc]ij" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("hij" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L163"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(ab|cd)e" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcde" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L164"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(abc|)ef" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcdef" : stdgo.GoString), ("Pass. Group[0]=(4,2) Group[1]=(4,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L165"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a|b)c*d" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcd" : stdgo.GoString), ("Pass. Group[0]=(1,3) Group[1]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L166"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(ab|ab*)bc" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L167"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a([bc]*)c*" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(1,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L168"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a([bc]*)(c*d)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcd" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(1,2) Group[2]=(3,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L169"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a([bc]+)(c*d)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcd" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(1,2) Group[2]=(3,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L170"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a([bc]*)(c+d)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcd" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(1,1) Group[2]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L171"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[bcd]*dcdcde" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("adcdcde" : stdgo.GoString), ("Pass. Group[0]=(0,7)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L172"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[bcd]+dcdcde" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("adcdcde" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L173"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(ab|a)b*c" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L174"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((a)(b)c)(d)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcd" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(0,3) Group[2]=(0,1) Group[3]=(1,1) Group[4]=(3,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L175"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[a-zA-Z_][a-zA-Z0-9_]*" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("alpha" : stdgo.GoString), ("Pass. Group[0]=(0,5)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L176"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^a(bc+|b[eh])g|.h$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abh" : stdgo.GoString), ("Pass. Group[0]=(1,2) Group[1]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L177"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(bc+d$|ef*g.|h?i(j|k))" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("effgz" : stdgo.GoString), ("Pass. Group[0]=(0,5) Group[1]=(0,5) Group[2]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L178"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(bc+d$|ef*g.|h?i(j|k))" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ij" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,2) Group[2]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L179"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(bc+d$|ef*g.|h?i(j|k))" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("effg" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L180"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(bc+d$|ef*g.|h?i(j|k))" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bcdd" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L181"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(bc+d$|ef*g.|h?i(j|k))" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("reffgz" : stdgo.GoString), ("Pass. Group[0]=(1,5) Group[1]=(1,5) Group[2]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L182"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((((((((((a))))))))))" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Pass. Group[0]=(0,1) Group[1]=(0,1) Group[2]=(0,1) Group[3]=(0,1) Group[4]=(0,1) Group[5]=(0,1) Group[6]=(0,1) Group[7]=(0,1) Group[8]=(0,1) Group[9]=(0,1) Group[10]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L183"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((((((((((a))))))))))\\10" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aa" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1) Group[2]=(0,1) Group[3]=(0,1) Group[4]=(0,1) Group[5]=(0,1) Group[6]=(0,1) Group[7]=(0,1) Group[8]=(0,1) Group[9]=(0,1) Group[10]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L184"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((((((((((a))))))))))!" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aa" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L185"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((((((((((a))))))))))!" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a!" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1) Group[2]=(0,1) Group[3]=(0,1) Group[4]=(0,1) Group[5]=(0,1) Group[6]=(0,1) Group[7]=(0,1) Group[8]=(0,1) Group[9]=(0,1) Group[10]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L186"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(((((((((a)))))))))" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Pass. Group[0]=(0,1) Group[1]=(0,1) Group[2]=(0,1) Group[3]=(0,1) Group[4]=(0,1) Group[5]=(0,1) Group[6]=(0,1) Group[7]=(0,1) Group[8]=(0,1) Group[9]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L187"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("multiple words of text" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("uh-uh" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L188"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("multiple words" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("multiple words, yeah" : stdgo.GoString), ("Pass. Group[0]=(0,14)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L189"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(.*)c(.*)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcde" : stdgo.GoString), ("Pass. Group[0]=(0,5) Group[1]=(0,2) Group[2]=(3,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L190"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\((.*), (.*)\\)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("(a, b)" : stdgo.GoString), ("Pass. Group[0]=(0,6) Group[1]=(1,1) Group[2]=(4,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L191"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[k]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L192"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abcd" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcd" : stdgo.GoString), ("Pass. Group[0]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L193"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a(bc)d" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcd" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(1,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L194"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[-]?c" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ac" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L195"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(abc)\\1" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcabc" : stdgo.GoString), ("Pass. Group[0]=(0,6) Group[1]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L196"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("([a-c]*)\\1" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcabc" : stdgo.GoString), ("Pass. Group[0]=(0,6) Group[1]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L197"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\1" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L198"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\2" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L199"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a)|\\1" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Pass. Group[0]=(0,1) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L200"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a)|\\1" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("x" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L201"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a)|\\2" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L202"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(([a-c])b*?\\2)*" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ababbbcbc" : stdgo.GoString), ("Pass. Group[0]=(0,5) Group[1]=(0,3)(3,2) Group[2]=(0,1)(3,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L203"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(([a-c])b*?\\2){3}" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ababbbcbc" : stdgo.GoString), ("Pass. Group[0]=(0,9) Group[1]=(0,3)(3,3)(6,3) Group[2]=(0,1)(3,1)(6,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L204"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((\\3|b)\\2(a)x)+" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaxabxbaxbbx" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L205"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((\\3|b)\\2(a)x)+" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaaxabaxbaaxbbax" : stdgo.GoString), ("Pass. Group[0]=(12,4) Group[1]=(12,4) Group[2]=(12,1) Group[3]=(14,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L206"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((\\3|b)\\2(a)){2,}" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbaababbabaaaaabbaaaabba" : stdgo.GoString), ("Pass. Group[0]=(15,9) Group[1]=(15,3)(18,3)(21,3) Group[2]=(15,1)(18,1)(21,1) Group[3]=(17,1)(20,1)(23,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L207"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABC" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L208"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("XBC" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L209"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AXC" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L210"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABX" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L211"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("XABCY" : stdgo.GoString), ("Pass. Group[0]=(1,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L212"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABABC" : stdgo.GoString), ("Pass. Group[0]=(2,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L213"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab*c" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABC" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L214"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab*bc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABC" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L215"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab*bc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABBC" : stdgo.GoString), ("Pass. Group[0]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L216"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab*?bc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABBBBC" : stdgo.GoString), ("Pass. Group[0]=(0,6)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L217"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab{0,}?bc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABBBBC" : stdgo.GoString), ("Pass. Group[0]=(0,6)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L218"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab+?bc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABBC" : stdgo.GoString), ("Pass. Group[0]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L219"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab+bc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABC" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L220"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab+bc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABQ" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L221"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab{1,}bc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABQ" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L222"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab+bc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABBBBC" : stdgo.GoString), ("Pass. Group[0]=(0,6)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L223"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab{1,}?bc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABBBBC" : stdgo.GoString), ("Pass. Group[0]=(0,6)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L224"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab{1,3}?bc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABBBBC" : stdgo.GoString), ("Pass. Group[0]=(0,6)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L225"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab{3,4}?bc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABBBBC" : stdgo.GoString), ("Pass. Group[0]=(0,6)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L226"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab{4,5}?bc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABBBBC" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L227"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab??bc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABBC" : stdgo.GoString), ("Pass. Group[0]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L228"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab??bc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABC" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L229"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab{0,1}?bc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABC" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L230"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab??bc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABBBBC" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L231"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab??c" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABC" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L232"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab{0,1}?c" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABC" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L233"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^abc$" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABC" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L234"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^abc$" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABCC" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L235"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^abc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABCC" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L236"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^abc$" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AABC" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L237"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abc$" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AABC" : stdgo.GoString), ("Pass. Group[0]=(1,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L238"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABC" : stdgo.GoString), ("Pass. Group[0]=(0,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L239"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("$" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABC" : stdgo.GoString), ("Pass. Group[0]=(3,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L240"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a.c" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABC" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L241"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a.c" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AXC" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L242"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a.*?c" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AXYZC" : stdgo.GoString), ("Pass. Group[0]=(0,5)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L243"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a.*c" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AXYZD" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L244"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[bc]d" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABC" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L245"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[bc]d" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABD" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L246"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[b-d]e" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABD" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L247"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[b-d]e" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ACE" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L248"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[b-d]" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AAC" : stdgo.GoString), ("Pass. Group[0]=(1,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L249"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[-b]" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("A-" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L250"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[b-]" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("A-" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L251"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[b-a]" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L252"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[]b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L253"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L254"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a]" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("A]" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L255"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[]]b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("A]B" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L256"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[^bc]d" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AED" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L257"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[^bc]d" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABD" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L258"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[^-b]c" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ADC" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L259"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[^-b]c" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("A-C" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L260"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[^]b]c" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("A]C" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L261"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[^]b]c" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ADC" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L262"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab|cd" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABC" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L263"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab|cd" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABCD" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L264"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("()ef" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("DEF" : stdgo.GoString), ("Pass. Group[0]=(1,2) Group[1]=(1,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L265"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("*a" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L266"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(*)b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L267"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("$b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("B" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L268"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L269"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\(b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("A(B" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L270"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\(*b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AB" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L271"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\(*b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("A((B" : stdgo.GoString), ("Pass. Group[0]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L272"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\\\b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("A\\B" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L273"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abc)" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L274"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(abc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L275"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((a))" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABC" : stdgo.GoString), ("Pass. Group[0]=(0,1) Group[1]=(0,1) Group[2]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L276"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a)b(c)" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABC" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(0,1) Group[2]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L277"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a+b+c" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AABBABC" : stdgo.GoString), ("Pass. Group[0]=(4,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L278"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a{1,}b{1,}c" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AABBABC" : stdgo.GoString), ("Pass. Group[0]=(4,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L279"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a**" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L280"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a.+?c" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABCABC" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L281"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a.*?c" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABCABC" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L282"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a.{0,5}?c" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABCABC" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L283"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a+|b)*" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AB" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1)(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L284"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a+|b){0,}" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AB" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1)(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L285"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a+|b)+" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AB" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1)(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L286"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a+|b){1,}" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AB" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1)(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L287"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a+|b)?" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AB" : stdgo.GoString), ("Pass. Group[0]=(0,1) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L288"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a+|b){0,1}" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AB" : stdgo.GoString), ("Pass. Group[0]=(0,1) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L289"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a+|b){0,1}?" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AB" : stdgo.GoString), ("Pass. Group[0]=(0,0) Group[1]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L290"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (")(" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L291"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[^ab]*" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("CDE" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L292"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L293"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a*" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("Pass. Group[0]=(0,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L294"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("([abc])*d" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABBBCD" : stdgo.GoString), ("Pass. Group[0]=(0,6) Group[1]=(0,1)(1,1)(2,1)(3,1)(4,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L295"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("([abc])*bcd" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABCD" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L296"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a|b|c|d|e" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("E" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L297"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a|b|c|d|e)f" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("EF" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L298"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abcd*efg" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABCDEFG" : stdgo.GoString), ("Pass. Group[0]=(0,7)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L299"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab*" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("XABYABBBZ" : stdgo.GoString), ("Pass. Group[0]=(1,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L300"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab*" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("XAYABBBZ" : stdgo.GoString), ("Pass. Group[0]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L301"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(ab|cd)e" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABCDE" : stdgo.GoString), ("Pass. Group[0]=(2,3) Group[1]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L302"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[abhgefdc]ij" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("HIJ" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L303"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(ab|cd)e" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABCDE" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L304"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(abc|)ef" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABCDEF" : stdgo.GoString), ("Pass. Group[0]=(4,2) Group[1]=(4,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L305"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a|b)c*d" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABCD" : stdgo.GoString), ("Pass. Group[0]=(1,3) Group[1]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L306"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(ab|ab*)bc" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABC" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L307"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a([bc]*)c*" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABC" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(1,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L308"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a([bc]*)(c*d)" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABCD" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(1,2) Group[2]=(3,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L309"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a([bc]+)(c*d)" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABCD" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(1,2) Group[2]=(3,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L310"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a([bc]*)(c+d)" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABCD" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(1,1) Group[2]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L311"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[bcd]*dcdcde" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ADCDCDE" : stdgo.GoString), ("Pass. Group[0]=(0,7)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L312"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[bcd]+dcdcde" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ADCDCDE" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L313"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(ab|a)b*c" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABC" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L314"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((a)(b)c)(d)" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABCD" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(0,3) Group[2]=(0,1) Group[3]=(1,1) Group[4]=(3,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L315"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[a-zA-Z_][a-zA-Z0-9_]*" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ALPHA" : stdgo.GoString), ("Pass. Group[0]=(0,5)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L316"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^a(bc+|b[eh])g|.h$" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABH" : stdgo.GoString), ("Pass. Group[0]=(1,2) Group[1]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L317"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(bc+d$|ef*g.|h?i(j|k))" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("EFFGZ" : stdgo.GoString), ("Pass. Group[0]=(0,5) Group[1]=(0,5) Group[2]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L318"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(bc+d$|ef*g.|h?i(j|k))" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("IJ" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,2) Group[2]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L319"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(bc+d$|ef*g.|h?i(j|k))" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("EFFG" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L320"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(bc+d$|ef*g.|h?i(j|k))" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("BCDD" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L321"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(bc+d$|ef*g.|h?i(j|k))" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("REFFGZ" : stdgo.GoString), ("Pass. Group[0]=(1,5) Group[1]=(1,5) Group[2]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L322"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((((((((((a))))))))))" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("A" : stdgo.GoString), ("Pass. Group[0]=(0,1) Group[1]=(0,1) Group[2]=(0,1) Group[3]=(0,1) Group[4]=(0,1) Group[5]=(0,1) Group[6]=(0,1) Group[7]=(0,1) Group[8]=(0,1) Group[9]=(0,1) Group[10]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L323"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((((((((((a))))))))))\\10" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AA" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1) Group[2]=(0,1) Group[3]=(0,1) Group[4]=(0,1) Group[5]=(0,1) Group[6]=(0,1) Group[7]=(0,1) Group[8]=(0,1) Group[9]=(0,1) Group[10]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L324"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((((((((((a))))))))))!" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AA" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L325"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((((((((((a))))))))))!" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("A!" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1) Group[2]=(0,1) Group[3]=(0,1) Group[4]=(0,1) Group[5]=(0,1) Group[6]=(0,1) Group[7]=(0,1) Group[8]=(0,1) Group[9]=(0,1) Group[10]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L326"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(((((((((a)))))))))" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("A" : stdgo.GoString), ("Pass. Group[0]=(0,1) Group[1]=(0,1) Group[2]=(0,1) Group[3]=(0,1) Group[4]=(0,1) Group[5]=(0,1) Group[6]=(0,1) Group[7]=(0,1) Group[8]=(0,1) Group[9]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L327"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?:(?:(?:(?:(?:(?:(?:(?:(?:(a))))))))))" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("A" : stdgo.GoString), ("Pass. Group[0]=(0,1) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L328"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?:(?:(?:(?:(?:(?:(?:(?:(?:(a|b|c))))))))))" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("C" : stdgo.GoString), ("Pass. Group[0]=(0,1) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L329"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("multiple words of text" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("UH-UH" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L330"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("multiple words" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("MULTIPLE WORDS, YEAH" : stdgo.GoString), ("Pass. Group[0]=(0,14)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L331"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(.*)c(.*)" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABCDE" : stdgo.GoString), ("Pass. Group[0]=(0,5) Group[1]=(0,2) Group[2]=(3,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L332"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\((.*), (.*)\\)" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("(A, B)" : stdgo.GoString), ("Pass. Group[0]=(0,6) Group[1]=(1,1) Group[2]=(4,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L333"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[k]" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AB" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L334"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abcd" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABCD" : stdgo.GoString), ("Pass. Group[0]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L335"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a(bc)d" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABCD" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(1,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L336"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[-]?c" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AC" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L337"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(abc)\\1" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABCABC" : stdgo.GoString), ("Pass. Group[0]=(0,6) Group[1]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L338"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("([a-c]*)\\1" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ABCABC" : stdgo.GoString), ("Pass. Group[0]=(0,6) Group[1]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L339"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a(?!b)." : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abad" : stdgo.GoString), ("Pass. Group[0]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L340"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a(?=d)." : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abad" : stdgo.GoString), ("Pass. Group[0]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L341"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a(?=c|d)." : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abad" : stdgo.GoString), ("Pass. Group[0]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L342"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a(?:b|c|d)(.)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ace" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L343"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a(?:b|c|d)*(.)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ace" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L344"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a(?:b|c|d)+?(.)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ace" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L345"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a(?:b|c|d)+?(.)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("acdbcdbe" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L346"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a(?:b|c|d)+(.)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("acdbcdbe" : stdgo.GoString), ("Pass. Group[0]=(0,8) Group[1]=(7,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L347"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a(?:b|c|d){2}(.)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("acdbcdbe" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(3,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L348"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a(?:b|c|d){4,5}(.)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("acdbcdbe" : stdgo.GoString), ("Pass. Group[0]=(0,7) Group[1]=(6,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L349"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a(?:b|c|d){4,5}?(.)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("acdbcdbe" : stdgo.GoString), ("Pass. Group[0]=(0,6) Group[1]=(5,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L350"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((foo)|(bar))*" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("foobar" : stdgo.GoString), ("Pass. Group[0]=(0,6) Group[1]=(0,3)(3,3) Group[2]=(0,3) Group[3]=(3,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L351"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (":(?:" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L352"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a(?:b|c|d){6,7}(.)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("acdbcdbe" : stdgo.GoString), ("Pass. Group[0]=(0,8) Group[1]=(7,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L353"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a(?:b|c|d){6,7}?(.)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("acdbcdbe" : stdgo.GoString), ("Pass. Group[0]=(0,8) Group[1]=(7,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L354"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a(?:b|c|d){5,6}(.)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("acdbcdbe" : stdgo.GoString), ("Pass. Group[0]=(0,8) Group[1]=(7,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L355"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a(?:b|c|d){5,6}?(.)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("acdbcdbe" : stdgo.GoString), ("Pass. Group[0]=(0,7) Group[1]=(6,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L356"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a(?:b|c|d){5,7}(.)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("acdbcdbe" : stdgo.GoString), ("Pass. Group[0]=(0,8) Group[1]=(7,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L357"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a(?:b|c|d){5,7}?(.)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("acdbcdbe" : stdgo.GoString), ("Pass. Group[0]=(0,7) Group[1]=(6,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L358"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a(?:b|(c|e){1,2}?|d)+?(.)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ace" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(1,1) Group[2]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L359"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(.+)?B" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AB" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L360"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^([^a-z])|(\\^)$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("." : stdgo.GoString), ("Pass. Group[0]=(0,1) Group[1]=(0,1) Group[2]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L361"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^[<>]&" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("<&OUT" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L362"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(a\\1?){4}$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaaaaaaaaa" : stdgo.GoString), ("Pass. Group[0]=(0,10) Group[1]=(0,1)(1,2)(3,3)(6,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L363"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(a\\1?){4}$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaaaaaaaa" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L364"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(a\\1?){4}$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaaaaaaaaaa" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L365"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(a(?(1)\\1)){4}$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaaaaaaaaa" : stdgo.GoString), ("Pass. Group[0]=(0,10) Group[1]=(0,1)(1,2)(3,3)(6,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L366"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(a(?(1)\\1)){4}$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaaaaaaaa" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L367"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(a(?(1)\\1)){4}$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaaaaaaaaaa" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L368"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((a{4})+)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaaaaaaaa" : stdgo.GoString), ("Pass. Group[0]=(0,8) Group[1]=(0,8) Group[2]=(0,4)(4,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L369"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(((aa){2})+)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaaaaaaaaa" : stdgo.GoString), ("Pass. Group[0]=(0,8) Group[1]=(0,8) Group[2]=(0,4)(4,4) Group[3]=(0,2)(2,2)(4,2)(6,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L370"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(((a{2}){2})+)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaaaaaaaaa" : stdgo.GoString), ("Pass. Group[0]=(0,8) Group[1]=(0,8) Group[2]=(0,4)(4,4) Group[3]=(0,2)(2,2)(4,2)(6,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L371"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?:(f)(o)(o)|(b)(a)(r))*" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("foobar" : stdgo.GoString), ("Pass. Group[0]=(0,6) Group[1]=(0,1) Group[2]=(1,1) Group[3]=(2,1) Group[4]=(3,1) Group[5]=(4,1) Group[6]=(5,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L372"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?<=a)b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L373"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?<=a)b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("cb" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L374"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?<=a)b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L375"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?<!c)b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L376"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?<!c)b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("cb" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L377"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?<!c)b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L378"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?<!c)b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L379"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?<%)b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L380"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?:..)*a" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aba" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L381"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?:..)*?a" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aba" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L382"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(?:b|a(?=(.)))*\\1" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L383"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(){3,5}" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,0) Group[1]=(0,0)(0,0)(0,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L384"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(a+)*ax" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aax" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L385"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((a|b)+)*ax" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aax" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(0,1) Group[2]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L386"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((a|bc)+)*ax" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aax" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(0,1) Group[2]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L387"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a|x)*ab" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("cab" : stdgo.GoString), ("Pass. Group[0]=(1,2) Group[1]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L388"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a)*ab" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("cab" : stdgo.GoString), ("Pass. Group[0]=(1,2) Group[1]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L389"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?:(?i)a)b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L390"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?i)a)b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L391"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?:(?i)a)b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("Ab" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L392"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?i)a)b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("Ab" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L393"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?:(?i)a)b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aB" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L394"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?i)a)b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aB" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L395"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?i:a)b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L396"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?i:a))b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L397"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?i:a)b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("Ab" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L398"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?i:a))b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("Ab" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L399"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?i:a)b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aB" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L400"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?i:a))b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aB" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L401"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?:(?-i)a)b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L402"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?-i)a)b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L403"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?:(?-i)a)b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aB" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L404"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?-i)a)b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aB" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L405"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?:(?-i)a)b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("Ab" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L406"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?-i)a)b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("Ab" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L407"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?:(?-i)a)b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aB" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L408"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?-i)a)b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aB" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L409"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?:(?-i)a)b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AB" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L410"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?-i)a)b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AB" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L411"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?-i:a)b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L412"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?-i:a))b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L413"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?-i:a)b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aB" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L414"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?-i:a))b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aB" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L415"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?-i:a)b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("Ab" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L416"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?-i:a))b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("Ab" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L417"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?-i:a)b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aB" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L418"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?-i:a))b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aB" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L419"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?-i:a)b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AB" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L420"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?-i:a))b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("AB" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L421"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?-i:a.))b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nB" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L422"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?s-i:a.))b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nB" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L423"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?s-i:a.))b" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("B\nB" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L424"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?:c|d)(?:)(?:a(?:)(?:b)(?:b(?:))(?:b(?:)(?:b)))" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("cabbbb" : stdgo.GoString), ("Pass. Group[0]=(0,6)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L425"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?:c|d)(?:)(?:aaaaaaaa(?:)(?:bbbbbbbb)(?:bbbbbbbb(?:))(?:bbbbbbbb(?:)(?:bbbbbbbb)))" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("caaaaaaaabbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb" : stdgo.GoString), ("Pass. Group[0]=(0,41)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L426"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(ab)\\d\\1" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("Ab4ab" : stdgo.GoString), ("Pass. Group[0]=(0,5) Group[1]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L427"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(ab)\\d\\1" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab4Ab" : stdgo.GoString), ("Pass. Group[0]=(0,5) Group[1]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L428"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("foo\\w*\\d{4}baz" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("foobar1234baz" : stdgo.GoString), ("Pass. Group[0]=(0,13)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L429"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("x(~~)*(?:(?:F)?)?" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("x~~" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(1,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L430"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^a(?#xxx){3}c" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaac" : stdgo.GoString), ("Pass. Group[0]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L431"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?<![cd])b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("dbcb" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L432"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?<![cd])[ab]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("dbaacb" : stdgo.GoString), ("Pass. Group[0]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L433"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?<!(c|d))b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("dbcb" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L434"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?<!(c|d))[ab]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("dbaacb" : stdgo.GoString), ("Pass. Group[0]=(2,1) Group[1]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L435"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?<!cd)[ab]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("cdaccb" : stdgo.GoString), ("Pass. Group[0]=(5,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L436"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(?:a?b?)*$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a--" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L437"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?s)^a(.))((?m)^b$)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nb\nc\n" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(0,2) Group[2]=(1,1) Group[3]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L438"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?m)^b$)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nb\nc\n" : stdgo.GoString), ("Pass. Group[0]=(2,1) Group[1]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L439"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?m)^b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nb\n" : stdgo.GoString), ("Pass. Group[0]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L440"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?m)^(b)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nb\n" : stdgo.GoString), ("Pass. Group[0]=(2,1) Group[1]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L441"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?m)^b)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nb\n" : stdgo.GoString), ("Pass. Group[0]=(2,1) Group[1]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L442"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\n((?m)^b)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nb\n" : stdgo.GoString), ("Pass. Group[0]=(1,2) Group[1]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L443"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?s).)c(?!.)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nb\nc\n" : stdgo.GoString), ("Pass. Group[0]=(3,2) Group[1]=(3,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L444"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?s).)c(?!.)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nb\nc\n" : stdgo.GoString), ("Pass. Group[0]=(3,2) Group[1]=(3,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L445"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?s)b.)c(?!.)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nb\nc\n" : stdgo.GoString), ("Pass. Group[0]=(2,3) Group[1]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L446"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?s)b.)c(?!.)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nb\nc\n" : stdgo.GoString), ("Pass. Group[0]=(2,3) Group[1]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L447"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nb\nc\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L448"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("()^b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nb\nc\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L449"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?m)^b)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nb\nc\n" : stdgo.GoString), ("Pass. Group[0]=(2,1) Group[1]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L450"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(x)?(?(1)a|b)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L451"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(x)?(?(1)b|a)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Pass. Group[0]=(0,1) Group[1]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L452"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("()?(?(1)b|a)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Pass. Group[0]=(0,1) Group[1]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L453"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("()(?(1)b|a)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L454"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("()?(?(1)a|b)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Pass. Group[0]=(0,1) Group[1]=(0,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L455"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(\\()?blah(?(1)(\\)))$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("(blah)" : stdgo.GoString), ("Pass. Group[0]=(0,6) Group[1]=(0,1) Group[2]=(5,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L456"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(\\()?blah(?(1)(\\)))$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("blah" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]= Group[2]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L457"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(\\()?blah(?(1)(\\)))$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("blah)" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L458"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(\\()?blah(?(1)(\\)))$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("(blah" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L459"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(\\(+)?blah(?(1)(\\)))$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("(blah)" : stdgo.GoString), ("Pass. Group[0]=(0,6) Group[1]=(0,1) Group[2]=(5,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L460"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(\\(+)?blah(?(1)(\\)))$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("blah" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]= Group[2]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L461"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(\\(+)?blah(?(1)(\\)))$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("blah)" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L462"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(\\(+)?blah(?(1)(\\)))$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("(blah" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L463"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?(1)a|b|c)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L464"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?(?!a)a|b)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L465"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?(?!a)b|a)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L466"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?(?=a)b|a)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L467"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?(?=a)a|b)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L468"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?=(a+?))(\\1ab)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaab" : stdgo.GoString), ("Pass. Group[0]=(1,3) Group[1]=(1,1) Group[2]=(1,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L469"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(?=(a+?))\\1ab" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaab" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L470"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(\\w+:)+" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("one:" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L471"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("$(?<=^(a))" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Pass. Group[0]=(1,0) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L472"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?=(a+?))(\\1ab)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaab" : stdgo.GoString), ("Pass. Group[0]=(1,3) Group[1]=(1,1) Group[2]=(1,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L473"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(?=(a+?))\\1ab" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaab" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L474"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("([\\w:]+::)?(\\w+)$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcd:" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L475"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("([\\w:]+::)?(\\w+)$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcd" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]= Group[2]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L476"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("([\\w:]+::)?(\\w+)$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("xy:z:::abcd" : stdgo.GoString), ("Pass. Group[0]=(0,11) Group[1]=(0,7) Group[2]=(7,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L477"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^[^bcd]*(c+)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aexycd" : stdgo.GoString), ("Pass. Group[0]=(0,5) Group[1]=(4,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L478"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a*)b+" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("caab" : stdgo.GoString), ("Pass. Group[0]=(1,3) Group[1]=(1,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L479"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("([\\w:]+::)?(\\w+)$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcd:" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L480"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("([\\w:]+::)?(\\w+)$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcd" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]= Group[2]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L481"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("([\\w:]+::)?(\\w+)$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("xy:z:::abcd" : stdgo.GoString), ("Pass. Group[0]=(0,11) Group[1]=(0,7) Group[2]=(7,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L482"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^[^bcd]*(c+)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aexycd" : stdgo.GoString), ("Pass. Group[0]=(0,5) Group[1]=(4,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L483"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(>a+)ab" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaab" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L484"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?>a+)b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaab" : stdgo.GoString), ("Pass. Group[0]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L485"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("([[:]+)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a:[b]:" : stdgo.GoString), ("Pass. Group[0]=(1,2) Group[1]=(1,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L486"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("([[=]+)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a=[b]=" : stdgo.GoString), ("Pass. Group[0]=(1,2) Group[1]=(1,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L487"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("([[.]+)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a.[b]." : stdgo.GoString), ("Pass. Group[0]=(1,2) Group[1]=(1,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L488"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[a[:]b[:c]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L489"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[a[:]b[:c]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L490"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?>a+)b)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaab" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L491"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?>(a+))b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaab" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L492"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?>[^()]+)|\\([^()]*\\))+" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("((abc(ade)ufh()()x" : stdgo.GoString), ("Pass. Group[0]=(2,16) Group[1]=(2,3)(5,5)(10,3)(13,2)(15,2)(17,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L493"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?<=x+)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("xxxxy" : stdgo.GoString), ("Pass. Group[0]=(1,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L494"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a{37,17}" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L495"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nb\n" : stdgo.GoString), ("Pass. Group[0]=(3,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L496"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nb\n" : stdgo.GoString), ("Pass. Group[0]=(4,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L497"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nb\n" : stdgo.GoString), ("Pass. Group[0]=(3,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L498"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\na\n" : stdgo.GoString), ("Pass. Group[0]=(3,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L499"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\na\n" : stdgo.GoString), ("Pass. Group[0]=(4,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L500"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\na\n" : stdgo.GoString), ("Pass. Group[0]=(3,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L501"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\na" : stdgo.GoString), ("Pass. Group[0]=(3,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L502"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\na" : stdgo.GoString), ("Pass. Group[0]=(3,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L503"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\na" : stdgo.GoString), ("Pass. Group[0]=(3,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L504"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nb\n" : stdgo.GoString), ("Pass. Group[0]=(3,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L505"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nb\n" : stdgo.GoString), ("Pass. Group[0]=(4,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L506"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nb\n" : stdgo.GoString), ("Pass. Group[0]=(1,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L507"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\na\n" : stdgo.GoString), ("Pass. Group[0]=(3,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L508"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\na\n" : stdgo.GoString), ("Pass. Group[0]=(4,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L509"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\na\n" : stdgo.GoString), ("Pass. Group[0]=(1,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L510"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\na" : stdgo.GoString), ("Pass. Group[0]=(3,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L511"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\na" : stdgo.GoString), ("Pass. Group[0]=(3,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L512"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\na" : stdgo.GoString), ("Pass. Group[0]=(1,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L513"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L514"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L515"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L516"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\na\n" : stdgo.GoString), ("Pass. Group[0]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L517"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\na\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L518"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\na\n" : stdgo.GoString), ("Pass. Group[0]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L519"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\na" : stdgo.GoString), ("Pass. Group[0]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L520"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\na" : stdgo.GoString), ("Pass. Group[0]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L521"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\na" : stdgo.GoString), ("Pass. Group[0]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L522"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L523"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nb\n" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L524"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\na\n" : stdgo.GoString), ("Pass. Group[0]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L525"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\na\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L526"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\na\n" : stdgo.GoString), ("Pass. Group[0]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L527"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\na" : stdgo.GoString), ("Pass. Group[0]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L528"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\na" : stdgo.GoString), ("Pass. Group[0]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L529"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\na" : stdgo.GoString), ("Pass. Group[0]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L530"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aa\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L531"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aa\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L532"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aa\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L533"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\naa\n" : stdgo.GoString), ("Pass. Group[0]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L534"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\naa\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L535"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\naa\n" : stdgo.GoString), ("Pass. Group[0]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L536"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\naa" : stdgo.GoString), ("Pass. Group[0]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L537"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\naa" : stdgo.GoString), ("Pass. Group[0]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L538"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\naa" : stdgo.GoString), ("Pass. Group[0]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L539"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aa\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L540"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aa\nb\n" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L541"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\naa\n" : stdgo.GoString), ("Pass. Group[0]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L542"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\naa\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L543"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\naa\n" : stdgo.GoString), ("Pass. Group[0]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L544"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\naa" : stdgo.GoString), ("Pass. Group[0]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L545"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\naa" : stdgo.GoString), ("Pass. Group[0]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L546"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\naa" : stdgo.GoString), ("Pass. Group[0]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L547"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ac\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L548"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ac\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L549"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ac\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L550"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L551"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L552"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L553"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L554"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L555"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L556"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ac\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L557"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ac\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L558"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ac\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L559"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L560"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L561"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L562"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L563"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L564"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L565"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ca\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L566"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ca\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L567"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ca\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L568"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L569"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L570"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L571"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L572"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L573"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L574"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ca\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L575"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ca\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L576"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ca\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L577"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L578"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L579"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L580"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L581"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L582"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("aa$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L583"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L584"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L585"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L586"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nab\n" : stdgo.GoString), ("Pass. Group[0]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L587"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nab\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L588"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nab\n" : stdgo.GoString), ("Pass. Group[0]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L589"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nab" : stdgo.GoString), ("Pass. Group[0]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L590"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nab" : stdgo.GoString), ("Pass. Group[0]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L591"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nab" : stdgo.GoString), ("Pass. Group[0]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L592"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L593"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab\nb\n" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L594"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nab\n" : stdgo.GoString), ("Pass. Group[0]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L595"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nab\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L596"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nab\n" : stdgo.GoString), ("Pass. Group[0]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L597"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nab" : stdgo.GoString), ("Pass. Group[0]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L598"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nab" : stdgo.GoString), ("Pass. Group[0]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L599"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nab" : stdgo.GoString), ("Pass. Group[0]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L600"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ac\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L601"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ac\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L602"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ac\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L603"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L604"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L605"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L606"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L607"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L608"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L609"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ac\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L610"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ac\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L611"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ac\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L612"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L613"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L614"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L615"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L616"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L617"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L618"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ca\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L619"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ca\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L620"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ca\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L621"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L622"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L623"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L624"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L625"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L626"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L627"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ca\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L628"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ca\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L629"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ca\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L630"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L631"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L632"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L633"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L634"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L635"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L636"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abb\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L637"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abb\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L638"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abb\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L639"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nabb\n" : stdgo.GoString), ("Pass. Group[0]=(2,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L640"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nabb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L641"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nabb\n" : stdgo.GoString), ("Pass. Group[0]=(2,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L642"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nabb" : stdgo.GoString), ("Pass. Group[0]=(2,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L643"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nabb" : stdgo.GoString), ("Pass. Group[0]=(2,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L644"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nabb" : stdgo.GoString), ("Pass. Group[0]=(2,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L645"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abb\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L646"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abb\nb\n" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L647"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nabb\n" : stdgo.GoString), ("Pass. Group[0]=(2,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L648"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nabb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L649"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nabb\n" : stdgo.GoString), ("Pass. Group[0]=(2,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L650"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nabb" : stdgo.GoString), ("Pass. Group[0]=(2,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L651"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nabb" : stdgo.GoString), ("Pass. Group[0]=(2,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L652"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nabb" : stdgo.GoString), ("Pass. Group[0]=(2,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L653"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ac\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L654"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ac\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L655"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ac\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L656"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L657"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L658"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L659"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L660"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L661"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L662"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ac\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L663"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ac\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L664"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ac\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L665"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L666"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L667"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L668"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L669"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L670"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nac" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L671"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ca\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L672"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ca\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L673"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ca\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L674"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L675"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L676"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L677"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\Z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L678"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\z" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L679"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L680"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ca\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L681"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ca\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L682"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ca\nb\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L683"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L684"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L685"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca\n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L686"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\Z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L687"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb\\z" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L688"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b\nca" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L689"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(^|x)(c)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ca" : stdgo.GoString), ("Pass. Group[0]=(0,1) Group[1]=(0,0) Group[2]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L690"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a*abc?xyz+pqr{3}ab{2,}xy{4,5}pq{0,6}AB{0,}zz" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("x" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L691"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("round\\(((?>[^()]+))\\)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("_I(round(xs * sz),1)" : stdgo.GoString), ("Pass. Group[0]=(3,14) Group[1]=(9,7)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L692"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("foo.bart" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("foo.bart" : stdgo.GoString), ("Pass. Group[0]=(0,8)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L693"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^d[x][x][x]" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcd\ndxxx" : stdgo.GoString), ("Pass. Group[0]=(5,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L694"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (".X(.+)+X" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbbbXcXaaaaaaaa" : stdgo.GoString), ("Pass. Group[0]=(3,4) Group[1]=(5,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L695"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (".X(.+)+XX" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbbbXcXXaaaaaaaa" : stdgo.GoString), ("Pass. Group[0]=(3,5) Group[1]=(5,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L696"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (".XX(.+)+X" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbbbXXcXaaaaaaaa" : stdgo.GoString), ("Pass. Group[0]=(3,5) Group[1]=(6,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L697"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (".X(.+)+X" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbbbXXaaaaaaaaa" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L698"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (".X(.+)+XX" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbbbXXXaaaaaaaaa" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L699"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (".XX(.+)+X" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbbbXXXaaaaaaaaa" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L700"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (".X(.+)+[X]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbbbXcXaaaaaaaa" : stdgo.GoString), ("Pass. Group[0]=(3,4) Group[1]=(5,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L701"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (".X(.+)+[X][X]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbbbXcXXaaaaaaaa" : stdgo.GoString), ("Pass. Group[0]=(3,5) Group[1]=(5,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L702"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (".XX(.+)+[X]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbbbXXcXaaaaaaaa" : stdgo.GoString), ("Pass. Group[0]=(3,5) Group[1]=(6,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L703"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (".X(.+)+[X]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbbbXXaaaaaaaaa" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L704"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (".X(.+)+[X][X]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbbbXXXaaaaaaaaa" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L705"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (".XX(.+)+[X]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbbbXXXaaaaaaaaa" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L706"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (".[X](.+)+[X]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbbbXcXaaaaaaaa" : stdgo.GoString), ("Pass. Group[0]=(3,4) Group[1]=(5,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L707"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (".[X](.+)+[X][X]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbbbXcXXaaaaaaaa" : stdgo.GoString), ("Pass. Group[0]=(3,5) Group[1]=(5,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L708"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (".[X][X](.+)+[X]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbbbXXcXaaaaaaaa" : stdgo.GoString), ("Pass. Group[0]=(3,5) Group[1]=(6,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L709"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (".[X](.+)+[X]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbbbXXaaaaaaaaa" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L710"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (".[X](.+)+[X][X]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbbbXXXaaaaaaaaa" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L711"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (".[X][X](.+)+[X]" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbbbXXXaaaaaaaaa" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L712"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("tt+$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("xxxtt" : stdgo.GoString), ("Pass. Group[0]=(3,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L713"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("([\\d-z]+)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a0-za" : stdgo.GoString), ("Pass. Group[0]=(1,3) Group[1]=(1,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L714"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("([\\d-\\s]+)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a0- z" : stdgo.GoString), ("Pass. Group[0]=(1,3) Group[1]=(1,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L715"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\GX.*X" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaaXbX" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L716"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(\\d+\\.\\d+)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("3.1415926" : stdgo.GoString), ("Pass. Group[0]=(0,9) Group[1]=(0,9)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L717"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(\\ba.{0,10}br)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("have a web browser" : stdgo.GoString), ("Pass. Group[0]=(5,8) Group[1]=(5,8)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L718"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\.c(pp|xx|c)?$" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("Changes" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L719"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\.c(pp|xx|c)?$" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("IO.c" : stdgo.GoString), ("Pass. Group[0]=(2,2) Group[1]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L720"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(\\.c(pp|xx|c)?$)" : stdgo.GoString), (1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("IO.c" : stdgo.GoString), ("Pass. Group[0]=(2,2) Group[1]=(2,2) Group[2]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L721"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^([a-z]:)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("C:/" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L722"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^\\S\\s+aa$" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("\nx aa" : stdgo.GoString), ("Pass. Group[0]=(1,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L723"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(^|a)b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L724"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^([ab]*?)(b)?(c)$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abac" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(0,3) Group[2]= Group[3]=(3,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L725"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(\\w)?(abc)\\1b" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcab" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L726"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(?:.,){2}c" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a,b,c" : stdgo.GoString), ("Pass. Group[0]=(0,5)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L727"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(.,){2}c" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a,b,c" : stdgo.GoString), ("Pass. Group[0]=(0,5) Group[1]=(0,2)(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L728"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(?:[^,]*,){2}c" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a,b,c" : stdgo.GoString), ("Pass. Group[0]=(0,5)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L729"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^([^,]*,){2}c" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a,b,c" : stdgo.GoString), ("Pass. Group[0]=(0,5) Group[1]=(0,2)(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L730"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^([^,]*,){3}d" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaa,b,c,d" : stdgo.GoString), ("Pass. Group[0]=(0,9) Group[1]=(0,4)(4,2)(6,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L731"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^([^,]*,){3,}d" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaa,b,c,d" : stdgo.GoString), ("Pass. Group[0]=(0,9) Group[1]=(0,4)(4,2)(6,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L732"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^([^,]*,){0,3}d" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaa,b,c,d" : stdgo.GoString), ("Pass. Group[0]=(0,9) Group[1]=(0,4)(4,2)(6,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L733"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^([^,]{1,3},){3}d" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaa,b,c,d" : stdgo.GoString), ("Pass. Group[0]=(0,9) Group[1]=(0,4)(4,2)(6,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L734"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^([^,]{1,3},){3,}d" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaa,b,c,d" : stdgo.GoString), ("Pass. Group[0]=(0,9) Group[1]=(0,4)(4,2)(6,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L735"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^([^,]{1,3},){0,3}d" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaa,b,c,d" : stdgo.GoString), ("Pass. Group[0]=(0,9) Group[1]=(0,4)(4,2)(6,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L736"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^([^,]{1,},){3}d" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaa,b,c,d" : stdgo.GoString), ("Pass. Group[0]=(0,9) Group[1]=(0,4)(4,2)(6,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L737"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^([^,]{1,},){3,}d" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaa,b,c,d" : stdgo.GoString), ("Pass. Group[0]=(0,9) Group[1]=(0,4)(4,2)(6,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L738"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^([^,]{1,},){0,3}d" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaa,b,c,d" : stdgo.GoString), ("Pass. Group[0]=(0,9) Group[1]=(0,4)(4,2)(6,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L739"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^([^,]{0,3},){3}d" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaa,b,c,d" : stdgo.GoString), ("Pass. Group[0]=(0,9) Group[1]=(0,4)(4,2)(6,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L740"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^([^,]{0,3},){3,}d" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaa,b,c,d" : stdgo.GoString), ("Pass. Group[0]=(0,9) Group[1]=(0,4)(4,2)(6,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L741"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^([^,]{0,3},){0,3}d" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaa,b,c,d" : stdgo.GoString), ("Pass. Group[0]=(0,9) Group[1]=(0,4)(4,2)(6,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L742"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?i)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("Pass. Group[0]=(0,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L743"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?!\\A)x" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\nxb\n" : stdgo.GoString), ("Pass. Group[0]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L744"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(a(b)?)+$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aba" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(0,2)(2,1) Group[2]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L745"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(aa(bb)?)+$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aabbaa" : stdgo.GoString), ("Pass. Group[0]=(0,6) Group[1]=(0,4)(4,2) Group[2]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L746"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^.{9}abc.*\\n" : stdgo.GoString), (2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("123\nabcabcabcabc\n" : stdgo.GoString), ("Pass. Group[0]=(4,13)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L747"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(a)?a$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Pass. Group[0]=(0,1) Group[1]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L748"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(a)?(?(1)a|b)+$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L749"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(a\\1?)(a\\1?)(a\\2?)(a\\3?)$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaaaaa" : stdgo.GoString), ("Pass. Group[0]=(0,6) Group[1]=(0,1) Group[2]=(1,2) Group[3]=(3,1) Group[4]=(4,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L750"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(a\\1?){4}$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaaaaa" : stdgo.GoString), ("Pass. Group[0]=(0,6) Group[1]=(0,1)(1,2)(3,1)(4,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L751"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(0+)?(?:x(1))?" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("x1" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]= Group[2]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L752"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^([0-9a-fA-F]+)(?:x([0-9a-fA-F]+)?)(?:x([0-9a-fA-F]+))?" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("012cxx0190" : stdgo.GoString), ("Pass. Group[0]=(0,10) Group[1]=(0,4) Group[2]= Group[3]=(6,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L753"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(b+?|a){1,2}c" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbbac" : stdgo.GoString), ("Pass. Group[0]=(0,5) Group[1]=(0,3)(3,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L754"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(b+?|a){1,2}c" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbbbac" : stdgo.GoString), ("Pass. Group[0]=(0,6) Group[1]=(0,4)(4,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L755"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\((\\w\\. \\w+)\\)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("cd. (A. Tw)" : stdgo.GoString), ("Pass. Group[0]=(4,7) Group[1]=(5,5)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L756"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?:aaaa|bbbb)cccc)?" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaaacccc" : stdgo.GoString), ("Pass. Group[0]=(0,8) Group[1]=(0,8)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L757"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?:aaaa|bbbb)cccc)?" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbbbcccc" : stdgo.GoString), ("Pass. Group[0]=(0,8) Group[1]=(0,8)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L759"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(foo)|(bar)$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("foobar" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(0,3) Group[2]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L760"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(foo)|(bar)$" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("foobar" : stdgo.GoString), ("Pass. Group[0]=(3,3) Group[1]= Group[2]=(3,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L762"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("babaaa" : stdgo.GoString), ("Pass. Group[0]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L763"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("bab" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("babababaa" : stdgo.GoString), ("Pass. Group[0]=(4,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L764"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abb" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L766"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("b$" : stdgo.GoString), (66 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aab\naab" : stdgo.GoString), ("Pass. Group[0]=(6,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L767"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^a" : stdgo.GoString), (66 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aab\naab" : stdgo.GoString), ("Pass. Group[0]=(4,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L768"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^aaab" : stdgo.GoString), (66 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaab\naab" : stdgo.GoString), ("Pass. Group[0]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L769"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb{2}" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbb" : stdgo.GoString), ("Pass. Group[0]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L770"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb{1,2}" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbb" : stdgo.GoString), ("Pass. Group[0]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L772"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abb{1,2}" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbbbbaaaa" : stdgo.GoString), ("Pass. Group[0]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L773"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\Ab" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bab\naaa" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L774"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\Abab$" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bab" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L775"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("b\\Z" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bab\naaa" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L776"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("b\\Z" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("babaaab" : stdgo.GoString), ("Pass. Group[0]=(6,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L777"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("b\\z" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("babaaa" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L778"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("b\\z" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("babaaab" : stdgo.GoString), ("Pass. Group[0]=(6,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L779"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\G" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("babaaa" : stdgo.GoString), ("Pass. Group[0]=(5,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L780"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\Abaaa\\G" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("baaa" : stdgo.GoString), ("Pass. Group[0]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L786"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaa c aaa c a" : stdgo.GoString), ("Pass. Group[0]=(10,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L787"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("c aaa c" : stdgo.GoString), ("Pass. Group[0]=(6,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L788"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaa ac" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L789"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("c aaa" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L790"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaacaaa" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L791"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaac aaa" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L792"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaa ca caaa" : stdgo.GoString), ("Pass. Group[0]=(7,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L794"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\Bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ac aaa ac" : stdgo.GoString), ("Pass. Group[0]=(8,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L795"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\Bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaa c" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L796"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\Bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ca aaa" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L797"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\Bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaa c aaa" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L798"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\Bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), (" acaca " : stdgo.GoString), ("Pass. Group[0]=(4,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L799"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\Bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaac aaac" : stdgo.GoString), ("Pass. Group[0]=(8,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L800"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\Bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaa caaa" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L802"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("b(a?)b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aabababbaaababa" : stdgo.GoString), ("Pass. Group[0]=(11,3) Group[1]=(12,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L803"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("b{4}" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbbbaabbbbaabbb" : stdgo.GoString), ("Pass. Group[0]=(7,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L804"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("b\\1aa(.)" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bBaaB" : stdgo.GoString), ("Pass. Group[0]=(0,5) Group[1]=(4,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L805"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("b(.)aa\\1" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bBaaB" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L807"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(a\\1?){4}$" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaaaaa" : stdgo.GoString), ("Pass. Group[0]=(0,6) Group[1]=(5,1)(3,2)(2,1)(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L808"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^([0-9a-fA-F]+)(?:x([0-9a-fA-F]+)?)(?:x([0-9a-fA-F]+))?" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("012cxx0190" : stdgo.GoString), ("Pass. Group[0]=(0,10) Group[1]=(0,4) Group[2]= Group[3]=(6,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L809"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(b+?|a){1,2}c" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbbac" : stdgo.GoString), ("Pass. Group[0]=(0,5) Group[1]=(3,1)(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L810"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\((\\w\\. \\w+)\\)" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("cd. (A. Tw)" : stdgo.GoString), ("Pass. Group[0]=(4,7) Group[1]=(5,5)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L811"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?:aaaa|bbbb)cccc)?" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaaacccc" : stdgo.GoString), ("Pass. Group[0]=(0,8) Group[1]=(0,8)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L812"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((?:aaaa|bbbb)cccc)?" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbbbcccc" : stdgo.GoString), ("Pass. Group[0]=(0,8) Group[1]=(0,8)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L814"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?<=a)b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L815"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?<=a)b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("cb" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L816"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?<=a)b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L817"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?<!c)b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L818"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?<!c)b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("cb" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L819"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?<!c)b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L820"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(?<!c)b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L821"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a(?=d)." : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("adabad" : stdgo.GoString), ("Pass. Group[0]=(4,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L822"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a(?=c|d)." : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("adabad" : stdgo.GoString), ("Pass. Group[0]=(4,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L824"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab*c" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L825"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab*bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L826"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab*bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbc" : stdgo.GoString), ("Pass. Group[0]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L827"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab*bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbbbc" : stdgo.GoString), ("Pass. Group[0]=(0,6)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L828"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (".{1}" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbbbc" : stdgo.GoString), ("Pass. Group[0]=(5,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L829"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (".{3,4}" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbbbc" : stdgo.GoString), ("Pass. Group[0]=(2,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L830"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab{0,}bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbbbc" : stdgo.GoString), ("Pass. Group[0]=(0,6)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L831"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab+bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbc" : stdgo.GoString), ("Pass. Group[0]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L832"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab+bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L833"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab+bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abq" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L834"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab{1,}bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abq" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L835"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab+bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbbbc" : stdgo.GoString), ("Pass. Group[0]=(0,6)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L836"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab{1,}bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbbbc" : stdgo.GoString), ("Pass. Group[0]=(0,6)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L837"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab{1,3}bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbbbc" : stdgo.GoString), ("Pass. Group[0]=(0,6)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L838"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab{3,4}bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbbbc" : stdgo.GoString), ("Pass. Group[0]=(0,6)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L839"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab{4,5}bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbbbc" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L840"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab?bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbc" : stdgo.GoString), ("Pass. Group[0]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L841"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab?bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L842"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab{0,1}bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L843"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab?bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbbbc" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L844"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab?c" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L845"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab{0,1}c" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L846"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^abc$" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L847"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^abc$" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcc" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L848"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^abc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L849"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^abc$" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aabc" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L850"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abc$" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aabc" : stdgo.GoString), ("Pass. Group[0]=(1,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L851"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abc$" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aabcd" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L852"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L853"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("$" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(3,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L854"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a.c" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L855"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a.c" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("axc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L856"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a.*c" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("axyzc" : stdgo.GoString), ("Pass. Group[0]=(0,5)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L857"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a.*c" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("axyzd" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L858"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[bc]d" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L859"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[bc]d" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abd" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L860"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[b-d]e" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abd" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L861"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[b-d]e" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ace" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L862"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[b-d]" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aac" : stdgo.GoString), ("Pass. Group[0]=(1,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L863"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[-b]" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a-" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L864"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[b-]" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a-" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L865"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[b-a]" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L866"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[]b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L867"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L868"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a]" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a]" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L869"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[]]b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a]b" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L870"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[^bc]d" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aed" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L871"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[^bc]d" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abd" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L872"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[^-b]c" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("adc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L873"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[^-b]c" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a-c" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L874"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[^]b]c" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a]c" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L875"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[^]b]c" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("adc" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L876"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\ba\\b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a-" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L877"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\ba\\b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-a" : stdgo.GoString), ("Pass. Group[0]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L878"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\ba\\b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-a-" : stdgo.GoString), ("Pass. Group[0]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L879"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\by\\b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("xy" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L880"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\by\\b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("yz" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L881"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\by\\b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("xyz" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L882"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\Ba\\B" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a-" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L883"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\Ba\\B" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-a" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L884"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\Ba\\B" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-a-" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L885"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\By\\b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("xy" : stdgo.GoString), ("Pass. Group[0]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L886"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\by\\B" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("yz" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L887"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\By\\B" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("xyz" : stdgo.GoString), ("Pass. Group[0]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L888"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\w" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L889"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\w" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L890"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\W" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L891"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\W" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L892"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\sb" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a b" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L893"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\sb" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a-b" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L894"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\Sb" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a b" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L895"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\Sb" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a-b" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L896"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\d" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("1" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L897"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\d" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L898"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\D" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("1" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L899"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\D" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L900"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[\\w]" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L901"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[\\w]" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L902"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[\\W]" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L903"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[\\W]" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L904"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[\\s]b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a b" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L905"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[\\s]b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a-b" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L906"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[\\S]b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a b" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L907"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[\\S]b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a-b" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L908"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[\\d]" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("1" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L909"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[\\d]" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L910"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[\\D]" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("1" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L911"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[\\D]" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L912"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab|cd" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L913"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab|cd" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcd" : stdgo.GoString), ("Pass. Group[0]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L914"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("()ef" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("def" : stdgo.GoString), ("Pass. Group[0]=(1,2) Group[1]=(1,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L915"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("*a" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L916"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(*)b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L917"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("$b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("b" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L918"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L919"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\(b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a(b" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L920"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\(*b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L921"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\(*b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a((b" : stdgo.GoString), ("Pass. Group[0]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L922"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a\\\\b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a\\b" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L923"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abc)" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L924"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(abc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L925"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((a))" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,1) Group[1]=(0,1) Group[2]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L926"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a)b(c)" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(0,1) Group[2]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L927"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a+b+c" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aabbabc" : stdgo.GoString), ("Pass. Group[0]=(4,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L928"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a{1,}b{1,}c" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aabbabc" : stdgo.GoString), ("Pass. Group[0]=(4,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L929"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a**" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L930"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a.+?c" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcabc" : stdgo.GoString), ("Pass. Group[0]=(3,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L931"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a+|b)*" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(1,1)(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L932"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a+|b){0,}" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(1,1)(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L933"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a+|b)+" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(1,1)(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L934"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a+|b){1,}" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(1,1)(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L935"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a+|b)?" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(1,1) Group[1]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L936"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a+|b){0,1}" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Pass. Group[0]=(1,1) Group[1]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L937"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, (")(" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L938"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[^ab]*" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("cde" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L939"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L940"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a*" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("Pass. Group[0]=(0,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L941"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("([abc])*d" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abbbcd" : stdgo.GoString), ("Pass. Group[0]=(0,6) Group[1]=(4,1)(3,1)(2,1)(1,1)(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L942"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("([abc])*bcd" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcd" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L943"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a|b|c|d|e" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("e" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L944"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a|b|c|d|e)f" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ef" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L945"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abcd*efg" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcdefg" : stdgo.GoString), ("Pass. Group[0]=(0,7)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L946"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab*" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("xabyabbbz" : stdgo.GoString), ("Pass. Group[0]=(4,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L947"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("ab*" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("xayabbbz" : stdgo.GoString), ("Pass. Group[0]=(3,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L948"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(ab|cd)e" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcde" : stdgo.GoString), ("Pass. Group[0]=(2,3) Group[1]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L949"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[abhgefdc]ij" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("hij" : stdgo.GoString), ("Pass. Group[0]=(0,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L950"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(ab|cd)e" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcde" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L951"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(abc|)ef" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcdef" : stdgo.GoString), ("Pass. Group[0]=(4,2) Group[1]=(4,0)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L952"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a|b)c*d" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcd" : stdgo.GoString), ("Pass. Group[0]=(1,3) Group[1]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L953"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(ab|ab*)bc" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L954"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a([bc]*)c*" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L955"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a([bc]*)(c*d)" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcd" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(1,1) Group[2]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L956"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a([bc]+)(c*d)" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcd" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(1,1) Group[2]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L957"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a([bc]*)(c+d)" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcd" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(1,1) Group[2]=(2,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L958"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[bcd]*dcdcde" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("adcdcde" : stdgo.GoString), ("Pass. Group[0]=(0,7)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L959"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[bcd]+dcdcde" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("adcdcde" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L960"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(ab|a)b*c" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abc" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L961"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((a)(b)c)(d)" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcd" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(0,3) Group[2]=(0,1) Group[3]=(1,1) Group[4]=(3,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L962"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[a-zA-Z_][a-zA-Z0-9_]*" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("alpha" : stdgo.GoString), ("Pass. Group[0]=(0,5)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L963"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^a(bc+|b[eh])g|.h$" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abh" : stdgo.GoString), ("Pass. Group[0]=(1,2) Group[1]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L964"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(bc+d$|ef*g.|h?i(j|k))" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("effgz" : stdgo.GoString), ("Pass. Group[0]=(0,5) Group[1]=(0,5) Group[2]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L965"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(bc+d$|ef*g.|h?i(j|k))" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ij" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,2) Group[2]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L966"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(bc+d$|ef*g.|h?i(j|k))" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("effg" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L967"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(bc+d$|ef*g.|h?i(j|k))" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bcdd" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L968"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(bc+d$|ef*g.|h?i(j|k))" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("reffgz" : stdgo.GoString), ("Pass. Group[0]=(1,5) Group[1]=(1,5) Group[2]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L969"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((((((((((a))))))))))" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Pass. Group[0]=(0,1) Group[1]=(0,1) Group[2]=(0,1) Group[3]=(0,1) Group[4]=(0,1) Group[5]=(0,1) Group[6]=(0,1) Group[7]=(0,1) Group[8]=(0,1) Group[9]=(0,1) Group[10]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L970"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((((((((((a))))))))))\\10" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aa" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L971"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\10((((((((((a))))))))))" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aa" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(1,1) Group[2]=(1,1) Group[3]=(1,1) Group[4]=(1,1) Group[5]=(1,1) Group[6]=(1,1) Group[7]=(1,1) Group[8]=(1,1) Group[9]=(1,1) Group[10]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L972"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((((((((((a))))))))))!" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aa" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L973"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((((((((((a))))))))))!" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a!" : stdgo.GoString), ("Pass. Group[0]=(0,2) Group[1]=(0,1) Group[2]=(0,1) Group[3]=(0,1) Group[4]=(0,1) Group[5]=(0,1) Group[6]=(0,1) Group[7]=(0,1) Group[8]=(0,1) Group[9]=(0,1) Group[10]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L974"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(((((((((a)))))))))" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Pass. Group[0]=(0,1) Group[1]=(0,1) Group[2]=(0,1) Group[3]=(0,1) Group[4]=(0,1) Group[5]=(0,1) Group[6]=(0,1) Group[7]=(0,1) Group[8]=(0,1) Group[9]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L975"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("multiple words of text" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("uh-uh" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L976"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("multiple words" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("multiple words, yeah" : stdgo.GoString), ("Pass. Group[0]=(0,14)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L977"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(.*)c(.*)" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcde" : stdgo.GoString), ("Pass. Group[0]=(0,5) Group[1]=(0,2) Group[2]=(3,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L978"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\((.*), (.*)\\)" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("(a, b)" : stdgo.GoString), ("Pass. Group[0]=(0,6) Group[1]=(1,1) Group[2]=(4,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L979"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("[k]" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ab" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L980"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("abcd" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcd" : stdgo.GoString), ("Pass. Group[0]=(0,4)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L981"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a(bc)d" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcd" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(1,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L982"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a[-]?c" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ac" : stdgo.GoString), ("Pass. Group[0]=(0,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L983"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(abc)\\1" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcabc" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L984"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\1(abc)" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcabc" : stdgo.GoString), ("Pass. Group[0]=(0,6) Group[1]=(3,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L985"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("([a-c]*)\\1" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcabc" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L986"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\1([a-c]*)" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("abcabc" : stdgo.GoString), ("Pass. Group[0]=(0,6) Group[1]=(3,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L987"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\1" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L988"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\2" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L989"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a)|\\1" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Pass. Group[0]=(0,1) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L990"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a)|\\1" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("x" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L991"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(a)|\\2" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("-" : stdgo.GoString), ("Error." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L992"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(([a-c])b*?\\2)*" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ababbbcbc" : stdgo.GoString), ("Pass. Group[0]=(9,0) Group[1]= Group[2]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L993"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(([a-c])b*?\\2){3}" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("ababbbcbc" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L994"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((\\3|b)\\2(a)x)+" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaxabxbaxbbx" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L995"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((\\3|b)\\2(a)x)+" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("aaaxabaxbaaxbbax" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L996"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("((\\3|b)\\2(a)){2,}" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("bbaababbabaaaaabbaaaabba" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L998"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("\\((?>[^()]+|\\((?<depth>)|\\)(?<-depth>))*(?(depth)(?!))\\)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("((a(b))c)" : stdgo.GoString), ("Pass. Group[0]=(0,9) Group[1]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L999"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^\\((?>[^()]+|\\((?<depth>)|\\)(?<-depth>))*(?(depth)(?!))\\)$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("((a(b))c)" : stdgo.GoString), ("Pass. Group[0]=(0,9) Group[1]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1000"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^\\((?>[^()]+|\\((?<depth>)|\\)(?<-depth>))*(?(depth)(?!))\\)$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("((a(b))c" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1002"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^\\((?>[^()]+|\\((?<depth>)|\\)(?<-depth>))*(?(depth)(?!))\\)$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("())" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1004"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(((?<foo>\\()[^()]*)+((?<bar-foo>\\))[^()]*)+)+(?(foo)(?!))" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("((a(b))c)" : stdgo.GoString), ("Pass. Group[0]=(0,9) Group[1]=(0,9) Group[2]=(0,1)(1,2)(3,2) Group[3]=(5,1)(6,2)(8,1) Group[4]= Group[5]=(4,1)(2,4)(1,7)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1006"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(((?<foo>\\()[^()]*)+((?<bar-foo>\\))[^()]*)+)+(?(foo)(?!))$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("((a(b))c)" : stdgo.GoString), ("Pass. Group[0]=(0,9) Group[1]=(0,9) Group[2]=(0,1)(1,2)(3,2) Group[3]=(5,1)(6,2)(8,1) Group[4]= Group[5]=(4,1)(2,4)(1,7)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1008"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(((?<foo>\\()[^()]*)+((?<bar-foo>\\))[^()]*)+)+(?(foo)(?!))" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("x(a((b)))b)x" : stdgo.GoString), ("Pass. Group[0]=(1,9) Group[1]=(1,9) Group[2]=(1,2)(3,1)(4,2) Group[3]=(6,1)(7,1)(8,2) Group[4]= Group[5]=(5,1)(4,3)(2,6)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1010"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("(((?<foo>\\()[^()]*)+((?<bar-foo>\\))[^()]*)+)+(?(foo)(?!))" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("x((a((b)))x" : stdgo.GoString), ("Pass. Group[0]=(2,9) Group[1]=(2,9) Group[2]=(2,2)(4,1)(5,2) Group[3]=(7,1)(8,1)(9,2) Group[4]= Group[5]=(6,1)(5,3)(3,6)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1012"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(((?<foo>\\()[^()]*)+((?<bar-foo>\\))[^()]*)+)+(?(foo)(?!))$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("((a(b))c" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1013"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(((?<foo>\\()[^()]*)+((?<bar-foo>\\))[^()]*)+)+(?(foo)(?!))$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("((a(b))c))" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1014"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(((?<foo>\\()[^()]*)+((?<bar-foo>\\))[^()]*)+)+(?(foo)(?!))$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), (")(" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1015"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^(((?<foo>\\()[^()]*)+((?<bar-foo>\\))[^()]*)+)+(?(foo)(?!))$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("((a((b))c)" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1017"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("b" : stdgo.GoString), (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("babaaa" : stdgo.GoString), ("Pass. Group[0]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1019"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (13 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("[n]" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(1,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1020"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (13 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("n" : stdgo.GoString), ("Pass. Group[0]=(0,1) Group[1]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1021"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (13 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("n[i]e" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1022"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (13 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("[n" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1023"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (13 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("]n]" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1024"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (13 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("\\[n\\]" : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1025"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (13 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("[n\\]" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(1,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1026"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (13 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("[n\\[]" : stdgo.GoString), ("Pass. Group[0]=(0,5) Group[1]=(1,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1027"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (13 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("[[n]" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(1,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1028"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<SCHEMA>[^\\]]+)\\])|(?<SCHEMA>[^\\.\\[\\]]+))\\s*\\.\\s*((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (13 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("[s] . [n]" : stdgo.GoString), ("Pass. Group[0]=(0,9) Group[1]=(1,1) Group[2]=(7,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1029"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<SCHEMA>[^\\]]+)\\])|(?<SCHEMA>[^\\.\\[\\]]+))\\s*\\.\\s*((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (13 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("[s] . n" : stdgo.GoString), ("Pass. Group[0]=(0,7) Group[1]=(1,1) Group[2]=(6,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1030"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<SCHEMA>[^\\]]+)\\])|(?<SCHEMA>[^\\.\\[\\]]+))\\s*\\.\\s*((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (13 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("s.[ n ]" : stdgo.GoString), ("Pass. Group[0]=(0,7) Group[1]=(0,1) Group[2]=(3,3)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1031"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<SCHEMA>[^\\]]+)\\])|(?<SCHEMA>[^\\.\\[\\]]+))\\s*\\.\\s*((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (13 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), (" . n" : stdgo.GoString), ("Pass. Group[0]=(0,4) Group[1]=(0,1) Group[2]=(3,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1032"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<SCHEMA>[^\\]]+)\\])|(?<SCHEMA>[^\\.\\[\\]]+))\\s*\\.\\s*((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (13 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("s. " : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(0,1) Group[2]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1033"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<SCHEMA>[^\\]]+)\\])|(?<SCHEMA>[^\\.\\[\\]]+))\\s*\\.\\s*((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (13 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("[.]. " : stdgo.GoString), ("Pass. Group[0]=(0,5) Group[1]=(1,1) Group[2]=(4,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1034"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<CATALOG>[^\\]]+)\\])|(?<CATALOG>[^\\.\\[\\]]+))\\s*\\.\\s*((\\[(?<SCHEMA>[^\\]]+)\\])|(?<SCHEMA>[^\\.\\[\\]]+))\\s*\\.\\s*((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (13 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("[c].[s].[n]" : stdgo.GoString), ("Pass. Group[0]=(0,11) Group[1]=(1,1) Group[2]=(5,1) Group[3]=(9,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1035"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<CATALOG>[^\\]]+)\\])|(?<CATALOG>[^\\.\\[\\]]+))\\s*\\.\\s*((\\[(?<SCHEMA>[^\\]]+)\\])|(?<SCHEMA>[^\\.\\[\\]]+))\\s*\\.\\s*((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (13 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), (" c . s . n " : stdgo.GoString), ("Pass. Group[0]=(0,11) Group[1]=(0,3) Group[2]=(5,2) Group[3]=(9,2)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1036"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<CATALOG>[^\\]]+)\\])|(?<CATALOG>[^\\.\\[\\]]+))\\s*\\.\\s*((\\[(?<SCHEMA>[^\\]]+)\\])|(?<SCHEMA>[^\\.\\[\\]]+))\\s*\\.\\s*((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (13 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), (" . [.] . [ ]" : stdgo.GoString), ("Pass. Group[0]=(0,12) Group[1]=(0,1) Group[2]=(4,1) Group[3]=(10,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1037"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<CATALOG>[^\\]]+)\\])|(?<CATALOG>[^\\.\\[\\]]+))\\s*\\.\\s*((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (13 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("c.n" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(0,1) Group[2]=(2,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1038"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<CATALOG>[^\\]]+)\\])|(?<CATALOG>[^\\.\\[\\]]+))\\s*\\.\\s*((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (13 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("[c] .[n]" : stdgo.GoString), ("Pass. Group[0]=(0,8) Group[1]=(1,1) Group[2]=(6,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1039"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<CATALOG>[^\\]]+)\\])|(?<CATALOG>[^\\.\\[\\]]+))\\s*\\.\\s*((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (13 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("c.n." : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1040"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<SCHEMA>[^\\]]+)\\])|(?<SCHEMA>[^\\.\\[\\]]+))\\s*\\.\\s*((\\[(?<CATALOG>[^\\]]+)\\])|(?<CATALOG>[^\\.\\[\\]]+))\\s*\\.\\s*((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (13 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("s.c.n" : stdgo.GoString), ("Pass. Group[0]=(0,5) Group[1]=(0,1) Group[2]=(2,1) Group[3]=(4,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1041"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<SCHEMA>[^\\]]+)\\])|(?<SCHEMA>[^\\.\\[\\]]+))\\s*\\.\\s*((\\[(?<CATALOG>[^\\]]+)\\])|(?<CATALOG>[^\\.\\[\\]]+))\\s*\\.\\s*((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (13 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("[s].[c].[n]" : stdgo.GoString), ("Pass. Group[0]=(0,11) Group[1]=(1,1) Group[2]=(5,1) Group[3]=(9,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1042"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<SCHEMA>[^\\]]+)\\])|(?<SCHEMA>[^\\.\\[\\]]+))\\s*\\.\\s*((\\[(?<CATALOG>[^\\]]+)\\])|(?<CATALOG>[^\\.\\[\\]]+))\\s*\\.\\s*((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (13 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("[s].[c]." : stdgo.GoString), ("Fail." : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1043"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<ColName>.+)\\])|(?<ColName>\\S+))([ ]+(?<Order>ASC|DESC))?$" : stdgo.GoString), (5 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("[id]]" : stdgo.GoString), ("Pass. Group[0]=(0,5) Group[1]=(1,3) Group[2]=" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1044"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("a{1,2147483647}" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("a" : stdgo.GoString), ("Pass. Group[0]=(0,1)" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1045"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__runregextrial._runRegexTrial(_t, ("^((\\[(?<NAME>[^\\]]+)\\])|(?<NAME>[^\\.\\[\\]]+))$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions), ("[a]" : stdgo.GoString), ("Pass. Group[0]=(0,3) Group[1]=(0,3) Group[2]=(0,3) Group[3]=(1,1)" : stdgo.GoString));
    }
