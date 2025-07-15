package stdgo._internal.net;
import stdgo._internal.net.netip.Netip;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.os.Os;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.internal.poll.Poll;
import stdgo._internal.sort.Sort;
import stdgo._internal.context.Context;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.Io;
import stdgo._internal.sync.atomic_.Atomic_;
import _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.net.Net.Resolver_asInterface) class Resolver_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString, _qtype:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_, _conf:stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake_js.go#L35"
        throw new stdgo.AnyInterface(("unreachable" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
    }
    @:keep
    @:tdfield
    static public function _lookupAddr( _:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _addr:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _;
        var _ptrs = (null : stdgo.Slice<stdgo.GoString>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup_fake.go#L51"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(92) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
            _ptrs = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _lookupTXT( _:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _;
        var _txts = (null : stdgo.Slice<stdgo.GoString>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup_fake.go#L47"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(92) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
            _txts = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _lookupNS( _:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>; var _1 : stdgo.Error; } {
        @:recv var _:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _;
        var _nss = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup_fake.go#L43"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(92) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
            _nss = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _lookupMX( _:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>; var _1 : stdgo.Error; } {
        @:recv var _:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _;
        var _mxs = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup_fake.go#L39"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(92) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
            _mxs = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _lookupSRV( _:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _service:stdgo.GoString, _proto:stdgo.GoString, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } {
        @:recv var _:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _;
        var _cname = ("" : stdgo.GoString), _srvs = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup_fake.go#L35"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>), _2 : stdgo.Go.asInterface((new stdgo.GoUIntptr(92) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
            _cname = __tmp__._0;
            _srvs = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _lookupCNAME( _:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _;
        var _cname = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup_fake.go#L31"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(92) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
            _cname = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _lookupPort( _:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _service:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _;
        var _port = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup_fake.go#L27"
        return stdgo._internal.net.Net__golookupport._goLookupPort(_network?.__copy__(), _service?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _lookupIP( _:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; } {
        @:recv var _:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _;
        var _addrs = (null : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup_fake.go#L23"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(92) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
            _addrs = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _lookupHost( _:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _;
        var _addrs = (null : stdgo.Slice<stdgo.GoString>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup_fake.go#L19"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(92) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
            _addrs = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _goLookupTXT( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _r;
        var __tmp__ = _r._lookup(_ctx, _name?.__copy__(), (16 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_), null), _p:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser = __tmp__._0, _server:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L846"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L847"
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
        };
        var _txts:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L850"
        while (true) {
            var __tmp__ = _p.answerHeader(), _h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L852"
            if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errsectiondone.errSectionDone;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L853"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L855"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L856"
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("cannot unmarshal DNS message" : stdgo.GoString), name : _name?.__copy__(), server : _server?.__copy__() } : stdgo._internal.net.Net_dnserror.DNSError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L862"
            if (_h.type != ((16 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_))) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L863"
                {
                    var _err = @:assignType (_p.skipAnswer() : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L864"
                        return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("cannot unmarshal DNS message" : stdgo.GoString), name : _name?.__copy__(), server : _server?.__copy__() } : stdgo._internal.net.Net_dnserror.DNSError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L870"
                continue;
            };
            var __tmp__ = _p.tXTResource(), _txt:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L873"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L874"
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("cannot unmarshal DNS message" : stdgo.GoString), name : _name?.__copy__(), server : _server?.__copy__() } : stdgo._internal.net.Net_dnserror.DNSError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) };
            };
            var _n = @:assignType (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L884"
            if (_txt.tXT != null) for (__3 => _s in _txt.tXT) {
                _n = (_n + ((_s.length)) : stdgo.GoInt);
            };
            var _txtJoin = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _n).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L888"
            if (_txt.tXT != null) for (__4 => _s in _txt.tXT) {
                _txtJoin = (_txtJoin.__append__(...(_s : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L891"
            if ((_txts.length) == ((0 : stdgo.GoInt))) {
                _txts = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (1 : stdgo.GoInt)).__setString__() : stdgo.Slice<stdgo.GoString>);
            };
            _txts = (_txts.__append__((_txtJoin : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L896"
        return { _0 : _txts, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _goLookupNS( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _r;
        var __tmp__ = _r._lookup(_ctx, _name?.__copy__(), (2 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_), null), _p:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser = __tmp__._0, _server:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L804"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L805"
            return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>), _1 : _err };
        };
        var _nss:stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L808"
        while (true) {
            var __tmp__ = _p.answerHeader(), _h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L810"
            if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errsectiondone.errSectionDone;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L811"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L813"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L814"
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("cannot unmarshal DNS message" : stdgo.GoString), name : _name?.__copy__(), server : _server?.__copy__() } : stdgo._internal.net.Net_dnserror.DNSError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L820"
            if (_h.type != ((2 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_))) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L821"
                {
                    var _err = @:assignType (_p.skipAnswer() : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L822"
                        return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("cannot unmarshal DNS message" : stdgo.GoString), name : _name?.__copy__(), server : _server?.__copy__() } : stdgo._internal.net.Net_dnserror.DNSError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L828"
                continue;
            };
            var __tmp__ = _p.nSResource(), _ns:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_nsresource.NSResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L831"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L832"
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("cannot unmarshal DNS message" : stdgo.GoString), name : _name?.__copy__(), server : _server?.__copy__() } : stdgo._internal.net.Net_dnserror.DNSError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) };
            };
            _nss = (_nss.__append__((stdgo.Go.setRef(({ host : (_ns.nS.string() : stdgo.GoString)?.__copy__() } : stdgo._internal.net.Net_ns.NS), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_nsdotns.__type__stdgodot_internaldotnetdotNet_nsdotNS })) : stdgo.Ref<stdgo._internal.net.Net_ns.NS>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L840"
        return { _0 : _nss, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _goLookupMX( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _r;
        var __tmp__ = _r._lookup(_ctx, _name?.__copy__(), (15 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_), null), _p:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser = __tmp__._0, _server:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L760"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L761"
            return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>), _1 : _err };
        };
        var _mxs:stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L764"
        while (true) {
            var __tmp__ = _p.answerHeader(), _h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L766"
            if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errsectiondone.errSectionDone;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L767"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L769"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L770"
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("cannot unmarshal DNS message" : stdgo.GoString), name : _name?.__copy__(), server : _server?.__copy__() } : stdgo._internal.net.Net_dnserror.DNSError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L776"
            if (_h.type != ((15 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_))) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L777"
                {
                    var _err = @:assignType (_p.skipAnswer() : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L778"
                        return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("cannot unmarshal DNS message" : stdgo.GoString), name : _name?.__copy__(), server : _server?.__copy__() } : stdgo._internal.net.Net_dnserror.DNSError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L784"
                continue;
            };
            var __tmp__ = _p.mXResource(), _mx:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mxresource.MXResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L787"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L788"
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("cannot unmarshal DNS message" : stdgo.GoString), name : _name?.__copy__(), server : _server?.__copy__() } : stdgo._internal.net.Net_dnserror.DNSError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) };
            };
            _mxs = (_mxs.__append__((stdgo.Go.setRef(({ host : (_mx.mX.string() : stdgo.GoString)?.__copy__(), pref : _mx.pref } : stdgo._internal.net.Net_mx.MX), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_mxdotmx.__type__stdgodot_internaldotnetdotNet_mxdotMX })) : stdgo.Ref<stdgo._internal.net.Net_mx.MX>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L797"
        (_mxs : stdgo._internal.net.Net_t_bypref.T_byPref)._sort();
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L798"
        return { _0 : _mxs, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _goLookupSRV( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _service:stdgo.GoString, _proto:stdgo.GoString, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _r;
        var _target = ("" : stdgo.GoString), _srvs = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L708"
        if (((_service == (stdgo.Go.str() : stdgo.GoString)) && (_proto == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            _target = _name?.__copy__();
        } else {
            _target = (((((("_" : stdgo.GoString) + _service?.__copy__() : stdgo.GoString) + ("._" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _proto?.__copy__() : stdgo.GoString) + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__();
        };
        var __tmp__ = _r._lookup(_ctx, _target?.__copy__(), (33 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_), null), _p:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser = __tmp__._0, _server:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L714"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L715"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>), _2 : _err };
                _target = __tmp__._0;
                _srvs = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var _cname:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L718"
        while (true) {
            var __tmp__ = _p.answerHeader(), _h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L720"
            if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errsectiondone.errSectionDone;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L721"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L723"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L724"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>), _2 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("cannot unmarshal DNS message" : stdgo.GoString), name : _name?.__copy__(), server : _server?.__copy__() } : stdgo._internal.net.Net_dnserror.DNSError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) };
                    _target = __tmp__._0;
                    _srvs = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L730"
            if (_h.type != ((33 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_))) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L731"
                {
                    var _err = @:assignType (_p.skipAnswer() : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L732"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>), _2 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("cannot unmarshal DNS message" : stdgo.GoString), name : _name?.__copy__(), server : _server?.__copy__() } : stdgo._internal.net.Net_dnserror.DNSError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) };
                            _target = __tmp__._0;
                            _srvs = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L738"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L740"
            if (((_cname.length_ == (0 : stdgo.GoUInt8)) && (_h.name.length_ != (0 : stdgo.GoUInt8)) : Bool)) {
                _cname = _h.name?.__copy__();
            };
            var __tmp__ = _p.sRVResource(), _srv:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_srvresource.SRVResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L744"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L745"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>), _2 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("cannot unmarshal DNS message" : stdgo.GoString), name : _name?.__copy__(), server : _server?.__copy__() } : stdgo._internal.net.Net_dnserror.DNSError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) };
                    _target = __tmp__._0;
                    _srvs = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            _srvs = (_srvs.__append__((stdgo.Go.setRef(({ target : (_srv.target.string() : stdgo.GoString)?.__copy__(), port : _srv.port, priority : _srv.priority, weight : _srv.weight } : stdgo._internal.net.Net_srv.SRV), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_srvdotsrv.__type__stdgodot_internaldotnetdotNet_srvdotSRV })) : stdgo.Ref<stdgo._internal.net.Net_srv.SRV>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L753"
        (_srvs : stdgo._internal.net.Net_t_bypriorityweight.T_byPriorityWeight)._sort();
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L754"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } = { _0 : (_cname.string() : stdgo.GoString)?.__copy__(), _1 : _srvs, _2 : (null : stdgo.Error) };
            _target = __tmp__._0;
            _srvs = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _dial( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _server:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _r;
        var _c:stdgo._internal.net.Net_conn.Conn = (null : stdgo._internal.net.Net_conn.Conn);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L686"
        if ((({
            final value = _r;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dial != null) : Bool)) {
            {
                var __tmp__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dial(_ctx, _network?.__copy__(), _server?.__copy__());
                _c = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        } else {
            var _d:stdgo._internal.net.Net_dialer.Dialer = ({} : stdgo._internal.net.Net_dialer.Dialer);
            {
                var __tmp__ = _d.dialContext(_ctx, _network?.__copy__(), _server?.__copy__());
                _c = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L692"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L693"
            return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : stdgo._internal.net.Net__maperr._mapErr(_err) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L695"
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function lookupAddr( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _addr:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _r;
        var __tmp__ = _r._lookupAddr(_ctx, _addr?.__copy__()), _names:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L655"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L656"
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
        };
        var _filteredNames = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_names.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L659"
        if (_names != null) for (__3 => _name in _names) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L660"
            if (stdgo._internal.net.Net__isdomainname._isDomainName(_name?.__copy__())) {
                _filteredNames = (_filteredNames.__append__(_name?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L664"
        if ((_names.length) != ((_filteredNames.length))) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L665"
            return { _0 : _filteredNames, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo._internal.net.Net__errmalformeddnsrecordsdetail._errMalformedDNSRecordsDetail?.__copy__(), name : _addr?.__copy__() } : stdgo._internal.net.Net_dnserror.DNSError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L667"
        return { _0 : _filteredNames, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function lookupTXT( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L628"
        return _r._lookupTXT(_ctx, _name?.__copy__());
    }
    @:keep
    @:tdfield
    static public function lookupNS( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _r;
        var __tmp__ = _r._lookupNS(_ctx, _name?.__copy__()), _records:stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L599"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L600"
            return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>), _1 : _err };
        };
        var _filteredNS = (new stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>((0 : stdgo.GoInt).toBasic(), (_records.length)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L603"
        if (_records != null) for (__3 => _ns in _records) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L604"
            if (({
                final value = _ns;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L605"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L607"
            if (!stdgo._internal.net.Net__isdomainname._isDomainName((@:checkr _ns ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L608"
                continue;
            };
            _filteredNS = (_filteredNS.__append__(_ns) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L612"
        if ((_records.length) != ((_filteredNS.length))) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L613"
            return { _0 : _filteredNS, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo._internal.net.Net__errmalformeddnsrecordsdetail._errMalformedDNSRecordsDetail?.__copy__(), name : _name?.__copy__() } : stdgo._internal.net.Net_dnserror.DNSError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L615"
        return { _0 : _filteredNS, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function lookupMX( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _r;
        var __tmp__ = _r._lookupMX(_ctx, _name?.__copy__()), _records:stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L559"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L560"
            return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>), _1 : _err };
        };
        var _filteredMX = (new stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>((0 : stdgo.GoInt).toBasic(), (_records.length)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L563"
        if (_records != null) for (__3 => _mx in _records) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L564"
            if (({
                final value = _mx;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L565"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L567"
            if (!stdgo._internal.net.Net__isdomainname._isDomainName((@:checkr _mx ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L568"
                continue;
            };
            _filteredMX = (_filteredMX.__append__(_mx) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L572"
        if ((_records.length) != ((_filteredMX.length))) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L573"
            return { _0 : _filteredMX, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo._internal.net.Net__errmalformeddnsrecordsdetail._errMalformedDNSRecordsDetail?.__copy__(), name : _name?.__copy__() } : stdgo._internal.net.Net_dnserror.DNSError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L575"
        return { _0 : _filteredMX, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function lookupSRV( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _service:stdgo.GoString, _proto:stdgo.GoString, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _r;
        var __tmp__ = _r._lookupSRV(_ctx, _service?.__copy__(), _proto?.__copy__(), _name?.__copy__()), _cname:stdgo.GoString = __tmp__._0, _addrs:stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L516"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L517"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>), _2 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L519"
        if (((_cname != (stdgo.Go.str() : stdgo.GoString)) && !stdgo._internal.net.Net__isdomainname._isDomainName(_cname?.__copy__()) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L520"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>), _2 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("SRV header name is invalid" : stdgo.GoString), name : _name?.__copy__() } : stdgo._internal.net.Net_dnserror.DNSError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) };
        };
        var _filteredAddrs = (new stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>((0 : stdgo.GoInt).toBasic(), (_addrs.length)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L523"
        if (_addrs != null) for (__3 => _addr in _addrs) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L524"
            if (({
                final value = _addr;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L525"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L527"
            if (!stdgo._internal.net.Net__isdomainname._isDomainName((@:checkr _addr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).target?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L528"
                continue;
            };
            _filteredAddrs = (_filteredAddrs.__append__(_addr) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L532"
        if ((_addrs.length) != ((_filteredAddrs.length))) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L533"
            return { _0 : _cname?.__copy__(), _1 : _filteredAddrs, _2 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo._internal.net.Net__errmalformeddnsrecordsdetail._errMalformedDNSRecordsDetail?.__copy__(), name : _name?.__copy__() } : stdgo._internal.net.Net_dnserror.DNSError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L535"
        return { _0 : _cname?.__copy__(), _1 : _filteredAddrs, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function lookupCNAME( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _host:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _r;
        var __tmp__ = _r._lookupCNAME(_ctx, _host?.__copy__()), _cname:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L473"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L474"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L476"
        if (!stdgo._internal.net.Net__isdomainname._isDomainName(_cname?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L477"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo._internal.net.Net__errmalformeddnsrecordsdetail._errMalformedDNSRecordsDetail?.__copy__(), name : _host?.__copy__() } : stdgo._internal.net.Net_dnserror.DNSError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L479"
        return { _0 : _cname?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function lookupPort( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _service:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _r;
        var _port = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.net.Net__parseport._parsePort(_service?.__copy__()), _port:stdgo.GoInt = __tmp__._0, _needsLookup:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L419"
        if (_needsLookup) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L420"
            {
                final __value__ = _network;
                if (__value__ == (("tcp" : stdgo.GoString)) || __value__ == (("tcp4" : stdgo.GoString)) || __value__ == (("tcp6" : stdgo.GoString)) || __value__ == (("udp" : stdgo.GoString)) || __value__ == (("udp4" : stdgo.GoString)) || __value__ == (("udp6" : stdgo.GoString))) {} else if (__value__ == ((stdgo.Go.str() : stdgo.GoString))) {
                    _network = ("ip" : stdgo.GoString);
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L425"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("unknown network" : stdgo.GoString), addr : _network?.__copy__() } : stdgo._internal.net.Net_addrerror.AddrError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) : stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) };
                        _port = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            {
                var __tmp__ = _r._lookupPort(_ctx, _network?.__copy__(), _service?.__copy__());
                _port = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L428"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L429"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                    _port = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L432"
        if ((((0 : stdgo.GoInt) > _port : Bool) || (_port > (65535 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L433"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("invalid port" : stdgo.GoString), addr : _service?.__copy__() } : stdgo._internal.net.Net_addrerror.AddrError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) : stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) };
                _port = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L435"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _port, _1 : (null : stdgo.Error) };
            _port = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _lookupIPAddr( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L296"
        if (_host == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L297"
            return { _0 : (null : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo._internal.net.Net__errnosuchhost._errNoSuchHost.error()?.__copy__(), name : _host?.__copy__(), isNotFound : true } : stdgo._internal.net.Net_dnserror.DNSError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L299"
        {
            var __tmp__ = stdgo._internal.net.netip.Netip_parseaddr.parseAddr(_host?.__copy__()), _ip:stdgo._internal.net.netip.Netip_addr.Addr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L300"
                return { _0 : (new stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>(1, 1, ...[({ iP : (_ip.asSlice() : stdgo._internal.net.Net_ip.IP).to16(), zone : _ip.zone()?.__copy__() } : stdgo._internal.net.Net_ipaddr.IPAddr)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.net.Net_ipaddr.IPAddr)])) : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>), _1 : (null : stdgo.Error) };
            };
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_ctx.value(new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo._internal.internal.nettrace.Nettrace_tracekey.TraceKey() : stdgo._internal.internal.nettrace.Nettrace_tracekey.TraceKey), _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotnettracedotnettrace_tracekeydottracekey.__type__stdgodot_internaldotinternaldotnettracedotNettrace_tracekeydotTraceKey), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotinternaldotnettracedotnettrace_tracekeydottracekey.__type__stdgodot_internaldotinternaldotnettracedotNettrace_tracekeydotTraceKey))), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotnettracedotnettrace_tracedottrace.__type__stdgodot_internaldotinternaldotnettracedotNettrace_tracedotTrace })) : stdgo.Ref<stdgo._internal.internal.nettrace.Nettrace_trace.Trace>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.internal.nettrace.Nettrace_trace.Trace>), _1 : false };
        }, _trace = __tmp__._0, __3 = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L303"
        if ((({
            final value = _trace;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSStart != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L304"
            (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSStart(_host?.__copy__());
        };
        var _resolverFunc = @:assignType (_r._lookupIP : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; });
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L310"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(_ctx.value(new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo._internal.internal.nettrace.Nettrace_lookupipaltresolverkey.LookupIPAltResolverKey() : stdgo._internal.internal.nettrace.Nettrace_lookupipaltresolverkey.LookupIPAltResolverKey), _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotnettracedotnettrace_lookupipaltresolverkeydotlookupipaltresolverkey.__type__stdgodot_internaldotinternaldotnettracedotNettrace_lookupipaltresolverkeydotLookupIPAltResolverKey), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotinternaldotnettracedotnettrace_lookupipaltresolverkeydotlookupipaltresolverkey.__type__stdgodot_internaldotinternaldotnettracedotNettrace_lookupipaltresolverkeydotLookupIPAltResolverKey))), stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext, stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr }), _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; }), _1 : true };
            } catch(__exception__) {
                { _0 : null, _1 : false };
            }, _alt = __tmp__._0, __4 = __tmp__._1;
            if (_alt != null) {
                _resolverFunc = _alt;
            };
        };
        var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo._internal.net.Net__withunexpiredvaluespreserved._withUnexpiredValuesPreserved(_ctx)), _lookupGroupCtx:stdgo._internal.context.Context_context.Context = __tmp__._0, _lookupGroupCancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
        var _lookupKey = @:assignType (((_network + (stdgo.Go.str(0) : stdgo.GoString)?.__copy__() : stdgo.GoString) + _host?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L322"
        stdgo._internal.net.Net__dnswaitgroup._dnsWaitGroup.add((1 : stdgo.GoInt));
        var _ch = _r._getLookupGroup().doChan(_lookupKey?.__copy__(), function():{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L324"
            return ({
                @:explicitConversion final __tmp__ = stdgo._internal.net.Net__testhooklookupip._testHookLookupIP(_lookupGroupCtx, _resolverFunc, _network?.__copy__(), _host?.__copy__());
                { _0 : new stdgo.AnyInterface(__tmp__._0, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr }))), _1 : __tmp__._1 };
            });
        });
        var _dnsWaitGroupDone = function(_ch:stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_result.Result>, _cancelFn:stdgo._internal.context.Context_cancelfunc.CancelFunc):Void {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L328"
            _ch.__get__();
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L329"
            stdgo._internal.net.Net__dnswaitgroup._dnsWaitGroup.done();
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L330"
            _cancelFn();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L332"
        {
            {
                var __select__ = true;
                var __c__0 = null;
var __c__1 = null;
                while (__select__) {
                    if ({
                        if (__c__0 == null) {
                            __c__0 = _ctx.done();
                        };
                        __c__0 != null && __c__0.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__0.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L341"
                                if (_r._getLookupGroup().forgetUnshared(_lookupKey?.__copy__())) {
                                    //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L342"
                                    _lookupGroupCancel();
                                    //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L343"
                                    {
                                        final __tmp__0 = _ch;
final __tmp__1 = function():Void {};
                                        stdgo.Go.routine(() -> _dnsWaitGroupDone(__tmp__0, __tmp__1));
                                    };
                                } else {
                                    //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L345"
                                    {
                                        final __tmp__0 = _ch;
final __tmp__1 = _lookupGroupCancel;
                                        stdgo.Go.routine(() -> _dnsWaitGroupDone(__tmp__0, __tmp__1));
                                    };
                                };
                                var _ctxErr = @:assignType (_ctx.err() : stdgo.Error);
                                var _err = (stdgo.Go.setRef(({ err : stdgo._internal.net.Net__maperr._mapErr(_ctxErr).error()?.__copy__(), name : _host?.__copy__(), isTimeout : ({
                                    final __t__ = _ctxErr;
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                }) == (({
                                    final __t__ = stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded;
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                })) } : stdgo._internal.net.Net_dnserror.DNSError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>);
                                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L353"
                                if ((({
                                    final value = _trace;
                                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSDone != null) : Bool)) {
                                    //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L354"
                                    (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSDone((null : stdgo.Slice<stdgo.AnyInterface>), false, stdgo.Go.asInterface(_err, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })));
                                };
                                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L356"
                                return { _0 : (null : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>), _1 : stdgo.Go.asInterface(_err, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) };
                            };
                        };
                    } else if ({
                        if (__c__1 == null) {
                            __c__1 = _ch;
                        };
                        __c__1 != null && __c__1.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            var _r = __c__1.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L358"
                                stdgo._internal.net.Net__dnswaitgroup._dnsWaitGroup.done();
                                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L359"
                                _lookupGroupCancel();
                                var _err = @:assignType (_r.err : stdgo.Error);
                                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L361"
                                if (_err != null) {
                                    //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L362"
                                    {
                                        var __tmp__ = @:castTranslate try {
                                            { _0 : (stdgo.Go.typeAssert(({
                                                final __t__ = _err;
                                                if (__t__ == null) {
                                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                                } else {
                                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                                };
                                            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), _1 : true };
                                        } catch(__exception__) {
                                            { _0 : (null : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), _1 : false };
                                        }, __5 = __tmp__._0, _ok = __tmp__._1;
                                        if (!_ok) {
                                            var _isTimeout = @:assignType (false : Bool);
                                            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L364"
                                            if (({
                                                final __t__ = _err;
                                                if (__t__ == null) {
                                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                                } else {
                                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                                };
                                            }) == (({
                                                final __t__ = stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded;
                                                if (__t__ == null) {
                                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                                } else {
                                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                                };
                                            }))) {
                                                _isTimeout = true;
                                            } else {
                                                var __tmp__ = @:castTranslate try {
                                                    { _0 : (stdgo.Go.typeAssert(({
                                                        final __t__ = _err;
                                                        if (__t__ == null) {
                                                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                                        } else {
                                                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                                        };
                                                    }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_timeoutdott_timeout.__type__stdgodot_internaldotnetdotNet_t_timeoutdotT_timeout) : stdgo._internal.net.Net_t_timeout.T_timeout), _1 : true };
                                                } catch(__exception__) {
                                                    { _0 : (null : stdgo._internal.net.Net_t_timeout.T_timeout), _1 : false };
                                                }, _terr = __tmp__._0, _ok = __tmp__._1;
                                                if (_ok) {
                                                    _isTimeout = _terr.timeout();
                                                };
                                            };
                                            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ err : _err.error()?.__copy__(), name : _host?.__copy__(), isTimeout : _isTimeout } : stdgo._internal.net.Net_dnserror.DNSError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError }));
                                        };
                                    };
                                };
                                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L376"
                                if ((({
                                    final value = _trace;
                                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSDone != null) : Bool)) {
                                    var __tmp__ = @:castTranslate try {
                                        { _0 : (stdgo.Go.typeAssert(_r.val, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr })) : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>), _1 : true };
                                    } catch(__exception__) {
                                        { _0 : (null : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>), _1 : false };
                                    }, _addrs = __tmp__._0, __5 = __tmp__._1;
                                    //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L378"
                                    (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSDone(stdgo._internal.net.Net__ipaddrseface._ipAddrsEface(_addrs), _r.shared, _err);
                                };
                                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L380"
                                return stdgo._internal.net.Net__lookupipreturn._lookupIPReturn(_r.val, _err, _r.shared);
                            };
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
__c__1.__reset__();
            };
            return { _0 : (null : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>), _1 : (null : stdgo.Error) };
        };
    }
    @:keep
    @:tdfield
    static public function lookupNetIP( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.netip.Netip_addr.Addr>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _r;
        var __tmp__ = _r.lookupIP(_ctx, _network?.__copy__(), _host?.__copy__()), _ips:stdgo.Slice<stdgo._internal.net.Net_ip.IP> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L253"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L254"
            return { _0 : (null : stdgo.Slice<stdgo._internal.net.netip.Netip_addr.Addr>), _1 : _err };
        };
        var _ret = (new stdgo.Slice<stdgo._internal.net.netip.Netip_addr.Addr>((0 : stdgo.GoInt).toBasic(), (_ips.length), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > (_ips.length) ? (0 : stdgo.GoInt).toBasic() : (_ips.length) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.net.netip.Netip_addr.Addr)]) : stdgo.Slice<stdgo._internal.net.netip.Netip_addr.Addr>);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L257"
        if (_ips != null) for (__3 => _ip in _ips) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L258"
            {
                var __tmp__ = stdgo._internal.net.netip.Netip_addrfromslice.addrFromSlice(_ip), _a:stdgo._internal.net.netip.Netip_addr.Addr = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _ret = (_ret.__append__(_a?.__copy__()) : stdgo.Slice<stdgo._internal.net.netip.Netip_addr.Addr>);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L262"
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function lookupIP( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ip.IP>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _r;
        var __tmp__ = stdgo._internal.net.Net__parsenetwork._parseNetwork(_ctx, _network?.__copy__(), false), _afnet:stdgo.GoString = __tmp__._0, __3:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L219"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L220"
            return { _0 : (null : stdgo.Slice<stdgo._internal.net.Net_ip.IP>), _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L222"
        {
            final __value__ = _afnet;
            if (__value__ == (("ip" : stdgo.GoString)) || __value__ == (("ip4" : stdgo.GoString)) || __value__ == (("ip6" : stdgo.GoString))) {} else {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L225"
                return { _0 : (null : stdgo.Slice<stdgo._internal.net.Net_ip.IP>), _1 : stdgo.Go.asInterface((_network : stdgo._internal.net.Net_unknownnetworkerror.UnknownNetworkError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unknownnetworkerrordotunknownnetworkerror.__type__stdgodot_internaldotnetdotNet_unknownnetworkerrordotUnknownNetworkError) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L228"
        if (_host == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L229"
            return { _0 : (null : stdgo.Slice<stdgo._internal.net.Net_ip.IP>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo._internal.net.Net__errnosuchhost._errNoSuchHost.error()?.__copy__(), name : _host?.__copy__(), isNotFound : true } : stdgo._internal.net.Net_dnserror.DNSError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) };
        };
        var __tmp__ = _r._internetAddrList(_ctx, _afnet?.__copy__(), _host?.__copy__()), _addrs:stdgo._internal.net.Net_t_addrlist.T_addrList = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L232"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L233"
            return { _0 : (null : stdgo.Slice<stdgo._internal.net.Net_ip.IP>), _1 : _err };
        };
        var _ips = (new stdgo.Slice<stdgo._internal.net.Net_ip.IP>((0 : stdgo.GoInt).toBasic(), (_addrs.length)) : stdgo.Slice<stdgo._internal.net.Net_ip.IP>);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L237"
        if (_addrs != null) for (__4 => _addr in _addrs) {
            _ips = (_ips.__append__((@:checkr (stdgo.Go.typeAssert(({
                final __t__ = _addr;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr })) : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>) ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP) : stdgo.Slice<stdgo._internal.net.Net_ip.IP>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L240"
        return { _0 : _ips, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function lookupIPAddr( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L210"
        return _r._lookupIPAddr(_ctx, ("ip" : stdgo.GoString), _host?.__copy__());
    }
    @:keep
    @:tdfield
    static public function lookupHost( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _r;
        var _addrs = (null : stdgo.Slice<stdgo.GoString>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L184"
        if (_host == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L185"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo._internal.net.Net__errnosuchhost._errNoSuchHost.error()?.__copy__(), name : _host?.__copy__(), isNotFound : true } : stdgo._internal.net.Net_dnserror.DNSError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) : stdgo.Ref<stdgo._internal.net.Net_dnserror.DNSError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dnserrordotdnserror.__type__stdgodot_internaldotnetdotNet_dnserrordotDNSError })) };
                _addrs = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L187"
        {
            var __tmp__ = stdgo._internal.net.netip.Netip_parseaddr.parseAddr(_host?.__copy__()), __3:stdgo._internal.net.netip.Netip_addr.Addr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L188"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_host?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
                    _addrs = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L190"
        return _r._lookupHost(_ctx, _host?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _getLookupGroup( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>):stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_group.Group> {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L165"
        if (({
            final value = _r;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L166"
            return (stdgo.Go.setRef((@:checkr stdgo._internal.net.Net_defaultresolver.defaultResolver ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lookupGroup, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotsingleflightdotsingleflight_groupdotgroup.__type__stdgodot_internaldotinternaldotsingleflightdotSingleflight_groupdotGroup })) : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_group.Group>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L168"
        return (stdgo.Go.setRef((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lookupGroup, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotsingleflightdotsingleflight_groupdotgroup.__type__stdgodot_internaldotinternaldotsingleflightdotSingleflight_groupdotGroup })) : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_group.Group>);
    }
    @:keep
    @:tdfield
    static public function _strictErrors( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L162"
        return (({
            final value = _r;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).strictErrors : Bool);
    }
    @:keep
    @:tdfield
    static public function _preferGo( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L161"
        return (({
            final value = _r;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).preferGo : Bool);
    }
    @:keep
    @:tdfield
    static public function _internetAddrList( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _net:stdgo.GoString, _addr:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_t_addrlist.T_addrList; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _r;
        var _err:stdgo.Error = (null : stdgo.Error), _host:stdgo.GoString = ("" : stdgo.GoString), _port:stdgo.GoString = ("" : stdgo.GoString), _portnum:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L254"
        {
            final __value__ = _net;
            if (__value__ == (("tcp" : stdgo.GoString)) || __value__ == (("tcp4" : stdgo.GoString)) || __value__ == (("tcp6" : stdgo.GoString)) || __value__ == (("udp" : stdgo.GoString)) || __value__ == (("udp4" : stdgo.GoString)) || __value__ == (("udp6" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L256"
                if (_addr != ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L257"
                    {
                        {
                            var __tmp__ = stdgo._internal.net.Net_splithostport.splitHostPort(_addr?.__copy__());
                            _host = @:tmpset0 __tmp__._0?.__copy__();
                            _port = @:tmpset0 __tmp__._1?.__copy__();
                            _err = @:tmpset0 __tmp__._2;
                        };
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L258"
                            return { _0 : null, _1 : _err };
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L260"
                    {
                        {
                            var __tmp__ = _r.lookupPort(_ctx, _net?.__copy__(), _port?.__copy__());
                            _portnum = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L261"
                            return { _0 : null, _1 : _err };
                        };
                    };
                };
            } else if (__value__ == (("ip" : stdgo.GoString)) || __value__ == (("ip4" : stdgo.GoString)) || __value__ == (("ip6" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L265"
                if (_addr != ((stdgo.Go.str() : stdgo.GoString))) {
                    _host = _addr?.__copy__();
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L269"
                return { _0 : null, _1 : stdgo.Go.asInterface((_net : stdgo._internal.net.Net_unknownnetworkerror.UnknownNetworkError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unknownnetworkerrordotunknownnetworkerror.__type__stdgodot_internaldotnetdotNet_unknownnetworkerrordotUnknownNetworkError) };
            };
        };
        var _inetaddr = @:assignType (function(_ip:stdgo._internal.net.Net_ipaddr.IPAddr):stdgo._internal.net.Net_addr.Addr {
            //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L272"
            {
                final __value__ = _net;
                if (__value__ == (("tcp" : stdgo.GoString)) || __value__ == (("tcp4" : stdgo.GoString)) || __value__ == (("tcp6" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L274"
                    return stdgo.Go.asInterface((stdgo.Go.setRef(({ iP : _ip.iP, port : _portnum, zone : _ip.zone?.__copy__() } : stdgo._internal.net.Net_tcpaddr.TCPAddr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpaddrdottcpaddr.__type__stdgodot_internaldotnetdotNet_tcpaddrdotTCPAddr })) : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpaddrdottcpaddr.__type__stdgodot_internaldotnetdotNet_tcpaddrdotTCPAddr }));
                } else if (__value__ == (("udp" : stdgo.GoString)) || __value__ == (("udp4" : stdgo.GoString)) || __value__ == (("udp6" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L276"
                    return stdgo.Go.asInterface((stdgo.Go.setRef(({ iP : _ip.iP, port : _portnum, zone : _ip.zone?.__copy__() } : stdgo._internal.net.Net_udpaddr.UDPAddr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_udpaddrdotudpaddr.__type__stdgodot_internaldotnetdotNet_udpaddrdotUDPAddr })) : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_udpaddrdotudpaddr.__type__stdgodot_internaldotnetdotNet_udpaddrdotUDPAddr }));
                } else if (__value__ == (("ip" : stdgo.GoString)) || __value__ == (("ip4" : stdgo.GoString)) || __value__ == (("ip6" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L278"
                    return stdgo.Go.asInterface((stdgo.Go.setRef(({ iP : _ip.iP, zone : _ip.zone?.__copy__() } : stdgo._internal.net.Net_ipaddr.IPAddr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr })) : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr }));
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L280"
                    throw new stdgo.AnyInterface((("unexpected network: " : stdgo.GoString) + _net?.__copy__() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                };
            };
        } : stdgo._internal.net.Net_ipaddr.IPAddr -> stdgo._internal.net.Net_addr.Addr);
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L283"
        if (_host == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L284"
            return { _0 : (new stdgo.Slice<stdgo._internal.net.Net_addr.Addr>(1, 1, ...[_inetaddr((new stdgo._internal.net.Net_ipaddr.IPAddr() : stdgo._internal.net.Net_ipaddr.IPAddr))]) : stdgo._internal.net.Net_t_addrlist.T_addrList), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = _r._lookupIPAddr(_ctx, _net?.__copy__(), _host?.__copy__()), _ips:stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L289"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L290"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L296"
        if (((_ips.length == (1 : stdgo.GoInt)) && _ips[(0 : stdgo.GoInt)].iP.equal(stdgo._internal.net.Net_ipv6unspecified.iPv6unspecified) : Bool)) {
            _ips = (_ips.__append__(({ iP : stdgo._internal.net.Net_ipv4zero.iPv4zero } : stdgo._internal.net.Net_ipaddr.IPAddr)) : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>);
        };
        var _filter:stdgo._internal.net.Net_ipaddr.IPAddr -> Bool = null;
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L301"
        if (((_net != (stdgo.Go.str() : stdgo.GoString)) && (_net[((_net.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (52 : stdgo.GoUInt8)) : Bool)) {
            _filter = stdgo._internal.net.Net__ipv4only._ipv4only;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L304"
        if (((_net != (stdgo.Go.str() : stdgo.GoString)) && (_net[((_net.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (54 : stdgo.GoUInt8)) : Bool)) {
            _filter = stdgo._internal.net.Net__ipv6only._ipv6only;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L307"
        return stdgo._internal.net.Net__filteraddrlist._filterAddrList(_filter, _ips, _inetaddr, _host?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _resolveAddrList( _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, _ctx:stdgo._internal.context.Context_context.Context, _op:stdgo.GoString, _network:stdgo.GoString, _addr:stdgo.GoString, _hint:stdgo._internal.net.Net_addr.Addr):{ var _0 : stdgo._internal.net.Net_t_addrlist.T_addrList; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = _r;
        var __tmp__ = stdgo._internal.net.Net__parsenetwork._parseNetwork(_ctx, _network?.__copy__(), true), _afnet:stdgo.GoString = __tmp__._0, __3:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L265"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L266"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L268"
        if (((_op == ("dial" : stdgo.GoString)) && (_addr == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L269"
            return { _0 : null, _1 : stdgo._internal.net.Net__errmissingaddress._errMissingAddress };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L271"
        {
            final __value__ = _afnet;
            if (__value__ == (("unix" : stdgo.GoString)) || __value__ == (("unixgram" : stdgo.GoString)) || __value__ == (("unixpacket" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.net.Net_resolveunixaddr.resolveUnixAddr(_afnet?.__copy__(), _addr?.__copy__()), _addr:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L274"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L275"
                    return { _0 : null, _1 : _err };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L277"
                if (((_op == (("dial" : stdgo.GoString)) && _hint != null : Bool) && (_addr.network() != _hint.network()) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L278"
                    return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("mismatched local address type" : stdgo.GoString), addr : (_hint.string() : stdgo.GoString)?.__copy__() } : stdgo._internal.net.Net_addrerror.AddrError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) : stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L280"
                return { _0 : (new stdgo.Slice<stdgo._internal.net.Net_addr.Addr>(1, 1, ...[stdgo.Go.asInterface(_addr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unixaddrdotunixaddr.__type__stdgodot_internaldotnetdotNet_unixaddrdotUnixAddr }))]) : stdgo._internal.net.Net_t_addrlist.T_addrList), _1 : (null : stdgo.Error) };
            };
        };
        var __tmp__ = _r._internetAddrList(_ctx, _afnet?.__copy__(), _addr?.__copy__()), _addrs:stdgo._internal.net.Net_t_addrlist.T_addrList = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L283"
        if (((_err != null || _op != (("dial" : stdgo.GoString)) : Bool) || (_hint == null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L284"
            return { _0 : _addrs, _1 : _err };
        };
        var _tcp:stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr> = (null : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>), _udp:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr> = (null : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>), _ip:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr> = (null : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>), _wildcard:Bool = false;
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L292"
        {
            final __type__ = _hint;
            if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpaddrdottcpaddr.__type__stdgodot_internaldotnetdotNet_tcpaddrdotTCPAddr }))) {
                var _hint:stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>) : __type__.__underlying__().value);
                _tcp = _hint;
                _wildcard = _tcp._isWildcard();
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_udpaddrdotudpaddr.__type__stdgodot_internaldotnetdotNet_udpaddrdotUDPAddr }))) {
                var _hint:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>) : __type__.__underlying__().value);
                _udp = _hint;
                _wildcard = _udp._isWildcard();
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr }))) {
                var _hint:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>) : __type__.__underlying__().value);
                _ip = _hint;
                _wildcard = _ip._isWildcard();
            };
        };
        var _naddrs = @:assignType (_addrs.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.net.Net_t_addrlist.T_addrList);
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L304"
        if (_addrs != null) for (__4 => _addr in _addrs) {
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L305"
            if (_addr.network() != (_hint.network())) {
                //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L306"
                return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("mismatched local address type" : stdgo.GoString), addr : (_hint.string() : stdgo.GoString)?.__copy__() } : stdgo._internal.net.Net_addrerror.AddrError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) : stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L308"
            {
                final __type__ = _addr;
                if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpaddrdottcpaddr.__type__stdgodot_internaldotnetdotNet_tcpaddrdotTCPAddr }))) {
                    var _addr:stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L310"
                    if (((!_wildcard && !_addr._isWildcard() : Bool) && !(@:checkr _addr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP._matchAddrFamily((@:checkr _tcp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L311"
                        continue;
                    };
                    _naddrs = (_naddrs.__append__(stdgo.Go.asInterface(_addr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpaddrdottcpaddr.__type__stdgodot_internaldotnetdotNet_tcpaddrdotTCPAddr }))) : stdgo._internal.net.Net_t_addrlist.T_addrList);
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_udpaddrdotudpaddr.__type__stdgodot_internaldotnetdotNet_udpaddrdotUDPAddr }))) {
                    var _addr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L315"
                    if (((!_wildcard && !_addr._isWildcard() : Bool) && !(@:checkr _addr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP._matchAddrFamily((@:checkr _udp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L316"
                        continue;
                    };
                    _naddrs = (_naddrs.__append__(stdgo.Go.asInterface(_addr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_udpaddrdotudpaddr.__type__stdgodot_internaldotnetdotNet_udpaddrdotUDPAddr }))) : stdgo._internal.net.Net_t_addrlist.T_addrList);
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr }))) {
                    var _addr:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L320"
                    if (((!_wildcard && !_addr._isWildcard() : Bool) && !(@:checkr _addr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP._matchAddrFamily((@:checkr _ip ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L321"
                        continue;
                    };
                    _naddrs = (_naddrs.__append__(stdgo.Go.asInterface(_addr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr }))) : stdgo._internal.net.Net_t_addrlist.T_addrList);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L326"
        if ((_naddrs.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L327"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo._internal.net.Net__errnosuitableaddress._errNoSuitableAddress.error()?.__copy__(), addr : (_hint.string() : stdgo.GoString)?.__copy__() } : stdgo._internal.net.Net_addrerror.AddrError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) : stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L329"
        return { _0 : _naddrs, _1 : (null : stdgo.Error) };
    }
}
