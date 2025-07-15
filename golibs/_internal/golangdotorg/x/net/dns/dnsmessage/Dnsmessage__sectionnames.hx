package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
var _sectionNames : stdgo.GoMap<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section, stdgo.GoString> = ({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section), ("header" : stdgo.GoString));
x.set((2 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section), ("Question" : stdgo.GoString));
x.set((3 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section), ("Answer" : stdgo.GoString));
x.set((4 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section), ("Authority" : stdgo.GoString));
x.set((5 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section), ("Additional" : stdgo.GoString));
        x;
    } : stdgo.GoMap<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section, stdgo.GoString>);
