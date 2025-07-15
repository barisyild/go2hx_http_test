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
function testGoodReverseOrderMessage(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = _internal.githubdotcom.dlclark.regexp2.Regexp2_compile.compile(("[h-c]" : stdgo.GoString), (256 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __0:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1292"
        if (_err == null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1293"
            _t.fatal(new stdgo.AnyInterface(("expected error" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        var _expected = @:assignType (("error parsing regexp: [h-c] range in reverse order in `[h-c]`" : stdgo.GoString) : stdgo.GoString);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1296"
        if (_err.error() != (_expected)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1297"
            _t.fatalf(("expected %q got %q" : stdgo.GoString), new stdgo.AnyInterface(_expected, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_err.error(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
