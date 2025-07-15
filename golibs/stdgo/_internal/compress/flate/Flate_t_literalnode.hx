package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.compress.flate.Flate_t_literalnode_static_extension.T_literalNode_static_extension) @:using(stdgo._internal.compress.flate.Flate_t_literalnode_static_extension.T_literalNode_static_extension) class T_literalNode {
    public var _literal : stdgo.GoUInt16 = 0;
    public var _freq : stdgo.GoInt32 = 0;
    public function new(?_literal:stdgo.GoUInt16, ?_freq:stdgo.GoInt32) {
        if (_literal != null) this._literal = _literal;
        if (_freq != null) this._freq = _freq;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_literal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "_freq", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }, optional : false }])));
    public function __copy__() {
        return new T_literalNode(_literal, _freq);
    }
}
