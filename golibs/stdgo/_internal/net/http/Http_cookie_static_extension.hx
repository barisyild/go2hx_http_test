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
@:keep @:allow(stdgo._internal.net.http.Http.Cookie_asInterface) class Cookie_static_extension {
    @:keep
    @:tdfield
    static public function valid( _c:stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L244"
        if (({
            final value = _c;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L245"
            return stdgo._internal.errors.Errors_new_.new_(("http: nil Cookie" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L247"
        if (!stdgo._internal.net.http.Http__iscookienamevalid._isCookieNameValid((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L248"
            return stdgo._internal.errors.Errors_new_.new_(("http: invalid Cookie.Name" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L250"
        if ((!(@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).expires.isZero() && !stdgo._internal.net.http.Http__validcookieexpires._validCookieExpires((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).expires?.__copy__()) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L251"
            return stdgo._internal.errors.Errors_new_.new_(("http: invalid Cookie.Expires" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L253"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L254"
                if (!stdgo._internal.net.http.Http__validcookievaluebyte._validCookieValueByte((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value[(_i : stdgo.GoInt)])) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L255"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("http: invalid byte %q in Cookie.Value" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value[(_i : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))));
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L258"
        if ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L259"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path.length) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L260"
                    if (!stdgo._internal.net.http.Http__validcookiepathbyte._validCookiePathByte((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path[(_i : stdgo.GoInt)])) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L261"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("http: invalid byte %q in Cookie.Path" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path[(_i : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))));
                    };
                    _i++;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L265"
        if ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).domain.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L266"
            if (!stdgo._internal.net.http.Http__validcookiedomain._validCookieDomain((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).domain?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L267"
                return stdgo._internal.errors.Errors_new_.new_(("http: invalid Cookie.Domain" : stdgo.GoString));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L270"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L180"
        if ((({
            final value = _c;
            (value == null || (value : Dynamic).__nil__);
        }) || !stdgo._internal.net.http.Http__iscookienamevalid._isCookieNameValid((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__()) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L181"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        {};
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L187"
        _b.grow(((((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name.length) + ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value.length) : stdgo.GoInt) + ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).domain.length) : stdgo.GoInt) + ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path.length) : stdgo.GoInt) + (110 : stdgo.GoInt) : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L188"
        _b.writeString((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L189"
        _b.writeRune((61 : stdgo.GoInt32));
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L190"
        _b.writeString(stdgo._internal.net.http.Http__sanitizecookievalue._sanitizeCookieValue((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value?.__copy__())?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L192"
        if ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L193"
            _b.writeString(("; Path=" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L194"
            _b.writeString(stdgo._internal.net.http.Http__sanitizecookiepath._sanitizeCookiePath((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path?.__copy__())?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L196"
        if ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).domain.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L197"
            if (stdgo._internal.net.http.Http__validcookiedomain._validCookieDomain((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).domain?.__copy__())) {
                var _d = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).domain?.__copy__() : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L203"
                if (_d[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
                    _d = (_d.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L206"
                _b.writeString(("; Domain=" : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L207"
                _b.writeString(_d?.__copy__());
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L209"
                stdgo._internal.log.Log_printf.printf(("net/http: invalid Cookie.Domain %q; dropping domain attribute" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).domain, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(29, 29).__setNumber32__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L213"
        if (stdgo._internal.net.http.Http__validcookieexpires._validCookieExpires((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).expires?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L214"
            _b.writeString(("; Expires=" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L215"
            _b.write((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).expires.uTC().appendFormat((_buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ("Mon, 02 Jan 2006 15:04:05 GMT" : stdgo.GoString)));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L217"
        if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxAge > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L218"
            _b.writeString(("; Max-Age=" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L219"
            _b.write(stdgo._internal.strconv.Strconv_appendint.appendInt((_buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxAge : stdgo.GoInt64), (10 : stdgo.GoInt)));
        } else if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxAge < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L221"
            _b.writeString(("; Max-Age=0" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L223"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).httpOnly) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L224"
            _b.writeString(("; HttpOnly" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L226"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).secure) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L227"
            _b.writeString(("; Secure" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L229"
        {
            final __value__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sameSite;
            if (__value__ == ((1 : stdgo._internal.net.http.Http_samesite.SameSite))) {} else if (__value__ == ((4 : stdgo._internal.net.http.Http_samesite.SameSite))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L233"
                _b.writeString(("; SameSite=None" : stdgo.GoString));
            } else if (__value__ == ((2 : stdgo._internal.net.http.Http_samesite.SameSite))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L235"
                _b.writeString(("; SameSite=Lax" : stdgo.GoString));
            } else if (__value__ == ((3 : stdgo._internal.net.http.Http_samesite.SameSite))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L237"
                _b.writeString(("; SameSite=Strict" : stdgo.GoString));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L239"
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
}
