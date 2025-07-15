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
@:keep @:allow(stdgo._internal.net.http.Http.T_socksUsernamePassword_asInterface) class T_socksUsernamePassword_static_extension {
    @:keep
    @:tdfield
    static public function authenticate( _up:stdgo.Ref<stdgo._internal.net.http.Http_t_socksusernamepassword.T_socksUsernamePassword>, _ctx:stdgo._internal.context.Context_context.Context, _rw:stdgo._internal.io.Io_readwriter.ReadWriter, _auth:stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod):stdgo.Error {
        @:recv var _up:stdgo.Ref<stdgo._internal.net.http.Http_t_socksusernamepassword.T_socksUsernamePassword> = _up;
        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L444"
        {
            final __value__ = _auth;
            if (__value__ == ((0 : stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L446"
                return (null : stdgo.Error);
            } else if (__value__ == ((2 : stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L448"
                if (((((@:checkr _up ?? throw stdgo.Error._nullPointerDereference.__underlying__()).username.length) == ((0 : stdgo.GoInt)) || (((@:checkr _up ?? throw stdgo.Error._nullPointerDereference.__underlying__()).username.length) > (255 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _up ?? throw stdgo.Error._nullPointerDereference.__underlying__()).password.length) > (255 : stdgo.GoInt) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L449"
                    return stdgo._internal.errors.Errors_new_.new_(("invalid username/password" : stdgo.GoString));
                };
                var _b = (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                _b = (_b.__append__(((@:checkr _up ?? throw stdgo.Error._nullPointerDereference.__underlying__()).username.length : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                _b = (_b.__append__(...((@:checkr _up ?? throw stdgo.Error._nullPointerDereference.__underlying__()).username : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                _b = (_b.__append__(((@:checkr _up ?? throw stdgo.Error._nullPointerDereference.__underlying__()).password.length : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                _b = (_b.__append__(...((@:checkr _up ?? throw stdgo.Error._nullPointerDereference.__underlying__()).password : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L458"
                {
                    var __tmp__ = _rw.write(_b), __12:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L459"
                        return _err;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L461"
                {
                    var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rw, (_b.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __13:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L462"
                        return _err;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L464"
                if (_b[(0 : stdgo.GoInt)] != ((1 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L465"
                    return stdgo._internal.errors.Errors_new_.new_(("invalid username/password version" : stdgo.GoString));
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L467"
                if (_b[(1 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L468"
                    return stdgo._internal.errors.Errors_new_.new_(("username/password authentication failed" : stdgo.GoString));
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L470"
                return (null : stdgo.Error);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/socks_bundle.go#L472"
        return stdgo._internal.errors.Errors_new_.new_((("unsupported authentication method " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_auth : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__());
    }
}
