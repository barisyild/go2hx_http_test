package _internal.reflect_test;
function testStructOf(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _fields = (new stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>(4, 4, ...[({ name : ("S" : stdgo.GoString), tag : (("s" : stdgo.GoString) : stdgo._internal.reflect.Reflect_structtag.StructTag), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) } : stdgo._internal.reflect.Reflect_structfield.StructField), ({ name : ("X" : stdgo.GoString), tag : (("x" : stdgo.GoString) : stdgo._internal.reflect.Reflect_structtag.StructTag), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((0 : stdgo.GoUInt8), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind)))) } : stdgo._internal.reflect.Reflect_structfield.StructField), ({ name : ("Y" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((0i64 : stdgo.GoUInt64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind)))) } : stdgo._internal.reflect.Reflect_structfield.StructField), ({ name : ("Z" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((new stdgo.GoArray<stdgo.GoUInt16>(3, 3, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt16>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, 3)))) } : stdgo._internal.reflect.Reflect_structfield.StructField)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_structfield.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>);
        var _st = @:assignType (stdgo._internal.reflect.Reflect_structof.structOf(_fields) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _v = @:assignType (stdgo._internal.reflect.Reflect_new_.new_(_st).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5222"
        stdgo._internal.runtime.Runtime_gc.gC();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5223"
        _v.fieldByName(("X" : stdgo.GoString)).set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((2 : stdgo.GoUInt8), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5224"
        _v.fieldByIndex((new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)).set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((1 : stdgo.GoUInt8), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5225"
        stdgo._internal.runtime.Runtime_gc.gC();
        var _s = @:assignType (stdgo._internal.fmt.Fmt_sprint.sprint(_v.interface_())?.__copy__() : stdgo.GoString);
        var _want = @:assignType (("{ 1 0 [0 0 0]}" : stdgo.GoString) : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5229"
        if (_s != (_want)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5230"
            _t.errorf(("constructed struct = %s, want %s" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        {};
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5233"
        {
            var __0 = @:assignType ((_st.string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = @:assignType (("struct { S string \"s\"; X uint8 \"x\"; Y uint64; Z [3]uint16 }" : stdgo.GoString) : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5234"
                _t.errorf(("StructOf(fields).String()=%q, want %q" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        var _stt = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface(({ string : ("" : stdgo.GoString), x : (0 : stdgo.GoUInt8), y : (0 : stdgo.GoUInt64), z : new stdgo.GoArray<stdgo.GoUInt16>(3, 3).__setNumber32__() } : _internal.reflect_test.Reflect_test_t__struct_112.T__struct_112), stdgo._internal.internal.reflect.GoType.structType([{ name : "string", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "z", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, 3) }, optional : false }])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "string", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "z", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, 3) }, optional : false }])))) : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5244"
        if (_st.size() != (_stt.size())) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5245"
            _t.errorf(("constructed struct size = %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_st.size(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))), new stdgo.AnyInterface(_stt.size(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5247"
        if (_st.align() != (_stt.align())) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5248"
            _t.errorf(("constructed struct align = %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_st.align(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_stt.align(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5250"
        if (_st.fieldAlign() != (_stt.fieldAlign())) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5251"
            _t.errorf(("constructed struct field align = %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_st.fieldAlign(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_stt.fieldAlign(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5253"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _st.numField() : Bool)) {
                var _o1 = @:assignType (_st.field(_i).offset : stdgo.GoUIntptr);
var _o2 = @:assignType (_stt.field(_i).offset : stdgo.GoUIntptr);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5256"
                if (_o1 != (_o2)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5257"
                    _t.errorf(("constructed struct field %v offset = %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_o1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))), new stdgo.AnyInterface(_o2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))));
                };
                _i++;
            };
        };
        _st = stdgo._internal.reflect.Reflect_structof.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>(2, 2, ...[({ name : ("F1" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((0 : stdgo.GoUInt8), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind)))) } : stdgo._internal.reflect.Reflect_structfield.StructField), ({ name : ("F2" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((new stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>>(0, 0, ...[]) : stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, 0)))) } : stdgo._internal.reflect.Reflect_structfield.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_structfield.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>));
        _stt = stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface(({ g1 : (0 : stdgo.GoUInt8), g2 : new stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>>(0, 0) } : _internal.reflect_test.Reflect_test_t__struct_113.T__struct_113), stdgo._internal.internal.reflect.GoType.structType([{ name : "g1", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "g2", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, 0) }, optional : false }])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "g1", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "g2", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, 0) }, optional : false }]))));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5276"
        if (_st.size() != (_stt.size())) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5277"
            _t.errorf(("constructed zero-padded struct size = %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_st.size(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))), new stdgo.AnyInterface(_stt.size(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5279"
        if (_st.align() != (_stt.align())) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5280"
            _t.errorf(("constructed zero-padded struct align = %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_st.align(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_stt.align(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5282"
        if (_st.fieldAlign() != (_stt.fieldAlign())) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5283"
            _t.errorf(("constructed zero-padded struct field align = %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_st.fieldAlign(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_stt.fieldAlign(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5285"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _st.numField() : Bool)) {
                var _o1 = @:assignType (_st.field(_i).offset : stdgo.GoUIntptr);
var _o2 = @:assignType (_stt.field(_i).offset : stdgo.GoUIntptr);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5288"
                if (_o1 != (_o2)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5289"
                    _t.errorf(("constructed zero-padded struct field %v offset = %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_o1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))), new stdgo.AnyInterface(_o2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))));
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5294"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("duplicate field" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5295"
            stdgo._internal.reflect.Reflect_structof.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>(2, 2, ...[({ name : ("string" : stdgo.GoString), pkgPath : ("p" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) } : stdgo._internal.reflect.Reflect_structfield.StructField), ({ name : ("string" : stdgo.GoString), pkgPath : ("p" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) } : stdgo._internal.reflect.Reflect_structfield.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_structfield.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5300"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("has no name" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5301"
            stdgo._internal.reflect.Reflect_structof.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>(2, 2, ...[({ type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) } : stdgo._internal.reflect.Reflect_structfield.StructField), ({ name : ("string" : stdgo.GoString), pkgPath : ("p" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) } : stdgo._internal.reflect.Reflect_structfield.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_structfield.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5306"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("has no name" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5307"
            stdgo._internal.reflect.Reflect_structof.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>(2, 2, ...[({ type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) } : stdgo._internal.reflect.Reflect_structfield.StructField), ({ type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) } : stdgo._internal.reflect.Reflect_structfield.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_structfield.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5313"
        _internal.reflect_test.Reflect_test__checksametype._checkSameType(_t, stdgo._internal.reflect.Reflect_structof.structOf((_fields.__slice__((2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>)), new stdgo.AnyInterface(stdgo.Go.asInterface(({ y : (0 : stdgo.GoUInt64) } : _internal.reflect_test.Reflect_test_t__struct_114.T__struct_114), stdgo._internal.internal.reflect.GoType.structType([{ name : "y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }]))));
        {};
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5317"
        _internal.reflect_test.Reflect_test__checksametype._checkSameType(_t, stdgo._internal.reflect.Reflect_structof.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>(1, 1, ...[({ name : ("F" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((null : stdgo.Pointer<_internal.reflect_test.Reflect_test_t_teststructof___localname___structfieldtype_141939.T_testStructOf___localname___structFieldType_141939>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_teststructof___localname___structfieldtype_141939dott_teststructof___localname___structfieldtype_141939.__type___internaldotreflect_testdotReflect_test_t_teststructof___localname___structfieldtype_141939dotT_testStructOf___localname___structFieldType_141939 })))).elem() } : stdgo._internal.reflect.Reflect_structfield.StructField)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_structfield.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>)), new stdgo.AnyInterface(stdgo.Go.asInterface(({ f : (null : _internal.reflect_test.Reflect_test_t_teststructof___localname___structfieldtype_141939.T_testStructOf___localname___structFieldType_141939) } : _internal.reflect_test.Reflect_test_t__struct_115.T__struct_115), stdgo._internal.internal.reflect.GoType.structType([{ name : "f", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_teststructof___localname___structfieldtype_141939dott_teststructof___localname___structfieldtype_141939.__type___internaldotreflect_testdotReflect_test_t_teststructof___localname___structfieldtype_141939dotT_testStructOf___localname___structFieldType_141939 }, optional : false }])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "f", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_teststructof___localname___structfieldtype_141939dott_teststructof___localname___structfieldtype_141939.__type___internaldotreflect_testdotReflect_test_t_teststructof___localname___structfieldtype_141939dotT_testStructOf___localname___structFieldType_141939 }, optional : false }]))));
    }
