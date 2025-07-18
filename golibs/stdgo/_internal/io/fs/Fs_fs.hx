package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
@:interface typedef FS = stdgo.StructType & {
    /**
        * Open opens the named file.
        * 
        * When Open returns an error, it should be of type *PathError
        * with the Op field set to "open", the Path field set to name,
        * and the Err field describing the problem.
        * 
        * Open should reject attempts to open names that do not satisfy
        * ValidPath(name), returning a *PathError with Err set to
        * ErrInvalid or ErrNotExist.
        
        
    **/
    @:interfacetypeffun
    public dynamic function open(_name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; };
};
