package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testtypestrings___localname___stringtest_196771_static_extension.T_testTypeStrings___localname___stringTest_196771_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testtypestrings___localname___stringtest_196771_static_extension.T_testTypeStrings___localname___stringTest_196771_static_extension) class T_testTypeStrings___localname___stringTest_196771 {
    public var _typ : stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
    public var _want : stdgo.GoString = "";
    public function new(?_typ:stdgo._internal.reflect.Reflect_type_.Type_, ?_want:stdgo.GoString) {
        if (_typ != null) this._typ = _typ;
        if (_want != null) this._want = _want;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_ }, optional : false }, { name : "_want", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new T_testTypeStrings___localname___stringTest_196771(_typ, _want);
    }
}
