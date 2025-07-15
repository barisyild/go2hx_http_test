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
@:keep @:allow(stdgo._internal.net.http.Http.T_connLRU_asInterface) class T_connLRU_static_extension {
    @:keep
    @:tdfield
    static public function _len( _cl:stdgo.Ref<stdgo._internal.net.http.Http_t_connlru.T_connLRU>):stdgo.GoInt {
        @:recv var _cl:stdgo.Ref<stdgo._internal.net.http.Http_t_connlru.T_connLRU> = _cl;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2941"
        return ((@:checkr _cl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m.length);
    }
    @:keep
    @:tdfield
    static public function _remove( _cl:stdgo.Ref<stdgo._internal.net.http.Http_t_connlru.T_connLRU>, _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>):Void {
        @:recv var _cl:stdgo.Ref<stdgo._internal.net.http.Http_t_connlru.T_connLRU> = _cl;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2933"
        {
            var __tmp__ = ((@:checkr _cl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m != null && (@:checkr _cl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m.__exists__(_pc) ? { _0 : (@:checkr _cl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m[_pc], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.container.list.List_element.Element>), _1 : false }), _ele:stdgo.Ref<stdgo._internal.container.list.List_element.Element> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2934"
                (@:checkr _cl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ll.remove(_ele);
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2935"
                if ((@:checkr _cl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m != null) (@:checkr _cl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m.__remove__(_pc);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _removeOldest( _cl:stdgo.Ref<stdgo._internal.net.http.Http_t_connlru.T_connLRU>):stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> {
        @:recv var _cl:stdgo.Ref<stdgo._internal.net.http.Http_t_connlru.T_connLRU> = _cl;
        var _ele = (@:checkr _cl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ll.back();
        var _pc = (stdgo.Go.typeAssert((@:checkr _ele ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_persistconndott_persistconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_persistconndotT_persistConn })) : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2926"
        (@:checkr _cl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ll.remove(_ele);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2927"
        if ((@:checkr _cl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m != null) (@:checkr _cl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m.__remove__(_pc);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2928"
        return _pc;
    }
    @:keep
    @:tdfield
    static public function _add( _cl:stdgo.Ref<stdgo._internal.net.http.Http_t_connlru.T_connLRU>, _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>):Void {
        @:recv var _cl:stdgo.Ref<stdgo._internal.net.http.Http_t_connlru.T_connLRU> = _cl;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2912"
        if (({
            final value = (@:checkr _cl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ll;
            (value == null || (value : Dynamic).__nil__);
        })) {
            (@:checkr _cl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ll = stdgo._internal.container.list.List_new_.new_();
            (@:checkr _cl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>, stdgo.Ref<stdgo._internal.container.list.List_element.Element>>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>, stdgo.Ref<stdgo._internal.container.list.List_element.Element>>);
        };
        var _ele = (@:checkr _cl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ll.pushFront(new stdgo.AnyInterface(stdgo.Go.asInterface(_pc, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_persistconndott_persistconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_persistconndotT_persistConn), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_persistconndott_persistconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_persistconndotT_persistConn }))));
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2917"
        {
            var __tmp__ = ((@:checkr _cl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m != null && (@:checkr _cl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m.__exists__(_pc) ? { _0 : (@:checkr _cl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m[_pc], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.container.list.List_element.Element>), _1 : false }), __12:stdgo.Ref<stdgo._internal.container.list.List_element.Element> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2918"
                throw new stdgo.AnyInterface(("persistConn was already in LRU" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
        (@:checkr _cl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m[_pc] = _ele;
    }
}
