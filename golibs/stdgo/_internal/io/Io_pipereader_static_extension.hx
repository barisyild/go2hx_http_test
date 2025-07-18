package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:keep @:allow(stdgo._internal.io.Io.PipeReader_asInterface) class PipeReader_static_extension {
    @:keep
    @:tdfield
    static public function closeWithError( _r:stdgo.Ref<stdgo._internal.io.Io_pipereader.PipeReader>, _err:stdgo.Error):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.io.Io_pipereader.PipeReader> = _r;
        //"file:///Users/o/.go/go1.21.3/src/io/pipe.go#L151"
        return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p._closeRead(_err);
    }
    @:keep
    @:tdfield
    static public function close( _r:stdgo.Ref<stdgo._internal.io.Io_pipereader.PipeReader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.io.Io_pipereader.PipeReader> = _r;
        //"file:///Users/o/.go/go1.21.3/src/io/pipe.go#L142"
        return _r.closeWithError((null : stdgo.Error));
    }
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.io.Io_pipereader.PipeReader>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.io.Io_pipereader.PipeReader> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/io/pipe.go#L136"
        return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p._read(_data);
    }
}
