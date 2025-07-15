package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
function _unpackTXTResource(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt, _length:stdgo.GoUInt16):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource; var _1 : stdgo.Error; } {
        var _txts = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (1 : stdgo.GoInt)).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2462"
        {
            var _n = @:assignType ((0 : stdgo.GoUInt16) : stdgo.GoUInt16);
            while ((_n < _length : Bool)) {
                var _t:stdgo.GoString = ("" : stdgo.GoString);
                var _err:stdgo.Error = (null : stdgo.Error);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2465"
                {
                    {
                        var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpacktext._unpackText(_msg, _off);
                        _t = @:tmpset0 __tmp__._0?.__copy__();
                        _off = @:tmpset0 __tmp__._1;
                        _err = @:tmpset0 __tmp__._2;
                    };
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2466"
                        return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("text" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2469"
                if (((_length - _n : stdgo.GoUInt16) < ((_t.length : stdgo.GoUInt16) + (1 : stdgo.GoUInt16) : stdgo.GoUInt16) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2470"
                    return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource), _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errcalclen._errCalcLen };
                };
                _n = (_n + (((_t.length : stdgo.GoUInt16) + (1 : stdgo.GoUInt16) : stdgo.GoUInt16)) : stdgo.GoUInt16);
                _txts = (_txts.__append__(_t?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2475"
        return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource(_txts) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource), _1 : (null : stdgo.Error) };
    }
