package stdgo._internal.encoding.binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.Math;
import stdgo._internal.reflect.Reflect;
function readVarint(_r:stdgo._internal.io.Io_bytereader.ByteReader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.encoding.binary.Binary_readuvarint.readUvarint(_r), _ux:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _x = @:assignType ((_ux >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/varint.go#L162"
        if ((_ux & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            _x = (-1 ^ _x);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/varint.go#L165"
        return { _0 : _x, _1 : _err };
    }
