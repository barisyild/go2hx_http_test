package _internal.io.fs_test;
function _contains(_vector:stdgo.Slice<stdgo.GoString>, _s:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L70"
        if (_vector != null) for (__0 => _elem in _vector) {
            //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L71"
            if (_elem == (_s)) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L72"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L75"
        return false;
    }
