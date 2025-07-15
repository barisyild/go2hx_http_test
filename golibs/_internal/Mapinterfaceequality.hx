package _internal;
function main():Void {
    var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
    try {
        var _a:stdgo.AnyInterface = new stdgo.AnyInterface(({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set((1 : stdgo.GoInt), (0 : stdgo.GoInt));
x.set((2 : stdgo.GoInt), (0 : stdgo.GoInt));
x.set((3 : stdgo.GoInt), (0 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })));
        var _b:stdgo.AnyInterface = new stdgo.AnyInterface(({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set((1 : stdgo.GoInt), (0 : stdgo.GoInt));
x.set((2 : stdgo.GoInt), (0 : stdgo.GoInt));
x.set((3 : stdgo.GoInt), (0 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })));
        {
            __deferstack__.unshift({ ran : false, f : () -> ({
                var a = function():Void {
                    var _e = @:assignType (stdgo.Go.typeAssert(({
                        final r = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        r;
                    }), _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotruntime_errordoterror.__type__stdgodot_internaldotruntimedotRuntime_errordotError) : stdgo._internal.runtime.Runtime_error.Error);
                    {};
                    //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/mapinterfaceequality.go#L11"
                    {
                        var _errValue = @:assignType (_e.error()?.__copy__() : stdgo.GoString);
                        if (_errValue != (("runtime error: comparing uncomparable type map[int]int" : stdgo.GoString))) {
                            //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/mapinterfaceequality.go#L12"
                            throw new stdgo.AnyInterface((((("error value mismatch got: " : stdgo.GoString) + _errValue?.__copy__() : stdgo.GoString) + (" want: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("runtime error: comparing uncomparable type map[int]int" : stdgo.GoString)?.__copy__() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                        };
                    };
                };
                a();
            }) });
        };
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/mapinterfaceequality.go#L15"
        stdgo.Go.println(_a == (_b));
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/mapinterfaceequality.go#L16"
        throw new stdgo.AnyInterface(("interface map equality supposed to throw runtime panic" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
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
