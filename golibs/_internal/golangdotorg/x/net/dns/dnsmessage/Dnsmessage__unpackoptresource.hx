package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
function _unpackOPTResource(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt, _length:stdgo.GoUInt16):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource; var _1 : stdgo.Error; } {
        var _opts:stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_option.Option> = (null : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_option.Option>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2641"
        {
            var _oldOff = @:assignType (_off : stdgo.GoInt);
            while ((_off < (_oldOff + (_length : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                var _err:stdgo.Error = (null : stdgo.Error);
                var _o:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_option.Option = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_option.Option);
                {
                    var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackuint16._unpackUint16(_msg, _off);
                    _o.code = @:tmpset0 __tmp__._0;
                    _off = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2645"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2646"
                    return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("Code" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
                };
                var _l:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
                {
                    var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackuint16._unpackUint16(_msg, _off);
                    _l = @:tmpset0 __tmp__._0;
                    _off = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2650"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2651"
                    return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("Data" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
                };
                _o.data = (new stdgo.Slice<stdgo.GoUInt8>((_l : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2654"
                if (_o.data.__copyTo__((_msg.__slice__(_off) : stdgo.Slice<stdgo.GoUInt8>)) != ((_l : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2655"
                    return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("Data" : stdgo.GoString), _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errcalclen._errCalcLen) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
                };
                _off = (_off + ((_l : stdgo.GoInt)) : stdgo.GoInt);
                _opts = (_opts.__append__(_o?.__copy__()) : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_option.Option>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2660"
        return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource(_opts) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource), _1 : (null : stdgo.Error) };
    }
