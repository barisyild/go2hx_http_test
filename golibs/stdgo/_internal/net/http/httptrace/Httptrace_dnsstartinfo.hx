package stdgo._internal.net.http.httptrace;
import stdgo._internal.context.Context;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(stdgo._internal.net.http.httptrace.Httptrace_dnsstartinfo_static_extension.DNSStartInfo_static_extension) @:using(stdgo._internal.net.http.httptrace.Httptrace_dnsstartinfo_static_extension.DNSStartInfo_static_extension) class DNSStartInfo {
    public var host : stdgo.GoString = "";
    public function new(?host:stdgo.GoString) {
        if (host != null) this.host = host;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "host", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new DNSStartInfo(host);
    }
}
