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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2sorter_asInterface) class T_http2sorter_static_extension {
    @:keep
    @:tdfield
    static public function sortStrings( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter>, _ss:stdgo.Slice<stdgo.GoString>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter> = _s;
        var _save = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._v;
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._v = _ss;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3676"
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_s, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2sorterdott_http2sorter.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2sorterdotT_http2sorter })));
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._v = _save;
    }
    @:keep
    @:tdfield
    static public function keys( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter>, _h:stdgo._internal.net.http.Http_header.Header):stdgo.Slice<stdgo.GoString> {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter> = _s;
        var _keys = ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._v.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3663"
        if (_h != null) for (_k => _ in _h) {
            _keys = (_keys.__append__(_k?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._v = _keys;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3667"
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_s, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2sorterdott_http2sorter.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2sorterdotT_http2sorter })));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3668"
        return _keys;
    }
    @:keep
    @:tdfield
    static public function less( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter> = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3655"
        return ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._v[(_i : stdgo.GoInt)] < (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._v[(_j : stdgo.GoInt)] : Bool);
    }
    @:keep
    @:tdfield
    static public function swap( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter> = _s;
        {
            final __tmp__0 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._v[(_j : stdgo.GoInt)]?.__copy__();
            final __tmp__1 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._v[(_i : stdgo.GoInt)]?.__copy__();
            final __tmp__2 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._v;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._v;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function len( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter> = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3651"
        return ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._v.length);
    }
}
