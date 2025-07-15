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
function testControlBracketGroups(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _re = _internal.githubdotcom.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("(cat)(\\c[*)(dog)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        var _inp = @:assignType ((stdgo.Go.str("asdlkcat", 27, "dogiwod") : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1144"
        {
            var __0 = @:assignType (4 : stdgo.GoInt), __1 = @:assignType ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capsize : stdgo.GoInt);
var _got = __1, _want = __0;
            if (_want != (_got)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1145"
                _t.fatalf(("Capsize wrong, want %v, got %v" : stdgo.GoString), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
        var __tmp__ = _re.findStringMatch(_inp?.__copy__()), _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1149"
        if (({
            final value = _m;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1150"
            _t.fatal(new stdgo.AnyInterface(("expected match" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        var _g = _m.groups();
        var _want = (new stdgo.Slice<stdgo.GoString>(4, 4, ...[(stdgo.Go.str("cat", 27, "dog") : stdgo.GoString)?.__copy__(), ("cat" : stdgo.GoString), (stdgo.Go.str(27) : stdgo.GoString)?.__copy__(), ("dog" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1155"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_g.length) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1156"
                if (_want[(_i : stdgo.GoInt)] != ((_g[(_i : stdgo.GoInt)].string() : stdgo.GoString))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1157"
                    _t.fatalf(("Bad group num %v, want %v, got %v" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_want[(_i : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_g[(_i : stdgo.GoInt)].string() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
                _i++;
            };
        };
    }
