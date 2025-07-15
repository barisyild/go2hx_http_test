package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
@:structInit @:using(stdgo._internal.regexp.Regexp_t_inputreader_static_extension.T_inputReader_static_extension) @:using(stdgo._internal.regexp.Regexp_t_inputreader_static_extension.T_inputReader_static_extension) class T_inputReader {
    public var _r : stdgo._internal.io.Io_runereader.RuneReader = (null : stdgo._internal.io.Io_runereader.RuneReader);
    public var _atEOT : Bool = false;
    public var _pos : stdgo.GoInt = 0;
    public function new(?_r:stdgo._internal.io.Io_runereader.RuneReader, ?_atEOT:Bool, ?_pos:stdgo.GoInt) {
        if (_r != null) this._r = _r;
        if (_atEOT != null) this._atEOT = _atEOT;
        if (_pos != null) this._pos = _pos;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_r", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_runereaderdotrunereader.__type__stdgodot_internaldotiodotIo_runereaderdotRuneReader }, optional : false }, { name : "_atEOT", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_pos", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_inputReader(_r, _atEOT, _pos);
    }
}
