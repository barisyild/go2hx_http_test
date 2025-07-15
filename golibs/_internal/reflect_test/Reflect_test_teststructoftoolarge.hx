package _internal.reflect_test;
function testStructOfTooLarge(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _t1 = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((0 : stdgo.GoUInt8), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind)))) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _t2 = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((0 : stdgo.GoInt16), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int16_kind)))) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _t4 = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((0 : stdgo.GoInt32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind)))) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _t0 = @:assignType (stdgo._internal.reflect.Reflect_arrayof.arrayOf((0 : stdgo.GoInt), _t1) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _bigType = @:assignType (stdgo._internal.reflect.Reflect_structof.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>(2, 2, ...[({ name : ("F1" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_arrayof.arrayOf(((new stdgo.GoUIntptr(2147483647) : stdgo.GoUIntptr) : stdgo.GoInt), _t1) } : stdgo._internal.reflect.Reflect_structfield.StructField), ({ name : ("F2" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_arrayof.arrayOf(((new stdgo.GoUIntptr(2147483646) : stdgo.GoUIntptr) : stdgo.GoInt), _t1) } : stdgo._internal.reflect.Reflect_structfield.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_structfield.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>)) : stdgo._internal.reflect.Reflect_type_.Type_);
        {};
        var _tests = (new stdgo.GoArray<_internal.reflect_test.Reflect_test_t_teststructoftoolarge___localname___test_156983.T_testStructOfTooLarge___localname___test_156983>(5, 5, ...[({ _shouldPanic : false, _fields : (new stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>(2, 2, ...[({ name : ("F1" : stdgo.GoString), type : _bigType } : stdgo._internal.reflect.Reflect_structfield.StructField), ({ name : ("F2" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_arrayof.arrayOf((2 : stdgo.GoInt), _t1) } : stdgo._internal.reflect.Reflect_structfield.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_structfield.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>) } : _internal.reflect_test.Reflect_test_t_teststructoftoolarge___localname___test_156983.T_testStructOfTooLarge___localname___test_156983), ({ _shouldPanic : true, _fields : (new stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>(2, 2, ...[({ name : ("F1" : stdgo.GoString), type : _bigType } : stdgo._internal.reflect.Reflect_structfield.StructField), ({ name : ("F2" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_arrayof.arrayOf((3 : stdgo.GoInt), _t1) } : stdgo._internal.reflect.Reflect_structfield.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_structfield.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>) } : _internal.reflect_test.Reflect_test_t_teststructoftoolarge___localname___test_156983.T_testStructOfTooLarge___localname___test_156983), ({ _shouldPanic : true, _fields : (new stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>(2, 2, ...[({ name : ("F1" : stdgo.GoString), type : _bigType } : stdgo._internal.reflect.Reflect_structfield.StructField), ({ name : ("F2" : stdgo.GoString), type : _t4 } : stdgo._internal.reflect.Reflect_structfield.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_structfield.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>) } : _internal.reflect_test.Reflect_test_t_teststructoftoolarge___localname___test_156983.T_testStructOfTooLarge___localname___test_156983), ({ _shouldPanic : true, _fields : (new stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>(3, 3, ...[({ name : ("F1" : stdgo.GoString), type : _bigType } : stdgo._internal.reflect.Reflect_structfield.StructField), ({ name : ("F2" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_arrayof.arrayOf((2 : stdgo.GoInt), _t1) } : stdgo._internal.reflect.Reflect_structfield.StructField), ({ name : ("F3" : stdgo.GoString), type : _t0 } : stdgo._internal.reflect.Reflect_structfield.StructField)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_structfield.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>) } : _internal.reflect_test.Reflect_test_t_teststructoftoolarge___localname___test_156983.T_testStructOfTooLarge___localname___test_156983), ({ _shouldPanic : true, _fields : (new stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>(2, 2, ...[({ name : ("F1" : stdgo.GoString), type : _t2 } : stdgo._internal.reflect.Reflect_structfield.StructField), ({ name : ("F2" : stdgo.GoString), type : _bigType } : stdgo._internal.reflect.Reflect_structfield.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_structfield.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>) } : _internal.reflect_test.Reflect_test_t_teststructoftoolarge___localname___test_156983.T_testStructOfTooLarge___localname___test_156983)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({} : _internal.reflect_test.Reflect_test_t_teststructoftoolarge___localname___test_156983.T_testStructOfTooLarge___localname___test_156983)])) : stdgo.GoArray<_internal.reflect_test.Reflect_test_t_teststructoftoolarge___localname___test_156983.T_testStructOfTooLarge___localname___test_156983>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6007"
        for (_i => _tt in _tests.__copy__()) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6008"
            ({
                var a = function():Void {
                    var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                    try {
                        {
                            __deferstack__.unshift({ ran : false, f : () -> ({
                                var a = function():Void {
                                    var _err = @:assignType ({
                                        final r = stdgo.Go.recover_exception;
                                        stdgo.Go.recover_exception = null;
                                        r;
                                    } : stdgo.AnyInterface);
                                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6011"
                                    if (!_tt._shouldPanic) {
                                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6012"
                                        if (({
                                            final value = _err;
                                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                        })) {
                                            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6013"
                                            _t.errorf(("test %d should not panic, got %s" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), _err);
                                        };
                                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6015"
                                        return;
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6017"
                                    if (({
                                        final value = _err;
                                        (value == null || (value : Dynamic).__nil__);
                                    })) {
                                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6018"
                                        _t.errorf(("test %d expected to panic" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6019"
                                        return;
                                    };
                                    var _s = @:assignType (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s" : stdgo.GoString), _err)?.__copy__() : stdgo.GoString);
                                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6022"
                                    if (_s != (("reflect.StructOf: struct size would exceed virtual address space" : stdgo.GoString))) {
                                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6023"
                                        _t.errorf(("test %d wrong panic message: %s" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6024"
                                        return;
                                    };
                                };
                                a();
                            }) });
                        };
                        stdgo._internal.reflect.Reflect_structof.structOf(_tt._fields);
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
                };
                a();
            });
        };
    }
