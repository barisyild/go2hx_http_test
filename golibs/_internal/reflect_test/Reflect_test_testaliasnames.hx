package _internal.reflect_test;
function testAliasNames(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _t1 = @:assignType ({ _byte : (1 : stdgo.GoUInt8), _uint8 : (2 : stdgo.GoUInt8), _int : (3 : stdgo.GoInt), _int32 : (4 : stdgo.GoInt32), _rune : (5 : stdgo.GoInt32) } : _internal.reflect_test.Reflect_test_talias1.Talias1);
        var _out = @:assignType (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%#v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_t1, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_talias1dottalias1.__type___internaldotreflect_testdotReflect_test_talias1dotTalias1), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_talias1dottalias1.__type___internaldotreflect_testdotReflect_test_talias1dotTalias1)))?.__copy__() : stdgo.GoString);
        var _want = @:assignType (("reflect_test.Talias1{byte:0x1, uint8:0x2, int:3, int32:4, rune:5}" : stdgo.GoString) : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7525"
        if (_out != (_want)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7526"
            _t.errorf(("Talias1 print:\nhave: %s\nwant: %s" : stdgo.GoString), new stdgo.AnyInterface(_out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        var _t2 = @:assignType ({ tint : (1 : _internal.reflect_test.Reflect_test_tint.Tint), tint2 : (2 : _internal.reflect_test.Reflect_test_tint.Tint) } : _internal.reflect_test.Reflect_test_talias2.Talias2);
        _out = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%#v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_t2, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_talias2dottalias2.__type___internaldotreflect_testdotReflect_test_talias2dotTalias2), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_talias2dottalias2.__type___internaldotreflect_testdotReflect_test_talias2dotTalias2)))?.__copy__();
        _want = ("reflect_test.Talias2{Tint:1, Tint2:2}" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7532"
        if (_out != (_want)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7533"
            _t.errorf(("Talias2 print:\nhave: %s\nwant: %s" : stdgo.GoString), new stdgo.AnyInterface(_out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
