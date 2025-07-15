package _internal.io.fs_test;
function _mark(_entry:stdgo._internal.io.fs.Fs_direntry.DirEntry, _err:stdgo.Error, _errors:stdgo.Ref<stdgo.Slice<stdgo.Error>>, _clear:Bool):stdgo.Error {
        var _name = (_entry.name()?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L73"
        _internal.io.fs_test.Fs_test__walktree._walkTree(_internal.io.fs_test.Fs_test__tree._tree, (@:checkr _internal.io.fs_test.Fs_test__tree._tree ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name?.__copy__(), function(_path:stdgo.GoString, _n:stdgo.Ref<_internal.io.fs_test.Fs_test_node.Node>):Void {
            //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L74"
            if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name == (_name)) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L75"
                (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mark++;
            };
        });
        //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L78"
        if (_err != null) {
            @:_1 (_errors : stdgo.Slice<stdgo.Error>).__setData__(((_errors : stdgo.Slice<stdgo.Error>).__append__(_err) : stdgo.Slice<stdgo.Error>));
            //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L80"
            if (_clear) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L81"
                return (null : stdgo.Error);
            };
            //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L83"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L85"
        return (null : stdgo.Error);
    }
