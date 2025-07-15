package _internal.fmt_test;
function testMapPrinter(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _m0 = (({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>) : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>);
        var _s = @:assignType (stdgo._internal.fmt.Fmt_sprint.sprint(new stdgo.AnyInterface(_m0, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1583"
        if (_s != (("map[]" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1584"
            _t.errorf(("empty map printed as %q not %q" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("map[]" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        var _m1 = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set((1 : stdgo.GoInt), ("one" : stdgo.GoString));
x.set((2 : stdgo.GoInt), ("two" : stdgo.GoString));
x.set((3 : stdgo.GoInt), ("three" : stdgo.GoString));
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>);
        var _a = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("1:one" : stdgo.GoString), ("2:two" : stdgo.GoString), ("3:three" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1588"
        _internal.fmt_test.Fmt_test__presentinmap._presentInMap(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), new stdgo.AnyInterface(_m1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))))?.__copy__(), _a, _t);
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1589"
        _internal.fmt_test.Fmt_test__presentinmap._presentInMap(stdgo._internal.fmt.Fmt_sprint.sprint(new stdgo.AnyInterface(_m1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))))?.__copy__(), _a, _t);
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1591"
        if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(stdgo._internal.fmt.Fmt_sprint.sprint(new stdgo.AnyInterface((stdgo.Go.setRef(_m1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) })) : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoString>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }))))?.__copy__(), ("&" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1592"
            _t.errorf(("no initial & for address of map" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1594"
        _internal.fmt_test.Fmt_test__presentinmap._presentInMap(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), new stdgo.AnyInterface((stdgo.Go.setRef(_m1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) })) : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoString>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }))))?.__copy__(), _a, _t);
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1595"
        _internal.fmt_test.Fmt_test__presentinmap._presentInMap(stdgo._internal.fmt.Fmt_sprint.sprint(new stdgo.AnyInterface((stdgo.Go.setRef(_m1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) })) : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoString>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }))))?.__copy__(), _a, _t);
    }
