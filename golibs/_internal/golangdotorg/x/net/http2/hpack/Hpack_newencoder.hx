package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function newEncoder(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder> {
        var _e = (stdgo.Go.setRef(({ _minSize : (-1u32 : stdgo.GoUInt32), _maxSizeLimit : (4096u32 : stdgo.GoUInt32), _tableSizeUpdate : false, _w : _w } : _internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_encoderdotencoder.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_encoderdotEncoder })) : stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L42"
        (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dynTab._table._init();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L43"
        (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dynTab._setMaxSize((4096u32 : stdgo.GoUInt32));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L44"
        return _e;
    }
