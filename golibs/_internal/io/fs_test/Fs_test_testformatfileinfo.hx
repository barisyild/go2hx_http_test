package _internal.io.fs_test;
function testFormatFileInfo(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/io/fs/format_test.go#L107"
        if (_internal.io.fs_test.Fs_test__formattests._formatTests != null) for (_i => _test in _internal.io.fs_test.Fs_test__formattests._formatTests) {
            var _got = (stdgo._internal.io.fs.Fs_formatfileinfo.formatFileInfo(stdgo.Go.asInterface((stdgo.Go.setRef(_test._input, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotiodotfs_testdotfs_test_t_formattestdott_formattest.__type___internaldotiodotfs_testdotFs_test_t_formattestdotT_formatTest })) : stdgo.Ref<_internal.io.fs_test.Fs_test_t_formattest.T_formatTest>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotiodotfs_testdotfs_test_t_formattestdott_formattest.__type___internaldotiodotfs_testdotFs_test_t_formattestdotT_formatTest })))?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/io/fs/format_test.go#L109"
            if (_got != (_test._wantFileInfo)) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/format_test.go#L110"
                _t.errorf(("%d: FormatFileInfo(%#v) = %q, want %q" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_test._input, _internal.gotype.Gotype___type___internaldotiodotfs_testdotfs_test_t_formattestdott_formattest.__type___internaldotiodotfs_testdotFs_test_t_formattestdotT_formatTest), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotiodotfs_testdotfs_test_t_formattestdott_formattest.__type___internaldotiodotfs_testdotFs_test_t_formattestdotT_formatTest)), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._wantFileInfo, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
