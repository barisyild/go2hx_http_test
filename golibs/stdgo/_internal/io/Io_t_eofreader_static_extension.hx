package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:keep @:allow(stdgo._internal.io.Io.T_eofReader_asInterface) class T_eofReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _:stdgo._internal.io.Io_t_eofreader.T_eofReader, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.io.Io_t_eofreader.T_eofReader = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/io/multi.go#L10"
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
    }
}
