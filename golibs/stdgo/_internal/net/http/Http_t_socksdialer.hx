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
@:structInit @:using(stdgo._internal.net.http.Http_t_socksdialer_static_extension.T_socksDialer_static_extension) @:using(stdgo._internal.net.http.Http_t_socksdialer_static_extension.T_socksDialer_static_extension) class T_socksDialer {
    public var _cmd : stdgo._internal.net.http.Http_t_sockscommand.T_socksCommand = ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_t_sockscommand.T_socksCommand);
    public var _proxyNetwork : stdgo.GoString = "";
    public var _proxyAddress : stdgo.GoString = "";
    public var proxyDial : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = null;
    public var authMethods : stdgo.Slice<stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod> = (null : stdgo.Slice<stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod>);
    public var authenticate : (stdgo._internal.context.Context_context.Context, stdgo._internal.io.Io_readwriter.ReadWriter, stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod) -> stdgo.Error = null;
    public function new(?_cmd:stdgo._internal.net.http.Http_t_sockscommand.T_socksCommand, ?_proxyNetwork:stdgo.GoString, ?_proxyAddress:stdgo.GoString, ?proxyDial:(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; }, ?authMethods:stdgo.Slice<stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod>, ?authenticate:(stdgo._internal.context.Context_context.Context, stdgo._internal.io.Io_readwriter.ReadWriter, stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod) -> stdgo.Error) {
        if (_cmd != null) this._cmd = _cmd;
        if (_proxyNetwork != null) this._proxyNetwork = _proxyNetwork;
        if (_proxyAddress != null) this._proxyAddress = _proxyAddress;
        if (proxyDial != null) this.proxyDial = proxyDial;
        if (authMethods != null) this.authMethods = authMethods;
        if (authenticate != null) this.authenticate = authenticate;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_cmd", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_sockscommanddott_sockscommand.__type__stdgodot_internaldotnetdothttpdotHttp_t_sockscommanddotT_socksCommand }, optional : false }, { name : "_proxyNetwork", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_proxyAddress", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "proxyDial", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext, stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn, _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }, { name : "authMethods", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_socksauthmethoddott_socksauthmethod.__type__stdgodot_internaldotnetdothttpdotHttp_t_socksauthmethoddotT_socksAuthMethod }) }, optional : false }, { name : "authenticate", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext, _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readwriterdotreadwriter.__type__stdgodot_internaldotiodotIo_readwriterdotReadWriter, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_socksauthmethoddott_socksauthmethod.__type__stdgodot_internaldotnetdothttpdotHttp_t_socksauthmethoddotT_socksAuthMethod] }, { get : () -> [_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }])));
    public function __copy__() {
        return new T_socksDialer(_cmd, _proxyNetwork, _proxyAddress, proxyDial, authMethods, authenticate);
    }
}
