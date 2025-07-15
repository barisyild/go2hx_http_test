package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:structInit @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource_static_extension.OPTResource_static_extension) @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource_static_extension.OPTResource_static_extension) class OPTResource {
    public var options : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_option.Option> = (null : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_option.Option>);
    public function new(?options:stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_option.Option>) {
        if (options != null) this.options = options;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "options", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_optiondotoption.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_optiondotOption }) }, optional : false }])));
    public function __copy__() {
        return new OPTResource(options);
    }
}
