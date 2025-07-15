package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_structwithselfptr_static_extension.T_structWithSelfPtr_static_extension) @:using(_internal.reflect_test.Reflect_test_t_structwithselfptr_static_extension.T_structWithSelfPtr_static_extension) class T_structWithSelfPtr {
    public var _p : stdgo.Ref<_internal.reflect_test.Reflect_test_t_structwithselfptr.T_structWithSelfPtr> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_t_structwithselfptr.T_structWithSelfPtr>);
    public var _s : stdgo.GoString = "";
    public function new(?_p:stdgo.Ref<_internal.reflect_test.Reflect_test_t_structwithselfptr.T_structWithSelfPtr>, ?_s:stdgo.GoString) {
        if (_p != null) this._p = _p;
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_p", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_structwithselfptrdott_structwithselfptr.__type___internaldotreflect_testdotReflect_test_t_structwithselfptrdotT_structWithSelfPtr }) }, optional : false }, { name : "_s", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new T_structWithSelfPtr(_p, _s);
    }
}
