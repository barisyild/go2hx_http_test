package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
function _hasMeta(_path:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/io/fs/glob.go#L122"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_path.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/glob.go#L123"
                {
                    final __value__ = _path[(_i : stdgo.GoInt)];
                    if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((91 : stdgo.GoUInt8)) || __value__ == ((92 : stdgo.GoUInt8))) {
                        //"file:///Users/o/.go/go1.21.3/src/io/fs/glob.go#L125"
                        return true;
                    };
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/glob.go#L128"
        return false;
    }
