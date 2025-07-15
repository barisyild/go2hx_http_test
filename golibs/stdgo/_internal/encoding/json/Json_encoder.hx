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
@:structInit @:using(stdgo._internal.encoding.json.Json_encoder_static_extension.Encoder_static_extension) @:using(stdgo._internal.encoding.json.Json_encoder_static_extension.Encoder_static_extension) class Encoder {
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _escapeHTML : Bool = false;
    public var _indentBuf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _indentPrefix : stdgo.GoString = "";
    public var _indentValue : stdgo.GoString = "";
    public function new(?_w:stdgo._internal.io.Io_writer.Writer, ?_err:stdgo.Error, ?_escapeHTML:Bool, ?_indentBuf:stdgo.Slice<stdgo.GoUInt8>, ?_indentPrefix:stdgo.GoString, ?_indentValue:stdgo.GoString) {
        if (_w != null) this._w = _w;
        if (_err != null) this._err = _err;
        if (_escapeHTML != null) this._escapeHTML = _escapeHTML;
        if (_indentBuf != null) this._indentBuf = _indentBuf;
        if (_indentPrefix != null) this._indentPrefix = _indentPrefix;
        if (_indentValue != null) this._indentValue = _indentValue;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_w", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }, optional : false }, { name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }, { name : "_escapeHTML", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_indentBuf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_indentPrefix", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_indentValue", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new Encoder(_w, _err, _escapeHTML, _indentBuf, _indentPrefix, _indentValue);
    }
}
