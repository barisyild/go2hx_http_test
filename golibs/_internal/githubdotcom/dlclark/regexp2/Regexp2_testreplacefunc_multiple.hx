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
function testReplaceFunc_Multiple(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _re = _internal.githubdotcom.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("test" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        var _count = @:assignType (0 : stdgo.GoInt);
        var __tmp__ = _re.replaceFunc(("This test is another test for stuff" : stdgo.GoString), function(_m:_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match):stdgo.GoString {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace_test.go#L122"
            _count++;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace_test.go#L123"
            return stdgo._internal.strconv.Strconv_itoa.itoa(_count)?.__copy__();
        }, (-1 : stdgo.GoInt), (-1 : stdgo.GoInt)), _str:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace_test.go#L125"
        if (_err != null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace_test.go#L126"
            _t.fatalf(("Unexpected err: %v" : stdgo.GoString), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace_test.go#L128"
        {
            var __0 = @:assignType (("This 1 is another 2 for stuff" : stdgo.GoString) : stdgo.GoString), __1 = @:assignType (_str?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
            if (_want != (_got)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace_test.go#L129"
                _t.fatalf(("Replace failed, wanted %v, got %v" : stdgo.GoString), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
