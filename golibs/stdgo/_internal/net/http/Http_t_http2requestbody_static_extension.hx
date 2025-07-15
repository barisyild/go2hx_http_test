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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2requestBody_asInterface) class T_http2requestBody_static_extension {
    @:keep
    @:tdfield
    static public function read( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_http2requestbody.T_http2requestBody>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_http2requestbody.T_http2requestBody> = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6325"
        if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._needsContinue) {
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._needsContinue = false;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6327"
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._write100ContinueHeaders((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stream);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6329"
        if ((({
            final value = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pipe;
            (value == null || (value : Dynamic).__nil__);
        }) || (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sawEOF : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6330"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        {
            var __tmp__ = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pipe.read(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6333"
        if (({
            final __t__ = _err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) == (({
            final __t__ = stdgo._internal.io.Io_eof.eOF;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }))) {
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sawEOF = true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6336"
        if ((({
            final value = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn;
            (value == null || (value : Dynamic).__nil__);
        }) && stdgo._internal.net.http.Http__http2intests._http2inTests : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6337"
            return { _0 : _n, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6339"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._noteBodyReadFromHandler((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stream, _n, _err);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6340"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function close( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_http2requestbody.T_http2requestBody>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_http2requestbody.T_http2requestBody> = _b;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6316"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeOnce.do_(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6317"
            if (({
                final value = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pipe;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6318"
                (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pipe.breakWithError(stdgo._internal.net.http.Http__http2errclosedbody._http2errClosedBody);
            };
        });
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6321"
        return (null : stdgo.Error);
    }
}
