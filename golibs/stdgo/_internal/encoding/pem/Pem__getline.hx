package stdgo._internal.encoding.pem;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
function _getLine(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; } {
        var _line = (null : stdgo.Slice<stdgo.GoUInt8>), _rest = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _i = @:assignType (stdgo._internal.bytes.Bytes_indexbyte.indexByte(_data, (10 : stdgo.GoUInt8)) : stdgo.GoInt);
        var _j:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L43"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            _i = (_data.length);
            _j = _i;
        } else {
            _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L48"
            if (((_i > (0 : stdgo.GoInt) : Bool) && (_data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L49"
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L52"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; } = { _0 : stdgo._internal.bytes.Bytes_trimright.trimRight((_data.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>), (" \t" : stdgo.GoString)), _1 : (_data.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>) };
            _line = __tmp__._0;
            _rest = __tmp__._1;
            __tmp__;
        };
    }
