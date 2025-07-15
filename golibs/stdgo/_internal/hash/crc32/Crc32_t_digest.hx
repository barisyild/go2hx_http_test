package stdgo._internal.hash.crc32;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.hash.crc32.Crc32_t_digest_static_extension.T_digest_static_extension) @:using(stdgo._internal.hash.crc32.Crc32_t_digest_static_extension.T_digest_static_extension) class T_digest {
    public var _crc : stdgo.GoUInt32 = 0;
    public var _tab : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table> = (null : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>);
    public function new(?_crc:stdgo.GoUInt32, ?_tab:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>) {
        if (_crc != null) this._crc = _crc;
        if (_tab != null) this._tab = _tab;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_crc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "_tab", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldothashdotcrc32dotcrc32_tabledottable.__type__stdgodot_internaldothashdotcrc32dotCrc32_tabledotTable }) }, optional : false }])));
    public function __copy__() {
        return new T_digest(_crc, _tab);
    }
}
