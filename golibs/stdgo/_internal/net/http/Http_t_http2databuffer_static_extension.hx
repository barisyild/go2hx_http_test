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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2dataBuffer_asInterface) class T_http2dataBuffer_static_extension {
    @:keep
    @:tdfield
    static public function _lastChunkOrAlloc( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer>, _want:stdgo.GoInt64):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer> = _b;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1157"
        if (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks.length) != ((0 : stdgo.GoInt))) {
            var _last = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks[(((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1159"
            if (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w < (_last.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1160"
                return _last;
            };
        };
        var _chunk = stdgo._internal.net.http.Http__http2getdatabufferchunk._http2getDataBufferChunk(_want);
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks = ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks.__append__(_chunk) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1166"
        return _chunk;
    }
    @:keep
    @:tdfield
    static public function write( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer> = _b;
        var _ntotal = @:assignType (_p.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1138"
        while (((_p.length) > (0 : stdgo.GoInt) : Bool)) {
            var _want = @:assignType (_p.length : stdgo.GoInt64);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1143"
            if (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._expected > _want : Bool)) {
                _want = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._expected;
            };
            var _chunk = _b._lastChunkOrAlloc(_want);
            var _n = @:assignType ((_chunk.__slice__((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_p) : stdgo.GoInt);
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w = ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w + (_n) : stdgo.GoInt);
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size = ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size + (_n) : stdgo.GoInt);
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._expected = ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._expected - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1153"
        return { _0 : _ntotal, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function len( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer> = _b;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1132"
        return (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size;
    }
    @:keep
    @:tdfield
    static public function _bytesFromFirstChunk( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer> = _b;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1124"
        if (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks.length) == ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1125"
            return ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks[(0 : stdgo.GoInt)].__slice__((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1127"
        return ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks[(0 : stdgo.GoInt)].__slice__((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function read( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer> = _b;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1099"
        if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1100"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http__http2errreadempty._http2errReadEmpty };
        };
        var _ntotal:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1103"
        while ((((_p.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _readFrom = _b._bytesFromFirstChunk();
            var _n = @:assignType (_p.__copyTo__(_readFrom) : stdgo.GoInt);
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            _ntotal = (_ntotal + (_n) : stdgo.GoInt);
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r = ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r + (_n) : stdgo.GoInt);
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size = ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size - (_n) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1111"
            if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r == (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks[(0 : stdgo.GoInt)].length))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1112"
                stdgo._internal.net.http.Http__http2putdatabufferchunk._http2putDataBufferChunk((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks[(0 : stdgo.GoInt)]);
                var _end = @:assignType (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1114"
                ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks.__slice__(0, _end) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>).__copyTo__(((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>));
                (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks[(_end : stdgo.GoInt)] = (null : stdgo.Slice<stdgo.GoUInt8>);
                (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks = ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks.__slice__(0, _end) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
                (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r = (0 : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1120"
        return { _0 : _ntotal, _1 : (null : stdgo.Error) };
    }
}
