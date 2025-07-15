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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2bufferedWriter_asInterface) class T_http2bufferedWriter_static_extension {
    @:keep
    @:tdfield
    static public function flush( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2bufferedwriter.T_http2bufferedWriter>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2bufferedwriter.T_http2bufferedWriter> = _w;
        var _bw = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3596"
        if (({
            final value = _bw;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3597"
            return (null : stdgo.Error);
        };
        var _err = @:assignType (_bw.flush() : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3600"
        _bw.reset((null : stdgo._internal.io.Io_writer.Writer));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3601"
        stdgo._internal.net.http.Http__http2bufwriterpool._http2bufWriterPool.put(new stdgo.AnyInterface(stdgo.Go.asInterface(_bw, _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter }))));
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw = null;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3603"
        return _err;
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2bufferedwriter.T_http2bufferedWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2bufferedwriter.T_http2bufferedWriter> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3586"
        if (({
            final value = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw;
            (value == null || (value : Dynamic).__nil__);
        })) {
            var _bw = (stdgo.Go.typeAssert(stdgo._internal.net.http.Http__http2bufwriterpool._http2bufWriterPool.get(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter })) : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3588"
            _bw.reset((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w);
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw = _bw;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3591"
        return (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.write(_p);
    }
    @:keep
    @:tdfield
    static public function available( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2bufferedwriter.T_http2bufferedWriter>):stdgo.GoInt {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2bufferedwriter.T_http2bufferedWriter> = _w;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3579"
        if (({
            final value = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3580"
            return (4096 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3582"
        return (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.available();
    }
}
