package stdgo._internal.encoding.pem;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
function _removeSpacesAndTabs(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L61"
        if (!stdgo._internal.bytes.Bytes_containsany.containsAny(_data, (" \t" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L64"
            return _data;
        };
        var _result = (new stdgo.Slice<stdgo.GoUInt8>((_data.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _n = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L69"
        if (_data != null) for (__0 => _b in _data) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L70"
            if (((_b == (32 : stdgo.GoUInt8)) || (_b == (9 : stdgo.GoUInt8)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L71"
                continue;
            };
            _result[(_n : stdgo.GoInt)] = _b;
            //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L74"
            _n++;
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L77"
        return (_result.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
    }
