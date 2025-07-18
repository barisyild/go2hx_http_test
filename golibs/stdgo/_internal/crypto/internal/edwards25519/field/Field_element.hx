package stdgo._internal.crypto.internal.edwards25519.field;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
@:structInit @:using(stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension) @:using(stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension) class Element {
    public var _l0 : stdgo.GoUInt64 = 0;
    public var _l1 : stdgo.GoUInt64 = 0;
    public var _l2 : stdgo.GoUInt64 = 0;
    public var _l3 : stdgo.GoUInt64 = 0;
    public var _l4 : stdgo.GoUInt64 = 0;
    public function new(?_l0:stdgo.GoUInt64, ?_l1:stdgo.GoUInt64, ?_l2:stdgo.GoUInt64, ?_l3:stdgo.GoUInt64, ?_l4:stdgo.GoUInt64) {
        if (_l0 != null) this._l0 = _l0;
        if (_l1 != null) this._l1 = _l1;
        if (_l2 != null) this._l2 = _l2;
        if (_l3 != null) this._l3 = _l3;
        if (_l4 != null) this._l4 = _l4;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_l0", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_l1", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_l2", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_l3", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_l4", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }])));
    public function __copy__() {
        return new Element(_l0, _l1, _l2, _l3, _l4);
    }
}
