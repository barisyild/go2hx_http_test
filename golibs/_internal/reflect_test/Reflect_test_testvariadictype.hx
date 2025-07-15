package _internal.reflect_test;
function testVariadicType(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _f:(stdgo.GoInt, haxe.Rest<stdgo.GoFloat64>) -> Void = null;
        var _typ = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(_f, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(true, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(float64_kind) })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))) : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3233"
        if (((_typ.numIn() == (2 : stdgo.GoInt)) && ((_typ.in_((0 : stdgo.GoInt)).string() : String) == (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((0 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).string() : String)) : Bool)) {
            var _sl = @:assignType (_typ.in_((1 : stdgo.GoInt)) : stdgo._internal.reflect.Reflect_type_.Type_);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3235"
            if (_sl.kind() == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3236"
                if ((_sl.elem().string() : String) == (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((0 : stdgo.GoFloat64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind)))).string() : String)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3238"
                    return;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3244"
        _t.errorf(("want NumIn() = 2, In(0) = int, In(1) = []float64" : stdgo.GoString));
        var _s = @:assignType (stdgo._internal.fmt.Fmt_sprintf.sprintf(("have NumIn() = %d" : stdgo.GoString), new stdgo.AnyInterface(_typ.numIn(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3246"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _typ.numIn() : Bool)) {
                _s = (_s + (stdgo._internal.fmt.Fmt_sprintf.sprintf(((", In(%d) = %s" : stdgo.GoString) : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                    final __t__ = _typ.in_(_i);
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))).__copy__() : stdgo.GoString);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3249"
        _t.error(new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
    }
