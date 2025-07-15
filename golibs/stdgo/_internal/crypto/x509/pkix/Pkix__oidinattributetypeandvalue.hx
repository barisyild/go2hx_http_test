package stdgo._internal.crypto.x509.pkix;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.fmt.Fmt;
function _oidInAttributeTypeAndValue(_oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier, _atv:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L275"
        if (_atv != null) for (__0 => _a in _atv) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L276"
            if (_a.type.equal(_oid)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L277"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L280"
        return false;
    }
