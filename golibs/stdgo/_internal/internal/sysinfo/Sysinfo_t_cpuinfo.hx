package stdgo._internal.internal.sysinfo;
import stdgo._internal.internal.cpu.Cpu;
@:structInit @:using(stdgo._internal.internal.sysinfo.Sysinfo_t_cpuinfo_static_extension.T_cpuInfo_static_extension) @:using(stdgo._internal.internal.sysinfo.Sysinfo_t_cpuinfo_static_extension.T_cpuInfo_static_extension) class T_cpuInfo {
    public var _once : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public var _name : stdgo.GoString = "";
    public function new(?_once:stdgo._internal.sync.Sync_once.Once, ?_name:stdgo.GoString) {
        if (_once != null) this._once = _once;
        if (_name != null) this._name = _name;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_once", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_oncedotonce.__type__stdgodot_internaldotsyncdotSync_oncedotOnce }, optional : false }, { name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new T_cpuInfo(_once, _name);
    }
}
