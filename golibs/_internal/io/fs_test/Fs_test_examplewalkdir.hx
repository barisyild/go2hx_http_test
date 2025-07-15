package _internal.io.fs_test;
function exampleWalkDir():Void {
        var _root = (("/usr/local/go/bin" : stdgo.GoString) : stdgo.GoString);
        var _fileSystem = (stdgo._internal.os.Os_dirfs.dirFS(_root?.__copy__()) : stdgo._internal.io.fs.Fs_fs.FS);
        //"file:///Users/o/.go/go1.21.3/src/io/fs/example_test.go#L18"
        stdgo._internal.io.fs.Fs_walkdir.walkDir(_fileSystem, ("." : stdgo.GoString), function(_path:stdgo.GoString, _d:stdgo._internal.io.fs.Fs_direntry.DirEntry, _err:stdgo.Error):stdgo.Error {
            //"file:///Users/o/.go/go1.21.3/src/io/fs/example_test.go#L19"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/example_test.go#L20"
                stdgo._internal.log.Log_fatal.fatal(({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
            //"file:///Users/o/.go/go1.21.3/src/io/fs/example_test.go#L22"
            stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(_path, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            //"file:///Users/o/.go/go1.21.3/src/io/fs/example_test.go#L23"
            return (null : stdgo.Error);
        });
    }
