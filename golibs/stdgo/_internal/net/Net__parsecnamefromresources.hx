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
function _parseCNAMEFromResources(_resources:stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L900"
        if ((_resources.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L901"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("no CNAME record received" : stdgo.GoString)) };
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = _resources[(0 : stdgo.GoInt)].body;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_resourcebodydotresourcebody.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_resourcebodydotResourceBody)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_cnameresourcedotcnameresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_cnameresourcedotCNAMEResource })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_cnameresource.CNAMEResource>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_cnameresource.CNAMEResource>), _1 : false };
        }, _c = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L904"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L905"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("could not parse CNAME record" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L907"
        return { _0 : ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cNAME.string() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
    }
