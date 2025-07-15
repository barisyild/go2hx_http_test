package _internal.reflect_test;
function testFuncLayout(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _align = @:assignType (function(_x:stdgo.GoUIntptr):stdgo.GoUIntptr {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6869"
            return ((((_x + (new stdgo.GoUIntptr(4) : stdgo.GoUIntptr) : stdgo.GoUIntptr) - (new stdgo.GoUIntptr(1) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) & (((new stdgo.GoUIntptr(3) : stdgo.GoUIntptr) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
        } : stdgo.GoUIntptr -> stdgo.GoUIntptr);
        var _r:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6872"
        if (true) {
            _r = (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _r = (new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        {};
        {};
        var _tests = (new stdgo.Slice<_internal.reflect_test.Reflect_test_t_testfunclayout___localname___test_179156.T_testFuncLayout___localname___test_179156>(8, 8, ...[({ _typ : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(function(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoString {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6892"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        }, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))).type(), _size : (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr), _argsize : (new stdgo.GoUIntptr(16) : stdgo.GoUIntptr), _retOffset : (new stdgo.GoUIntptr(16) : stdgo.GoUIntptr), _stack : (new stdgo.Slice<stdgo.GoUInt8>(5, 5, ...[(1 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _gc : (new stdgo.Slice<stdgo.GoUInt8>(5, 5, ...[(1 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.reflect_test.Reflect_test_t_testfunclayout___localname___test_179156.T_testFuncLayout___localname___test_179156), ({ _typ : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(function(_a:stdgo.GoUInt32, _b:stdgo.GoUInt32, _c:stdgo.GoUInt32, _p:stdgo.Pointer<stdgo.GoUInt8>, _d:stdgo.GoUInt16):Void {}, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(uint32_kind), stdgo._internal.internal.reflect.GoType.basic(uint32_kind), stdgo._internal.internal.reflect.GoType.basic(uint32_kind), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }), stdgo._internal.internal.reflect.GoType.basic(uint16_kind)] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))).type(), _size : _align(((_align((new stdgo.GoUIntptr(12) : stdgo.GoUIntptr)) + (new stdgo.GoUIntptr(4) : stdgo.GoUIntptr) : stdgo.GoUIntptr) + (new stdgo.GoUIntptr(2) : stdgo.GoUIntptr) : stdgo.GoUIntptr)), _argsize : ((_align((new stdgo.GoUIntptr(12) : stdgo.GoUIntptr)) + (new stdgo.GoUIntptr(4) : stdgo.GoUIntptr) : stdgo.GoUIntptr) + (new stdgo.GoUIntptr(2) : stdgo.GoUIntptr) : stdgo.GoUIntptr), _retOffset : _align(((_align((new stdgo.GoUIntptr(12) : stdgo.GoUIntptr)) + (new stdgo.GoUIntptr(4) : stdgo.GoUIntptr) : stdgo.GoUIntptr) + (new stdgo.GoUIntptr(2) : stdgo.GoUIntptr) : stdgo.GoUIntptr)), _stack : _r, _gc : _r } : _internal.reflect_test.Reflect_test_t_testfunclayout___localname___test_179156.T_testFuncLayout___localname___test_179156), ({ _typ : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(function(_a:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, _b:stdgo.GoUIntptr, _c:stdgo.AnyInterface):Void {}, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }), stdgo._internal.internal.reflect.GoType.basic(uintptr_kind), stdgo._internal.internal.reflect.GoType.interfaceType(true, [])] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))).type(), _size : (new stdgo.GoUIntptr(16) : stdgo.GoUIntptr), _argsize : (new stdgo.GoUIntptr(16) : stdgo.GoUIntptr), _retOffset : (new stdgo.GoUIntptr(16) : stdgo.GoUIntptr), _stack : (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(1 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _gc : (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(1 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.reflect_test.Reflect_test_t_testfunclayout___localname___test_179156.T_testFuncLayout___localname___test_179156), ({ _typ : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(function(_a:_internal.reflect_test.Reflect_test_t_testfunclayout___localname___s_179107.T_testFuncLayout___localname___S_179107):Void {}, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testfunclayout___localname___s_179107dott_testfunclayout___localname___s_179107.__type___internaldotreflect_testdotReflect_test_t_testfunclayout___localname___s_179107dotT_testFuncLayout___localname___S_179107] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))).type(), _size : (new stdgo.GoUIntptr(16) : stdgo.GoUIntptr), _argsize : (new stdgo.GoUIntptr(16) : stdgo.GoUIntptr), _retOffset : (new stdgo.GoUIntptr(16) : stdgo.GoUIntptr), _stack : (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _gc : (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.reflect_test.Reflect_test_t_testfunclayout___localname___test_179156.T_testFuncLayout___localname___test_179156), ({ _rcvr : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((null : stdgo.Pointer<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) })))).type(), _typ : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(function(_a:stdgo.GoUIntptr, _b:stdgo.Pointer<stdgo.GoInt>):Void {}, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(uintptr_kind), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))).type(), _size : (new stdgo.GoUIntptr(12) : stdgo.GoUIntptr), _argsize : (new stdgo.GoUIntptr(12) : stdgo.GoUIntptr), _retOffset : (new stdgo.GoUIntptr(12) : stdgo.GoUIntptr), _stack : (new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _gc : (new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.reflect_test.Reflect_test_t_testfunclayout___localname___test_179156.T_testFuncLayout___localname___test_179156), ({ _typ : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(function(_a:stdgo.GoUIntptr):Void {}, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(uintptr_kind)] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))).type(), _size : (new stdgo.GoUIntptr(4) : stdgo.GoUIntptr), _argsize : (new stdgo.GoUIntptr(4) : stdgo.GoUIntptr), _retOffset : (new stdgo.GoUIntptr(4) : stdgo.GoUIntptr), _stack : (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _gc : (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.reflect_test.Reflect_test_t_testfunclayout___localname___test_179156.T_testFuncLayout___localname___test_179156), ({ _typ : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(function():stdgo.GoUIntptr {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6941"
            return (new stdgo.GoUIntptr(0) : stdgo.GoUIntptr);
        }, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(uintptr_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))).type(), _size : (new stdgo.GoUIntptr(4) : stdgo.GoUIntptr), _argsize : (new stdgo.GoUIntptr(0) : stdgo.GoUIntptr), _retOffset : (new stdgo.GoUIntptr(0) : stdgo.GoUIntptr), _stack : (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _gc : (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.reflect_test.Reflect_test_t_testfunclayout___localname___test_179156.T_testFuncLayout___localname___test_179156), ({ _rcvr : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((new stdgo.GoUIntptr((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : stdgo.GoUIntptr), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind)))).type(), _typ : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(function(_a:stdgo.GoUIntptr):Void {}, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(uintptr_kind)] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))).type(), _size : (new stdgo.GoUIntptr(8) : stdgo.GoUIntptr), _argsize : (new stdgo.GoUIntptr(8) : stdgo.GoUIntptr), _retOffset : (new stdgo.GoUIntptr(8) : stdgo.GoUIntptr), _stack : (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _gc : (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.reflect_test.Reflect_test_t_testfunclayout___localname___test_179156.T_testFuncLayout___localname___test_179156)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({} : _internal.reflect_test.Reflect_test_t_testfunclayout___localname___test_179156.T_testFuncLayout___localname___test_179156)])) : stdgo.Slice<_internal.reflect_test.Reflect_test_t_testfunclayout___localname___test_179156.T_testFuncLayout___localname___test_179156>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6962"
        if (_tests != null) for (__1 => _lt in _tests) {
            var _name = @:assignType ((_lt._typ.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6964"
            if (_lt._rcvr != null) {
                _name = (((_lt._rcvr.string() : stdgo.GoString) + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__();
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6967"
            _t.run(_name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                try {
                    {
                        var _a0 = stdgo._internal.reflect.Reflect_setargregs.setArgRegs(_lt._intRegs, _lt._floatRegs, _lt._floatRegSize);
                        __deferstack__.unshift({ ran : false, f : () -> ({
                            @:tupleArg var __tmp__ = _a0;
                            var __f__ = stdgo._internal.reflect.Reflect_setargregs.setArgRegs;
                            var __tmp__ = _a0;
                            __f__((__tmp__._0 : stdgo.GoInt), (__tmp__._1 : stdgo.GoInt), (__tmp__._2 : stdgo.GoUIntptr));
                        }) });
                    };
                    var __tmp__ = stdgo._internal.reflect.Reflect_funclayout.funcLayout(_lt._typ, _lt._rcvr), _typ:stdgo._internal.reflect.Reflect_type_.Type_ = __tmp__._0, _argsize:stdgo.GoUIntptr = __tmp__._1, _retOffset:stdgo.GoUIntptr = __tmp__._2, _stack:stdgo.Slice<stdgo.GoUInt8> = __tmp__._3, _gc:stdgo.Slice<stdgo.GoUInt8> = __tmp__._4, _inRegs:stdgo.Slice<stdgo.GoUInt8> = __tmp__._5, _outRegs:stdgo.Slice<stdgo.GoUInt8> = __tmp__._6, _ptrs:Bool = __tmp__._7;
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6971"
                    if (_typ.size() != (_lt._size)) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6972"
                        _t.errorf(("funcLayout(%v, %v).size=%d, want %d" : stdgo.GoString), ({
                            final __t__ = _lt._typ;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), ({
                            final __t__ = _lt._rcvr;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), new stdgo.AnyInterface(_typ.size(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))), new stdgo.AnyInterface(_lt._size, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6974"
                    if (_argsize != (_lt._argsize)) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6975"
                        _t.errorf(("funcLayout(%v, %v).argsize=%d, want %d" : stdgo.GoString), ({
                            final __t__ = _lt._typ;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), ({
                            final __t__ = _lt._rcvr;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), new stdgo.AnyInterface(_argsize, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))), new stdgo.AnyInterface(_lt._argsize, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6977"
                    if (_retOffset != (_lt._retOffset)) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6978"
                        _t.errorf(("funcLayout(%v, %v).retOffset=%d, want %d" : stdgo.GoString), ({
                            final __t__ = _lt._typ;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), ({
                            final __t__ = _lt._rcvr;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), new stdgo.AnyInterface(_retOffset, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))), new stdgo.AnyInterface(_lt._retOffset, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6980"
                    if (!stdgo._internal.bytes.Bytes_equal.equal(_stack, _lt._stack)) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6981"
                        _t.errorf(("funcLayout(%v, %v).stack=%v, want %v" : stdgo.GoString), ({
                            final __t__ = _lt._typ;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), ({
                            final __t__ = _lt._rcvr;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), new stdgo.AnyInterface(_stack, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_lt._stack, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6983"
                    if (!stdgo._internal.bytes.Bytes_equal.equal(_gc, _lt._gc)) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6984"
                        _t.errorf(("funcLayout(%v, %v).gc=%v, want %v" : stdgo.GoString), ({
                            final __t__ = _lt._typ;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), ({
                            final __t__ = _lt._rcvr;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), new stdgo.AnyInterface(_gc, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_lt._gc, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6986"
                    if (!stdgo._internal.bytes.Bytes_equal.equal(_inRegs, _lt._inRegs)) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6987"
                        _t.errorf(("funcLayout(%v, %v).inRegs=%v, want %v" : stdgo.GoString), ({
                            final __t__ = _lt._typ;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), ({
                            final __t__ = _lt._rcvr;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), new stdgo.AnyInterface(_inRegs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_lt._inRegs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6989"
                    if (!stdgo._internal.bytes.Bytes_equal.equal(_outRegs, _lt._outRegs)) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6990"
                        _t.errorf(("funcLayout(%v, %v).outRegs=%v, want %v" : stdgo.GoString), ({
                            final __t__ = _lt._typ;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), ({
                            final __t__ = _lt._rcvr;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), new stdgo.AnyInterface(_outRegs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_lt._outRegs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6992"
                    if (((_ptrs && (_stack.length) == ((0 : stdgo.GoInt)) : Bool) || (!_ptrs && ((_stack.length) > (0 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6993"
                        _t.errorf(("funcLayout(%v, %v) pointers flag=%v, want %v" : stdgo.GoString), ({
                            final __t__ = _lt._typ;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), ({
                            final __t__ = _lt._rcvr;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), new stdgo.AnyInterface(_ptrs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(!_ptrs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                    };
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        if (stdgo.Go.recover_exception != null) {
                            final e = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            @:throw1 throw e;
                        };
                        return;
                    };
                } catch(__exception__) {
                    {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                            if (__exception__.message == "__return__") throw "__return__";
                            exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                        };
                        stdgo.Go.recover_exception = exe;
                        {
                            function f() {
                                try {
                                    {
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                    };
                                } catch(__exception__2) {
                                    var exe:Dynamic = __exception__2.native;
                                    if ((exe is haxe.ValueException)) exe = exe.value;
                                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                        if (__exception__.message == "__return__") throw "__return__";
                                        exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                                    };
                                    stdgo.Go.recover_exception = exe;
                                    f();
                                };
                            };
                            f();
                        };
                        if (stdgo.Go.recover_exception != null) {
                            final e = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            @:throw3 throw e;
                        };
                        return;
                    };
                };
            });
        };
    }
