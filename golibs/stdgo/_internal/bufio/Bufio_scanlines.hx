package stdgo._internal.bufio;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
function scanLines(_data:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        var _advance = (0 : stdgo.GoInt), _token = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L351"
        if ((_atEOF && (_data.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L352"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                _advance = __tmp__._0;
                _token = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L354"
        {
            var _i = @:assignType (stdgo._internal.bytes.Bytes_indexbyte.indexByte(_data, (10 : stdgo.GoUInt8)) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L356"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt), _1 : stdgo._internal.bufio.Bufio__dropcr._dropCR((_data.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>)), _2 : (null : stdgo.Error) };
                    _advance = __tmp__._0;
                    _token = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L359"
        if (_atEOF) {
            //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L360"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : (_data.length), _1 : stdgo._internal.bufio.Bufio__dropcr._dropCR(_data), _2 : (null : stdgo.Error) };
                _advance = __tmp__._0;
                _token = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L363"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
            _advance = __tmp__._0;
            _token = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
