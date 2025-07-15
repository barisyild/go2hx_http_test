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
@:keep @:allow(stdgo._internal.net.http.Http.T_initALPNRequest_asInterface) class T_initALPNRequest_static_extension {
    @:keep
    @:tdfield
    static public function serveHTTP( _h:stdgo._internal.net.http.Http_t_initalpnrequest.T_initALPNRequest, _rw:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        @:recv var _h:stdgo._internal.net.http.Http_t_initalpnrequest.T_initALPNRequest = _h?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3536"
        if (({
            final value = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLS;
            (value == null || (value : Dynamic).__nil__);
        })) {
            (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLS = (stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState() : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_connectionstatedotconnectionstate.__type__stdgodot_internaldotcryptodottlsdotTls_connectionstatedotConnectionState })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>);
            {
                var __tmp__ = _h._c.connectionState()?.__copy__();
                var x = ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLS : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState);
                x.version = __tmp__?.version;
                x.handshakeComplete = __tmp__?.handshakeComplete;
                x.didResume = __tmp__?.didResume;
                x.cipherSuite = __tmp__?.cipherSuite;
                x.negotiatedProtocol = __tmp__?.negotiatedProtocol;
                x.negotiatedProtocolIsMutual = __tmp__?.negotiatedProtocolIsMutual;
                x.serverName = __tmp__?.serverName;
                x.peerCertificates = __tmp__?.peerCertificates;
                x.verifiedChains = __tmp__?.verifiedChains;
                x.signedCertificateTimestamps = __tmp__?.signedCertificateTimestamps;
                x.oCSPResponse = __tmp__?.oCSPResponse;
                x.tLSUnique = __tmp__?.tLSUnique;
                x._ekm = __tmp__?._ekm;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3540"
        if ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body == null) {
            (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo.Go.asInterface(stdgo._internal.net.http.Http_nobody.noBody, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_nobodydott_nobody.__type__stdgodot_internaldotnetdothttpdotHttp_t_nobodydotT_noBody);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3543"
        if ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).remoteAddr == ((stdgo.Go.str() : stdgo.GoString))) {
            (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).remoteAddr = (_h._c.remoteAddr().string() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3546"
        _h._h.serveHTTP(_rw, _req);
    }
    @:keep
    @:tdfield
    static public function baseContext( _h:stdgo._internal.net.http.Http_t_initalpnrequest.T_initALPNRequest):stdgo._internal.context.Context_context.Context {
        @:recv var _h:stdgo._internal.net.http.Http_t_initalpnrequest.T_initALPNRequest = _h?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3533"
        return _h._ctx;
    }
}
