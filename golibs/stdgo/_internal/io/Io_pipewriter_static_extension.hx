package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:keep @:allow(stdgo._internal.io.Io.PipeWriter_asInterface) class PipeWriter_static_extension {
    @:keep
    @:tdfield
    static public function closeWithError( _w:stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter>, _err:stdgo.Error):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter> = _w;
        //"file:///Users/o/.go/go1.21.3/src/io/pipe.go#L181"
        return (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p._closeWrite(_err);
    }
    @:keep
    @:tdfield
    static public function close( _w:stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter> = _w;
        //"file:///Users/o/.go/go1.21.3/src/io/pipe.go#L171"
        return _w.closeWithError((null : stdgo.Error));
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/io/pipe.go#L165"
        return (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p._write(_data);
    }
}
