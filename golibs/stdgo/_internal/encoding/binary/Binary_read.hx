package stdgo._internal.encoding.binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.Math;
import stdgo._internal.reflect.Reflect;
function read(_r:stdgo._internal.io.Io_reader.Reader, _order:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder, _data:stdgo.AnyInterface):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L235"
        {
            var _n = @:assignType (stdgo._internal.encoding.binary.Binary__intdatasize._intDataSize(_data) : stdgo.GoInt);
            if (_n != ((0 : stdgo.GoInt))) {
                var _bs = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L237"
                {
                    var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, _bs), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L238"
                        return _err;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L240"
                {
                    final __type__ = _data;
                    if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }))) {
                        var _data:stdgo.Pointer<Bool> = __type__ == null ? (null : stdgo.Pointer<Bool>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<Bool>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<Bool>) : __type__.__underlying__().value);
                        _data.value = _bs[(0 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8));
                    } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int8_kind) }))) {
                        var _data:stdgo.Pointer<stdgo.GoInt8> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt8>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt8>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoInt8>) : __type__.__underlying__().value);
                        _data.value = (_bs[(0 : stdgo.GoInt)] : stdgo.GoInt8);
                    } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))) {
                        var _data:stdgo.Pointer<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt8>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt8>) : __type__.__underlying__().value);
                        _data.value = _bs[(0 : stdgo.GoInt)];
                    } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int16_kind) }))) {
                        var _data:stdgo.Pointer<stdgo.GoInt16> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt16>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt16>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoInt16>) : __type__.__underlying__().value);
                        _data.value = (_order.uint16(_bs) : stdgo.GoInt16);
                    } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }))) {
                        var _data:stdgo.Pointer<stdgo.GoUInt16> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt16>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt16>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt16>) : __type__.__underlying__().value);
                        _data.value = _order.uint16(_bs);
                    } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }))) {
                        var _data:stdgo.Pointer<stdgo.GoInt32> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt32>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoInt32>) : __type__.__underlying__().value);
                        _data.value = (_order.uint32(_bs) : stdgo.GoInt32);
                    } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }))) {
                        var _data:stdgo.Pointer<stdgo.GoUInt32> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt32>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt32>) : __type__.__underlying__().value);
                        _data.value = _order.uint32(_bs);
                    } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }))) {
                        var _data:stdgo.Pointer<stdgo.GoInt64> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt64>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoInt64>) : __type__.__underlying__().value);
                        _data.value = (_order.uint64(_bs) : stdgo.GoInt64);
                    } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }))) {
                        var _data:stdgo.Pointer<stdgo.GoUInt64> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt64>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt64>) : __type__.__underlying__().value);
                        _data.value = _order.uint64(_bs);
                    } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(float32_kind) }))) {
                        var _data:stdgo.Pointer<stdgo.GoFloat32> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoFloat32>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat32>) : __type__.__underlying__().value);
                        _data.value = stdgo._internal.math.Math_float32frombits.float32frombits(_order.uint32(_bs));
                    } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(float64_kind) }))) {
                        var _data:stdgo.Pointer<stdgo.GoFloat64> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoFloat64>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat64>) : __type__.__underlying__().value);
                        _data.value = stdgo._internal.math.Math_float64frombits.float64frombits(_order.uint64(_bs));
                    } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }))) {
                        var _data:stdgo.Slice<Bool> = __type__ == null ? (null : stdgo.Slice<Bool>) : __type__.__underlying__() == null ? (null : stdgo.Slice<Bool>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<Bool>) : __type__.__underlying__().value);
                        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L264"
                        if (_bs != null) for (_i => _x in _bs) {
                            _data[(_i : stdgo.GoInt)] = _x != ((0 : stdgo.GoUInt8));
                        };
                    } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int8_kind) }))) {
                        var _data:stdgo.Slice<stdgo.GoInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt8>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoInt8>) : __type__.__underlying__().value);
                        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L268"
                        if (_bs != null) for (_i => _x in _bs) {
                            _data[(_i : stdgo.GoInt)] = (_x : stdgo.GoInt8);
                        };
                    } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))) {
                        var _data:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value);
                        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L272"
                        _data.__copyTo__(_bs);
                    } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int16_kind) }))) {
                        var _data:stdgo.Slice<stdgo.GoInt16> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt16>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt16>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoInt16>) : __type__.__underlying__().value);
                        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L274"
                        if (_data != null) for (_i => _ in _data) {
                            _data[(_i : stdgo.GoInt)] = (_order.uint16((_bs.__slice__(((2 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt16);
                        };
                    } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }))) {
                        var _data:stdgo.Slice<stdgo.GoUInt16> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt16>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt16>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoUInt16>) : __type__.__underlying__().value);
                        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L278"
                        if (_data != null) for (_i => _ in _data) {
                            _data[(_i : stdgo.GoInt)] = _order.uint16((_bs.__slice__(((2 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        };
                    } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }))) {
                        var _data:stdgo.Slice<stdgo.GoInt32> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt32>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoInt32>) : __type__.__underlying__().value);
                        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L282"
                        if (_data != null) for (_i => _ in _data) {
                            _data[(_i : stdgo.GoInt)] = (_order.uint32((_bs.__slice__(((4 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt32);
                        };
                    } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }))) {
                        var _data:stdgo.Slice<stdgo.GoUInt32> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt32>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoUInt32>) : __type__.__underlying__().value);
                        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L286"
                        if (_data != null) for (_i => _ in _data) {
                            _data[(_i : stdgo.GoInt)] = _order.uint32((_bs.__slice__(((4 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        };
                    } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }))) {
                        var _data:stdgo.Slice<stdgo.GoInt64> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt64>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoInt64>) : __type__.__underlying__().value);
                        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L290"
                        if (_data != null) for (_i => _ in _data) {
                            _data[(_i : stdgo.GoInt)] = (_order.uint64((_bs.__slice__(((8 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt64);
                        };
                    } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }))) {
                        var _data:stdgo.Slice<stdgo.GoUInt64> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt64>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoUInt64>) : __type__.__underlying__().value);
                        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L294"
                        if (_data != null) for (_i => _ in _data) {
                            _data[(_i : stdgo.GoInt)] = _order.uint64((_bs.__slice__(((8 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        };
                    } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(float32_kind) }))) {
                        var _data:stdgo.Slice<stdgo.GoFloat32> = __type__ == null ? (null : stdgo.Slice<stdgo.GoFloat32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoFloat32>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoFloat32>) : __type__.__underlying__().value);
                        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L298"
                        if (_data != null) for (_i => _ in _data) {
                            _data[(_i : stdgo.GoInt)] = stdgo._internal.math.Math_float32frombits.float32frombits(_order.uint32((_bs.__slice__(((4 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)));
                        };
                    } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(float64_kind) }))) {
                        var _data:stdgo.Slice<stdgo.GoFloat64> = __type__ == null ? (null : stdgo.Slice<stdgo.GoFloat64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoFloat64>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoFloat64>) : __type__.__underlying__().value);
                        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L302"
                        if (_data != null) for (_i => _ in _data) {
                            _data[(_i : stdgo.GoInt)] = stdgo._internal.math.Math_float64frombits.float64frombits(_order.uint64((_bs.__slice__(((8 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)));
                        };
                    } else {
                        var _data:stdgo.AnyInterface = __type__?.__underlying__();
                        _n = (0 : stdgo.GoInt);
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L308"
                if (_n != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L309"
                    return (null : stdgo.Error);
                };
            };
        };
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_data)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _size = @:assignType (-1 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L316"
        {
            final __value__ = _v.kind();
            if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _v = _v.elem()?.__copy__();
                _size = stdgo._internal.encoding.binary.Binary__datasize._dataSize(_v?.__copy__());
            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _size = stdgo._internal.encoding.binary.Binary__datasize._dataSize(_v?.__copy__());
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L323"
        if ((_size < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L324"
            return stdgo._internal.errors.Errors_new_.new_((("binary.Read: invalid type " : stdgo.GoString) + (stdgo._internal.reflect.Reflect_typeof.typeOf(_data).string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        };
        var _d = (stdgo.Go.setRef(({ _order : _order, _buf : (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotbinarydotbinary_t_decoderdott_decoder.__type__stdgodot_internaldotencodingdotbinarydotBinary_t_decoderdotT_decoder })) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_decoder.T_decoder>);
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L327"
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L328"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L330"
        _d._value(_v?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L331"
        return (null : stdgo.Error);
    }
