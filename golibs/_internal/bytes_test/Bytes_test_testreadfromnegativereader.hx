package _internal.bytes_test;
function testReadFromNegativeReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L303"
                        {
                            final __type__ = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            });
                            if (__type__ == null) {
                                var _err:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : __type__.__underlying__();
                                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L305"
                                _t.fatal(new stdgo.AnyInterface(("bytes.Buffer.ReadFrom didn\'t panic" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                            } else if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)) {
                                var _err:stdgo.Error = __type__ == null ? (null : stdgo.Error) : __type__.__underlying__() == null ? (null : stdgo.Error) : __type__ == null ? (null : stdgo.Error) : __type__.__underlying__().value;
                                var _wantError = @:assignType (("bytes.Buffer: reader returned negative count from Read" : stdgo.GoString) : stdgo.GoString);
                                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L309"
                                if (_err.error() != (_wantError)) {
                                    //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L310"
                                    _t.fatalf(("recovered panic: got %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_err.error(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_wantError, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                                };
                            } else {
                                var _err:stdgo.AnyInterface = __type__?.__underlying__();
                                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L313"
                                _t.fatalf(("unexpected panic value: %#v" : stdgo.GoString), _err);
                            };
                        };
                    };
                    a();
                }) });
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L317"
            _b.readFrom(stdgo.Go.asInterface((stdgo.Go.setRef(({} : _internal.bytes_test.Bytes_test_t_negativereader.T_negativeReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotbytes_testdotbytes_test_t_negativereaderdott_negativereader.__type___internaldotbytes_testdotBytes_test_t_negativereaderdotT_negativeReader })) : stdgo.Ref<_internal.bytes_test.Bytes_test_t_negativereader.T_negativeReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotbytes_testdotbytes_test_t_negativereaderdott_negativereader.__type___internaldotbytes_testdotBytes_test_t_negativereaderdotT_negativeReader })));
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
