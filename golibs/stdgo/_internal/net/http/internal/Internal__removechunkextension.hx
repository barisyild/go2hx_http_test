package stdgo._internal.net.http.internal;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
function _removeChunkExtension(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        {
            var __tmp__ = stdgo._internal.bytes.Bytes_cut.cut(_p, stdgo._internal.net.http.internal.Internal__semi._semi);
            _p = @:tmpset0 __tmp__._0;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L176"
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
