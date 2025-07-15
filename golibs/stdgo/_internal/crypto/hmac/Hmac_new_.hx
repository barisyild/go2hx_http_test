package stdgo._internal.crypto.hmac;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.subtle.Subtle;
function new_(_h:() -> stdgo._internal.hash.Hash_hash.Hash, _key:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.hash.Hash_hash.Hash {
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L130"
        if (false) {
            var _hm = @:assignType (stdgo._internal.crypto.internal.boring.Boring_newhmac.newHMAC(_h, _key) : stdgo._internal.hash.Hash_hash.Hash);
            //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L132"
            if (_hm != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L133"
                return _hm;
            };
        };
        var _hm = (stdgo.Go.setRef(({} : stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodothmacdothmac_t_hmacdott_hmac.__type__stdgodot_internaldotcryptodothmacdotHmac_t_hmacdotT_hmac })) : stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac>);
        (@:checkr _hm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outer = _h();
        (@:checkr _hm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inner = _h();
        var _unique = @:assignType (true : Bool);
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L141"
        ({
            var a = function():Void {
                var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                try {
                    {
                        __deferstack__.unshift({ ran : false, f : () -> ({
                            var a = function():Void {
                                ({
                                    final r = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    r;
                                });
                            };
                            a();
                        }) });
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L146"
                    if (({
                        final __t__ = (@:checkr _hm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outer;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldothashdothash_hashdothash.__type__stdgodot_internaldothashdotHash_hashdotHash)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }) == (({
                        final __t__ = (@:checkr _hm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inner;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldothashdothash_hashdothash.__type__stdgodot_internaldothashdotHash_hashdotHash)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }))) {
                        _unique = false;
                    };
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        if (stdgo.Go.recover_exception != null) {
                            final e = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            @:throw1 throw e;
                        };
                        return;
                    };
                } catch(__exception__) {
                    {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                            if (__exception__.message == "__return__") throw "__return__";
                            exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                        };
                        stdgo.Go.recover_exception = exe;
                        {
                            function f() {
                                try {
                                    {
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                    };
                                } catch(__exception__2) {
                                    var exe:Dynamic = __exception__2.native;
                                    if ((exe is haxe.ValueException)) exe = exe.value;
                                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                        if (__exception__.message == "__return__") throw "__return__";
                                        exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                                    };
                                    stdgo.Go.recover_exception = exe;
                                    f();
                                };
                            };
                            f();
                        };
                        if (stdgo.Go.recover_exception != null) {
                            final e = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            @:throw3 throw e;
                        };
                        return;
                    };
                };
            };
            a();
        });
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L150"
        if (!_unique) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L151"
            throw new stdgo.AnyInterface(("crypto/hmac: hash generation function does not produce unique values" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _blocksize = @:assignType ((@:checkr _hm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inner.blockSize() : stdgo.GoInt);
        (@:checkr _hm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ipad = (new stdgo.Slice<stdgo.GoUInt8>((_blocksize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _hm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opad = (new stdgo.Slice<stdgo.GoUInt8>((_blocksize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L156"
        if (((_key.length) > _blocksize : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L158"
            (@:checkr _hm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outer.write(_key);
            _key = (@:checkr _hm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outer.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L161"
        (@:checkr _hm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ipad.__copyTo__(_key);
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L162"
        (@:checkr _hm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opad.__copyTo__(_key);
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L163"
        if ((@:checkr _hm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ipad != null) for (_i => _ in (@:checkr _hm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ipad) {
            (@:checkr _hm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ipad[(_i : stdgo.GoInt)] = ((@:checkr _hm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ipad[(_i : stdgo.GoInt)] ^ ((54 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L166"
        if ((@:checkr _hm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opad != null) for (_i => _ in (@:checkr _hm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opad) {
            (@:checkr _hm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opad[(_i : stdgo.GoInt)] = ((@:checkr _hm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opad[(_i : stdgo.GoInt)] ^ ((92 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L169"
        (@:checkr _hm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inner.write((@:checkr _hm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ipad);
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L171"
        return stdgo.Go.asInterface(_hm, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodothmacdothmac_t_hmacdott_hmac.__type__stdgodot_internaldotcryptodothmacdotHmac_t_hmacdotT_hmac }));
    }
