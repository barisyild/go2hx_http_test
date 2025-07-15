package stdgo._internal.net.http.httptrace;
import stdgo._internal.context.Context;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(stdgo._internal.net.http.httptrace.Httptrace_clienttrace_static_extension.ClientTrace_static_extension) @:using(stdgo._internal.net.http.httptrace.Httptrace_clienttrace_static_extension.ClientTrace_static_extension) class ClientTrace {
    public var getConn : stdgo.GoString -> Void = null;
    public var gotConn : stdgo._internal.net.http.httptrace.Httptrace_gotconninfo.GotConnInfo -> Void = null;
    public var putIdleConn : stdgo.Error -> Void = null;
    public var gotFirstResponseByte : () -> Void = null;
    public var got100Continue : () -> Void = null;
    public var got1xxResponse : (stdgo.GoInt, stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader) -> stdgo.Error = null;
    public var dNSStart : stdgo._internal.net.http.httptrace.Httptrace_dnsstartinfo.DNSStartInfo -> Void = null;
    public var dNSDone : stdgo._internal.net.http.httptrace.Httptrace_dnsdoneinfo.DNSDoneInfo -> Void = null;
    public var connectStart : (stdgo.GoString, stdgo.GoString) -> Void = null;
    public var connectDone : (stdgo.GoString, stdgo.GoString, stdgo.Error) -> Void = null;
    public var tLSHandshakeStart : () -> Void = null;
    public var tLSHandshakeDone : (stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState, stdgo.Error) -> Void = null;
    public var wroteHeaderField : (stdgo.GoString, stdgo.Slice<stdgo.GoString>) -> Void = null;
    public var wroteHeaders : () -> Void = null;
    public var wait100Continue : () -> Void = null;
    public var wroteRequest : stdgo._internal.net.http.httptrace.Httptrace_wroterequestinfo.WroteRequestInfo -> Void = null;
    public function new(?getConn:stdgo.GoString -> Void, ?gotConn:stdgo._internal.net.http.httptrace.Httptrace_gotconninfo.GotConnInfo -> Void, ?putIdleConn:stdgo.Error -> Void, ?gotFirstResponseByte:() -> Void, ?got100Continue:() -> Void, ?got1xxResponse:(stdgo.GoInt, stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader) -> stdgo.Error, ?dNSStart:stdgo._internal.net.http.httptrace.Httptrace_dnsstartinfo.DNSStartInfo -> Void, ?dNSDone:stdgo._internal.net.http.httptrace.Httptrace_dnsdoneinfo.DNSDoneInfo -> Void, ?connectStart:(stdgo.GoString, stdgo.GoString) -> Void, ?connectDone:(stdgo.GoString, stdgo.GoString, stdgo.Error) -> Void, ?tLSHandshakeStart:() -> Void, ?tLSHandshakeDone:(stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState, stdgo.Error) -> Void, ?wroteHeaderField:(stdgo.GoString, stdgo.Slice<stdgo.GoString>) -> Void, ?wroteHeaders:() -> Void, ?wait100Continue:() -> Void, ?wroteRequest:stdgo._internal.net.http.httptrace.Httptrace_wroterequestinfo.WroteRequestInfo -> Void) {
        if (getConn != null) this.getConn = getConn;
        if (gotConn != null) this.gotConn = gotConn;
        if (putIdleConn != null) this.putIdleConn = putIdleConn;
        if (gotFirstResponseByte != null) this.gotFirstResponseByte = gotFirstResponseByte;
        if (got100Continue != null) this.got100Continue = got100Continue;
        if (got1xxResponse != null) this.got1xxResponse = got1xxResponse;
        if (dNSStart != null) this.dNSStart = dNSStart;
        if (dNSDone != null) this.dNSDone = dNSDone;
        if (connectStart != null) this.connectStart = connectStart;
        if (connectDone != null) this.connectDone = connectDone;
        if (tLSHandshakeStart != null) this.tLSHandshakeStart = tLSHandshakeStart;
        if (tLSHandshakeDone != null) this.tLSHandshakeDone = tLSHandshakeDone;
        if (wroteHeaderField != null) this.wroteHeaderField = wroteHeaderField;
        if (wroteHeaders != null) this.wroteHeaders = wroteHeaders;
        if (wait100Continue != null) this.wait100Continue = wait100Continue;
        if (wroteRequest != null) this.wroteRequest = wroteRequest;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "getConn", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "gotConn", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttptracedothttptrace_gotconninfodotgotconninfo.__type__stdgodot_internaldotnetdothttpdothttptracedotHttptrace_gotconninfodotGotConnInfo] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "putIdleConn", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "gotFirstResponseByte", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "got100Continue", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "got1xxResponse", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind), _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader] }, { get : () -> [_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "dNSStart", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttptracedothttptrace_dnsstartinfodotdnsstartinfo.__type__stdgodot_internaldotnetdothttpdothttptracedotHttptrace_dnsstartinfodotDNSStartInfo] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "dNSDone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttptracedothttptrace_dnsdoneinfodotdnsdoneinfo.__type__stdgodot_internaldotnetdothttpdothttptracedotHttptrace_dnsdoneinfodotDNSDoneInfo] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "connectStart", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "connectDone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind), _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "tLSHandshakeStart", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "tLSHandshakeDone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_connectionstatedotconnectionstate.__type__stdgodot_internaldotcryptodottlsdotTls_connectionstatedotConnectionState, _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "wroteHeaderField", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "wroteHeaders", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "wait100Continue", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "wroteRequest", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttptracedothttptrace_wroterequestinfodotwroterequestinfo.__type__stdgodot_internaldotnetdothttpdothttptracedotHttptrace_wroterequestinfodotWroteRequestInfo] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }])));
    public function __copy__() {
        return new ClientTrace(
getConn,
gotConn,
putIdleConn,
gotFirstResponseByte,
got100Continue,
got1xxResponse,
dNSStart,
dNSDone,
connectStart,
connectDone,
tLSHandshakeStart,
tLSHandshakeDone,
wroteHeaderField,
wroteHeaders,
wait100Continue,
wroteRequest);
    }
}
