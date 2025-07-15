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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2writeData_asInterface) class T_http2writeData_static_extension {
    @:keep
    @:tdfield
    static public function _staysWithinBuffer( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData>, _max:stdgo.GoInt):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData> = _w;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10366"
        return (((9 : stdgo.GoInt) + ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p.length) : stdgo.GoInt) <= _max : Bool);
    }
    @:keep
    @:tdfield
    static public function _writeFrame( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData>, _ctx:stdgo._internal.net.http.Http_t_http2writecontext.T_http2writeContext):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData> = _w;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10362"
        return _ctx.framer().writeData((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streamID, (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._endStream, (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p);
    }
    @:keep
    @:tdfield
    static public function string( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData>):stdgo.GoString {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData> = _w;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10358"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("writeData(stream=%d, p=%d, endStream=%v)" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streamID, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))), new stdgo.AnyInterface(((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._endStream, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))))?.__copy__();
    }
}
