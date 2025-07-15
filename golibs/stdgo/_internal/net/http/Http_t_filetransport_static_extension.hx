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
@:keep @:allow(stdgo._internal.net.http.Http.T_fileTransport_asInterface) class T_fileTransport_static_extension {
    @:keep
    @:tdfield
    static public function roundTrip( _t:stdgo._internal.net.http.Http_t_filetransport.T_fileTransport, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo._internal.net.http.Http_t_filetransport.T_fileTransport = _t?.__copy__();
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.net.http.Http__newpopulateresponsewriter._newPopulateResponseWriter(), _rw:stdgo.Ref<stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse> = __tmp__._0, _resc:stdgo.Chan<stdgo.Ref<stdgo._internal.net.http.Http_response.Response>> = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/filetransport.go#L42"
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                //"file:///Users/o/.go/go1.21.3/src/net/http/filetransport.go#L43"
                _t._fh.serveHTTP(stdgo.Go.asInterface(_rw, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_populateresponsedott_populateresponse.__type__stdgodot_internaldotnetdothttpdotHttp_t_populateresponsedotT_populateResponse })), _req);
                //"file:///Users/o/.go/go1.21.3/src/net/http/filetransport.go#L44"
                _rw._finish();
            };
            a();
        }));
        //"file:///Users/o/.go/go1.21.3/src/net/http/filetransport.go#L46"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : _resc.__get__(), _1 : (null : stdgo.Error) };
            _resp = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
