package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
function _p224B():stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element> {
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L114"
        stdgo._internal.crypto.internal.nistec.Nistec___p224bonce.__p224BOnce.do_(function():Void {
            {
                var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p224elementdotp224element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p224elementdotP224Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>).setBytes((new stdgo.Slice<stdgo.GoUInt8>(28, 28, ...[
(180 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(133 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(179 : stdgo.GoUInt8),
(171 : stdgo.GoUInt8),
(245 : stdgo.GoUInt8),
(65 : stdgo.GoUInt8),
(50 : stdgo.GoUInt8),
(86 : stdgo.GoUInt8),
(80 : stdgo.GoUInt8),
(68 : stdgo.GoUInt8),
(176 : stdgo.GoUInt8),
(183 : stdgo.GoUInt8),
(215 : stdgo.GoUInt8),
(191 : stdgo.GoUInt8),
(216 : stdgo.GoUInt8),
(186 : stdgo.GoUInt8),
(39 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(57 : stdgo.GoUInt8),
(67 : stdgo.GoUInt8),
(35 : stdgo.GoUInt8),
(85 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(180 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                stdgo._internal.crypto.internal.nistec.Nistec___p224b.__p224B = @:tmpset0 __tmp__._0;
            };
        });
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L117"
        return stdgo._internal.crypto.internal.nistec.Nistec___p224b.__p224B;
    }
