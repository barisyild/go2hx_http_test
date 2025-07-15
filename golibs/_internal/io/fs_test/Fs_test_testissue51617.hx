package _internal.io.fs_test;
function testIssue51617(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _dir = (_t.tempDir()?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L124"
            if ((new stdgo.Slice<stdgo.GoString>(3, 3, ...[("a" : stdgo.GoString), stdgo._internal.path.filepath.Filepath_join.join(("a" : stdgo.GoString), ("bad" : stdgo.GoString))?.__copy__(), stdgo._internal.path.filepath.Filepath_join.join(("a" : stdgo.GoString), ("next" : stdgo.GoString))?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) != null) for (__0 => _sub in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("a" : stdgo.GoString), stdgo._internal.path.filepath.Filepath_join.join(("a" : stdgo.GoString), ("bad" : stdgo.GoString))?.__copy__(), stdgo._internal.path.filepath.Filepath_join.join(("a" : stdgo.GoString), ("next" : stdgo.GoString))?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L125"
                {
                    var _err = (stdgo._internal.os.Os_mkdir.mkdir(stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), _sub?.__copy__())?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L126"
                        _t.fatal(({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }));
                    };
                };
            };
            var _bad = (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("a" : stdgo.GoString), ("bad" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L130"
            {
                var _err = (stdgo._internal.os.Os_chmod.chmod(_bad?.__copy__(), (0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L131"
                    _t.fatal(({
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
                var _a0 = _bad;
                var _a1 = (448u32 : stdgo._internal.io.fs.Fs_filemode.FileMode);
                final __f__ = stdgo._internal.os.Os_chmod.chmod;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0?.__copy__(), _a1) });
            };
            var _saw:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _err = (stdgo._internal.io.fs.Fs_walkdir.walkDir(stdgo._internal.os.Os_dirfs.dirFS(_dir?.__copy__()), ("." : stdgo.GoString), function(_path:stdgo.GoString, _d:stdgo._internal.io.fs.Fs_direntry.DirEntry, _err:stdgo.Error):stdgo.Error {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L136"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L137"
                    return stdgo._internal.path.filepath.Filepath_skipdir.skipDir;
                };
                //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L139"
                if (_d.isDir()) {
                    _saw = (_saw.__append__(_path?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                };
                //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L142"
                return (null : stdgo.Error);
            }) : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L144"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L145"
                _t.fatal(({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
            var _want = (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("." : stdgo.GoString), ("a" : stdgo.GoString), ("a/bad" : stdgo.GoString), ("a/next" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L148"
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(new stdgo.AnyInterface(_saw, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))))) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L149"
                _t.errorf(("got directories %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_saw, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))));
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
