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
@:structInit @:using(stdgo._internal.encoding.json.Json_decoder_static_extension.Decoder_static_extension) @:using(stdgo._internal.encoding.json.Json_decoder_static_extension.Decoder_static_extension) class Decoder {
    public var _r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _d : stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState = ({} : stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState);
    public var _scanp : stdgo.GoInt = 0;
    public var _scanned : stdgo.GoInt64 = 0;
    public var _scan : stdgo._internal.encoding.json.Json_t_scanner.T_scanner = ({} : stdgo._internal.encoding.json.Json_t_scanner.T_scanner);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _tokenState : stdgo.GoInt = 0;
    public var _tokenStack : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_r:stdgo._internal.io.Io_reader.Reader, ?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_d:stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState, ?_scanp:stdgo.GoInt, ?_scanned:stdgo.GoInt64, ?_scan:stdgo._internal.encoding.json.Json_t_scanner.T_scanner, ?_err:stdgo.Error, ?_tokenState:stdgo.GoInt, ?_tokenStack:stdgo.Slice<stdgo.GoInt>) {
        if (_r != null) this._r = _r;
        if (_buf != null) this._buf = _buf;
        if (_d != null) this._d = _d;
        if (_scanp != null) this._scanp = _scanp;
        if (_scanned != null) this._scanned = _scanned;
        if (_scan != null) this._scan = _scan;
        if (_err != null) this._err = _err;
        if (_tokenState != null) this._tokenState = _tokenState;
        if (_tokenStack != null) this._tokenStack = _tokenStack;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_r", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader }, optional : false }, { name : "_buf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_d", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_decodestatedott_decodestate.__type__stdgodot_internaldotencodingdotjsondotJson_t_decodestatedotT_decodeState }, optional : false }, { name : "_scanp", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_scanned", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_scan", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_scannerdott_scanner.__type__stdgodot_internaldotencodingdotjsondotJson_t_scannerdotT_scanner }, optional : false }, { name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }, { name : "_tokenState", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_tokenStack", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }])));
    public function __copy__() {
        return new Decoder(_r, _buf, _d, _scanp, _scanned, _scan, _err, _tokenState, _tokenStack);
    }
}
