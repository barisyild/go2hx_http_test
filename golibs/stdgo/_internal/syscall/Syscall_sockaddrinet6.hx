package stdgo._internal.syscall;
@:structInit @:using(stdgo._internal.syscall.Syscall_sockaddrinet6_static_extension.SockaddrInet6_static_extension) @:using(stdgo._internal.syscall.Syscall_sockaddrinet6_static_extension.SockaddrInet6_static_extension) class SockaddrInet6 {
    public var port : stdgo.GoInt = 0;
    public var zoneId : stdgo.GoUInt32 = 0;
    public var addr : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
    public function new(?port:stdgo.GoInt, ?zoneId:stdgo.GoUInt32, ?addr:stdgo.GoArray<stdgo.GoUInt8>) {
        if (port != null) this.port = port;
        if (zoneId != null) this.zoneId = zoneId;
        if (addr != null) this.addr = addr;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "port", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "zoneId", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "addr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 16) }, optional : false }])));
    public function __copy__() {
        return new SockaddrInet6(port, zoneId, addr);
    }
}
