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
@:structInit @:using(stdgo._internal.net.Net_interface_static_extension.Interface_static_extension) @:using(stdgo._internal.net.Net_interface_static_extension.Interface_static_extension) class Interface {
    public var index : stdgo.GoInt = 0;
    public var mTU : stdgo.GoInt = 0;
    public var name : stdgo.GoString = "";
    public var hardwareAddr : stdgo._internal.net.Net_hardwareaddr.HardwareAddr = (new stdgo._internal.net.Net_hardwareaddr.HardwareAddr(0, 0) : stdgo._internal.net.Net_hardwareaddr.HardwareAddr);
    public var flags : stdgo._internal.net.Net_flags.Flags = ((0 : stdgo.GoUInt) : stdgo._internal.net.Net_flags.Flags);
    public function new(?index:stdgo.GoInt, ?mTU:stdgo.GoInt, ?name:stdgo.GoString, ?hardwareAddr:stdgo._internal.net.Net_hardwareaddr.HardwareAddr, ?flags:stdgo._internal.net.Net_flags.Flags) {
        if (index != null) this.index = index;
        if (mTU != null) this.mTU = mTU;
        if (name != null) this.name = name;
        if (hardwareAddr != null) this.hardwareAddr = hardwareAddr;
        if (flags != null) this.flags = flags;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "index", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "mTU", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "hardwareAddr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_hardwareaddrdothardwareaddr.__type__stdgodot_internaldotnetdotNet_hardwareaddrdotHardwareAddr }, optional : false }, { name : "flags", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_flagsdotflags.__type__stdgodot_internaldotnetdotNet_flagsdotFlags }, optional : false }])));
    public function __copy__() {
        return new Interface(index, mTU, name, hardwareAddr, flags);
    }
}
