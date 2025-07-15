package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testfieldpkgpath___localname___pkgpathtest_77688_static_extension.T_testFieldPkgPath___localname___pkgpathTest_77688_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testfieldpkgpath___localname___pkgpathtest_77688_static_extension.T_testFieldPkgPath___localname___pkgpathTest_77688_static_extension) class T_testFieldPkgPath___localname___pkgpathTest_77688 {
    public var _index : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _pkgPath : stdgo.GoString = "";
    public var _embedded : Bool = false;
    public var _exported : Bool = false;
    public function new(?_index:stdgo.Slice<stdgo.GoInt>, ?_pkgPath:stdgo.GoString, ?_embedded:Bool, ?_exported:Bool) {
        if (_index != null) this._index = _index;
        if (_pkgPath != null) this._pkgPath = _pkgPath;
        if (_embedded != null) this._embedded = _embedded;
        if (_exported != null) this._exported = _exported;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_index", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }, { name : "_pkgPath", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_embedded", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_exported", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_testFieldPkgPath___localname___pkgpathTest_77688(_index, _pkgPath, _embedded, _exported);
    }
}
