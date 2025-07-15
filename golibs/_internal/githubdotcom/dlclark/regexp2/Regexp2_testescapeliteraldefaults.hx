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
function testEscapeLiteralDefaults(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = _internal.githubdotcom.dlclark.regexp2.Regexp2_compile.compile(("a\\_test" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __0:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L200"
        if (_err == null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L201"
            _t.fatal(new stdgo.AnyInterface(("Expected compile fail" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        var _r = _internal.githubdotcom.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("a\\_test" : stdgo.GoString), (512 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L205"
        {
            var __tmp__ = _r.matchString(("a_test" : stdgo.GoString)), _m:Bool = __tmp__._0, __1:stdgo.Error = __tmp__._1;
            if (!_m) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L206"
                _t.fatal(new stdgo.AnyInterface(("Expected match" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L208"
        {
            var __tmp__ = _r.matchString(("a\\_test" : stdgo.GoString)), _m:Bool = __tmp__._0, __2:stdgo.Error = __tmp__._1;
            if (_m) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L209"
                _t.fatal(new stdgo.AnyInterface(("Expected no match" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
