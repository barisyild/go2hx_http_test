package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function cut(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : Bool; } {
        var _before = (null : stdgo.Slice<stdgo.GoUInt8>), _after = (null : stdgo.Slice<stdgo.GoUInt8>), _found = false;
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1356"
        {
            var _i = @:assignType (stdgo._internal.bytes.Bytes_index.index(_s, _sep) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1357"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : Bool; } = { _0 : (_s.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>), _1 : (_s.__slice__((_i + (_sep.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _2 : true };
                    _before = __tmp__._0;
                    _after = __tmp__._1;
                    _found = __tmp__._2;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1359"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : Bool; } = { _0 : _s, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : false };
            _before = __tmp__._0;
            _after = __tmp__._1;
            _found = __tmp__._2;
            __tmp__;
        };
    }
