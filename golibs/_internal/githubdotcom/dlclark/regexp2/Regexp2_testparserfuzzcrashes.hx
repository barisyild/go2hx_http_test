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
function testParserFuzzCrashes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _crashes = (new stdgo.Slice<stdgo.GoString>(7, 7, ...[("(?\'-" : stdgo.GoString), ("(\\c0)" : stdgo.GoString), ("(\\00(?())" : stdgo.GoString), ("[\\p{0}" : stdgo.GoString), (stdgo.Go.str("(", 0, "?.*.()?(()?)?)*.x", 203, "?&(\\s", 128, ")") : stdgo.GoString)?.__copy__(), ("\\p{0}" : stdgo.GoString), ("[0-[\\p{0}" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1078"
        if (_crashes != null) for (__0 => _c in _crashes) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1079"
            _t.log(new stdgo.AnyInterface(_c, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1080"
            _internal.githubdotcom.dlclark.regexp2.Regexp2_compile.compile(_c?.__copy__(), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        };
    }
