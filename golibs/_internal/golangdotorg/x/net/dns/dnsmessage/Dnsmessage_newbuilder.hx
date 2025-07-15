package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
function newBuilder(_buf:stdgo.Slice<stdgo.GoUInt8>, _h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_header.Header):_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1230"
        if (_buf == null) {
            _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (512 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _b = @:assignType ({ _msg : _buf, _start : (_buf.length) } : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder);
        {
            var __tmp__ = _h._pack();
            _b._header._id = @:tmpset0 __tmp__._0;
            _b._header._bits = @:tmpset0 __tmp__._1;
        };
        var _hb:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(12, 12).__setNumber32__();
        _b._msg = (_b._msg.__append__(...((_hb.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        _b._section = (1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1238"
        return _b?.__copy__();
    }
