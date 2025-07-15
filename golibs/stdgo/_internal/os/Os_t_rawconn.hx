package stdgo._internal.os;
@:structInit @:using(stdgo._internal.os.Os_t_rawconn_static_extension.T_rawConn_static_extension) @:using(stdgo._internal.os.Os_t_rawconn_static_extension.T_rawConn_static_extension) class T_rawConn {
    public var _file : stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
    public function new(?_file:stdgo.Ref<stdgo._internal.os.Os_file.File>) {
        if (_file != null) this._file = _file;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_file", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_filedotfile.__type__stdgodot_internaldotosdotOs_filedotFile }) }, optional : false }])));
    public function __copy__() {
        return new T_rawConn(_file);
    }
}
