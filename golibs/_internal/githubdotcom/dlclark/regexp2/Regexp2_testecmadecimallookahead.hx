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
function testECMADecimalLookahead(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _re = _internal.githubdotcom.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("\\1(A)" : stdgo.GoString), (256 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        var __tmp__ = _re.findStringMatch(("AA" : stdgo.GoString)), _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L727"
        if (_err != null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L728"
            _t.fatal(({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L731"
        {
            var _c = @:assignType (_m.groupCount() : stdgo.GoInt);
            if (_c != ((2 : stdgo.GoInt))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L732"
                _t.fatalf(("Group count !=2 (%d)" : stdgo.GoString), new stdgo.AnyInterface(_c, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L735"
        {
            var _s = @:assignType ((_m.groupByNumber((0 : stdgo.GoInt)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_s != (("A" : stdgo.GoString))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L736"
                _t.fatalf(("Group0 != \'A\' (\'%s\')" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L739"
        {
            var _s = @:assignType ((_m.groupByNumber((1 : stdgo.GoInt)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_s != (("A" : stdgo.GoString))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L740"
                _t.fatalf(("Group1 != \'A\' (\'%s\')" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
