package _internal.reflect_test;
function testPtrTo(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x:stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value null, _x__pointer__ = stdgo.Go.pointer(_x);
        var _y = _x__pointer__;
        var _z = stdgo.Go.pointer(_y);
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        var _typ = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(_z, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind) }) })))) : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3357"
        {
            _i = (0 : stdgo.GoInt);
            while ((_i < (100 : stdgo.GoInt) : Bool)) {
                _typ = stdgo._internal.reflect.Reflect_pointerto.pointerTo(_typ);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3360"
        {
            _i = (0 : stdgo.GoInt);
            while ((_i < (100 : stdgo.GoInt) : Bool)) {
                _typ = _typ.elem();
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3363"
        if (!((_typ.string() : String) == (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(_z, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind) }) })))).string() : String))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3364"
            _t.errorf(("after 100 PointerTo and Elem, have %s, want %s" : stdgo.GoString), ({
                final __t__ = _typ;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), ({
                final __t__ = stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(_z, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind) }) }))));
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
    }
