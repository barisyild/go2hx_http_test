package stdgo._internal.crypto.ecdh;
@:keep @:allow(stdgo._internal.crypto.ecdh.Ecdh.T_nistCurve_asInterface) class T_nistCurve_static_extension {
    @:keep
    @:tdfield
    overload inline extern static public function newPublicKey<Point>( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Point>>, _key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>; var _1 : stdgo.Error; } return newPublicKey__tp__0(_c, _key);
    @:tdfield
    static public function newPublicKey__tp__0<Point>( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Point>>, _key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Point>> = _c;
        trace("funclit");
        throw "not implemented: newPublicKey";
    }
    @:keep
    @:tdfield
    overload inline extern static public function newPrivateKey<Point>( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Point>>, _key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; } return newPrivateKey__tp__0(_c, _key);
    @:tdfield
    static public function newPrivateKey__tp__0<Point>( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Point>>, _key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Point>> = _c;
        trace("funclit");
        throw "not implemented: newPrivateKey";
    }
    @:keep
    @:tdfield
    overload inline extern static public function generateKey<Point>( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Point>>, _rand:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; } return generateKey__tp__0(_c, _rand);
    @:tdfield
    static public function generateKey__tp__0<Point>( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Point>>, _rand:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Point>> = _c;
        trace("funclit");
        throw "not implemented: generateKey";
    }
    @:keep
    @:tdfield
    overload inline extern static public function string<Point>( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Point>>):stdgo.GoString return string__tp__0(_c);
    @:tdfield
    static public function string__tp__0<Point>( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Point>>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Point>> = _c;
        trace("funclit");
        throw "not implemented: string";
    }
}
