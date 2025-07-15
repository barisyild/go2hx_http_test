package stdgo._internal.internal.fuzz;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.Math;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.go.parser.Parser;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.time.Time;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.json.Json;
function _writeToCorpus(_entry:stdgo.Ref<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>, _dir:stdgo.GoString):stdgo.Error {
        var _err = (null : stdgo.Error);
        var _sum = @:assignType ((stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), new stdgo.AnyInterface(stdgo._internal.crypto.sha256.Sha256_sum256.sum256(_entry.data), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 32)))).__slice__(0, (16 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _entry.path = stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), _sum?.__copy__())?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1050"
        {
            var _err = @:assignType (stdgo._internal.os.Os_mkdirall.mkdirAll(_dir?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1051"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1053"
        {
            var _err = @:assignType (stdgo._internal.os.Os_writefile.writeFile(_entry.path?.__copy__(), _entry.data, (438u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1054"
                stdgo._internal.os.Os_remove.remove(_entry.path?.__copy__());
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1055"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1057"
        return _err = (null : stdgo.Error);
    }
