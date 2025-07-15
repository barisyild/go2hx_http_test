package stdgo._internal.internal.intern;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.runtime.Runtime;
function _finalize(_v:stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/internal/intern/intern.go#L127"
            stdgo._internal.internal.intern.Intern__mu._mu.lock();
            {
                final __f__ = stdgo._internal.internal.intern.Intern__mu._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/intern/intern.go#L129"
            if ((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resurrected) {
                (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resurrected = false;
                //"file:///Users/o/.go/go1.21.3/src/internal/intern/intern.go#L133"
                stdgo._internal.runtime.Runtime_setfinalizer.setFinalizer(new stdgo.AnyInterface(stdgo.Go.asInterface(_v, _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotinterndotintern_valuedotvalue.__type__stdgodot_internaldotinternaldotinterndotIntern_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotinterndotintern_valuedotvalue.__type__stdgodot_internaldotinternaldotinterndotIntern_valuedotValue }))), new stdgo.AnyInterface(stdgo._internal.internal.intern.Intern__finalize._finalize, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotinterndotintern_valuedotvalue.__type__stdgodot_internaldotinternaldotinterndotIntern_valuedotValue })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }))));
                //"file:///Users/o/.go/go1.21.3/src/internal/intern/intern.go#L134"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/intern/intern.go#L136"
            if (stdgo._internal.internal.intern.Intern__valmap._valMap != null) stdgo._internal.internal.intern.Intern__valmap._valMap.__remove__(stdgo._internal.internal.intern.Intern__keyfor._keyFor((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cmpVal));
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
