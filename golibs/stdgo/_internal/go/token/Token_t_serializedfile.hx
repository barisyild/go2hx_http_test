package stdgo._internal.go.token;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.go.token.Token_t_serializedfile_static_extension.T_serializedFile_static_extension) @:using(stdgo._internal.go.token.Token_t_serializedfile_static_extension.T_serializedFile_static_extension) class T_serializedFile {
    public var name : stdgo.GoString = "";
    public var base : stdgo.GoInt = 0;
    public var size : stdgo.GoInt = 0;
    public var lines : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var infos : stdgo.Slice<stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo> = (null : stdgo.Slice<stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo>);
    public function new(?name:stdgo.GoString, ?base:stdgo.GoInt, ?size:stdgo.GoInt, ?lines:stdgo.Slice<stdgo.GoInt>, ?infos:stdgo.Slice<stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo>) {
        if (name != null) this.name = name;
        if (base != null) this.base = base;
        if (size != null) this.size = size;
        if (lines != null) this.lines = lines;
        if (infos != null) this.infos = infos;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "base", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "size", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "lines", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }, { name : "infos", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_t_lineinfodott_lineinfo.__type__stdgodot_internaldotgodottokendotToken_t_lineinfodotT_lineInfo }) }, optional : false }])));
    public function __copy__() {
        return new T_serializedFile(name, base, size, lines, infos);
    }
}
