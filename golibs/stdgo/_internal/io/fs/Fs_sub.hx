package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
function sub(_fsys:stdgo._internal.io.fs.Fs_fs.FS, _dir:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_fs.FS; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/io/fs/sub.go#L35"
        if (!stdgo._internal.io.fs.Fs_validpath.validPath(_dir?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/io/fs/sub.go#L36"
            return { _0 : (null : stdgo._internal.io.fs.Fs_fs.FS), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("sub" : stdgo.GoString), path : _dir?.__copy__(), err : stdgo._internal.errors.Errors_new_.new_(("invalid name" : stdgo.GoString)) } : stdgo._internal.io.fs.Fs_patherror.PathError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_patherrordotpatherror.__type__stdgodot_internaldotiodotfsdotFs_patherrordotPathError })) : stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_patherrordotpatherror.__type__stdgodot_internaldotiodotfsdotFs_patherrordotPathError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/sub.go#L38"
        if (_dir == (("." : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/io/fs/sub.go#L39"
            return { _0 : _fsys, _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/sub.go#L41"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _fsys;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_fsdotfs.__type__stdgodot_internaldotiodotfsdotFs_fsdotFS)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_subfsdotsubfs.__type__stdgodot_internaldotiodotfsdotFs_subfsdotSubFS) : stdgo._internal.io.fs.Fs_subfs.SubFS), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.io.fs.Fs_subfs.SubFS), _1 : false };
            }, _fsys = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/sub.go#L42"
                return _fsys.sub(_dir?.__copy__());
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/sub.go#L44"
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io.fs.Fs_t_subfs.T_subFS(_fsys, _dir?.__copy__()) : stdgo._internal.io.fs.Fs_t_subfs.T_subFS), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_t_subfsdott_subfs.__type__stdgodot_internaldotiodotfsdotFs_t_subfsdotT_subFS })) : stdgo.Ref<stdgo._internal.io.fs.Fs_t_subfs.T_subFS>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_t_subfsdott_subfs.__type__stdgodot_internaldotiodotfsdotFs_t_subfsdotT_subFS })), _1 : (null : stdgo.Error) };
    }
