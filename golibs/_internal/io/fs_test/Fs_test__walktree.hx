package _internal.io.fs_test;
function _walkTree(_n:stdgo.Ref<_internal.io.fs_test.Fs_test_node.Node>, _path:stdgo.GoString, _f:(stdgo.GoString, stdgo.Ref<_internal.io.fs_test.Fs_test_node.Node>) -> Void):Void {
        //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L50"
        _f(_path?.__copy__(), _n);
        //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L51"
        if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._entries != null) for (__0 => _e in (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._entries) {
            //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L52"
            _internal.io.fs_test.Fs_test__walktree._walkTree(_e, stdgo._internal.path.Path_join.join(_path?.__copy__(), (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name?.__copy__())?.__copy__(), _f);
        };
    }
