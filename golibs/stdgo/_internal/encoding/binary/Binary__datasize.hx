package stdgo._internal.encoding.binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.Math;
import stdgo._internal.reflect.Reflect;
function _dataSize(_v:stdgo._internal.reflect.Reflect_value.Value):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L477"
        {
            final __value__ = _v.kind();
            if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L479"
                {
                    var _s = @:assignType (stdgo._internal.encoding.binary.Binary__sizeof._sizeof(_v.type().elem()) : stdgo.GoInt);
                    if ((_s >= (0 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L480"
                        return (_s * _v.len() : stdgo.GoInt);
                    };
                };
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _t = @:assignType (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L485"
                {
                    var __tmp__ = stdgo._internal.encoding.binary.Binary__structsize._structSize.load(({
                        final __t__ = _t;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    })), _size:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L486"
                        return (stdgo.Go.typeAssert(_size, stdgo._internal.internal.reflect.GoType.basic(int_kind)) : stdgo.GoInt);
                    };
                };
                var _size = @:assignType (stdgo._internal.encoding.binary.Binary__sizeof._sizeof(_t) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L489"
                stdgo._internal.encoding.binary.Binary__structsize._structSize.store(({
                    final __t__ = _t;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), new stdgo.AnyInterface(_size, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L490"
                return _size;
            } else {
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L493"
                if (_v.isValid()) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L494"
                    return stdgo._internal.encoding.binary.Binary__sizeof._sizeof(_v.type());
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L498"
        return (-1 : stdgo.GoInt);
    }
