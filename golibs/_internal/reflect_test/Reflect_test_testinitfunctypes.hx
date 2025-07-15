package _internal.reflect_test;
function testInitFuncTypes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _n = @:assignType (100 : stdgo.GoInt);
        var _wg:stdgo._internal.sync.Sync_waitgroup.WaitGroup = ({} : stdgo._internal.sync.Sync_waitgroup.WaitGroup);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8356"
        _wg.add(_n);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8357"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8358"
                stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                        try {
                            {
                                final __f__ = _wg.done;
                                __deferstack__.unshift({ ran : false, f : () -> __f__() });
                            };
                            var _ipT = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo._internal.net.Net_ip.IP), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipdotip.__type__stdgodot_internaldotnetdotNet_ipdotIP), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipdotip.__type__stdgodot_internaldotnetdotNet_ipdotIP))) : stdgo._internal.reflect.Reflect_type_.Type_);
                            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8361"
                            {
                                var _i = @:assignType (0 : stdgo.GoInt);
                                while ((_i < _ipT.numMethod() : Bool)) {
                                    _ipT.method(_i);
                                    _i++;
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
                    };
                    a();
                }));
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8366"
        _wg.wait_();
    }
