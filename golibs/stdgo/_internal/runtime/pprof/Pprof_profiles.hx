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
function profiles():stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>> {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L233"
            stdgo._internal.runtime.pprof.Pprof__lockprofiles._lockProfiles();
            {
                final __f__ = stdgo._internal.runtime.pprof.Pprof__unlockprofiles._unlockProfiles;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _all = (new stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>>((0 : stdgo.GoInt).toBasic(), (stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m.length)) : stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>>);
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L237"
            if (stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m != null) for (__0 => _p in stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m) {
                _all = (_all.__append__(_p) : stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>>);
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L241"
            stdgo._internal.sort.Sort_slice.slice(new stdgo.AnyInterface(_all, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotpprofdotpprof_profiledotprofile.__type__stdgodot_internaldotruntimedotpprofdotPprof_profiledotProfile }) }))), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L241"
                return ((@:checkr _all[(_i : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name < (@:checkr _all[(_j : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name : Bool);
            });
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L242"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _all;
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
                return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>>);
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
                return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>>);
            };
        };
    }
