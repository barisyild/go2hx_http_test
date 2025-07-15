package stdgo._internal.internal.intern;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.runtime.Runtime;
function _get(_k:stdgo._internal.internal.intern.Intern_t_key.T_key):stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value> {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/internal/intern/intern.go#L101"
            stdgo._internal.internal.intern.Intern__mu._mu.lock();
            {
                final __f__ = stdgo._internal.internal.intern.Intern__mu._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _v:stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value> = (null : stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>);
            //"file:///Users/o/.go/go1.21.3/src/internal/intern/intern.go#L105"
            if (stdgo._internal.internal.intern.Intern__valsafe._valSafe != null) {
                _v = (stdgo._internal.internal.intern.Intern__valsafe._valSafe[_k] ?? (null : stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>));
            } else {
                var __tmp__ = (stdgo._internal.internal.intern.Intern__valmap._valMap != null && stdgo._internal.internal.intern.Intern__valmap._valMap.__exists__(_k?.__copy__()) ? { _0 : stdgo._internal.internal.intern.Intern__valmap._valMap[_k?.__copy__()], _1 : true } : { _0 : new stdgo.GoUIntptr(0), _1 : false }), _addr:stdgo.GoUIntptr = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _v = ((new stdgo.AnyInterface(_addr, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>);
                    (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resurrected = true;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/intern/intern.go#L111"
            if (({
                final value = _v;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/internal/intern/intern.go#L112"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _v;
                };
            };
            _v = _k.value();
            //"file:///Users/o/.go/go1.21.3/src/internal/intern/intern.go#L115"
            if (stdgo._internal.internal.intern.Intern__valsafe._valSafe != null) {
                stdgo._internal.internal.intern.Intern__valsafe._valSafe[_k] = _v;
            } else {
                //"file:///Users/o/.go/go1.21.3/src/internal/intern/intern.go#L120"
                stdgo._internal.runtime.Runtime_setfinalizer.setFinalizer(new stdgo.AnyInterface(stdgo.Go.asInterface(_v, _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotinterndotintern_valuedotvalue.__type__stdgodot_internaldotinternaldotinterndotIntern_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotinterndotintern_valuedotvalue.__type__stdgodot_internaldotinternaldotinterndotIntern_valuedotValue }))), new stdgo.AnyInterface(stdgo._internal.internal.intern.Intern__finalize._finalize, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotinterndotintern_valuedotvalue.__type__stdgodot_internaldotinternaldotinterndotIntern_valuedotValue })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }))));
                stdgo._internal.internal.intern.Intern__valmap._valMap[_k] = (new stdgo.GoUIntptr((new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer)) : stdgo.GoUIntptr);
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/intern/intern.go#L123"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _v;
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
                return (null : stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>);
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
                return (null : stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>);
            };
        };
    }
