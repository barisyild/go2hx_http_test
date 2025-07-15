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
@:keep @:allow(stdgo._internal.net.http.Http.T_headerSorter_asInterface) class T_headerSorter_static_extension {
    @:keep
    @:tdfield
    static public function less( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_headersorter.T_headerSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_headersorter.T_headerSorter> = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L164"
        return ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._kvs[(_i : stdgo.GoInt)]._key < (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._kvs[(_j : stdgo.GoInt)]._key : Bool);
    }
    @:keep
    @:tdfield
    static public function swap( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_headersorter.T_headerSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_headersorter.T_headerSorter> = _s;
        {
            final __tmp__0 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._kvs[(_j : stdgo.GoInt)];
            final __tmp__1 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._kvs[(_i : stdgo.GoInt)];
            final __tmp__2 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._kvs;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._kvs;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function len( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_headersorter.T_headerSorter>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_headersorter.T_headerSorter> = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L162"
        return ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._kvs.length);
    }
}
