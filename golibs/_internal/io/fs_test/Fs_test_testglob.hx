package _internal.io.fs_test;
function testGlob(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L27"
        if (_internal.io.fs_test.Fs_test__globtests._globTests != null) for (__0 => _tt in _internal.io.fs_test.Fs_test__globtests._globTests) {
            var __tmp__ = stdgo._internal.io.fs.Fs_glob.glob(_tt._fs, _tt._pattern?.__copy__()), _matches:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L29"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L30"
                _t.errorf(("Glob error for %q: %s" : stdgo.GoString), new stdgo.AnyInterface(_tt._pattern, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
                //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L31"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L33"
            if (!_internal.io.fs_test.Fs_test__contains._contains(_matches, _tt._result?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L34"
                _t.errorf(("Glob(%#q) = %#v want %v" : stdgo.GoString), new stdgo.AnyInterface(_tt._pattern, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_matches, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))), new stdgo.AnyInterface(_tt._result, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L37"
        if ((new stdgo.Slice<stdgo.GoString>(3, 3, ...[("no_match" : stdgo.GoString), ("../*/no_match" : stdgo.GoString), ("\\*" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) != null) for (__1 => _pattern in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("no_match" : stdgo.GoString), ("../*/no_match" : stdgo.GoString), ("\\*" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var __tmp__ = stdgo._internal.io.fs.Fs_glob.glob(stdgo._internal.os.Os_dirfs.dirFS(("." : stdgo.GoString)), _pattern?.__copy__()), _matches:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L39"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L40"
                _t.errorf(("Glob error for %q: %s" : stdgo.GoString), new stdgo.AnyInterface(_pattern, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
                //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L41"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L43"
            if ((_matches.length) != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L44"
                _t.errorf(("Glob(%#q) = %#v want []" : stdgo.GoString), new stdgo.AnyInterface(_pattern, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_matches, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))));
            };
        };
    }
