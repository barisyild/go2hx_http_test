package _internal.golangdotorg.x.crypto.internal.poly1305;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
@:keep @:allow(_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305.MAC_asInterface) class MAC_static_extension {
    @:keep
    @:tdfield
    static public function verify( _h:stdgo.Ref<_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_mac.MAC>, _expected:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _h:stdgo.Ref<_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_mac.MAC> = _h;
        var _mac:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/poly1305.go#L96"
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mac.sum((stdgo.Go.setRef(_mac, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 16) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finalized = true;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/poly1305.go#L98"
        return stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_expected, (_mac.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) == ((1 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function sum( _h:stdgo.Ref<_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_mac.MAC>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_mac.MAC> = _h;
        var _mac:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/poly1305.go#L87"
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mac.sum((stdgo.Go.setRef(_mac, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 16) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finalized = true;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/poly1305.go#L89"
        return (_b.__append__(...((_mac.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function write( _h:stdgo.Ref<_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_mac.MAC>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_mac.MAC> = _h;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/poly1305.go#L77"
        if ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finalized) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/poly1305.go#L78"
            throw new stdgo.AnyInterface(("poly1305: write to MAC after Sum or Verify" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/poly1305.go#L80"
        return ({
            @:explicitConversion final __tmp__ = (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mac.write(_p);
            { _0 : __tmp__._0, _1 : __tmp__._1 };
        });
    }
    @:keep
    @:tdfield
    static public function size( _h:stdgo.Ref<_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_mac.MAC>):stdgo.GoInt {
        @:recv var _h:stdgo.Ref<_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_mac.MAC> = _h;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/poly1305.go#L70"
        return (16 : stdgo.GoInt);
    }
}
