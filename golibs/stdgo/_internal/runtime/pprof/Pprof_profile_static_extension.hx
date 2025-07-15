package stdgo._internal.runtime.pprof;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.context.Context;
import stdgo._internal.sort.Sort;
import stdgo._internal.text.tabwriter.Tabwriter;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.internal.abi.Abi;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.Profile_asInterface) class Profile_static_extension {
    @:keep
    @:tdfield
    static public function writeTo( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>, _w:stdgo._internal.io.Io_writer.Writer, _debug:stdgo.GoInt):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile> = _p;
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L325"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L326"
            throw new stdgo.AnyInterface(("pprof: use of zero Profile" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L328"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._write != null) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L329"
            return (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._write(_w, _debug);
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L333"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        var _all = (new stdgo.Slice<stdgo.Slice<stdgo.GoUIntptr>>((0 : stdgo.GoInt).toBasic(), ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m.length)) : stdgo.Slice<stdgo.Slice<stdgo.GoUIntptr>>);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L335"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m != null) for (__0 => _stk in (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m) {
            _all = (_all.__append__(_stk) : stdgo.Slice<stdgo.Slice<stdgo.GoUIntptr>>);
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L338"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L341"
        stdgo._internal.sort.Sort_slice.slice(new stdgo.AnyInterface(_all, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }) }))), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            var __0 = _all[(_i : stdgo.GoInt)], __1 = _all[(_j : stdgo.GoInt)];
var _u = __1, _t = __0;
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L343"
            {
                var _k = @:assignType (0 : stdgo.GoInt);
                while (((_k < (_t.length) : Bool) && (_k < (_u.length) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L344"
                    if (_t[(_k : stdgo.GoInt)] != (_u[(_k : stdgo.GoInt)])) {
                        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L345"
                        return (_t[(_k : stdgo.GoInt)] < _u[(_k : stdgo.GoInt)] : Bool);
                    };
                    _k++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L348"
            return ((_t.length) < (_u.length) : Bool);
        });
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L351"
        return stdgo._internal.runtime.pprof.Pprof__printcountprofile._printCountProfile(_w, _debug, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name?.__copy__(), stdgo.Go.asInterface((_all : stdgo._internal.runtime.pprof.Pprof_t_stackprofile.T_stackProfile), _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotpprofdotpprof_t_stackprofiledott_stackprofile.__type__stdgodot_internaldotruntimedotpprofdotPprof_t_stackprofiledotT_stackProfile));
    }
    @:keep
    @:tdfield
    static public function remove( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>, _value:stdgo.AnyInterface):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L304"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L306"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m != null) (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m.__remove__(_value);
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
    @:keep
    @:tdfield
    static public function add( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>, _value:stdgo.AnyInterface, _skip:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L278"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L279"
                throw new stdgo.AnyInterface(("pprof: use of uninitialized Profile" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L281"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._write != null) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L282"
                throw new stdgo.AnyInterface((("pprof: Add called on built-in Profile " : stdgo.GoString) + (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name?.__copy__() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            var _stk = (new stdgo.Slice<stdgo.GoUIntptr>((32 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
            var _n = @:assignType (stdgo._internal.runtime.Runtime_callers.callers((_skip + (1 : stdgo.GoInt) : stdgo.GoInt), (_stk.__slice__(0) : stdgo.Slice<stdgo.GoUIntptr>)) : stdgo.GoInt);
            _stk = (_stk.__slice__(0, _n) : stdgo.Slice<stdgo.GoUIntptr>);
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L288"
            if ((_stk.length) == ((0 : stdgo.GoInt))) {
                _stk = (new stdgo.Slice<stdgo.GoUIntptr>(1, 1, ...[stdgo._internal.internal.abi.Abi_funcpcabiinternal.funcPCABIInternal(new stdgo.AnyInterface(stdgo._internal.runtime.pprof.Pprof__lostprofileevent._lostProfileEvent, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }))))]) : stdgo.Slice<stdgo.GoUIntptr>);
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L293"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L295"
            if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m[_value] ?? (null : stdgo.Slice<stdgo.GoUIntptr>)) != null) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L296"
                throw new stdgo.AnyInterface(("pprof: Profile.Add of duplicate value" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m[_value] = _stk;
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
    @:keep
    @:tdfield
    static public function count( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L252"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L254"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count != null) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L255"
                {
                    final __ret__:stdgo.GoInt = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count();
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L257"
            {
                final __ret__:stdgo.GoInt = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m.length);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
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
                return (0 : stdgo.GoInt);
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
                return (0 : stdgo.GoInt);
            };
        };
    }
    @:keep
    @:tdfield
    static public function name( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile> = _p;
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L247"
        return (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name?.__copy__();
    }
}
