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
@:keep @:allow(stdgo._internal.net.http.Http.T_gzipReader_asInterface) class T_gzipReader_static_extension {
    @:keep
    @:tdfield
    static public function close( _gz:stdgo.Ref<stdgo._internal.net.http.Http_t_gzipreader.T_gzipReader>):stdgo.Error {
        @:recv var _gz:stdgo.Ref<stdgo._internal.net.http.Http_t_gzipreader.T_gzipReader> = _gz;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2878"
        return (@:checkr _gz ?? throw stdgo.Error._nullPointerDereference.__underlying__())._body.close();
    }
    @:keep
    @:tdfield
    static public function read( _gz:stdgo.Ref<stdgo._internal.net.http.Http_t_gzipreader.T_gzipReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _gz:stdgo.Ref<stdgo._internal.net.http.Http_t_gzipreader.T_gzipReader> = _gz;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2856"
        if (({
            final value = (@:checkr _gz ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zr;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2857"
            if ((@:checkr _gz ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zerr == null) {
                {
                    var __tmp__ = stdgo._internal.compress.gzip.Gzip_newreader.newReader(stdgo.Go.asInterface((@:checkr _gz ?? throw stdgo.Error._nullPointerDereference.__underlying__())._body, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_bodyeofsignaldott_bodyeofsignal.__type__stdgodot_internaldotnetdothttpdotHttp_t_bodyeofsignaldotT_bodyEOFSignal })));
                    (@:checkr _gz ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zr = @:tmpset0 __tmp__._0;
                    (@:checkr _gz ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zerr = @:tmpset0 __tmp__._1;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2860"
            if ((@:checkr _gz ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zerr != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2861"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _gz ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zerr };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2865"
        (@:checkr (@:checkr _gz ?? throw stdgo.Error._nullPointerDereference.__underlying__())._body ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2866"
        if ((@:checkr (@:checkr _gz ?? throw stdgo.Error._nullPointerDereference.__underlying__())._body ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed) {
            _err = stdgo._internal.net.http.Http__errreadonclosedresbody._errReadOnClosedResBody;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2869"
        (@:checkr (@:checkr _gz ?? throw stdgo.Error._nullPointerDereference.__underlying__())._body ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2871"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2872"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2874"
        return (@:checkr _gz ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zr.read(_p);
    }
}
