package stdgo._internal.reflect;
@:structInit @:using(stdgo._internal.reflect.Reflect_structfield_static_extension.StructField_static_extension) @:using(stdgo._internal.reflect.Reflect_structfield_static_extension.StructField_static_extension) class StructField {
    public var name : stdgo.GoString = "";
    public var pkgPath : stdgo.GoString = "";
    public var type : stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
    public var tag : stdgo._internal.reflect.Reflect_structtag.StructTag = (("" : stdgo.GoString) : stdgo._internal.reflect.Reflect_structtag.StructTag);
    public var offset : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public var index : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var anonymous : Bool = false;
    public function new(?name:stdgo.GoString, ?pkgPath:stdgo.GoString, ?type:stdgo._internal.reflect.Reflect_type_.Type_, ?tag:stdgo._internal.reflect.Reflect_structtag.StructTag, ?offset:stdgo.GoUIntptr, ?index:stdgo.Slice<stdgo.GoInt>, ?anonymous:Bool) {
        if (name != null) this.name = name;
        if (pkgPath != null) this.pkgPath = pkgPath;
        if (type != null) this.type = type;
        if (tag != null) this.tag = tag;
        if (offset != null) this.offset = offset;
        if (index != null) this.index = index;
        if (anonymous != null) this.anonymous = anonymous;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "type", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_ }, optional : false }, { name : "tag", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_structtagdotstructtag.__type__stdgodot_internaldotreflectdotReflect_structtagdotStructTag }, optional : false }, { name : "offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "index", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }, { name : "anonymous", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new StructField(name, pkgPath, type, tag, offset, index, anonymous);
    }
}
