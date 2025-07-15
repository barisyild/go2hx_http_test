package stdgo._internal.net.http;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.net.http.internal.Internal;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.io.Io;
import stdgo._internal.log.Log;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.context.Context;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.net.http.internal.ascii.Ascii;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.net.Net;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.sort.Sort;
import stdgo._internal.mime.Mime;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.mime.multipart.Multipart;
import stdgo._internal.path.Path;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.bytes.Bytes;
import _internal.golangdotorg.x.net.http.httpguts.Httpguts;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.net.http.httptrace.Httptrace;
import stdgo._internal.net.url.Url;
import _internal.golangdotorg.x.net.http.httpproxy.Httpproxy;
import _internal.golangdotorg.x.net.http2.hpack.Hpack;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.sync.Sync;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.crypto.tls.Tls;
import stdgo._internal.container.list.List;
import stdgo._internal.internal.safefilepath.Safefilepath;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2writePushPromise_asInterface) class T_http2writePushPromise_static_extension {
    @:keep
    @:tdfield
    static public function _writeHeaderBlock( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writepushpromise.T_http2writePushPromise>, _ctx:stdgo._internal.net.http.Http_t_http2writecontext.T_http2writeContext, _frag:stdgo.Slice<stdgo.GoUInt8>, _firstFrag:Bool, _lastFrag:Bool):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writepushpromise.T_http2writePushPromise> = _w;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10542"
        if (_firstFrag) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10543"
            return _ctx.framer().writePushPromise(({ streamID : (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streamID, promiseID : (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._promisedID, blockFragment : _frag, endHeaders : _lastFrag } : stdgo._internal.net.http.Http_t_http2pushpromiseparam.T_http2PushPromiseParam));
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10550"
            return _ctx.framer().writeContinuation((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streamID, _lastFrag, _frag);
        };
    }
    @:keep
    @:tdfield
    static public function _writeFrame( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writepushpromise.T_http2writePushPromise>, _ctx:stdgo._internal.net.http.Http_t_http2writecontext.T_http2writeContext):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writepushpromise.T_http2writePushPromise> = _w;
        var __tmp__ = _ctx.headerEncoder(), _enc:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder> = __tmp__._0, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10525"
        _buf.reset();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10527"
        stdgo._internal.net.http.Http__http2enckv._http2encKV(_enc, (":method" : stdgo.GoString), (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._method?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10528"
        stdgo._internal.net.http.Http__http2enckv._http2encKV(_enc, (":scheme" : stdgo.GoString), (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._url ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10529"
        stdgo._internal.net.http.Http__http2enckv._http2encKV(_enc, (":authority" : stdgo.GoString), (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._url ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10530"
        stdgo._internal.net.http.Http__http2enckv._http2encKV(_enc, (":path" : stdgo.GoString), (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._url.requestURI()?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10531"
        stdgo._internal.net.http.Http__http2encodeheaders._http2encodeHeaders(_enc, (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._h, (null : stdgo.Slice<stdgo.GoString>));
        var _headerBlock = _buf.bytes();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10534"
        if ((_headerBlock.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10535"
            throw new stdgo.AnyInterface(("unexpected empty hpack" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10538"
        return stdgo._internal.net.http.Http__http2splitheaderblock._http2splitHeaderBlock(_ctx, _headerBlock, _w._writeHeaderBlock);
    }
    @:keep
    @:tdfield
    static public function _staysWithinBuffer( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writepushpromise.T_http2writePushPromise>, _max:stdgo.GoInt):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writepushpromise.T_http2writePushPromise> = _w;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10520"
        return false;
    }
}
