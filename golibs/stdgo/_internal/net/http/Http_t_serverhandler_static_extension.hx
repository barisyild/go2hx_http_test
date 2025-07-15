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
@:keep @:allow(stdgo._internal.net.http.Http.T_serverHandler_asInterface) class T_serverHandler_static_extension {
    @:keep
    @:tdfield
    static public function serveHTTP( _sh:stdgo._internal.net.http.Http_t_serverhandler.T_serverHandler, _rw:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        @:recv var _sh:stdgo._internal.net.http.Http_t_serverhandler.T_serverHandler = _sh?.__copy__();
        var _handler = @:assignType ((@:checkr _sh._srv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).handler : stdgo._internal.net.http.Http_handler.Handler);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2931"
        if (_handler == null) {
            _handler = stdgo.Go.asInterface(stdgo._internal.net.http.Http_defaultservemux.defaultServeMux, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_servemuxdotservemux.__type__stdgodot_internaldotnetdothttpdotHttp_servemuxdotServeMux }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2934"
        if (((!(@:checkr _sh._srv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).disableGeneralOptionsHandler && (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).requestURI == (("*" : stdgo.GoString)) : Bool) && ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == ("OPTIONS" : stdgo.GoString)) : Bool)) {
            _handler = stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_globaloptionshandler.T_globalOptionsHandler() : stdgo._internal.net.http.Http_t_globaloptionshandler.T_globalOptionsHandler), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_globaloptionshandlerdott_globaloptionshandler.__type__stdgodot_internaldotnetdothttpdotHttp_t_globaloptionshandlerdotT_globalOptionsHandler);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2938"
        _handler.serveHTTP(_rw, _req);
    }
}
