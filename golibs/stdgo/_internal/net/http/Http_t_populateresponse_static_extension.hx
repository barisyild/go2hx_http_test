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
@:keep @:allow(stdgo._internal.net.http.Http.T_populateResponse_asInterface) class T_populateResponse_static_extension {
    @:keep
    @:tdfield
    static public function write( _pr:stdgo.Ref<stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _pr:stdgo.Ref<stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse> = _pr;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/filetransport.go#L115"
        if (!(@:checkr _pr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/filetransport.go#L116"
            _pr.writeHeader((200 : stdgo.GoInt));
        };
        (@:checkr _pr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hasContent = true;
        //"file:///Users/o/.go/go1.21.3/src/net/http/filetransport.go#L119"
        if (!(@:checkr _pr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sentResponse) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/filetransport.go#L120"
            _pr._sendResponse();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/filetransport.go#L122"
        return (@:checkr _pr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pw.write(_p);
    }
    @:keep
    @:tdfield
    static public function writeHeader( _pr:stdgo.Ref<stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse>, _code:stdgo.GoInt):Void {
        @:recv var _pr:stdgo.Ref<stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse> = _pr;
        //"file:///Users/o/.go/go1.21.3/src/net/http/filetransport.go#L105"
        if ((@:checkr _pr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/filetransport.go#L106"
            return;
        };
        (@:checkr _pr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader = true;
        (@:checkr (@:checkr _pr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).statusCode = _code;
        (@:checkr (@:checkr _pr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).status = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d %s" : stdgo.GoString), new stdgo.AnyInterface(_code, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(stdgo._internal.net.http.Http_statustext.statusText(_code), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function header( _pr:stdgo.Ref<stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse>):stdgo._internal.net.http.Http_header.Header {
        @:recv var _pr:stdgo.Ref<stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse> = _pr;
        //"file:///Users/o/.go/go1.21.3/src/net/http/filetransport.go#L101"
        return (@:checkr (@:checkr _pr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header;
    }
    @:keep
    @:tdfield
    static public function _sendResponse( _pr:stdgo.Ref<stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse>):Void {
        @:recv var _pr:stdgo.Ref<stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse> = _pr;
        //"file:///Users/o/.go/go1.21.3/src/net/http/filetransport.go#L89"
        if ((@:checkr _pr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sentResponse) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/filetransport.go#L90"
            return;
        };
        (@:checkr _pr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sentResponse = true;
        //"file:///Users/o/.go/go1.21.3/src/net/http/filetransport.go#L94"
        if ((@:checkr _pr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hasContent) {
            (@:checkr (@:checkr _pr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = (-1i64 : stdgo.GoInt64);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/filetransport.go#L97"
        (@:checkr _pr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch.__send__((@:checkr _pr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._res);
    }
    @:keep
    @:tdfield
    static public function _finish( _pr:stdgo.Ref<stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse>):Void {
        @:recv var _pr:stdgo.Ref<stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse> = _pr;
        //"file:///Users/o/.go/go1.21.3/src/net/http/filetransport.go#L79"
        if (!(@:checkr _pr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/filetransport.go#L80"
            _pr.writeHeader((500 : stdgo.GoInt));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/filetransport.go#L82"
        if (!(@:checkr _pr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sentResponse) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/filetransport.go#L83"
            _pr._sendResponse();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/filetransport.go#L85"
        (@:checkr _pr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pw.close();
    }
}
