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
@:structInit @:using(stdgo._internal.net.http.Http_client_static_extension.Client_static_extension) @:using(stdgo._internal.net.http.Http_client_static_extension.Client_static_extension) class Client {
    public var transport : stdgo._internal.net.http.Http_roundtripper.RoundTripper = (null : stdgo._internal.net.http.Http_roundtripper.RoundTripper);
    public var checkRedirect : (stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_request.Request>>) -> stdgo.Error = null;
    public var jar : stdgo._internal.net.http.Http_cookiejar.CookieJar = (null : stdgo._internal.net.http.Http_cookiejar.CookieJar);
    public var timeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public function new(?transport:stdgo._internal.net.http.Http_roundtripper.RoundTripper, ?checkRedirect:(stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_request.Request>>) -> stdgo.Error, ?jar:stdgo._internal.net.http.Http_cookiejar.CookieJar, ?timeout:stdgo._internal.time.Time_duration.Duration) {
        if (transport != null) this.transport = transport;
        if (checkRedirect != null) this.checkRedirect = checkRedirect;
        if (jar != null) this.jar = jar;
        if (timeout != null) this.timeout = timeout;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "transport", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_roundtripperdotroundtripper.__type__stdgodot_internaldotnetdothttpdotHttp_roundtripperdotRoundTripper }, optional : false }, { name : "checkRedirect", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest }), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest }) })] }, { get : () -> [_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }, { name : "jar", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_cookiejardotcookiejar.__type__stdgodot_internaldotnetdothttpdotHttp_cookiejardotCookieJar }, optional : false }, { name : "timeout", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false }])));
    public function __copy__() {
        return new Client(transport, checkRedirect, jar, timeout);
    }
}
