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
@:keep @:allow(stdgo._internal.net.http.Http.T_expectContinueReader_asInterface) class T_expectContinueReader_static_extension {
    @:keep
    @:tdfield
    static public function close( _ecr:stdgo.Ref<stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader>):stdgo.Error {
        @:recv var _ecr:stdgo.Ref<stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader> = _ecr;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L933"
        (@:checkr _ecr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed.store(true);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L934"
        return (@:checkr _ecr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readCloser.close();
    }
    @:keep
    @:tdfield
    static public function read( _ecr:stdgo.Ref<stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _ecr:stdgo.Ref<stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader> = _ecr;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L911"
        if ((@:checkr _ecr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed.load()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L912"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http_errbodyreadafterclose.errBodyReadAfterClose };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _w = (@:checkr _ecr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resp;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L915"
        if (((!(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteContinue && (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._canWriteContinue.load() : Bool) && !(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._hijacked() : Bool)) {
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteContinue = true;
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L917"
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeContinueMu.lock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L918"
            if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._canWriteContinue.load()) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L919"
                (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufw.writeString(("HTTP/1.1 100 Continue\r\n\r\n" : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L920"
                (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufw.flush();
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L921"
                (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._canWriteContinue.store(false);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L923"
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeContinueMu.unlock();
        };
        {
            var __tmp__ = (@:checkr _ecr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readCloser.read(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L926"
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
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L927"
            (@:checkr _ecr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sawEOF.store(true);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L929"
        return { _0 : _n, _1 : _err };
    }
}
