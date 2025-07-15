package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testcansetfield___localname___s4_10634_static_extension.T_testCanSetField___localname___S4_10634_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testcansetfield___localname___s4_10634_static_extension.T_testCanSetField___localname___S4_10634_static_extension) class T_testCanSetField___localname___S4_10634 {
    @:embedded
    public var embed : stdgo.Ref<_internal.reflect_test.Reflect_test_t_testcansetfield___localname___embed_10482.T_testCanSetField___localname___Embed_10482> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_t_testcansetfield___localname___embed_10482.T_testCanSetField___localname___Embed_10482>);
    public var _x : stdgo.GoInt = 0;
    public var x : stdgo.GoInt = 0;
    public function new(?embed:stdgo.Ref<_internal.reflect_test.Reflect_test_t_testcansetfield___localname___embed_10482.T_testCanSetField___localname___Embed_10482>, ?_x:stdgo.GoInt, ?x:stdgo.GoInt) {
        if (embed != null) this.embed = embed;
        if (_x != null) this._x = _x;
        if (x != null) this.x = x;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "embed", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testcansetfield___localname___embed_10482dott_testcansetfield___localname___embed_10482.__type___internaldotreflect_testdotReflect_test_t_testcansetfield___localname___embed_10482dotT_testCanSetField___localname___Embed_10482 }) }, optional : false }, { name : "_x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_testCanSetField___localname___S4_10634(embed, _x, x);
    }
}
