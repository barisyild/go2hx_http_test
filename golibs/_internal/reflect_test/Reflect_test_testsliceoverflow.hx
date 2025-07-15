package _internal.reflect_test;
function testSliceOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {};
            var _s = @:assignType ((1000000u32 : stdgo.GoUInt) : stdgo.GoUInt);
            var _l = @:assignType (((-1u32 : stdgo.GoUInt) / _s : stdgo.GoUInt) + (1u32 : stdgo.GoUInt) : stdgo.GoUInt);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5107"
            if (((_l * _s : stdgo.GoUInt) >= _s : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5108"
                _t.fatal(new stdgo.AnyInterface(("slice size does not overflow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
            var _x:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1000000, 1000000).__setNumber32__();
            var _st = @:assignType (stdgo._internal.reflect.Reflect_sliceof.sliceOf(stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(_x, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 1000000))))) : stdgo._internal.reflect.Reflect_type_.Type_);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        var _err = @:assignType ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        } : stdgo.AnyInterface);
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5114"
                        if (({
                            final value = _err;
                            (value == null || (value : Dynamic).__nil__);
                        })) {
                            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5115"
                            _t.fatal(new stdgo.AnyInterface(("slice overflow does not panic" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                        };
                    };
                    a();
                }) });
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5118"
            stdgo._internal.reflect.Reflect_makeslice.makeSlice(_st, (_l : stdgo.GoInt), (_l : stdgo.GoInt));
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
    }
