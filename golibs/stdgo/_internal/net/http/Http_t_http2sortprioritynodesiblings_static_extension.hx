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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2sortPriorityNodeSiblings_asInterface) class T_http2sortPriorityNodeSiblings_static_extension {
    @:keep
    @:tdfield
    static public function less( _z:stdgo._internal.net.http.Http_t_http2sortprioritynodesiblings.T_http2sortPriorityNodeSiblings, _i:stdgo.GoInt, _k:stdgo.GoInt):Bool {
        @:recv var _z:stdgo._internal.net.http.Http_t_http2sortprioritynodesiblings.T_http2sortPriorityNodeSiblings = _z;
        var __0 = @:assignType (((@:checkr _z[(_i : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__())._weight + (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoFloat64), __1 = @:assignType ((@:checkr _z[(_i : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__())._subtreeBytes : stdgo.GoFloat64);
var _bi = __1, _wi = __0;
        var __0 = @:assignType (((@:checkr _z[(_k : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__())._weight + (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoFloat64), __1 = @:assignType ((@:checkr _z[(_k : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__())._subtreeBytes : stdgo.GoFloat64);
var _bk = __1, _wk = __0;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11081"
        if (((_bi == (0 : stdgo.GoFloat64)) && (_bk == (0 : stdgo.GoFloat64)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11082"
            return (_wi >= _wk : Bool);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11084"
        if (_bk == ((0 : stdgo.GoFloat64))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11085"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11087"
        return ((_bi / _bk : stdgo.GoFloat64) <= (_wi / _wk : stdgo.GoFloat64) : Bool);
    }
    @:keep
    @:tdfield
    static public function swap( _z:stdgo._internal.net.http.Http_t_http2sortprioritynodesiblings.T_http2sortPriorityNodeSiblings, _i:stdgo.GoInt, _k:stdgo.GoInt):Void {
        @:recv var _z:stdgo._internal.net.http.Http_t_http2sortprioritynodesiblings.T_http2sortPriorityNodeSiblings = _z;
        {
            final __tmp__0 = _z[(_k : stdgo.GoInt)];
            final __tmp__1 = _z[(_i : stdgo.GoInt)];
            final __tmp__2 = _z;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _z;
            final __tmp__5 = (_k : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function len( _z:stdgo._internal.net.http.Http_t_http2sortprioritynodesiblings.T_http2sortPriorityNodeSiblings):stdgo.GoInt {
        @:recv var _z:stdgo._internal.net.http.Http_t_http2sortprioritynodesiblings.T_http2sortPriorityNodeSiblings = _z;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11072"
        return (_z.length);
    }
}
