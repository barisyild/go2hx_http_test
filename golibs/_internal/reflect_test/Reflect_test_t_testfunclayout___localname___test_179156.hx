package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testfunclayout___localname___test_179156_static_extension.T_testFuncLayout___localname___test_179156_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testfunclayout___localname___test_179156_static_extension.T_testFuncLayout___localname___test_179156_static_extension) class T_testFuncLayout___localname___test_179156 {
    public var _rcvr : stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
    public var _typ : stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
    public var _size : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public var _argsize : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public var _retOffset : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public var _stack : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _gc : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _inRegs : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _outRegs : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _intRegs : stdgo.GoInt = 0;
    public var _floatRegs : stdgo.GoInt = 0;
    public var _floatRegSize : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public function new(?_rcvr:stdgo._internal.reflect.Reflect_type_.Type_, ?_typ:stdgo._internal.reflect.Reflect_type_.Type_, ?_size:stdgo.GoUIntptr, ?_argsize:stdgo.GoUIntptr, ?_retOffset:stdgo.GoUIntptr, ?_stack:stdgo.Slice<stdgo.GoUInt8>, ?_gc:stdgo.Slice<stdgo.GoUInt8>, ?_inRegs:stdgo.Slice<stdgo.GoUInt8>, ?_outRegs:stdgo.Slice<stdgo.GoUInt8>, ?_intRegs:stdgo.GoInt, ?_floatRegs:stdgo.GoInt, ?_floatRegSize:stdgo.GoUIntptr) {
        if (_rcvr != null) this._rcvr = _rcvr;
        if (_typ != null) this._typ = _typ;
        if (_size != null) this._size = _size;
        if (_argsize != null) this._argsize = _argsize;
        if (_retOffset != null) this._retOffset = _retOffset;
        if (_stack != null) this._stack = _stack;
        if (_gc != null) this._gc = _gc;
        if (_inRegs != null) this._inRegs = _inRegs;
        if (_outRegs != null) this._outRegs = _outRegs;
        if (_intRegs != null) this._intRegs = _intRegs;
        if (_floatRegs != null) this._floatRegs = _floatRegs;
        if (_floatRegSize != null) this._floatRegSize = _floatRegSize;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "_rcvr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_ }, optional : false },
{ name : "_typ", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_ }, optional : false },
{ name : "_size", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "_argsize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "_retOffset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "_stack", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "_gc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "_inRegs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "_outRegs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "_intRegs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_floatRegs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_floatRegSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, optional : false }])));
    public function __copy__() {
        return new T_testFuncLayout___localname___test_179156(
_rcvr,
_typ,
_size,
_argsize,
_retOffset,
_stack,
_gc,
_inRegs,
_outRegs,
_intRegs,
_floatRegs,
_floatRegSize);
    }
}
