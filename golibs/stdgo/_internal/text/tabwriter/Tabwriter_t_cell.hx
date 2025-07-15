package stdgo._internal.text.tabwriter;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
@:structInit @:using(stdgo._internal.text.tabwriter.Tabwriter_t_cell_static_extension.T_cell_static_extension) @:using(stdgo._internal.text.tabwriter.Tabwriter_t_cell_static_extension.T_cell_static_extension) class T_cell {
    public var _size : stdgo.GoInt = 0;
    public var _width : stdgo.GoInt = 0;
    public var _htab : Bool = false;
    public function new(?_size:stdgo.GoInt, ?_width:stdgo.GoInt, ?_htab:Bool) {
        if (_size != null) this._size = _size;
        if (_width != null) this._width = _width;
        if (_htab != null) this._htab = _htab;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_size", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_width", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_htab", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_cell(_size, _width, _htab);
    }
}
