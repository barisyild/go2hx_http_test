package stdgo._internal.bufio;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
function scanWords(_data:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        var _advance = (0 : stdgo.GoInt), _token = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _start = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L398"
        {
            var _width = @:assignType (0 : stdgo.GoInt);
            while ((_start < (_data.length) : Bool)) {
                var _r:stdgo.GoInt32 = (0 : stdgo.GoInt32);
{
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_data.__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>));
                    _r = @:tmpset0 __tmp__._0;
                    _width = @:tmpset0 __tmp__._1;
                };
//"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L401"
                if (!stdgo._internal.bufio.Bufio__isspace._isSpace(_r)) {
                    //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L402"
                    break;
                };
                _start = (_start + (_width) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L406"
        {
            var __0 = @:assignType (0 : stdgo.GoInt), __1 = @:assignType (_start : stdgo.GoInt);
var _i = __1, _width = __0;
            while ((_i < (_data.length) : Bool)) {
                var _r:stdgo.GoInt32 = (0 : stdgo.GoInt32);
{
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_data.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
                    _r = @:tmpset0 __tmp__._0;
                    _width = @:tmpset0 __tmp__._1;
                };
//"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L409"
                if (stdgo._internal.bufio.Bufio__isspace._isSpace(_r)) {
                    //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L410"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : (_i + _width : stdgo.GoInt), _1 : (_data.__slice__(_start, _i) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                        _advance = __tmp__._0;
                        _token = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                _i = (_i + (_width) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L414"
        if ((_atEOF && ((_data.length) > _start : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L415"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : (_data.length), _1 : (_data.__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                _advance = __tmp__._0;
                _token = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L418"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : _start, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
            _advance = __tmp__._0;
            _token = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
