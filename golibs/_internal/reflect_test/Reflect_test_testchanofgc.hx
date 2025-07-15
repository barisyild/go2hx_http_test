package _internal.reflect_test;
function testChanOfGC(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _done = (new stdgo.Chan<Bool>((1 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6090"
            stdgo.Go.routine(() -> ({
                var a = function():Void {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6091"
                    {
                        var __select__ = true;
                        var __c__0 = null;
var __c__1 = null;
                        while (__select__) {
                            if ({
                                if (__c__0 == null) {
                                    __c__0 = _done;
                                };
                                __c__0 != null && __c__0.__isGet__(true);
                            }) {
                                __select__ = false;
                                {
                                    __c__0.__get__();
                                    {};
                                };
                            } else if ({
                                if (__c__1 == null) {
                                    __c__1 = stdgo._internal.time.Time_after.after((5000000000i64 : stdgo._internal.time.Time_duration.Duration));
                                };
                                __c__1 != null && __c__1.__isGet__(true);
                            }) {
                                __select__ = false;
                                {
                                    __c__1.__get__();
                                    {
                                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6094"
                                        throw new stdgo.AnyInterface(("deadlock in TestChanOfGC" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                                    };
                                };
                            };
                            #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                        __c__0.__reset__();
__c__1.__reset__();
                    };
                };
                a();
            }));
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6099"
                        _done.__send__(true);
                    };
                    a();
                }) });
            };
            {};
            var _tt = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((null : _internal.reflect_test.Reflect_test_t_testchanofgc___localname___t_160333.T_testChanOfGC___localname___T_160333), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testchanofgc___localname___t_160333dott_testchanofgc___localname___t_160333.__type___internaldotreflect_testdotReflect_test_t_testchanofgc___localname___t_160333dotT_testChanOfGC___localname___T_160333))) : stdgo._internal.reflect.Reflect_type_.Type_);
            var _ct = @:assignType (stdgo._internal.reflect.Reflect_chanof.chanOf((3 : stdgo._internal.reflect.Reflect_chandir.ChanDir), _tt) : stdgo._internal.reflect.Reflect_type_.Type_);
            {};
            var _x:stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6111"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (100 : stdgo.GoInt) : Bool)) {
                    var _v = @:assignType (stdgo._internal.reflect.Reflect_makechan.makeChan(_ct, (100 : stdgo.GoInt)).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6113"
                    {
                        var _j = @:assignType (0 : stdgo.GoInt);
                        while ((_j < (100 : stdgo.GoInt) : Bool)) {
                            var _p = stdgo.Go.pointer(new stdgo.GoUIntptr(0));
_p.value = (new stdgo.GoUIntptr(((_i * (100 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt)) : stdgo.GoUIntptr);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6116"
                            _v.send(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_p, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) })))).convert(_tt).__copy__());
                            _j++;
                        };
                    };
var _pv = @:assignType (stdgo._internal.reflect.Reflect_new_.new_(_ct).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6119"
                    _pv.elem().set(_v.__copy__());
_x = (_x.__append__(_pv.interface_()) : stdgo.Slice<stdgo.AnyInterface>);
                    _i++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6122"
            stdgo._internal.runtime.Runtime_gc.gC();
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6124"
            if (_x != null) for (_i => _xi in _x) {
                var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_xi).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6126"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while ((_j < (100 : stdgo.GoInt) : Bool)) {
                        var __tmp__ = _v.recv(), _pv:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, __1:Bool = __tmp__._1;
var _k = @:assignType (_pv.elem().interface_() : stdgo.AnyInterface);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6129"
                        if (_k != (new stdgo.AnyInterface(((new stdgo.GoUIntptr(((_i * (100 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt)) : stdgo.GoUIntptr) : stdgo.GoUIntptr), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))))) {
                            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6130"
                            _t.errorf(("lost x[%d][%d] = %d, want %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_j, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), _k, new stdgo.AnyInterface(((_i * (100 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                        };
                        _j++;
                    };
                };
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
    }
