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
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.net.Net__rfc6724policytable._rfc6724policyTable, __tmp__1 = stdgo._internal.net.Net__multipathtcp._multipathtcp, __tmp__2 = stdgo._internal.net.Net__defaultns._defaultNS, __tmp__3 = stdgo._internal.net.Net__gethostname._getHostname, __tmp__4 = stdgo._internal.net.Net__testhookhostspath._testHookHostsPath, __tmp__5 = stdgo._internal.net.Net__testhooklookupip._testHookLookupIP, __tmp__6 = stdgo._internal.net.Net__testhooksetkeepalive._testHookSetKeepAlive, __tmp__7 = stdgo._internal.net.Net__testhookdialchannel._testHookDialChannel, __tmp__8 = stdgo._internal.net.Net__testhookcanceleddial._testHookCanceledDial, __tmp__9 = stdgo._internal.net.Net__socketfunc._socketFunc, __tmp__10 = stdgo._internal.net.Net__connectfunc._connectFunc, __tmp__11 = stdgo._internal.net.Net__listenfunc._listenFunc, __tmp__12 = stdgo._internal.net.Net__getsockoptintfunc._getsockoptIntFunc, __tmp__13 = stdgo._internal.net.Net__errinvalidinterface._errInvalidInterface, __tmp__14 = stdgo._internal.net.Net__errinvalidinterfaceindex._errInvalidInterfaceIndex, __tmp__15 = stdgo._internal.net.Net__errinvalidinterfacename._errInvalidInterfaceName, __tmp__16 = stdgo._internal.net.Net__errnosuchinterface._errNoSuchInterface, __tmp__17 = stdgo._internal.net.Net__errnosuchmulticastinterface._errNoSuchMulticastInterface, __tmp__18 = stdgo._internal.net.Net__flagnames._flagNames, __tmp__19 = stdgo._internal.net.Net__zonecache._zoneCache, __tmp__20 = stdgo._internal.net.Net__v4inv6prefix._v4InV6Prefix, __tmp__21 = stdgo._internal.net.Net_ipv4bcast.iPv4bcast, __tmp__22 = stdgo._internal.net.Net_ipv4allsys.iPv4allsys, __tmp__23 = stdgo._internal.net.Net_ipv4allrouter.iPv4allrouter, __tmp__24 = stdgo._internal.net.Net_ipv4zero.iPv4zero, __tmp__25 = stdgo._internal.net.Net_ipv6zero.iPv6zero, __tmp__26 = stdgo._internal.net.Net_ipv6unspecified.iPv6unspecified, __tmp__27 = stdgo._internal.net.Net_ipv6loopback.iPv6loopback, __tmp__28 = stdgo._internal.net.Net_ipv6interfacelocalallnodes.iPv6interfacelocalallnodes, __tmp__29 = stdgo._internal.net.Net_ipv6linklocalallnodes.iPv6linklocalallnodes, __tmp__30 = stdgo._internal.net.Net_ipv6linklocalallrouters.iPv6linklocalallrouters, __tmp__31 = stdgo._internal.net.Net__classamask._classAMask, __tmp__32 = stdgo._internal.net.Net__classbmask._classBMask, __tmp__33 = stdgo._internal.net.Net__classcmask._classCMask, __tmp__34 = stdgo._internal.net.Net__protocols._protocols, __tmp__35 = stdgo._internal.net.Net__services._services, __tmp__36 = stdgo._internal.net.Net_defaultresolver.defaultResolver, __tmp__37 = stdgo._internal.net.Net__errmalformeddnsrecordsdetail._errMalformedDNSRecordsDetail, __tmp__38 = stdgo._internal.net.Net__errnosuitableaddress._errNoSuitableAddress, __tmp__39 = stdgo._internal.net.Net__errmissingaddress._errMissingAddress, __tmp__40 = stdgo._internal.net.Net__errcanceled._errCanceled, __tmp__41 = stdgo._internal.net.Net_errwritetoconnected.errWriteToConnected, __tmp__42 = stdgo._internal.net.Net__alongtimeago._aLongTimeAgo, __tmp__43 = stdgo._internal.net.Net__nodeadline._noDeadline, __tmp__44 = stdgo._internal.net.Net__nocancel._noCancel, __tmp__45 = stdgo._internal.net.Net__errtimeout._errTimeout, __tmp__46 = stdgo._internal.net.Net__errnosuchhost._errNoSuchHost, __tmp__47 = stdgo._internal.net.Net__errclosed._errClosed, __tmp__48 = stdgo._internal.net.Net_errclosed.errClosed, __tmp__49 = stdgo._internal.net.Net__listeners._listeners, __tmp__50 = stdgo._internal.net.Net__portcounter._portCounter, __tmp__51 = stdgo._internal.net.Net___0.__0, __tmp__52 = stdgo._internal.net.Net___1.__1, __tmp__53 = stdgo._internal.net.Net___2.__2;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
