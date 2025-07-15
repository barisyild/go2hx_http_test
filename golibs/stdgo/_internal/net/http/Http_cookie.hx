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
@:structInit @:using(stdgo._internal.net.http.Http_cookie_static_extension.Cookie_static_extension) @:using(stdgo._internal.net.http.Http_cookie_static_extension.Cookie_static_extension) class Cookie {
    public var name : stdgo.GoString = "";
    public var value : stdgo.GoString = "";
    public var path : stdgo.GoString = "";
    public var domain : stdgo.GoString = "";
    public var expires : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var rawExpires : stdgo.GoString = "";
    public var maxAge : stdgo.GoInt = 0;
    public var secure : Bool = false;
    public var httpOnly : Bool = false;
    public var sameSite : stdgo._internal.net.http.Http_samesite.SameSite = ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_samesite.SameSite);
    public var raw : stdgo.GoString = "";
    public var unparsed : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?name:stdgo.GoString, ?value:stdgo.GoString, ?path:stdgo.GoString, ?domain:stdgo.GoString, ?expires:stdgo._internal.time.Time_time.Time, ?rawExpires:stdgo.GoString, ?maxAge:stdgo.GoInt, ?secure:Bool, ?httpOnly:Bool, ?sameSite:stdgo._internal.net.http.Http_samesite.SameSite, ?raw:stdgo.GoString, ?unparsed:stdgo.Slice<stdgo.GoString>) {
        if (name != null) this.name = name;
        if (value != null) this.value = value;
        if (path != null) this.path = path;
        if (domain != null) this.domain = domain;
        if (expires != null) this.expires = expires;
        if (rawExpires != null) this.rawExpires = rawExpires;
        if (maxAge != null) this.maxAge = maxAge;
        if (secure != null) this.secure = secure;
        if (httpOnly != null) this.httpOnly = httpOnly;
        if (sameSite != null) this.sameSite = sameSite;
        if (raw != null) this.raw = raw;
        if (unparsed != null) this.unparsed = unparsed;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "domain", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "expires", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime }, optional : false },
{ name : "rawExpires", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "maxAge", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "secure", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "httpOnly", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "sameSite", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_samesitedotsamesite.__type__stdgodot_internaldotnetdothttpdotHttp_samesitedotSameSite }, optional : false },
{ name : "raw", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "unparsed", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false }])));
    public function __copy__() {
        return new Cookie(
name,
value,
path,
domain,
expires,
rawExpires,
maxAge,
secure,
httpOnly,
sameSite,
raw,
unparsed);
    }
}
