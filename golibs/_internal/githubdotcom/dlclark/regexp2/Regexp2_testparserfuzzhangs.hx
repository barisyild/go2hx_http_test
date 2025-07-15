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
function testParserFuzzHangs(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _hangs = (new stdgo.Slice<stdgo.GoString>(6, 6, ...[(stdgo.Go.str("\r{865720113}z", 213, "{\r{861o") : stdgo.GoString)?.__copy__(), ("\r{915355}\r{9153}" : stdgo.GoString), ("\r{525005}" : stdgo.GoString), (stdgo.Go.str(1, "{19765625}") : stdgo.GoString)?.__copy__(), ("(\r{068828256})" : stdgo.GoString), ("\r{677525005}" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1089"
        if (_hangs != null) for (__0 => _c in _hangs) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1090"
            _t.log(new stdgo.AnyInterface(_c, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1091"
            _internal.githubdotcom.dlclark.regexp2.Regexp2_compile.compile(_c?.__copy__(), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        };
    }
