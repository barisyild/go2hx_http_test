package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
@:structInit @:using(_internal.golangdotorg.x.net.idna.Idna_t_sparseblocks_static_extension.T_sparseBlocks_static_extension) @:using(_internal.golangdotorg.x.net.idna.Idna_t_sparseblocks_static_extension.T_sparseBlocks_static_extension) class T_sparseBlocks {
    public var _values : stdgo.Slice<_internal.golangdotorg.x.net.idna.Idna_t_valuerange.T_valueRange> = (null : stdgo.Slice<_internal.golangdotorg.x.net.idna.Idna_t_valuerange.T_valueRange>);
    public var _offset : stdgo.Slice<stdgo.GoUInt16> = (null : stdgo.Slice<stdgo.GoUInt16>);
    public function new(?_values:stdgo.Slice<_internal.golangdotorg.x.net.idna.Idna_t_valuerange.T_valueRange>, ?_offset:stdgo.Slice<stdgo.GoUInt16>) {
        if (_values != null) this._values = _values;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_values", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_valuerangedott_valuerange.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_valuerangedotT_valueRange }) }, optional : false }, { name : "_offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_sparseBlocks(_values, _offset);
    }
}
