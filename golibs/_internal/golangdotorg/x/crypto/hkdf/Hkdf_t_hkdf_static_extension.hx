package _internal.golangdotorg.x.crypto.hkdf;
import stdgo._internal.crypto.hmac.Hmac;
import stdgo._internal.errors.Errors;
@:keep @:allow(_internal.golangdotorg.x.crypto.hkdf.Hkdf.T_hkdf_asInterface) class T_hkdf_static_extension {
    @:keep
    @:tdfield
    static public function read( _f:stdgo.Ref<_internal.golangdotorg.x.crypto.hkdf.Hkdf_t_hkdf.T_hkdf>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<_internal.golangdotorg.x.crypto.hkdf.Hkdf_t_hkdf.T_hkdf> = _f;
        var _need = @:assignType (_p.length : stdgo.GoInt);
        var _remains = @:assignType (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.length) + (((((255 : stdgo.GoUInt8) - (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._counter : stdgo.GoUInt8) + (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt) * (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/hkdf/hkdf.go#L50"
        if ((_remains < _need : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/hkdf/hkdf.go#L51"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("hkdf: entropy limit reached" : stdgo.GoString)) };
        };
        var _n = @:assignType (_p.__copyTo__((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf) : stdgo.GoInt);
        _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/hkdf/hkdf.go#L58"
        while (((_p.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/hkdf/hkdf.go#L59"
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._expander.reset();
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/hkdf/hkdf.go#L60"
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._expander.write((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/hkdf/hkdf.go#L61"
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._expander.write((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/hkdf/hkdf.go#L62"
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._expander.write((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._counter]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._expander.sum(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/hkdf/hkdf.go#L64"
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._counter++;
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev;
            _n = _p.__copyTo__((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf);
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/hkdf/hkdf.go#L74"
        return { _0 : _need, _1 : (null : stdgo.Error) };
    }
}
