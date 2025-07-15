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
function testECMAInvalidEscapeCharClass(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _re = _internal.githubdotcom.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("[\\x0]" : stdgo.GoString), (256 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L858"
        {
            var __tmp__ = _re.matchString(("x" : stdgo.GoString)), _m:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L859"
                _t.fatal(({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            } else if (!_m) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L861"
                _t.fatal(new stdgo.AnyInterface(("Expected match" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L864"
        {
            var __tmp__ = _re.matchString(("0" : stdgo.GoString)), _m:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L865"
                _t.fatal(({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            } else if (!_m) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L867"
                _t.fatal(new stdgo.AnyInterface(("Expected match" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L870"
        {
            var __tmp__ = _re.matchString(("z" : stdgo.GoString)), _m:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L871"
                _t.fatal(({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            } else if (_m) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L873"
                _t.fatal(new stdgo.AnyInterface(("Expected no match" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
