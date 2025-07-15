package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function newDecoder(_maxDynamicTableSize:stdgo.GoUInt32, _emitFunc:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField -> Void):stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder> {
        var _d = (stdgo.Go.setRef(({ _emit : _emitFunc, _emitEnabled : true, _firstField : true } : _internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_decoderdotdecoder.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_decoderdotDecoder })) : stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L108"
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dynTab._table._init();
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dynTab._allowedMaxSize = _maxDynamicTableSize;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L110"
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dynTab._setMaxSize(_maxDynamicTableSize);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L111"
        return _d;
    }
