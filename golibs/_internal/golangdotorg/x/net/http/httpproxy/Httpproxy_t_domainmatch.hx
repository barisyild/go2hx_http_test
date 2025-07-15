package _internal.golangdotorg.x.net.http.httpproxy;
import stdgo._internal.os.Os;
import stdgo._internal.net.url.Url;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.errors.Errors;
@:structInit @:using(_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_domainmatch_static_extension.T_domainMatch_static_extension) @:using(_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_domainmatch_static_extension.T_domainMatch_static_extension) class T_domainMatch {
    public var _host : stdgo.GoString = "";
    public var _port : stdgo.GoString = "";
    public var _matchHost : Bool = false;
    public function new(?_host:stdgo.GoString, ?_port:stdgo.GoString, ?_matchHost:Bool) {
        if (_host != null) this._host = _host;
        if (_port != null) this._port = _port;
        if (_matchHost != null) this._matchHost = _matchHost;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_host", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_port", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_matchHost", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_domainMatch(_host, _port, _matchHost);
    }
}
