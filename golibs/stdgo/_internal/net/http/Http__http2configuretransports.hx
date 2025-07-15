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
function _http2ConfigureTransports(_t1:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7313"
        return stdgo._internal.net.http.Http__http2configuretransports._http2configureTransports(_t1);
    }
function _http2configureTransports(_t1:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>; var _1 : stdgo.Error; } {
        var _connPool = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconnpooldott_http2clientconnpool.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconnpooldotT_http2clientConnPool })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool>);
        var _t2 = (stdgo.Go.setRef(({ connPool : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool(_connPool) : stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2nodialclientconnpooldott_http2nodialclientconnpool.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2nodialclientconnpooldotT_http2noDialClientConnPool), _t1 : _t1 } : stdgo._internal.net.http.Http_t_http2transport.T_http2Transport), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2transportdott_http2transport.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2transportdotT_http2Transport })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>);
        (@:checkr _connPool ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t = _t2;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7323"
        {
            var _err = @:assignType (stdgo._internal.net.http.Http__http2registerhttpsprotocol._http2registerHTTPSProtocol(_t1, (new stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper(_t2) : stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper)) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7324"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7326"
        if (({
            final value = (@:checkr _t1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSClientConfig;
            (value == null || (value : Dynamic).__nil__);
        })) {
            (@:checkr _t1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSClientConfig = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_config.Config), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_configdotconfig.__type__stdgodot_internaldotcryptodottlsdotTls_configdotConfig })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7329"
        if (!stdgo._internal.net.http.Http__http2strslicecontains._http2strSliceContains((@:checkr (@:checkr _t1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSClientConfig ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos, ("h2" : stdgo.GoString))) {
            (@:checkr (@:checkr _t1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSClientConfig ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos = ((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("h2" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...((@:checkr (@:checkr _t1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSClientConfig ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7332"
        if (!stdgo._internal.net.http.Http__http2strslicecontains._http2strSliceContains((@:checkr (@:checkr _t1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSClientConfig ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos, ("http/1.1" : stdgo.GoString))) {
            (@:checkr (@:checkr _t1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSClientConfig ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos = ((@:checkr (@:checkr _t1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSClientConfig ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos.__append__(("http/1.1" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        };
        var _upgradeFn = function(_authority:stdgo.GoString, _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo._internal.net.http.Http_roundtripper.RoundTripper {
            var _addr = @:assignType (stdgo._internal.net.http.Http__http2authorityaddr._http2authorityAddr(("https" : stdgo.GoString), _authority?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7337"
            {
                var __tmp__ = _connPool._addConnIfNeeded(_addr?.__copy__(), _t2, _c), _used:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7338"
                    {
                        {};
                        stdgo.Go.routine(() -> _c.close());
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7339"
                    return stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_http2erringroundtripper.T_http2erringRoundTripper(_err) : stdgo._internal.net.http.Http_t_http2erringroundtripper.T_http2erringRoundTripper), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2erringroundtripperdott_http2erringroundtripper.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2erringroundtripperdotT_http2erringRoundTripper);
                } else if (!_used) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7345"
                    {
                        {};
                        stdgo.Go.routine(() -> _c.close());
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7347"
            return stdgo.Go.asInterface(_t2, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2transportdott_http2transport.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2transportdotT_http2Transport }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7349"
        {
            var _m = (@:checkr _t1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSNextProto;
            if ((_m.length) == ((0 : stdgo.GoInt))) {
                (@:checkr _t1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSNextProto = ({
                    final x = new stdgo.GoMap.GoStringMap<(stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>) -> stdgo._internal.net.http.Http_roundtripper.RoundTripper>();
                    x.__defaultValue__ = () -> null;
                    x.set(("h2" : stdgo.GoString), _upgradeFn);
                    x;
                } : stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>) -> stdgo._internal.net.http.Http_roundtripper.RoundTripper>);
            } else {
                _m[("h2" : stdgo.GoString)] = _upgradeFn;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7356"
        return { _0 : _t2, _1 : (null : stdgo.Error) };
    }
