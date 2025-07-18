package stdgo._internal.bufio;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
function scanRunes(_data:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        var _advance = (0 : stdgo.GoInt), _token = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L305"
        if ((_atEOF && (_data.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L306"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                _advance = __tmp__._0;
                _token = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L310"
        if ((_data[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L311"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : (1 : stdgo.GoInt), _1 : (_data.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                _advance = __tmp__._0;
                _token = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_data), __0:stdgo.GoInt32 = __tmp__._0, _width:stdgo.GoInt = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L316"
        if ((_width > (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L319"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : _width, _1 : (_data.__slice__((0 : stdgo.GoInt), _width) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                _advance = __tmp__._0;
                _token = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L325"
        if ((!_atEOF && !stdgo._internal.unicode.utf8.Utf8_fullrune.fullRune(_data) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L327"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                _advance = __tmp__._0;
                _token = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L333"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : (1 : stdgo.GoInt), _1 : stdgo._internal.bufio.Bufio__errorrune._errorRune, _2 : (null : stdgo.Error) };
            _advance = __tmp__._0;
            _token = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
