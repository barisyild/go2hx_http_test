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
function testReplace_BadSyntax(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _re = _internal.githubdotcom.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("a" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        var _myStr = @:assignType (("this is a test" : stdgo.GoString) : stdgo.GoString);
        var __tmp__ = _re.replace(_myStr?.__copy__(), ("$5000000000" : stdgo.GoString), (-1 : stdgo.GoInt), (-1 : stdgo.GoInt)), __0:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace_test.go#L102"
        if (_err == null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace_test.go#L103"
            _t.fatalf(("Expected err" : stdgo.GoString));
        };
    }
