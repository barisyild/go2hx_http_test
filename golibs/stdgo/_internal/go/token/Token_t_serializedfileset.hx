package stdgo._internal.go.token;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.go.token.Token_t_serializedfileset_static_extension.T_serializedFileSet_static_extension) @:using(stdgo._internal.go.token.Token_t_serializedfileset_static_extension.T_serializedFileSet_static_extension) class T_serializedFileSet {
    public var base : stdgo.GoInt = 0;
    public var files : stdgo.Slice<stdgo._internal.go.token.Token_t_serializedfile.T_serializedFile> = (null : stdgo.Slice<stdgo._internal.go.token.Token_t_serializedfile.T_serializedFile>);
    public function new(?base:stdgo.GoInt, ?files:stdgo.Slice<stdgo._internal.go.token.Token_t_serializedfile.T_serializedFile>) {
        if (base != null) this.base = base;
        if (files != null) this.files = files;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "base", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "files", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_t_serializedfiledott_serializedfile.__type__stdgodot_internaldotgodottokendotToken_t_serializedfiledotT_serializedFile }) }, optional : false }])));
    public function __copy__() {
        return new T_serializedFileSet(base, files);
    }
}
