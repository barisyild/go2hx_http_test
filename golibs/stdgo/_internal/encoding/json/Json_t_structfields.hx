package stdgo._internal.encoding.json;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_structfields_static_extension.T_structFields_static_extension) @:using(stdgo._internal.encoding.json.Json_t_structfields_static_extension.T_structFields_static_extension) class T_structFields {
    public var _list : stdgo.Slice<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Slice<stdgo._internal.encoding.json.Json_t_field.T_field>);
    public var _byExactName : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>>);
    public var _byFoldedName : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>>);
    public function new(?_list:stdgo.Slice<stdgo._internal.encoding.json.Json_t_field.T_field>, ?_byExactName:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>>, ?_byFoldedName:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>>) {
        if (_list != null) this._list = _list;
        if (_byExactName != null) this._byExactName = _byExactName;
        if (_byFoldedName != null) this._byFoldedName = _byFoldedName;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_list", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_fielddott_field.__type__stdgodot_internaldotencodingdotjsondotJson_t_fielddotT_field }) }, optional : false }, { name : "_byExactName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_fielddott_field.__type__stdgodot_internaldotencodingdotjsondotJson_t_fielddotT_field }) }) }, optional : false }, { name : "_byFoldedName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_fielddott_field.__type__stdgodot_internaldotencodingdotjsondotJson_t_fielddotT_field }) }) }, optional : false }])));
    public function __copy__() {
        return new T_structFields(_list, _byExactName, _byFoldedName);
    }
}
