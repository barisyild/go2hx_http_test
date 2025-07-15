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
var _rfc6724policyTable : stdgo._internal.net.Net_t_policytable.T_policyTable = (new stdgo.Slice<stdgo._internal.net.Net_t_policytableentry.T_policyTableEntry>(9, 9, ...[({ prefix : stdgo._internal.net.netip.Netip_prefixfrom.prefixFrom(stdgo._internal.net.netip.Netip_addrfrom16.addrFrom16((new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__())?.__copy__(), (128 : stdgo.GoInt))?.__copy__(), precedence : (50 : stdgo.GoUInt8), label : (0 : stdgo.GoUInt8) } : stdgo._internal.net.Net_t_policytableentry.T_policyTableEntry), ({ prefix : stdgo._internal.net.netip.Netip_prefixfrom.prefixFrom(stdgo._internal.net.netip.Netip_addrfrom16.addrFrom16((new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__())?.__copy__(), (96 : stdgo.GoInt))?.__copy__(), precedence : (35 : stdgo.GoUInt8), label : (4 : stdgo.GoUInt8) } : stdgo._internal.net.Net_t_policytableentry.T_policyTableEntry), ({ prefix : stdgo._internal.net.netip.Netip_prefixfrom.prefixFrom(stdgo._internal.net.netip.Netip_addrfrom16.addrFrom16((new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__())?.__copy__(), (96 : stdgo.GoInt))?.__copy__(), precedence : (1 : stdgo.GoUInt8), label : (3 : stdgo.GoUInt8) } : stdgo._internal.net.Net_t_policytableentry.T_policyTableEntry), ({ prefix : stdgo._internal.net.netip.Netip_prefixfrom.prefixFrom(stdgo._internal.net.netip.Netip_addrfrom16.addrFrom16((new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[(32 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__())?.__copy__(), (32 : stdgo.GoInt))?.__copy__(), precedence : (5 : stdgo.GoUInt8), label : (5 : stdgo.GoUInt8) } : stdgo._internal.net.Net_t_policytableentry.T_policyTableEntry), ({ prefix : stdgo._internal.net.netip.Netip_prefixfrom.prefixFrom(stdgo._internal.net.netip.Netip_addrfrom16.addrFrom16((new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[(32 : stdgo.GoUInt8), (2 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__())?.__copy__(), (16 : stdgo.GoInt))?.__copy__(), precedence : (30 : stdgo.GoUInt8), label : (2 : stdgo.GoUInt8) } : stdgo._internal.net.Net_t_policytableentry.T_policyTableEntry), ({ prefix : stdgo._internal.net.netip.Netip_prefixfrom.prefixFrom(stdgo._internal.net.netip.Netip_addrfrom16.addrFrom16((new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[(63 : stdgo.GoUInt8), (254 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__())?.__copy__(), (16 : stdgo.GoInt))?.__copy__(), precedence : (1 : stdgo.GoUInt8), label : (12 : stdgo.GoUInt8) } : stdgo._internal.net.Net_t_policytableentry.T_policyTableEntry), ({ prefix : stdgo._internal.net.netip.Netip_prefixfrom.prefixFrom(stdgo._internal.net.netip.Netip_addrfrom16.addrFrom16((new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[(254 : stdgo.GoUInt8), (192 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__())?.__copy__(), (10 : stdgo.GoInt))?.__copy__(), precedence : (1 : stdgo.GoUInt8), label : (11 : stdgo.GoUInt8) } : stdgo._internal.net.Net_t_policytableentry.T_policyTableEntry), ({ prefix : stdgo._internal.net.netip.Netip_prefixfrom.prefixFrom(stdgo._internal.net.netip.Netip_addrfrom16.addrFrom16((new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[(252 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__())?.__copy__(), (7 : stdgo.GoInt))?.__copy__(), precedence : (3 : stdgo.GoUInt8), label : (13 : stdgo.GoUInt8) } : stdgo._internal.net.Net_t_policytableentry.T_policyTableEntry), ({ prefix : stdgo._internal.net.netip.Netip_prefixfrom.prefixFrom(stdgo._internal.net.netip.Netip_addrfrom16.addrFrom16((new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__())?.__copy__(), (0 : stdgo.GoInt))?.__copy__(), precedence : (40 : stdgo.GoUInt8), label : (1 : stdgo.GoUInt8) } : stdgo._internal.net.Net_t_policytableentry.T_policyTableEntry)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.net.Net_t_policytableentry.T_policyTableEntry)])) : stdgo._internal.net.Net_t_policytable.T_policyTable);
