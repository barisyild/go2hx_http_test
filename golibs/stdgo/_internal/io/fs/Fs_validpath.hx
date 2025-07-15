package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
function validPath(_name:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/io/fs/fs.go#L48"
        if (!stdgo._internal.unicode.utf8.Utf8_validstring.validString(_name?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/io/fs/fs.go#L49"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/fs.go#L52"
        if (_name == (("." : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/io/fs/fs.go#L54"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/fs.go#L58"
        while (true) {
            var _i = @:assignType (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/io/fs/fs.go#L60"
            while (((_i < (_name.length) : Bool) && (_name[(_i : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/fs.go#L61"
                _i++;
            };
            var _elem = @:assignType ((_name.__slice__(0, _i) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/io/fs/fs.go#L64"
            if (((_elem == ((stdgo.Go.str() : stdgo.GoString)) || _elem == (("." : stdgo.GoString)) : Bool) || (_elem == (".." : stdgo.GoString)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/fs.go#L65"
                return false;
            };
            //"file:///Users/o/.go/go1.21.3/src/io/fs/fs.go#L67"
            if (_i == ((_name.length))) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/fs.go#L68"
                return true;
            };
            _name = (_name.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
    }
