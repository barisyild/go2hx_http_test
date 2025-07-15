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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2stickyErrWriter_asInterface) class T_http2stickyErrWriter_static_extension {
    @:keep
    @:tdfield
    static public function write( _sew:stdgo._internal.net.http.Http_t_http2stickyerrwriter.T_http2stickyErrWriter, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _sew:stdgo._internal.net.http.Http_t_http2stickyerrwriter.T_http2stickyErrWriter = _sew?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7544"
        if ((_sew._err : stdgo.Error) != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7545"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (_sew._err : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7547"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7548"
            if (_sew._timeout != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7549"
                _sew._conn.setWriteDeadline(stdgo._internal.time.Time_now.now().add(_sew._timeout)?.__copy__());
            };
            var __tmp__ = _sew._conn.write((_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>)), _nn:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _n = (_n + (_nn) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7553"
            if ((((_n < (_p.length) : Bool) && (_nn > (0 : stdgo.GoInt) : Bool) : Bool) && stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.os.Os_errdeadlineexceeded.errDeadlineExceeded) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7555"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7557"
            if (_sew._timeout != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7558"
                _sew._conn.setWriteDeadline((new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time));
            };
            {
                var __tmp__ = _err;
                var x = (_sew._err : stdgo.Error);
                x.error = __tmp__.error;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7561"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
    }
}
