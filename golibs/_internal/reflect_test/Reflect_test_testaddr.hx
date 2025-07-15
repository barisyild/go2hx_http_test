package _internal.reflect_test;
function testAddr(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _p:_internal.reflect_test.Reflect_test_t__struct_102.T__struct_102 = ({ x : (0 : stdgo.GoInt), y : (0 : stdgo.GoInt) } : _internal.reflect_test.Reflect_test_t__struct_102.T__struct_102);
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.structType([{ name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }]) })) : stdgo.Ref<_internal.reflect_test.Reflect_test_t__struct_102.T__struct_102>), stdgo._internal.internal.reflect.GoType.structType([{ name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.structType([{ name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }]) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        _v = _v.elem()?.__copy__();
        _v = _v.addr()?.__copy__();
        _v = _v.elem()?.__copy__();
        _v = _v.field((0 : stdgo.GoInt))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3402"
        _v.setInt((2i64 : stdgo.GoInt64));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3403"
        if (_p.x != ((2 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3404"
            _t.errorf(("Addr.Elem.Set failed to set value" : stdgo.GoString));
        };
        var _q = (stdgo.Go.setRef(_p, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.structType([{ name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }]) })) : stdgo.Ref<_internal.reflect_test.Reflect_test_t__struct_102.T__struct_102>);
        _v = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.pointer(_q), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.structType([{ name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }]) }) })))).elem()?.__copy__();
        _v = _v.addr()?.__copy__();
        _v = _v.elem()?.__copy__();
        _v = _v.elem()?.__copy__();
        _v = _v.addr()?.__copy__();
        _v = _v.elem()?.__copy__();
        _v = _v.field((0 : stdgo.GoInt))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3417"
        _v.setInt((3i64 : stdgo.GoInt64));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3418"
        if (_p.x != ((3 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3419"
            _t.errorf(("Addr.Elem.Set failed to set value" : stdgo.GoString));
        };
        var _qq = @:assignType ({
            final x = _p;
            ({ x : x.x, y : x.y } : _internal.reflect_test.Reflect_test_t__struct_102.T__struct_102);
        } : _internal.reflect_test.Reflect_test_t__struct_102.T__struct_102);
        _v = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_qq, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.structType([{ name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }]) })) : stdgo.Ref<_internal.reflect_test.Reflect_test_t__struct_102.T__struct_102>), stdgo._internal.internal.reflect.GoType.structType([{ name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.structType([{ name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }]) })))).elem()?.__copy__();
        var _v0 = @:assignType (_v?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        _v = _v.addr()?.__copy__();
        _v = _v.elem()?.__copy__();
        _v = _v.field((0 : stdgo.GoInt))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3430"
        _v.setInt((4i64 : stdgo.GoInt64));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3431"
        if (_p.x != ((3 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3432"
            _t.errorf(("somehow value Set changed original p" : stdgo.GoString));
        };
        _p = {
            final x = (stdgo.Go.typeAssert(_v0.interface_(), stdgo._internal.internal.reflect.GoType.structType([{ name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])) : _internal.reflect_test.Reflect_test_t__struct_102.T__struct_102);
            ({ x : x.x, y : x.y } : _internal.reflect_test.Reflect_test_t__struct_102.T__struct_102);
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3437"
        if (_p.x != ((4 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3438"
            _t.errorf(("Addr.Elem.Set valued to set value in top value" : stdgo.GoString));
        };
        var _s:_internal.reflect_test.Reflect_test_t__struct_103.T__struct_103 = ({ b : (null : stdgo.Pointer<Bool>) } : _internal.reflect_test.Reflect_test_t__struct_103.T__struct_103);
        var _ps = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_s, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.structType([{ name : "b", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }) }, optional : false }]) })) : stdgo.Ref<_internal.reflect_test.Reflect_test_t__struct_103.T__struct_103>), stdgo._internal.internal.reflect.GoType.structType([{ name : "b", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }) }, optional : false }])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.structType([{ name : "b", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }) }, optional : false }]) })))).elem().field((0 : stdgo.GoInt)).addr().interface_() : stdgo.AnyInterface);
        ((stdgo.Go.typeAssert(_ps, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }) })) : stdgo.Pointer<stdgo.Pointer<Bool>>)).value = stdgo.Go.pointer(false);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3449"
        if (_s.b == null) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3450"
            _t.errorf(("Addr.Interface direct assignment failed" : stdgo.GoString));
        };
    }
