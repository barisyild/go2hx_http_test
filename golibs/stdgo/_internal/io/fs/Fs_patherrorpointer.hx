package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
@:keep @:follow @:using(stdgo._internal.io.fs.Fs_patherror_static_extension.PathError_static_extension) @:using(stdgo._internal.io.fs.Fs_patherrorpointer_static_extension.PathErrorPointer_static_extension) typedef PathErrorPointer = stdgo.Pointer<stdgo._internal.io.fs.Fs_patherror.PathError>;
