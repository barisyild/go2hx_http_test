package _internal.io.fs_test;
function _makeTree():stdgo._internal.io.fs.Fs_fs.FS {
        var _fsys = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>>) : stdgo._internal.testing.fstest.Fstest_mapfs.MapFS);
        //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L58"
        _internal.io.fs_test.Fs_test__walktree._walkTree(_internal.io.fs_test.Fs_test__tree._tree, (@:checkr _internal.io.fs_test.Fs_test__tree._tree ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name?.__copy__(), function(_path:stdgo.GoString, _n:stdgo.Ref<_internal.io.fs_test.Fs_test_node.Node>):Void {
            //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L59"
            if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._entries == null) {
                _fsys[_path] = (stdgo.Go.setRef((new stdgo._internal.testing.fstest.Fstest_mapfile.MapFile() : stdgo._internal.testing.fstest.Fstest_mapfile.MapFile), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_mapfiledotmapfile.__type__stdgodot_internaldottestingdotfstestdotFstest_mapfiledotMapFile })) : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>);
            } else {
                _fsys[_path] = (stdgo.Go.setRef(({ mode : (-2147483648u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) } : stdgo._internal.testing.fstest.Fstest_mapfile.MapFile), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_mapfiledotmapfile.__type__stdgodot_internaldottestingdotfstestdotFstest_mapfiledotMapFile })) : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>);
            };
        });
        //"file:///Users/o/.go/go1.21.3/src/io/fs/walk_test.go#L65"
        return stdgo.Go.asInterface(_fsys, _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_mapfsdotmapfs.__type__stdgodot_internaldottestingdotfstestdotFstest_mapfsdotMapFS);
    }
