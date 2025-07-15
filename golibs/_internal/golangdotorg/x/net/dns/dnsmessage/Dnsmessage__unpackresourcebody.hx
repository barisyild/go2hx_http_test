package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
function _unpackResourceBody(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt, _hdr:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourcebody.ResourceBody; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourcebody.ResourceBody = (null : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourcebody.ResourceBody), _err:stdgo.Error = (null : stdgo.Error), _name:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2159"
        {
            final __value__ = _hdr.type;
            if (__value__ == ((1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_))) {
                var _rb:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aresource.AResource = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aresource.AResource);
                {
                    var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackaresource._unpackAResource(_msg, _off);
                    _rb = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                _r = stdgo.Go.asInterface((stdgo.Go.setRef(_rb, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_aresourcedotaresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_aresourcedotAResource })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aresource.AResource>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_aresourcedotaresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_aresourcedotAResource }));
                _name = ("A" : stdgo.GoString);
            } else if (__value__ == ((2 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_))) {
                var _rb:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_nsresource.NSResource = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_nsresource.NSResource);
                {
                    var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpacknsresource._unpackNSResource(_msg, _off);
                    _rb = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                _r = stdgo.Go.asInterface((stdgo.Go.setRef(_rb, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_nsresourcedotnsresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_nsresourcedotNSResource })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_nsresource.NSResource>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_nsresourcedotnsresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_nsresourcedotNSResource }));
                _name = ("NS" : stdgo.GoString);
            } else if (__value__ == ((5 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_))) {
                var _rb:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_cnameresource.CNAMEResource = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_cnameresource.CNAMEResource);
                {
                    var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackcnameresource._unpackCNAMEResource(_msg, _off);
                    _rb = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                _r = stdgo.Go.asInterface((stdgo.Go.setRef(_rb, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_cnameresourcedotcnameresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_cnameresourcedotCNAMEResource })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_cnameresource.CNAMEResource>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_cnameresourcedotcnameresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_cnameresourcedotCNAMEResource }));
                _name = ("CNAME" : stdgo.GoString);
            } else if (__value__ == ((6 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_))) {
                var _rb:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_soaresource.SOAResource = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_soaresource.SOAResource);
                {
                    var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpacksoaresource._unpackSOAResource(_msg, _off);
                    _rb = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                _r = stdgo.Go.asInterface((stdgo.Go.setRef(_rb, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_soaresourcedotsoaresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_soaresourcedotSOAResource })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_soaresource.SOAResource>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_soaresourcedotsoaresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_soaresourcedotSOAResource }));
                _name = ("SOA" : stdgo.GoString);
            } else if (__value__ == ((12 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_))) {
                var _rb:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_ptrresource.PTRResource = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_ptrresource.PTRResource);
                {
                    var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackptrresource._unpackPTRResource(_msg, _off);
                    _rb = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                _r = stdgo.Go.asInterface((stdgo.Go.setRef(_rb, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_ptrresourcedotptrresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_ptrresourcedotPTRResource })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_ptrresource.PTRResource>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_ptrresourcedotptrresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_ptrresourcedotPTRResource }));
                _name = ("PTR" : stdgo.GoString);
            } else if (__value__ == ((15 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_))) {
                var _rb:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mxresource.MXResource = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mxresource.MXResource);
                {
                    var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackmxresource._unpackMXResource(_msg, _off);
                    _rb = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                _r = stdgo.Go.asInterface((stdgo.Go.setRef(_rb, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_mxresourcedotmxresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_mxresourcedotMXResource })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mxresource.MXResource>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_mxresourcedotmxresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_mxresourcedotMXResource }));
                _name = ("MX" : stdgo.GoString);
            } else if (__value__ == ((16 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_))) {
                var _rb:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource);
                {
                    var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpacktxtresource._unpackTXTResource(_msg, _off, _hdr.length_);
                    _rb = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                _r = stdgo.Go.asInterface((stdgo.Go.setRef(_rb, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_txtresourcedottxtresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_txtresourcedotTXTResource })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_txtresourcedottxtresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_txtresourcedotTXTResource }));
                _name = ("TXT" : stdgo.GoString);
            } else if (__value__ == ((28 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_))) {
                var _rb:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource.AAAAResource = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource.AAAAResource);
                {
                    var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackaaaaresource._unpackAAAAResource(_msg, _off);
                    _rb = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                _r = stdgo.Go.asInterface((stdgo.Go.setRef(_rb, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_aaaaresourcedotaaaaresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_aaaaresourcedotAAAAResource })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource.AAAAResource>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_aaaaresourcedotaaaaresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_aaaaresourcedotAAAAResource }));
                _name = ("AAAA" : stdgo.GoString);
            } else if (__value__ == ((33 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_))) {
                var _rb:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_srvresource.SRVResource = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_srvresource.SRVResource);
                {
                    var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpacksrvresource._unpackSRVResource(_msg, _off);
                    _rb = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                _r = stdgo.Go.asInterface((stdgo.Go.setRef(_rb, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_srvresourcedotsrvresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_srvresourcedotSRVResource })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_srvresource.SRVResource>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_srvresourcedotsrvresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_srvresourcedotSRVResource }));
                _name = ("SRV" : stdgo.GoString);
            } else if (__value__ == ((41 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_))) {
                var _rb:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource);
                {
                    var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackoptresource._unpackOPTResource(_msg, _off, _hdr.length_);
                    _rb = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                _r = stdgo.Go.asInterface((stdgo.Go.setRef(_rb, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_optresourcedotoptresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_optresourcedotOPTResource })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_optresourcedotoptresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_optresourcedotOPTResource }));
                _name = ("OPT" : stdgo.GoString);
            } else {
                var _rb:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_unknownresource.UnknownResource = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_unknownresource.UnknownResource);
                {
                    var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackunknownresource._unpackUnknownResource(_hdr.type, _msg, _off, _hdr.length_);
                    _rb = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                _r = stdgo.Go.asInterface((stdgo.Go.setRef(_rb, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_unknownresourcedotunknownresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_unknownresourcedotUnknownResource })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_unknownresource.UnknownResource>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_unknownresourcedotunknownresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_unknownresourcedotUnknownResource }));
                _name = ("Unknown" : stdgo.GoString);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2216"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2217"
            return { _0 : (null : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourcebody.ResourceBody), _1 : _off, _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError((_name + (" record" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2219"
        return { _0 : _r, _1 : (_off + (_hdr.length_ : stdgo.GoInt) : stdgo.GoInt), _2 : (null : stdgo.Error) };
    }
