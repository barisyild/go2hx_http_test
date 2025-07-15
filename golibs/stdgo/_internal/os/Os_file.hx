package stdgo._internal.os;
@:structInit @:using(stdgo._internal.os.Os_file_static_extension.File_static_extension) @:using(stdgo._internal.os.Os_file_static_extension.File_static_extension) class File {
    @:embedded
    public var _file : stdgo.Ref<stdgo._internal.os.Os_t_file.T_file> = (null : stdgo.Ref<stdgo._internal.os.Os_t_file.T_file>);
    @:local
    var _input : haxe.io.Input = null;
    @:local
    var _output : haxe.io.Output = null;
    @:local
    var mutex = #if target.threaded new sys.thread.Mutex() #else { acquire : () -> {}, release : () -> {} } #end;
    public function new(?_file:stdgo.Ref<stdgo._internal.os.Os_t_file.T_file>, ?_input:haxe.io.Input, ?_output:haxe.io.Output, ?mutex) {
        if (_file != null) this._file = _file;
        if (_input != null) this._input = _input;
        if (_output != null) this._output = _output;
        if (mutex != null) this.mutex = mutex;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_file", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_t_filedott_file.__type__stdgodot_internaldotosdotOs_t_filedotT_file }) }, optional : false }])));
    public var _close(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__close():() -> stdgo.Error return @:check32 this._file._close;
    public function __copy__() {
        return new File(_file, _input, _output, mutex);
    }
}
