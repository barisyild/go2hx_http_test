package stdgo._internal.syscall;
@:structInit @:using(stdgo._internal.syscall.Syscall_sockaddrunix_static_extension.SockaddrUnix_static_extension) @:using(stdgo._internal.syscall.Syscall_sockaddrunix_static_extension.SockaddrUnix_static_extension) class SockaddrUnix {
    public var name : stdgo.GoString = "";
    public function new(?name:stdgo.GoString) {
        if (name != null) this.name = name;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new SockaddrUnix(name);
    }
}
