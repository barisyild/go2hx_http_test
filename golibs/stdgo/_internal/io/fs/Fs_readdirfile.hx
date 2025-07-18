package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
@:interface typedef ReadDirFile = stdgo.StructType & {
    /**
        * ReadDir reads the contents of the directory and returns
        * a slice of up to n DirEntry values in directory order.
        * Subsequent calls on the same file will yield further DirEntry values.
        * 
        * If n > 0, ReadDir returns at most n DirEntry structures.
        * In this case, if ReadDir returns an empty slice, it will return
        * a non-nil error explaining why.
        * At the end of a directory, the error is io.EOF.
        * (ReadDir must return io.EOF itself, not an error wrapping io.EOF.)
        * 
        * If n <= 0, ReadDir returns all the DirEntry values from the directory
        * in a single slice. In this case, if ReadDir succeeds (reads all the way
        * to the end of the directory), it returns the slice and a nil error.
        * If it encounters an error before the end of the directory,
        * ReadDir returns the DirEntry list read until that point and a non-nil error.
        
        
    **/
    @:interfacetypeffun
    public dynamic function readDir(_n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; };
    public dynamic function close():stdgo.Error;
    public dynamic function read(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    public dynamic function stat():{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; };
};
