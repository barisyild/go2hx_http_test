package stdgo._internal.unicode;
@:structInit @:using(stdgo._internal.unicode.Unicode_t_foldpair_static_extension.T_foldPair_static_extension) @:using(stdgo._internal.unicode.Unicode_t_foldpair_static_extension.T_foldPair_static_extension) class T_foldPair {
    public var from : stdgo.GoUInt16 = 0;
    public var to : stdgo.GoUInt16 = 0;
    public function new(?from:stdgo.GoUInt16, ?to:stdgo.GoUInt16) {
        if (from != null) this.from = from;
        if (to != null) this.to = to;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "from", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "to", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }])));
    public function __copy__() {
        return new T_foldPair(from, to);
    }
}
