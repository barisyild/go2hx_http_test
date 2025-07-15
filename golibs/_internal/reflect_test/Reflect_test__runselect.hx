package _internal.reflect_test;
function _runSelect(_cases:stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase>, _info:stdgo.Slice<_internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.reflect.Reflect_value.Value; var _2 : Bool; var _3 : stdgo.AnyInterface; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _chosen = (0 : stdgo.GoInt), _recv = ({} : stdgo._internal.reflect.Reflect_value.Value), _recvOK = false, _panicErr = (null : stdgo.AnyInterface);
        try {
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        _panicErr = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2068"
                        _internal.reflect_test.Reflect_test__selectwatch._selectWatch.lock();
                        _internal.reflect_test.Reflect_test__selectwatch._selectWatch._info = (null : stdgo.Slice<_internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo>);
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2070"
                        _internal.reflect_test.Reflect_test__selectwatch._selectWatch.unlock();
                    };
                    a();
                }) });
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2073"
            _internal.reflect_test.Reflect_test__selectwatch._selectWatch.lock();
            _internal.reflect_test.Reflect_test__selectwatch._selectWatch._now = stdgo._internal.time.Time_now.now()?.__copy__();
            _internal.reflect_test.Reflect_test__selectwatch._selectWatch._info = _info;
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2076"
            _internal.reflect_test.Reflect_test__selectwatch._selectWatch.unlock();
            {
                var __tmp__ = stdgo._internal.reflect.Reflect_select.select(_cases);
                _chosen = @:tmpset0 __tmp__._0;
                _recv = @:tmpset0 __tmp__._1?.__copy__();
                _recvOK = @:tmpset0 __tmp__._2;
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2079"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return { _0 : _chosen, _1 : _recv, _2 : _recvOK, _3 : _panicErr };
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
                return { _0 : _chosen, _1 : _recv, _2 : _recvOK, _3 : _panicErr };
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
                return { _0 : _chosen, _1 : _recv, _2 : _recvOK, _3 : _panicErr };
            };
        };
    }
