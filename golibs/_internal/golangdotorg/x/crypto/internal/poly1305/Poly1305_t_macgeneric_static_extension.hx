package _internal.golangdotorg.x.crypto.internal.poly1305;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
@:keep @:allow(_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305.T_macGeneric_asInterface) class T_macGeneric_static_extension {
    @:keep
    @:tdfield
    static public function sum( _h:stdgo.Ref<_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macgeneric.T_macGeneric>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):Void {
        @:recv var _h:stdgo.Ref<_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macgeneric.T_macGeneric> = _h;
        var _state = @:assignType ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._macState?.__copy__() : _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macstate.T_macState);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L88"
        if (((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L89"
            _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__updategeneric._updateGeneric((stdgo.Go.setRef(_state, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotinternaldotpoly1305dotpoly1305_t_macstatedott_macstate.__type___internaldotgolangdotorgdotxdotcryptodotinternaldotpoly1305dotPoly1305_t_macstatedotT_macState })) : stdgo.Ref<_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macstate.T_macState>), ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buffer.__slice__(0, (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset) : stdgo.Slice<stdgo.GoUInt8>));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L91"
        _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__finalize._finalize(_out, (stdgo.Go.setRef(_state._h, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, 3) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>), (stdgo.Go.setRef(_state._s, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, 2) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>));
    }
    @:keep
    @:tdfield
    static public function write( _h:stdgo.Ref<_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macgeneric.T_macGeneric>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macgeneric.T_macGeneric> = _h;
        var _nn = @:assignType (_p.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L63"
        if (((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset > (0 : stdgo.GoInt) : Bool)) {
            var _n = @:assignType (((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buffer.__slice__((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_p) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L65"
            if ((((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset + _n : stdgo.GoInt) < (16 : stdgo.GoInt) : Bool)) {
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset = ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset + (_n) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L67"
                return { _0 : _nn, _1 : (null : stdgo.Error) };
            };
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset = (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L71"
            _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__updategeneric._updateGeneric((stdgo.Go.setRef((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._macState, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotinternaldotpoly1305dotpoly1305_t_macstatedott_macstate.__type___internaldotgolangdotorgdotxdotcryptodotinternaldotpoly1305dotPoly1305_t_macstatedotT_macState })) : stdgo.Ref<_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macstate.T_macState>), ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buffer.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L73"
        {
            var _n = @:assignType ((_p.length) - (((_p.length) % (16 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L74"
                _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__updategeneric._updateGeneric((stdgo.Go.setRef((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._macState, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotinternaldotpoly1305dotpoly1305_t_macstatedott_macstate.__type___internaldotgolangdotorgdotxdotcryptodotinternaldotpoly1305dotPoly1305_t_macstatedotT_macState })) : stdgo.Ref<_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macstate.T_macState>), (_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
                _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L77"
        if (((_p.length) > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset = ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset + (((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buffer.__slice__((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_p)) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L80"
        return { _0 : _nn, _1 : (null : stdgo.Error) };
    }
}
