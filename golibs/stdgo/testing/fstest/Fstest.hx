package stdgo.testing.fstest;
typedef MapFile = stdgo._internal.testing.fstest.Fstest_mapfile.MapFile;
typedef MapFS = stdgo._internal.testing.fstest.Fstest_mapfs.MapFS;
typedef MapFilePointer = stdgo._internal.testing.fstest.Fstest_mapfilepointer.MapFilePointer;
typedef MapFSPointer = stdgo._internal.testing.fstest.Fstest_mapfspointer.MapFSPointer;
typedef MapFilePointerPointer = stdgo._internal.testing.fstest.Fstest_mapfilepointerpointer.MapFilePointerPointer;
typedef MapFSPointerPointer = stdgo._internal.testing.fstest.Fstest_mapfspointerpointer.MapFSPointerPointer;
/**
    * Package fstest implements support for testing implementations and users of file systems.
**/
class Fstest {
    /**
        * TestFS tests a file system implementation.
        * It walks the entire tree of files in fsys,
        * opening and checking that each file behaves correctly.
        * It also checks that the file system contains at least the expected files.
        * As a special case, if no expected files are listed, fsys must be empty.
        * Otherwise, fsys must contain at least the listed files; it can also contain others.
        * The contents of fsys must not change concurrently with TestFS.
        * 
        * If TestFS finds any misbehaviors, it returns an error reporting all of them.
        * The error text spans multiple lines, one per detected misbehavior.
        * 
        * Typical usage inside a test is:
        * 
        * 	if err := fstest.TestFS(myFS, "file/that/should/be/present"); err != nil {
        * 		t.Fatal(err)
        * 	}
    **/
    static public inline function testFS(_fsys:stdgo._internal.io.fs.Fs_fs.FS, _expected:haxe.Rest<stdgo.GoString>):stdgo.Error return stdgo._internal.testing.fstest.Fstest_testfs.testFS(_fsys, ...[for (i in _expected) i]);
}
