package _internal.io.fs_test;
function testWalkDir(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _tmpDir = (_t.tempDir()?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _origDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L92"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L93"
                _t.fatal(new stdgo.AnyInterface(("finding working dir:" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
            //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L95"
            {
                _err = stdgo._internal.os.Os_chdir.chdir(_tmpDir?.__copy__());
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L96"
                    _t.fatal(new stdgo.AnyInterface(("entering temp dir:" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
            };
            {
                var _a0 = _origDir;
                final __f__ = stdgo._internal.os.Os_chdir.chdir;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0?.__copy__()) });
            };
            var _fsys = (_internal.io.fs_test.Fs_test__maketree._makeTree() : stdgo._internal.io.fs.Fs_fs.FS);
            var _errors = (new stdgo.Slice<stdgo.Error>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Error>);
            var _clear = (true : Bool);
            var _markFn = (function(_path:stdgo.GoString, _entry:stdgo._internal.io.fs.Fs_direntry.DirEntry, _err:stdgo.Error):stdgo.Error {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L104"
                return _internal.io.fs_test.Fs_test__mark._mark(_entry, _err, (stdgo.Go.setRef(_errors, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }) })) : stdgo.Ref<stdgo.Slice<stdgo.Error>>), _clear);
            } : (stdgo.GoString, stdgo._internal.io.fs.Fs_direntry.DirEntry, stdgo.Error) -> stdgo.Error);
            _err = stdgo._internal.io.fs.Fs_walkdir.walkDir(_fsys, ("." : stdgo.GoString), _markFn);
            //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L108"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L109"
                _t.fatalf(("no error expected, found: %s" : stdgo.GoString), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
            //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L111"
            if ((_errors.length) != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L112"
                _t.fatalf(("unexpected errors: %s" : stdgo.GoString), new stdgo.AnyInterface(_errors, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }))));
            };
            //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L114"
            _internal.io.fs_test.Fs_test__walktree._walkTree(_internal.io.fs_test.Fs_test__tree._tree, (@:checkr _internal.io.fs_test.Fs_test__tree._tree ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name?.__copy__(), function(_path:stdgo.GoString, _n:stdgo.Ref<_internal.io.fs_test.Fs_test_node.Node>):Void {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L115"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mark != ((1 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L116"
                    _t.errorf(("node %s mark = %d; expected 1" : stdgo.GoString), new stdgo.AnyInterface(_path, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mark, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
                (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mark = (0 : stdgo.GoInt);
            });
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
