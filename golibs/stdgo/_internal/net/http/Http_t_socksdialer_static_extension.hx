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
@:keep @:allow(stdgo._internal.net.http.Http.T_socksDialer_asInterface) class T_socksDialer_static_extension {
    @:keep
    @:tdfield
    static public function _pathAddrs( _d:stdgo.Ref<stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer>, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo._internal.net.Net_addr.Addr; var _2 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer> = _d;
        var _proxy = (null : stdgo._internal.net.Net_addr.Addr), _dst = (null : stdgo._internal.net.Net_addr.Addr), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L404"
        if ((new stdgo.Slice<stdgo.GoString>(2, 2, ...[(@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._proxyAddress?.__copy__(), _address?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) != null) for (_i => _s in (new stdgo.Slice<stdgo.GoString>(2, 2, ...[(@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._proxyAddress?.__copy__(), _address?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var __tmp__ = stdgo._internal.net.http.Http__sockssplithostport._sockssplitHostPort(_s?.__copy__()), _host:stdgo.GoString = __tmp__._0, _port:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L406"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L407"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo._internal.net.Net_addr.Addr; var _2 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_addr.Addr), _1 : (null : stdgo._internal.net.Net_addr.Addr), _2 : _err };
                    _proxy = __tmp__._0;
                    _dst = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            var _a = (stdgo.Go.setRef(({ port : _port } : stdgo._internal.net.http.Http_t_socksaddr.T_socksAddr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_socksaddrdott_socksaddr.__type__stdgodot_internaldotnetdothttpdotHttp_t_socksaddrdotT_socksAddr })) : stdgo.Ref<stdgo._internal.net.http.Http_t_socksaddr.T_socksAddr>);
            (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP = stdgo._internal.net.Net_parseip.parseIP(_host?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L411"
            if ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP == null) {
                (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name = _host?.__copy__();
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L414"
            if (_i == ((0 : stdgo.GoInt))) {
                _proxy = stdgo.Go.asInterface(_a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_socksaddrdott_socksaddr.__type__stdgodot_internaldotnetdothttpdotHttp_t_socksaddrdotT_socksAddr }));
            } else {
                _dst = stdgo.Go.asInterface(_a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_socksaddrdott_socksaddr.__type__stdgodot_internaldotnetdothttpdotHttp_t_socksaddrdotT_socksAddr }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L420"
        return { _0 : _proxy, _1 : _dst, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function _validateTarget( _d:stdgo.Ref<stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer>, _network:stdgo.GoString, _address:stdgo.GoString):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer> = _d;
        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L390"
        {
            final __value__ = _network;
            if (__value__ == (("tcp" : stdgo.GoString)) || __value__ == (("tcp6" : stdgo.GoString)) || __value__ == (("tcp4" : stdgo.GoString))) {} else {
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L393"
                return stdgo._internal.errors.Errors_new_.new_(("network not implemented" : stdgo.GoString));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L395"
        {
            final __value__ = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cmd;
            if (__value__ == ((1 : stdgo._internal.net.http.Http_t_sockscommand.T_socksCommand)) || __value__ == ((2 : stdgo._internal.net.http.Http_t_sockscommand.T_socksCommand))) {} else {
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L398"
                return stdgo._internal.errors.Errors_new_.new_(("command not implemented" : stdgo.GoString));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L400"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function dial( _d:stdgo.Ref<stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer>, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer> = _d;
        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L367"
        {
            var _err = @:assignType (_d._validateTarget(_network?.__copy__(), _address?.__copy__()) : stdgo.Error);
            if (_err != null) {
                var __tmp__ = _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_addr.Addr = __tmp__._1, __12:stdgo.Error = __tmp__._2;
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L369"
                return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
            };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        var _c:stdgo._internal.net.Net_conn.Conn = (null : stdgo._internal.net.Net_conn.Conn);
        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L373"
        if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).proxyDial != null) {
            {
                var __tmp__ = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).proxyDial(stdgo._internal.context.Context_background.background(), (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._proxyNetwork?.__copy__(), (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._proxyAddress?.__copy__());
                _c = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        } else {
            {
                var __tmp__ = stdgo._internal.net.Net_dial.dial((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._proxyNetwork?.__copy__(), (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._proxyAddress?.__copy__());
                _c = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L378"
        if (_err != null) {
            var __tmp__ = _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_addr.Addr = __tmp__._1, __12:stdgo.Error = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L380"
            return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L382"
        {
            var __tmp__ = _d.dialWithConn(stdgo._internal.context.Context_background.background(), _c, _network?.__copy__(), _address?.__copy__()), __12:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L383"
                _c.close();
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L384"
                return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L386"
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function dialWithConn( _d:stdgo.Ref<stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer>, _ctx:stdgo._internal.context.Context_context.Context, _c:stdgo._internal.net.Net_conn.Conn, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer> = _d;
        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L344"
        {
            var _err = @:assignType (_d._validateTarget(_network?.__copy__(), _address?.__copy__()) : stdgo.Error);
            if (_err != null) {
                var __tmp__ = _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_addr.Addr = __tmp__._1, __12:stdgo.Error = __tmp__._2;
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L346"
                return { _0 : (null : stdgo._internal.net.Net_addr.Addr), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L348"
        if (_ctx == null) {
            var __tmp__ = _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_addr.Addr = __tmp__._1, __12:stdgo.Error = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L350"
            return { _0 : (null : stdgo._internal.net.Net_addr.Addr), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : stdgo._internal.errors.Errors_new_.new_(("nil context" : stdgo.GoString)) } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
        };
        var __tmp__ = _d._connect(_ctx, _c, _address?.__copy__()), _a:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L353"
        if (_err != null) {
            var __tmp__ = _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_addr.Addr = __tmp__._1, __12:stdgo.Error = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L355"
            return { _0 : (null : stdgo._internal.net.Net_addr.Addr), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L357"
        return { _0 : _a, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function dialContext( _d:stdgo.Ref<stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer>, _ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer> = _d;
        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L308"
        {
            var _err = @:assignType (_d._validateTarget(_network?.__copy__(), _address?.__copy__()) : stdgo.Error);
            if (_err != null) {
                var __tmp__ = _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_addr.Addr = __tmp__._1, __12:stdgo.Error = __tmp__._2;
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L310"
                return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L312"
        if (_ctx == null) {
            var __tmp__ = _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_addr.Addr = __tmp__._1, __12:stdgo.Error = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L314"
            return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : stdgo._internal.errors.Errors_new_.new_(("nil context" : stdgo.GoString)) } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        var _c:stdgo._internal.net.Net_conn.Conn = (null : stdgo._internal.net.Net_conn.Conn);
        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L318"
        if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).proxyDial != null) {
            {
                var __tmp__ = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).proxyDial(_ctx, (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._proxyNetwork?.__copy__(), (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._proxyAddress?.__copy__());
                _c = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        } else {
            var _dd:stdgo._internal.net.Net_dialer.Dialer = ({} : stdgo._internal.net.Net_dialer.Dialer);
            {
                var __tmp__ = _dd.dialContext(_ctx, (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._proxyNetwork?.__copy__(), (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._proxyAddress?.__copy__());
                _c = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L324"
        if (_err != null) {
            var __tmp__ = _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_addr.Addr = __tmp__._1, __12:stdgo.Error = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L326"
            return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
        };
        var __tmp__ = _d._connect(_ctx, _c, _address?.__copy__()), _a:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L329"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L330"
            _c.close();
            var __tmp__ = _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_addr.Addr = __tmp__._1, __12:stdgo.Error = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L332"
            return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L334"
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(({ conn : _c, _boundAddr : _a } : stdgo._internal.net.http.Http_t_socksconn.T_socksConn), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_socksconndott_socksconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_socksconndotT_socksConn })) : stdgo.Ref<stdgo._internal.net.http.Http_t_socksconn.T_socksConn>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_socksconndott_socksconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_socksconndotT_socksConn })), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _connect( _d:stdgo.Ref<stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer>, _ctx:stdgo._internal.context.Context_context.Context, _c:stdgo._internal.net.Net_conn.Conn, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer> = _d;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo._internal.net.Net_addr.Addr), _ctxErr = (null : stdgo.Error);
        try {
            var __tmp__ = stdgo._internal.net.http.Http__sockssplithostport._sockssplitHostPort(_address?.__copy__()), _host:stdgo.GoString = __tmp__._0, _port:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L29"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L30"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_addr.Addr), _1 : _err };
                    _0 = __tmp__._0;
                    _ctxErr = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L32"
            {
                var __tmp__ = _ctx.deadline(), _deadline:stdgo._internal.time.Time_time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((_ok && !_deadline.isZero() : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L33"
                    _c.setDeadline(_deadline?.__copy__());
                    {
                        var _a0 = stdgo._internal.net.http.Http__socksnodeadline._socksnoDeadline;
                        final __f__ = _c.setDeadline;
                        __deferstack__.unshift({ ran : false, f : () -> __f__(_a0?.__copy__()) });
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L36"
            if (({
                final __t__ = _ctx;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) != (({
                final __t__ = stdgo._internal.context.Context_background.background();
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                var _errCh = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
                var _done = (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>(0, () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
                {
                    __deferstack__.unshift({ ran : false, f : () -> ({
                        var a = function():Void {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L40"
                            if (_done != null) _done.__close__();
                            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L41"
                            if (_ctxErr == null) {
                                _ctxErr = _errCh.__get__();
                            };
                        };
                        a();
                    }) });
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L45"
                stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L46"
                        {
                            var __select__ = true;
                            var __c__0 = null;
var __c__1 = null;
                            while (__select__) {
                                if ({
                                    if (__c__0 == null) {
                                        __c__0 = _ctx.done();
                                    };
                                    __c__0 != null && __c__0.__isGet__(true);
                                }) {
                                    __select__ = false;
                                    {
                                        __c__0.__get__();
                                        {
                                            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L48"
                                            _c.setDeadline(stdgo._internal.net.http.Http__socksalongtimeago._socksaLongTimeAgo?.__copy__());
                                            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L49"
                                            _errCh.__send__(_ctx.err());
                                        };
                                    };
                                } else if ({
                                    if (__c__1 == null) {
                                        __c__1 = _done;
                                    };
                                    __c__1 != null && __c__1.__isGet__(true);
                                }) {
                                    __select__ = false;
                                    {
                                        __c__1.__get__();
                                        {
                                            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L51"
                                            _errCh.__send__((null : stdgo.Error));
                                        };
                                    };
                                };
                                #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                                stdgo._internal.internal.Async.tick();
                            };
                            __c__0.__reset__();
__c__1.__reset__();
                        };
                    };
                    a();
                }));
            };
            var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((6 : stdgo.GoInt) + (_host.length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _b = (_b.__append__((5 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L58"
            if ((((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).authMethods.length == (0 : stdgo.GoInt)) || ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).authenticate == null) : Bool)) {
                _b = (_b.__append__((1 : stdgo.GoUInt8), ((0 : stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            } else {
                var _ams = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).authMethods;
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L62"
                if (((_ams.length) > (255 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L63"
                    {
                        final __ret__:{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_addr.Addr), _1 : stdgo._internal.errors.Errors_new_.new_(("too many authentication methods" : stdgo.GoString)) };
                            _0 = __tmp__._0;
                            _ctxErr = __tmp__._1;
                            __tmp__;
                        };
                        _0 = __ret__._0;
                        _ctxErr = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                _b = (_b.__append__((_ams.length : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L66"
                if (_ams != null) for (__12 => _am in _ams) {
                    _b = (_b.__append__((_am : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L70"
            {
                {
                    var __tmp__ = _c.write(_b);
                    _ctxErr = @:tmpset0 __tmp__._1;
                };
                if (_ctxErr != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L71"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return { _0 : _0, _1 : _ctxErr };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L74"
            {
                {
                    var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_c, (_b.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _ctxErr = @:tmpset0 __tmp__._1;
                };
                if (_ctxErr != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L75"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return { _0 : _0, _1 : _ctxErr };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L77"
            if (_b[(0 : stdgo.GoInt)] != ((5 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L78"
                {
                    final __ret__:{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_addr.Addr), _1 : stdgo._internal.errors.Errors_new_.new_((("unexpected protocol version " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_b[(0 : stdgo.GoInt)] : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__()) };
                        _0 = __tmp__._0;
                        _ctxErr = __tmp__._1;
                        __tmp__;
                    };
                    _0 = __ret__._0;
                    _ctxErr = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _am = @:assignType (_b[(1 : stdgo.GoInt)] : stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod);
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L81"
            if (_am == ((255 : stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L82"
                {
                    final __ret__:{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_addr.Addr), _1 : stdgo._internal.errors.Errors_new_.new_(("no acceptable authentication methods" : stdgo.GoString)) };
                        _0 = __tmp__._0;
                        _ctxErr = __tmp__._1;
                        __tmp__;
                    };
                    _0 = __ret__._0;
                    _ctxErr = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L84"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).authenticate != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L85"
                {
                    _ctxErr = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).authenticate(_ctx, _c, _am);
                    if (_ctxErr != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L86"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return { _0 : _0, _1 : _ctxErr };
                        };
                    };
                };
            };
            _b = (_b.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _b = (_b.__append__((5 : stdgo.GoUInt8), ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cmd : stdgo.GoUInt8), (0 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L92"
            {
                var _ip = @:assignType (stdgo._internal.net.Net_parseip.parseIP(_host?.__copy__()) : stdgo._internal.net.Net_ip.IP);
                if (_ip != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L93"
                    {
                        var _ip4 = @:assignType (_ip.to4() : stdgo._internal.net.Net_ip.IP);
                        if (_ip4 != null) {
                            _b = (_b.__append__((1 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                            _b = (_b.__append__(...(_ip4 : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                        } else {
                            var _ip6 = @:assignType (_ip.to16() : stdgo._internal.net.Net_ip.IP);
                            if (_ip6 != null) {
                                _b = (_b.__append__((4 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                                _b = (_b.__append__(...(_ip6 : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                            } else {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L100"
                                {
                                    final __ret__:{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } = {
                                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_addr.Addr), _1 : stdgo._internal.errors.Errors_new_.new_(("unknown address type" : stdgo.GoString)) };
                                        _0 = __tmp__._0;
                                        _ctxErr = __tmp__._1;
                                        __tmp__;
                                    };
                                    _0 = __ret__._0;
                                    _ctxErr = __ret__._1;
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L103"
                    if (((_host.length) > (255 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L104"
                        {
                            final __ret__:{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_addr.Addr), _1 : stdgo._internal.errors.Errors_new_.new_(("FQDN too long" : stdgo.GoString)) };
                                _0 = __tmp__._0;
                                _ctxErr = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _ctxErr = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    _b = (_b.__append__((3 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                    _b = (_b.__append__((_host.length : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                    _b = (_b.__append__(...(_host : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                };
            };
            _b = (_b.__append__(((_port >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8), (_port : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L111"
            {
                {
                    var __tmp__ = _c.write(_b);
                    _ctxErr = @:tmpset0 __tmp__._1;
                };
                if (_ctxErr != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L112"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return { _0 : _0, _1 : _ctxErr };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L115"
            {
                {
                    var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_c, (_b.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _ctxErr = @:tmpset0 __tmp__._1;
                };
                if (_ctxErr != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L116"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return { _0 : _0, _1 : _ctxErr };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L118"
            if (_b[(0 : stdgo.GoInt)] != ((5 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L119"
                {
                    final __ret__:{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_addr.Addr), _1 : stdgo._internal.errors.Errors_new_.new_((("unexpected protocol version " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_b[(0 : stdgo.GoInt)] : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__()) };
                        _0 = __tmp__._0;
                        _ctxErr = __tmp__._1;
                        __tmp__;
                    };
                    _0 = __ret__._0;
                    _ctxErr = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L121"
            {
                var _cmdErr = @:assignType (_b[(1 : stdgo.GoInt)] : stdgo._internal.net.http.Http_t_socksreply.T_socksReply);
                if (_cmdErr != ((0 : stdgo._internal.net.http.Http_t_socksreply.T_socksReply))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L122"
                    {
                        final __ret__:{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_addr.Addr), _1 : stdgo._internal.errors.Errors_new_.new_((("unknown error " : stdgo.GoString) + (_cmdErr.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) };
                            _0 = __tmp__._0;
                            _ctxErr = __tmp__._1;
                            __tmp__;
                        };
                        _0 = __ret__._0;
                        _ctxErr = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L124"
            if (_b[(2 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L125"
                {
                    final __ret__:{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_addr.Addr), _1 : stdgo._internal.errors.Errors_new_.new_(("non-zero reserved field" : stdgo.GoString)) };
                        _0 = __tmp__._0;
                        _ctxErr = __tmp__._1;
                        __tmp__;
                    };
                    _0 = __ret__._0;
                    _ctxErr = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _l = @:assignType (2 : stdgo.GoInt);
            var _a:stdgo._internal.net.http.Http_t_socksaddr.T_socksAddr = ({} : stdgo._internal.net.http.Http_t_socksaddr.T_socksAddr);
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L129"
            {
                final __value__ = _b[(3 : stdgo.GoInt)];
                if (__value__ == ((1 : stdgo.GoUInt8))) {
                    _l = (_l + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _a.iP = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.net.Net_ip.IP);
                } else if (__value__ == ((4 : stdgo.GoUInt8))) {
                    _l = (_l + ((16 : stdgo.GoInt)) : stdgo.GoInt);
                    _a.iP = (new stdgo.Slice<stdgo.GoUInt8>((16 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.net.Net_ip.IP);
                } else if (__value__ == ((3 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L137"
                    {
                        var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_c, (_b.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __12:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L138"
                            {
                                final __ret__:{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } = {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_addr.Addr), _1 : _err };
                                    _0 = __tmp__._0;
                                    _ctxErr = __tmp__._1;
                                    __tmp__;
                                };
                                _0 = __ret__._0;
                                _ctxErr = __ret__._1;
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                    _l = (_l + ((_b[(0 : stdgo.GoInt)] : stdgo.GoInt)) : stdgo.GoInt);
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L142"
                    {
                        final __ret__:{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_addr.Addr), _1 : stdgo._internal.errors.Errors_new_.new_((("unknown address type " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_b[(3 : stdgo.GoInt)] : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__()) };
                            _0 = __tmp__._0;
                            _ctxErr = __tmp__._1;
                            __tmp__;
                        };
                        _0 = __ret__._0;
                        _ctxErr = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L144"
            if ((_b.capacity < _l : Bool)) {
                _b = (new stdgo.Slice<stdgo.GoUInt8>((_l : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            } else {
                _b = (_b.__slice__(0, _l) : stdgo.Slice<stdgo.GoUInt8>);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L149"
            {
                {
                    var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_c, _b);
                    _ctxErr = @:tmpset0 __tmp__._1;
                };
                if (_ctxErr != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L150"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return { _0 : _0, _1 : _ctxErr };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L152"
            if (_a.iP != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L153"
                _a.iP.__copyTo__(_b);
            } else {
                _a.name = ((_b.__slice__(0, ((_b.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
            };
            _a.port = (((_b[((_b.length) - (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) | (_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L158"
            {
                final __ret__:{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(_a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_socksaddrdott_socksaddr.__type__stdgodot_internaldotnetdothttpdotHttp_t_socksaddrdotT_socksAddr })) : stdgo.Ref<stdgo._internal.net.http.Http_t_socksaddr.T_socksAddr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_socksaddrdott_socksaddr.__type__stdgodot_internaldotnetdothttpdotHttp_t_socksaddrdotT_socksAddr })), _1 : (null : stdgo.Error) };
                    _0 = __tmp__._0;
                    _ctxErr = __tmp__._1;
                    __tmp__;
                };
                _0 = __ret__._0;
                _ctxErr = __ret__._1;
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return { _0 : _0, _1 : _ctxErr };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return { _0 : _0, _1 : _ctxErr };
            };
        };
    }
}
