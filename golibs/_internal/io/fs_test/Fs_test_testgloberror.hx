package _internal.io.fs_test;
function testGlobError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _bad = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("[]" : stdgo.GoString), ("nonexist/[]" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L51"
        if (_bad != null) for (__0 => _pattern in _bad) {
            var __tmp__ = stdgo._internal.io.fs.Fs_glob.glob(stdgo._internal.os.Os_dirfs.dirFS(("." : stdgo.GoString)), _pattern?.__copy__()), __1:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L53"
            if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) != (({
                final __t__ = stdgo._internal.path.Path_errbadpattern.errBadPattern;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L54"
                _t.errorf(("Glob(fs, %#q) returned err=%v, want path.ErrBadPattern" : stdgo.GoString), new stdgo.AnyInterface(_pattern, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
    }
