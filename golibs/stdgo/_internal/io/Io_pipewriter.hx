package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.io.Io_pipewriter_static_extension.PipeWriter_static_extension) @:using(stdgo._internal.io.Io_pipewriter_static_extension.PipeWriter_static_extension) class PipeWriter {
    public var _p : stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe> = (null : stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>);
    public function new(?_p:stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_p", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_t_pipedott_pipe.__type__stdgodot_internaldotiodotIo_t_pipedotT_pipe }) }, optional : false }])));
    public function __copy__() {
        return new PipeWriter(_p);
    }
}
