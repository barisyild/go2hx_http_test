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
@:keep @:allow(stdgo._internal.net.http.Http.T_connectMethod_asInterface) class T_connectMethod_static_extension {
    @:keep
    @:tdfield
    static public function _tlsHost( _cm:stdgo.Ref<stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod>):stdgo.GoString {
        @:recv var _cm:stdgo.Ref<stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod> = _cm;
        var _h = @:assignType ((@:checkr _cm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._targetAddr?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1872"
        if (stdgo._internal.net.http.Http__hasport._hasPort(_h?.__copy__())) {
            _h = (_h.__slice__(0, stdgo._internal.strings.Strings_lastindex.lastIndex(_h?.__copy__(), (":" : stdgo.GoString))) : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1875"
        return _h?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _addr( _cm:stdgo.Ref<stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod>):stdgo.GoString {
        @:recv var _cm:stdgo.Ref<stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod> = _cm;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1862"
        if (({
            final value = (@:checkr _cm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._proxyURL;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1863"
            return stdgo._internal.net.http.Http__canonicaladdr._canonicalAddr((@:checkr _cm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._proxyURL)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1865"
        return (@:checkr _cm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._targetAddr?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _scheme( _cm:stdgo.Ref<stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod>):stdgo.GoString {
        @:recv var _cm:stdgo.Ref<stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod> = _cm;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1854"
        if (({
            final value = (@:checkr _cm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._proxyURL;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1855"
            return (@:checkr (@:checkr _cm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._proxyURL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1857"
        return (@:checkr _cm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._targetScheme?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _key( _cm:stdgo.Ref<stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod>):stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey {
        @:recv var _cm:stdgo.Ref<stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod> = _cm;
        var _proxyStr = @:assignType ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _targetAddr = @:assignType ((@:checkr _cm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._targetAddr?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1838"
        if (({
            final value = (@:checkr _cm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._proxyURL;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            _proxyStr = ((@:checkr _cm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._proxyURL.string() : stdgo.GoString)?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1840"
            if ((((((@:checkr (@:checkr _cm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._proxyURL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme == ("http" : stdgo.GoString)) || ((@:checkr (@:checkr _cm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._proxyURL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme == ("https" : stdgo.GoString)) : Bool)) && ((@:checkr _cm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._targetScheme == ("http" : stdgo.GoString)) : Bool)) {
                _targetAddr = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1844"
        return ({ _proxy : _proxyStr?.__copy__(), _scheme : (@:checkr _cm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._targetScheme?.__copy__(), _addr : _targetAddr?.__copy__(), _onlyH1 : (@:checkr _cm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._onlyH1 } : stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey);
    }
    @:keep
    @:tdfield
    static public function _proxyAuth( _cm:stdgo.Ref<stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod>):stdgo.GoString {
        @:recv var _cm:stdgo.Ref<stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod> = _cm;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L860"
        if (({
            final value = (@:checkr _cm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._proxyURL;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L861"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L863"
        {
            var _u = (@:checkr (@:checkr _cm ?? throw stdgo.Error._nullPointerDereference.__underlying__())._proxyURL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).user;
            if (({
                final value = _u;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                var _username = @:assignType (_u.username()?.__copy__() : stdgo.GoString);
                var __tmp__ = _u.password(), _password:stdgo.GoString = __tmp__._0, __12:Bool = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L866"
                return (("Basic " : stdgo.GoString) + stdgo._internal.net.http.Http__basicauth._basicAuth(_username?.__copy__(), _password?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L868"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
}
