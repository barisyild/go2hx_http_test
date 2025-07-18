package stdgo._internal.hash.crc32;
import stdgo._internal.errors.Errors;
@:keep @:allow(stdgo._internal.hash.crc32.Crc32.T_digest_asInterface) class T_digest_static_extension {
    @:keep
    @:tdfield
    static public function sum( _d:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest>, _in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest> = _d;
        var _s = @:assignType (_d.sum32() : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32.go#L241"
        return (_in.__append__(((_s >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_s >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_s >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), (_s : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function sum32( _d:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest>):stdgo.GoUInt32 {
        @:recv var _d:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest> = _d;
        //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32.go#L237"
        return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._crc;
    }
    @:keep
    @:tdfield
    static public function write( _d:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest> = _d;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._crc = stdgo._internal.hash.crc32.Crc32__update._update((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._crc, (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tab, _p, false);
        //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32.go#L234"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_p.length), _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function unmarshalBinary( _d:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest> = _d;
        //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32.go#L181"
        if ((((_b.length) < ((stdgo.Go.str("crc", 1) : stdgo.GoString).length) : Bool) || (((_b.__slice__(0, ((stdgo.Go.str("crc", 1) : stdgo.GoString).length)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != (stdgo.Go.str("crc", 1) : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32.go#L182"
            return stdgo._internal.errors.Errors_new_.new_(("hash/crc32: invalid hash state identifier" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32.go#L184"
        if ((_b.length) != ((12 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32.go#L185"
            return stdgo._internal.errors.Errors_new_.new_(("hash/crc32: invalid hash state size" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32.go#L187"
        if (stdgo._internal.hash.crc32.Crc32__tablesum._tableSum((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tab) != (stdgo._internal.hash.crc32.Crc32__readuint32._readUint32((_b.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)))) {
            //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32.go#L188"
            return stdgo._internal.errors.Errors_new_.new_(("hash/crc32: tables do not match" : stdgo.GoString));
        };
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._crc = stdgo._internal.hash.crc32.Crc32__readuint32._readUint32((_b.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32.go#L191"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalBinary( _d:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest> = _d;
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (12 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__(...((stdgo.Go.str("crc", 1) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        _b = stdgo._internal.hash.crc32.Crc32__appenduint32._appendUint32(_b, stdgo._internal.hash.crc32.Crc32__tablesum._tableSum((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tab));
        _b = stdgo._internal.hash.crc32.Crc32__appenduint32._appendUint32(_b, (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._crc);
        //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32.go#L177"
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function reset( _d:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest> = _d;
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._crc = (0u32 : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function blockSize( _d:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest> = _d;
        //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32.go#L163"
        return (1 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function size( _d:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest> = _d;
        //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32.go#L161"
        return (4 : stdgo.GoInt);
    }
}
