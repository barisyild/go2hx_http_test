package _internal.io.fs_test;
function testValidPath(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/io/fs/fs_test.go#L43"
        if (_internal.io.fs_test.Fs_test__isvalidpathtests._isValidPathTests != null) for (__0 => _tt in _internal.io.fs_test.Fs_test__isvalidpathtests._isValidPathTests) {
            var _ok = (stdgo._internal.io.fs.Fs_validpath.validPath(_tt._name?.__copy__()) : Bool);
            //"file:///Users/o/.go/go1.21.3/src/io/fs/fs_test.go#L45"
            if (_ok != (_tt._ok)) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/fs_test.go#L46"
                _t.errorf(("ValidPath(%q) = %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_tt._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_tt._ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
            };
        };
    }
