package stdgo._internal.encoding.binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.Math;
import stdgo._internal.reflect.Reflect;
function _intDataSize(_data:stdgo.AnyInterface):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L774"
        {
            final __type__ = _data;
            if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(bool_kind)) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(int8_kind)) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(uint8_kind)) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int8_kind) })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))) {
                var _data:stdgo.AnyInterface = __type__?.__underlying__();
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L776"
                return (1 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }))) {
                var _data:stdgo.Slice<Bool> = __type__ == null ? (null : stdgo.Slice<Bool>) : __type__.__underlying__() == null ? (null : stdgo.Slice<Bool>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<Bool>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L778"
                return (_data.length);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int8_kind) }))) {
                var _data:stdgo.Slice<stdgo.GoInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt8>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoInt8>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L780"
                return (_data.length);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))) {
                var _data:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L782"
                return (_data.length);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(int16_kind)) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(uint16_kind)) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int16_kind) })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }))) {
                var _data:stdgo.AnyInterface = __type__?.__underlying__();
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L784"
                return (2 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int16_kind) }))) {
                var _data:stdgo.Slice<stdgo.GoInt16> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt16>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt16>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoInt16>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L786"
                return ((2 : stdgo.GoInt) * (_data.length) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }))) {
                var _data:stdgo.Slice<stdgo.GoUInt16> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt16>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt16>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoUInt16>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L788"
                return ((2 : stdgo.GoInt) * (_data.length) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(int32_kind)) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(uint32_kind)) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }))) {
                var _data:stdgo.AnyInterface = __type__?.__underlying__();
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L790"
                return (4 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }))) {
                var _data:stdgo.Slice<stdgo.GoInt32> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt32>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoInt32>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L792"
                return ((4 : stdgo.GoInt) * (_data.length) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }))) {
                var _data:stdgo.Slice<stdgo.GoUInt32> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt32>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoUInt32>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L794"
                return ((4 : stdgo.GoInt) * (_data.length) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(int64_kind)) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(uint64_kind)) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }))) {
                var _data:stdgo.AnyInterface = __type__?.__underlying__();
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L796"
                return (8 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }))) {
                var _data:stdgo.Slice<stdgo.GoInt64> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt64>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoInt64>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L798"
                return ((8 : stdgo.GoInt) * (_data.length) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }))) {
                var _data:stdgo.Slice<stdgo.GoUInt64> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt64>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoUInt64>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L800"
                return ((8 : stdgo.GoInt) * (_data.length) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(float32_kind)) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(float32_kind) }))) {
                var _data:stdgo.AnyInterface = __type__?.__underlying__();
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L802"
                return (4 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(float64_kind)) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(float64_kind) }))) {
                var _data:stdgo.AnyInterface = __type__?.__underlying__();
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L804"
                return (8 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(float32_kind) }))) {
                var _data:stdgo.Slice<stdgo.GoFloat32> = __type__ == null ? (null : stdgo.Slice<stdgo.GoFloat32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoFloat32>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoFloat32>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L806"
                return ((4 : stdgo.GoInt) * (_data.length) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(float64_kind) }))) {
                var _data:stdgo.Slice<stdgo.GoFloat64> = __type__ == null ? (null : stdgo.Slice<stdgo.GoFloat64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoFloat64>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoFloat64>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L808"
                return ((8 : stdgo.GoInt) * (_data.length) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L810"
        return (0 : stdgo.GoInt);
    }
