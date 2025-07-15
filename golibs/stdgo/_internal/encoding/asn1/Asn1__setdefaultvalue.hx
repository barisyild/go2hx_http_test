package stdgo._internal.encoding.asn1;
import stdgo._internal.math.big.Big;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
function _setDefaultValue(_v:stdgo._internal.reflect.Reflect_value.Value, _params:stdgo._internal.encoding.asn1.Asn1_t_fieldparameters.T_fieldParameters):Bool {
        var _ok = false;
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L1009"
        if (!_params._optional) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L1010"
            return _ok;
        };
        _ok = true;
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L1013"
        if (_params._defaultValue == null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L1014"
            return _ok;
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L1016"
        if (stdgo._internal.encoding.asn1.Asn1__canhavedefaultvalue._canHaveDefaultValue(_v.kind())) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L1017"
            _v.setInt(_params._defaultValue.value);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/asn1.go#L1019"
        return _ok;
    }
