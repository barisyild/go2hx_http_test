package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_t_fuzzcontext_static_extension.T_fuzzContext_static_extension) @:using(stdgo._internal.testing.Testing_t_fuzzcontext_static_extension.T_fuzzContext_static_extension) class T_fuzzContext {
    public var _deps : stdgo._internal.testing.Testing_t_testdeps.T_testDeps = (null : stdgo._internal.testing.Testing_t_testdeps.T_testDeps);
    public var _mode : stdgo._internal.testing.Testing_t_fuzzmode.T_fuzzMode = ((0 : stdgo.GoUInt8) : stdgo._internal.testing.Testing_t_fuzzmode.T_fuzzMode);
    public function new(?_deps:stdgo._internal.testing.Testing_t_testdeps.T_testDeps, ?_mode:stdgo._internal.testing.Testing_t_fuzzmode.T_fuzzMode) {
        if (_deps != null) this._deps = _deps;
        if (_mode != null) this._mode = _mode;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_deps", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdottesting_t_testdepsdott_testdeps.__type__stdgodot_internaldottestingdotTesting_t_testdepsdotT_testDeps }, optional : false }, { name : "_mode", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdottesting_t_fuzzmodedott_fuzzmode.__type__stdgodot_internaldottestingdotTesting_t_fuzzmodedotT_fuzzMode }, optional : false }])));
    public function __copy__() {
        return new T_fuzzContext(_deps, _mode);
    }
}
