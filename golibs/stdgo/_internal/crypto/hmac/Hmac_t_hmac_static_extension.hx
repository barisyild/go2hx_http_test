package stdgo._internal.crypto.hmac;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.subtle.Subtle;
@:keep @:allow(stdgo._internal.crypto.hmac.Hmac.T_hmac_asInterface) class T_hmac_static_extension {
    @:keep
    @:tdfield
    static public function reset( _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac>):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac> = _h;
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L80"
        if ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._marshaled) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L81"
            {
                var _err = @:assignType ((stdgo.Go.typeAssert(({
                    final __t__ = (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inner;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldothashdothash_hashdothash.__type__stdgodot_internaldothashdotHash_hashdotHash)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodothmacdothmac_t_marshalabledott_marshalable.__type__stdgodot_internaldotcryptodothmacdotHmac_t_marshalabledotT_marshalable) : stdgo._internal.crypto.hmac.Hmac_t_marshalable.T_marshalable).unmarshalBinary((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ipad) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L82"
                    throw ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L84"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L87"
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inner.reset();
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L88"
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inner.write((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ipad);
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inner;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldothashdothash_hashdothash.__type__stdgodot_internaldothashdotHash_hashdotHash)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodothmacdothmac_t_marshalabledott_marshalable.__type__stdgodot_internaldotcryptodothmacdotHmac_t_marshalabledotT_marshalable) : stdgo._internal.crypto.hmac.Hmac_t_marshalable.T_marshalable), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.crypto.hmac.Hmac_t_marshalable.T_marshalable), _1 : false };
        }, _marshalableInner = __tmp__._0, _innerOK = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L97"
        if (!_innerOK) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L98"
            return;
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outer;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldothashdothash_hashdothash.__type__stdgodot_internaldothashdotHash_hashdotHash)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodothmacdothmac_t_marshalabledott_marshalable.__type__stdgodot_internaldotcryptodothmacdotHmac_t_marshalabledotT_marshalable) : stdgo._internal.crypto.hmac.Hmac_t_marshalable.T_marshalable), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.crypto.hmac.Hmac_t_marshalable.T_marshalable), _1 : false };
        }, _marshalableOuter = __tmp__._0, _outerOK = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L101"
        if (!_outerOK) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L102"
            return;
        };
        var __tmp__ = _marshalableInner.marshalBinary(), _imarshal:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L106"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L107"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L110"
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outer.reset();
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L111"
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outer.write((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opad);
        var __tmp__ = _marshalableOuter.marshalBinary(), _omarshal:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L113"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L114"
            return;
        };
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ipad = _imarshal;
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opad = _omarshal;
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._marshaled = true;
    }
    @:keep
    @:tdfield
    static public function blockSize( _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac>):stdgo.GoInt {
        @:recv var _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac> = _h;
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L77"
        return (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inner.blockSize();
    }
    @:keep
    @:tdfield
    static public function size( _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac>):stdgo.GoInt {
        @:recv var _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac> = _h;
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L76"
        return (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outer.size();
    }
    @:keep
    @:tdfield
    static public function write( _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac> = _h;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L73"
        return (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inner.write(_p);
    }
    @:keep
    @:tdfield
    static public function sum( _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac>, _in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac> = _h;
        var _origLen = @:assignType (_in.length : stdgo.GoInt);
        _in = (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inner.sum(_in);
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L60"
        if ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._marshaled) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L61"
            {
                var _err = @:assignType ((stdgo.Go.typeAssert(({
                    final __t__ = (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outer;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldothashdothash_hashdothash.__type__stdgodot_internaldothashdotHash_hashdotHash)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodothmacdothmac_t_marshalabledott_marshalable.__type__stdgodot_internaldotcryptodothmacdotHmac_t_marshalabledotT_marshalable) : stdgo._internal.crypto.hmac.Hmac_t_marshalable.T_marshalable).unmarshalBinary((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opad) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L62"
                    throw ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    });
                };
            };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L65"
            (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outer.reset();
            //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L66"
            (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outer.write((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opad);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L68"
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outer.write((_in.__slice__(_origLen) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L69"
        return (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outer.sum((_in.__slice__(0, _origLen) : stdgo.Slice<stdgo.GoUInt8>));
    }
}
