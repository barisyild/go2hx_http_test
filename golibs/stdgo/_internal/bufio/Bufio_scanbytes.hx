package stdgo._internal.bufio;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
function scanBytes(_data:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        var _advance = (0 : stdgo.GoInt), _token = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L290"
        if ((_atEOF && (_data.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L291"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                _advance = __tmp__._0;
                _token = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L293"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : (1 : stdgo.GoInt), _1 : (_data.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
            _advance = __tmp__._0;
            _token = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
