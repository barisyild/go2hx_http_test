package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_coverblock_static_extension.CoverBlock_static_extension) @:using(stdgo._internal.testing.Testing_coverblock_static_extension.CoverBlock_static_extension) class CoverBlock {
    public var line0 : stdgo.GoUInt32 = 0;
    public var col0 : stdgo.GoUInt16 = 0;
    public var line1 : stdgo.GoUInt32 = 0;
    public var col1 : stdgo.GoUInt16 = 0;
    public var stmts : stdgo.GoUInt16 = 0;
    public function new(?line0:stdgo.GoUInt32, ?col0:stdgo.GoUInt16, ?line1:stdgo.GoUInt32, ?col1:stdgo.GoUInt16, ?stmts:stdgo.GoUInt16) {
        if (line0 != null) this.line0 = line0;
        if (col0 != null) this.col0 = col0;
        if (line1 != null) this.line1 = line1;
        if (col1 != null) this.col1 = col1;
        if (stmts != null) this.stmts = stmts;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "line0", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "col0", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "line1", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "col1", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "stmts", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }])));
    public function __copy__() {
        return new CoverBlock(line0, col0, line1, col1, stmts);
    }
}
