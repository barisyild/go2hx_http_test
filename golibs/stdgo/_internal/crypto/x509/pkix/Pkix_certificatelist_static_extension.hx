package stdgo._internal.crypto.x509.pkix;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.crypto.x509.pkix.Pkix.CertificateList_asInterface) class CertificateList_static_extension {
    @:keep
    @:tdfield
    static public function hasExpired( _certList:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList>, _now:stdgo._internal.time.Time_time.Time):Bool {
        @:recv var _certList:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList> = _certList;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L296"
        return !_now.before((@:checkr _certList ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tBSCertList.nextUpdate?.__copy__());
    }
}
