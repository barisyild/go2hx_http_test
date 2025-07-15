package stdgo._internal.go.token;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.go.token.Token_t_lineinfo_static_extension.T_lineInfo_static_extension) @:using(stdgo._internal.go.token.Token_t_lineinfo_static_extension.T_lineInfo_static_extension) class T_lineInfo {
    public var offset : stdgo.GoInt = 0;
    public var filename : stdgo.GoString = "";
    public var line : stdgo.GoInt = 0;
    public var column : stdgo.GoInt = 0;
    public function new(?offset:stdgo.GoInt, ?filename:stdgo.GoString, ?line:stdgo.GoInt, ?column:stdgo.GoInt) {
        if (offset != null) this.offset = offset;
        if (filename != null) this.filename = filename;
        if (line != null) this.line = line;
        if (column != null) this.column = column;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "filename", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "line", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "column", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_lineInfo(offset, filename, line, column);
    }
}
