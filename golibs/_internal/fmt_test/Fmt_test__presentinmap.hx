package _internal.fmt_test;
function _presentInMap(_s:stdgo.GoString, _a:stdgo.Slice<stdgo.GoString>, _t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1567"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_a.length) : Bool)) {
                var _loc = @:assignType (stdgo._internal.strings.Strings_index.index(_s.__copy__(), _a[(_i : stdgo.GoInt)].__copy__()) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1569"
                if ((_loc < (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1570"
                    _t.errorf(("map print: expected to find %q in %q" : stdgo.GoString), new stdgo.AnyInterface(_a[(_i : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
_loc = (_loc + ((_a[(_i : stdgo.GoInt)].length)) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1574"
                if (((_loc >= (_s.length) : Bool) || (((_s[(_loc : stdgo.GoInt)] != (32 : stdgo.GoUInt8)) && (_s[(_loc : stdgo.GoInt)] != (93 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1575"
                    _t.errorf(("map print: %q not properly terminated in %q" : stdgo.GoString), new stdgo.AnyInterface(_a[(_i : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
                _i++;
            };
        };
    }
