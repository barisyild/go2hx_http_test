package stdgo._internal.internal.sysinfo;
import stdgo._internal.internal.cpu.Cpu;
@:keep @:allow(stdgo._internal.internal.sysinfo.Sysinfo.T_cpuInfo_asInterface) class T_cpuInfo_static_extension {
    @:keep
    @:tdfield
    static public function name( _cpu:stdgo.Ref<stdgo._internal.internal.sysinfo.Sysinfo_t_cpuinfo.T_cpuInfo>):stdgo.GoString {
        @:recv var _cpu:stdgo.Ref<stdgo._internal.internal.sysinfo.Sysinfo_t_cpuinfo.T_cpuInfo> = _cpu;
        //"file:///Users/o/.go/go1.21.3/src/internal/sysinfo/sysinfo.go#L22"
        (@:checkr _cpu ?? throw stdgo.Error._nullPointerDereference.__underlying__())._once.do_(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/internal/sysinfo/sysinfo.go#L24"
            {
                var _name = @:assignType (stdgo._internal.internal.cpu.Cpu_name.name()?.__copy__() : stdgo.GoString);
                if (_name != ((stdgo.Go.str() : stdgo.GoString))) {
                    (@:checkr _cpu ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name = _name?.__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/internal/sysinfo/sysinfo.go#L26"
                    return;
                };
            };
        });
        //"file:///Users/o/.go/go1.21.3/src/internal/sysinfo/sysinfo.go#L30"
        return (@:checkr _cpu ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name?.__copy__();
    }
}
