package _internal.bytes_test;
function testReadFromPanicReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
            var __tmp__ = _buf.readFrom(stdgo.Go.asInterface((new _internal.bytes_test.Bytes_test_t_panicreader.T_panicReader() : _internal.bytes_test.Bytes_test_t_panicreader.T_panicReader), _internal.gotype.Gotype___type___internaldotbytes_testdotbytes_test_t_panicreaderdott_panicreader.__type___internaldotbytes_testdotBytes_test_t_panicreaderdotT_panicReader)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L283"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L284"
                _t.fatal(({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L286"
            if (_i != ((0i64 : stdgo.GoInt64))) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L287"
                _t.fatalf(("unexpected return from bytes.ReadFrom (1): got: %d, want %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface((0 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L289"
            _internal.bytes_test.Bytes_test__check._check(_t, ("TestReadFromPanicReader (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
            var _buf2:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L294"
                        ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L295"
                        _internal.bytes_test.Bytes_test__check._check(_t, ("TestReadFromPanicReader (2)" : stdgo.GoString), (stdgo.Go.setRef(_buf2, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                    };
                    a();
                }) });
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L297"
            _buf2.readFrom(stdgo.Go.asInterface(({ _panic : true } : _internal.bytes_test.Bytes_test_t_panicreader.T_panicReader), _internal.gotype.Gotype___type___internaldotbytes_testdotbytes_test_t_panicreaderdott_panicreader.__type___internaldotbytes_testdotBytes_test_t_panicreaderdotT_panicReader));
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
