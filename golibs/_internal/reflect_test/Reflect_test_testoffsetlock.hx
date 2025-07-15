package _internal.reflect_test;
function testOffsetLock(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _wg:stdgo._internal.sync.Sync_waitgroup.WaitGroup = ({} : stdgo._internal.sync.Sync_waitgroup.WaitGroup);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7392"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (4 : stdgo.GoInt) : Bool)) {
                var _i = @:assignType (_i : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7394"
                _wg.add((1 : stdgo.GoInt));
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7395"
                stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7396"
                        {
                            var _j = @:assignType (0 : stdgo.GoInt);
                            while ((_j < (50 : stdgo.GoInt) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7397"
                                stdgo._internal.reflect.Reflect_resolvereflectname.resolveReflectName(stdgo._internal.fmt.Fmt_sprintf.sprintf(("OffsetLockName:%d:%d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_j, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).__copy__());
                                _j++;
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7399"
                        _wg.done();
                    };
                    a();
                }));
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7402"
        _wg.wait_();
    }
