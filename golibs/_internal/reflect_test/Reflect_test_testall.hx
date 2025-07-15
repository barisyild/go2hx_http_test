package _internal.reflect_test;
function testAll(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L660"
        _internal.reflect_test.Reflect_test__testtype._testType(_t, (1 : stdgo.GoInt), stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((0 : stdgo.GoInt8), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int8_kind)))), ("int8" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L661"
        _internal.reflect_test.Reflect_test__testtype._testType(_t, (2 : stdgo.GoInt), stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((null : stdgo.Pointer<stdgo.GoInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int8_kind) })))).elem(), ("int8" : stdgo.GoString));
        var _typ = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface((null : stdgo.Ref<_internal.reflect_test.Reflect_test_t__struct_67.T__struct_67>), stdgo._internal.internal.reflect.GoType.structType([{ name : "_c", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) }) }, optional : false }, { name : "_d", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(float32_kind) }, optional : false }])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.structType([{ name : "_c", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) }) }, optional : false }, { name : "_d", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(float32_kind) }, optional : false }]) })))) : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L667"
        _internal.reflect_test.Reflect_test__testtype._testType(_t, (3 : stdgo.GoInt), _typ, ("*struct { c chan *int32; d float32 }" : stdgo.GoString));
        var _etyp = @:assignType (_typ.elem() : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L669"
        _internal.reflect_test.Reflect_test__testtype._testType(_t, (4 : stdgo.GoInt), _etyp, ("struct { c chan *int32; d float32 }" : stdgo.GoString));
        var _styp = @:assignType (_etyp : stdgo._internal.reflect.Reflect_type_.Type_);
        var _f = @:assignType (_styp.field((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_structfield.StructField);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L672"
        _internal.reflect_test.Reflect_test__testtype._testType(_t, (5 : stdgo.GoInt), _f.type, ("chan *int32" : stdgo.GoString));
        var __tmp__ = _styp.fieldByName(("d" : stdgo.GoString)), _f:stdgo._internal.reflect.Reflect_structfield.StructField = __tmp__._0, _present:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L675"
        if (!_present) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L676"
            _t.errorf(("FieldByName says present field is absent" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L678"
        _internal.reflect_test.Reflect_test__testtype._testType(_t, (6 : stdgo.GoInt), _f.type, ("float32" : stdgo.GoString));
        {
            var __tmp__ = _styp.fieldByName(("absent" : stdgo.GoString));
            _f = @:tmpset0 __tmp__._0?.__copy__();
            _present = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L681"
        if (_present) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L682"
            _t.errorf(("FieldByName says absent field is present" : stdgo.GoString));
        };
        _typ = stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((new stdgo.GoArray<stdgo.GoInt32>(32, 32, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt32>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }, 32))));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L686"
        _internal.reflect_test.Reflect_test__testtype._testType(_t, (7 : stdgo.GoInt), _typ, ("[32]int32" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L687"
        _internal.reflect_test.Reflect_test__testtype._testType(_t, (8 : stdgo.GoInt), _typ.elem(), ("int32" : stdgo.GoString));
        _typ = stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((null : stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.GoInt32>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) }))));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L690"
        _internal.reflect_test.Reflect_test__testtype._testType(_t, (9 : stdgo.GoInt), _typ, ("map[string]*int32" : stdgo.GoString));
        var _mtyp = @:assignType (_typ : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L692"
        _internal.reflect_test.Reflect_test__testtype._testType(_t, (10 : stdgo.GoInt), _mtyp.key(), ("string" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L693"
        _internal.reflect_test.Reflect_test__testtype._testType(_t, (11 : stdgo.GoInt), _mtyp.elem(), ("*int32" : stdgo.GoString));
        _typ = stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((null : stdgo.Chan<stdgo.GoString>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(1, { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L696"
        _internal.reflect_test.Reflect_test__testtype._testType(_t, (12 : stdgo.GoInt), _typ, ("chan<- string" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L697"
        _internal.reflect_test.Reflect_test__testtype._testType(_t, (13 : stdgo.GoInt), _typ.elem(), ("string" : stdgo.GoString));
        _typ = stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface(({ _d : (null : stdgo.Slice<stdgo.GoUInt32>) } : _internal.reflect_test.Reflect_test_t__struct_74.T__struct_74), stdgo._internal.internal.reflect.GoType.structType([{ name : "_d", embedded : false, tag : "`reflect:\"TAG\"`", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }) }, optional : false }])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_d", embedded : false, tag : "`reflect:\"TAG\"`", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }) }, optional : false }])))).field((0 : stdgo.GoInt)).type;
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L703"
        _internal.reflect_test.Reflect_test__testtype._testType(_t, (14 : stdgo.GoInt), _typ, ("[]uint32" : stdgo.GoString));
    }
