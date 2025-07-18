package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function cutSuffix(_s:stdgo.Slice<stdgo.GoUInt8>, _suffix:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } {
        var _before = (null : stdgo.Slice<stdgo.GoUInt8>), _found = false;
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1392"
        if (!stdgo._internal.bytes.Bytes_hassuffix.hasSuffix(_s, _suffix)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1393"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } = { _0 : _s, _1 : false };
                _before = __tmp__._0;
                _found = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1395"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } = { _0 : (_s.__slice__(0, ((_s.length) - (_suffix.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _1 : true };
            _before = __tmp__._0;
            _found = __tmp__._1;
            __tmp__;
        };
    }
