package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
var _rCodeNames : stdgo.GoMap<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_rcode.RCode, stdgo.GoString> = ({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_rcode.RCode), ("RCodeSuccess" : stdgo.GoString));
x.set((1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_rcode.RCode), ("RCodeFormatError" : stdgo.GoString));
x.set((2 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_rcode.RCode), ("RCodeServerFailure" : stdgo.GoString));
x.set((3 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_rcode.RCode), ("RCodeNameError" : stdgo.GoString));
x.set((4 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_rcode.RCode), ("RCodeNotImplemented" : stdgo.GoString));
x.set((5 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_rcode.RCode), ("RCodeRefused" : stdgo.GoString));
        x;
    } : stdgo.GoMap<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_rcode.RCode, stdgo.GoString>);
