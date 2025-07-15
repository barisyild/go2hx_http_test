package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.internal.abi.Abi.Name_asInterface) class Name_static_extension {
    @:keep
    @:tdfield
    static public function tag( _n:stdgo._internal.internal.abi.Abi_name.Name):stdgo.GoString {
        @:recv var _n:stdgo._internal.internal.abi.Abi_name.Name = _n?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L668"
        if (!_n.hasTag()) {
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L669"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var __tmp__ = _n.readVarint((1 : stdgo.GoInt)), _i:stdgo.GoInt = __tmp__._0, _l:stdgo.GoInt = __tmp__._1;
        var __tmp__ = _n.readVarint((((1 : stdgo.GoInt) + _i : stdgo.GoInt) + _l : stdgo.GoInt)), _i2:stdgo.GoInt = __tmp__._0, _l2:stdgo.GoInt = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L673"
        return stdgo._internal.internal.abi.Abi__unsafestringfor._unsafeStringFor(_n.dataChecked(((((1 : stdgo.GoInt) + _i : stdgo.GoInt) + _l : stdgo.GoInt) + _i2 : stdgo.GoInt), ("non-empty string" : stdgo.GoString)), _l2)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function name( _n:stdgo._internal.internal.abi.Abi_name.Name):stdgo.GoString {
        @:recv var _n:stdgo._internal.internal.abi.Abi_name.Name = _n?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L659"
        if (_n.bytes == null) {
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L660"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var __tmp__ = _n.readVarint((1 : stdgo.GoInt)), _i:stdgo.GoInt = __tmp__._0, _l:stdgo.GoInt = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L663"
        return stdgo._internal.internal.abi.Abi__unsafestringfor._unsafeStringFor(_n.dataChecked(((1 : stdgo.GoInt) + _i : stdgo.GoInt), ("non-empty string" : stdgo.GoString)), _l)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function isBlank( _n:stdgo._internal.internal.abi.Abi_name.Name):Bool {
        @:recv var _n:stdgo._internal.internal.abi.Abi_name.Name = _n?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L635"
        if (_n.bytes == null) {
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L636"
            return false;
        };
        var __tmp__ = _n.readVarint((1 : stdgo.GoInt)), __0:stdgo.GoInt = __tmp__._0, _l:stdgo.GoInt = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L639"
        return ((_l == (1 : stdgo.GoInt)) && (_n.data((2 : stdgo.GoInt)).value == (95 : stdgo.GoUInt8)) : Bool);
    }
    @:keep
    @:tdfield
    static public function readVarint( _n:stdgo._internal.internal.abi.Abi_name.Name, _off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        @:recv var _n:stdgo._internal.internal.abi.Abi_name.Name = _n?.__copy__();
        var _v = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L624"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while (true) {
                var _x = @:assignType (_n.dataChecked((_off + _i : stdgo.GoInt), ("read varint" : stdgo.GoString)).value : stdgo.GoUInt8);
_v = (_v + ((((_x & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt) << (((7 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L627"
                if ((_x & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L628"
                    return { _0 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt), _1 : _v };
                };
                _i++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function isEmbedded( _n:stdgo._internal.internal.abi.Abi_name.Name):Bool {
        @:recv var _n:stdgo._internal.internal.abi.Abi_name.Name = _n?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L617"
        return ((_n.bytes.value) & (8 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function hasTag( _n:stdgo._internal.internal.abi.Abi_name.Name):Bool {
        @:recv var _n:stdgo._internal.internal.abi.Abi_name.Name = _n?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L612"
        return ((_n.bytes.value) & (2 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function isExported( _n:stdgo._internal.internal.abi.Abi_name.Name):Bool {
        @:recv var _n:stdgo._internal.internal.abi.Abi_name.Name = _n?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L607"
        return ((_n.bytes.value) & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function data( _n:stdgo._internal.internal.abi.Abi_name.Name, _off:stdgo.GoInt):stdgo.Pointer<stdgo.GoUInt8> {
        @:recv var _n:stdgo._internal.internal.abi.Abi_name.Name = _n?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L602"
        return (stdgo._internal.internal.abi.Abi__addchecked._addChecked((new stdgo.AnyInterface(_n.bytes, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (new stdgo.GoUIntptr(_off) : stdgo.GoUIntptr), ("the runtime doesn\'t need to give you a reason" : stdgo.GoString)).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Pointer<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function dataChecked( _n:stdgo._internal.internal.abi.Abi_name.Name, _off:stdgo.GoInt, _whySafe:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt8> {
        @:recv var _n:stdgo._internal.internal.abi.Abi_name.Name = _n?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L596"
        return (stdgo._internal.internal.abi.Abi__addchecked._addChecked((new stdgo.AnyInterface(_n.bytes, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (new stdgo.GoUIntptr(_off) : stdgo.GoUIntptr), _whySafe?.__copy__()).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Pointer<stdgo.GoUInt8>);
    }
}
