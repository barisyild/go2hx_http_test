package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
function _p256B():stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> {
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L116"
        stdgo._internal.crypto.internal.nistec.Nistec___p256bonce.__p256BOnce.do_(function():Void {
            {
                var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).setBytes((new stdgo.Slice<stdgo.GoUInt8>(32, 32, ...[
(90 : stdgo.GoUInt8),
(198 : stdgo.GoUInt8),
(53 : stdgo.GoUInt8),
(216 : stdgo.GoUInt8),
(170 : stdgo.GoUInt8),
(58 : stdgo.GoUInt8),
(147 : stdgo.GoUInt8),
(231 : stdgo.GoUInt8),
(179 : stdgo.GoUInt8),
(235 : stdgo.GoUInt8),
(189 : stdgo.GoUInt8),
(85 : stdgo.GoUInt8),
(118 : stdgo.GoUInt8),
(152 : stdgo.GoUInt8),
(134 : stdgo.GoUInt8),
(188 : stdgo.GoUInt8),
(101 : stdgo.GoUInt8),
(29 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(176 : stdgo.GoUInt8),
(204 : stdgo.GoUInt8),
(83 : stdgo.GoUInt8),
(176 : stdgo.GoUInt8),
(246 : stdgo.GoUInt8),
(59 : stdgo.GoUInt8),
(206 : stdgo.GoUInt8),
(60 : stdgo.GoUInt8),
(62 : stdgo.GoUInt8),
(39 : stdgo.GoUInt8),
(210 : stdgo.GoUInt8),
(96 : stdgo.GoUInt8),
(75 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                stdgo._internal.crypto.internal.nistec.Nistec___p256b.__p256B = @:tmpset0 __tmp__._0;
            };
        });
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L119"
        return stdgo._internal.crypto.internal.nistec.Nistec___p256b.__p256B;
    }
