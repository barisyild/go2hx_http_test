package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:structInit @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource_static_extension.Resource_static_extension) @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource_static_extension.Resource_static_extension) class Resource {
    public var header : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader);
    public var body : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourcebody.ResourceBody = (null : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourcebody.ResourceBody);
    public function new(?header:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader, ?body:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourcebody.ResourceBody) {
        if (header != null) this.header = header;
        if (body != null) this.body = body;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "header", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_resourceheaderdotresourceheader.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_resourceheaderdotResourceHeader }, optional : false }, { name : "body", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_resourcebodydotresourcebody.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_resourcebodydotResourceBody }, optional : false }])));
    public function __copy__() {
        return new Resource(header, body);
    }
}
