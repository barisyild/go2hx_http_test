package _internal.golangdotorg.x.net.http.httpproxy;
import stdgo._internal.os.Os;
import stdgo._internal.net.url.Url;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.errors.Errors;
@:structInit @:using(_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_config_static_extension.Config_static_extension) @:using(_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_config_static_extension.Config_static_extension) class Config {
    public var hTTPProxy : stdgo.GoString = "";
    public var hTTPSProxy : stdgo.GoString = "";
    public var noProxy : stdgo.GoString = "";
    public var cGI : Bool = false;
    public function new(?hTTPProxy:stdgo.GoString, ?hTTPSProxy:stdgo.GoString, ?noProxy:stdgo.GoString, ?cGI:Bool) {
        if (hTTPProxy != null) this.hTTPProxy = hTTPProxy;
        if (hTTPSProxy != null) this.hTTPSProxy = hTTPSProxy;
        if (noProxy != null) this.noProxy = noProxy;
        if (cGI != null) this.cGI = cGI;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "hTTPProxy", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "hTTPSProxy", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "noProxy", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "cGI", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new Config(hTTPProxy, hTTPSProxy, noProxy, cGI);
    }
}
