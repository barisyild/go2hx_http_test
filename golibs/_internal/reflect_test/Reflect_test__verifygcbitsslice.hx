package _internal.reflect_test;
function _verifyGCBitsSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _cap:stdgo.GoInt, _bits:stdgo.Slice<stdgo.GoUInt8>):Void {
        var _val = @:assignType (stdgo._internal.reflect.Reflect_makeslice.makeSlice(_typ, (0 : stdgo.GoInt), _cap)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _data = @:assignType (stdgo._internal.reflect.Reflect_newat.newAt(stdgo._internal.reflect.Reflect_arrayof.arrayOf(_cap, _typ), _val.unsafePointer())?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _heapBits = stdgo._internal.reflect.Reflect_gcbits.gCBits(_data.interface_());
        _bits = _internal.reflect_test.Reflect_test__trimbitmap._trimBitmap(_internal.reflect_test.Reflect_test__rep._rep(_cap, _bits));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7031"
        if (!stdgo._internal.bytes.Bytes_equal.equal(_heapBits, _bits)) {
            var __tmp__ = stdgo._internal.runtime.Runtime_caller.caller((1 : stdgo.GoInt)), __1:stdgo.GoUIntptr = __tmp__._0, __2:stdgo.GoString = __tmp__._1, _line:stdgo.GoInt = __tmp__._2, __3:Bool = __tmp__._3;
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7033"
            _t.errorf(("line %d: heapBits incorrect for make(%v, 0, %v)\nhave %v\nwant %v" : stdgo.GoString), new stdgo.AnyInterface(_line, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                final __t__ = _typ;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), new stdgo.AnyInterface(_cap, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_heapBits, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_bits, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
        };
    }
