package stdgo._internal.os;
@:structInit @:using(stdgo._internal.os.Os_procattr_static_extension.ProcAttr_static_extension) @:using(stdgo._internal.os.Os_procattr_static_extension.ProcAttr_static_extension) class ProcAttr {
    public var dir : stdgo.GoString = "";
    public var env : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var files : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_file.File>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_file.File>>);
    public var sys : stdgo.Ref<stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr> = (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr>);
    public function new(?dir:stdgo.GoString, ?env:stdgo.Slice<stdgo.GoString>, ?files:stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_file.File>>, ?sys:stdgo.Ref<stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr>) {
        if (dir != null) this.dir = dir;
        if (env != null) this.env = env;
        if (files != null) this.files = files;
        if (sys != null) this.sys = sys;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "dir", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "env", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false }, { name : "files", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_filedotfile.__type__stdgodot_internaldotosdotOs_filedotFile }) }) }, optional : false }, { name : "sys", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sysprocattrdotsysprocattr.__type__stdgodot_internaldotsyscalldotSyscall_sysprocattrdotSysProcAttr }) }, optional : false }])));
    public function __copy__() {
        return new ProcAttr(dir, env, files, sys);
    }
}
