package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
@:structInit @:using(stdgo._internal.regexp.Regexp_t_inputs_static_extension.T_inputs_static_extension) @:using(stdgo._internal.regexp.Regexp_t_inputs_static_extension.T_inputs_static_extension) class T_inputs {
    public var _bytes : stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes = ({} : stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes);
    public var _string : stdgo._internal.regexp.Regexp_t_inputstring.T_inputString = ({} : stdgo._internal.regexp.Regexp_t_inputstring.T_inputString);
    public var _reader : stdgo._internal.regexp.Regexp_t_inputreader.T_inputReader = ({} : stdgo._internal.regexp.Regexp_t_inputreader.T_inputReader);
    public function new(?_bytes:stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes, ?_string:stdgo._internal.regexp.Regexp_t_inputstring.T_inputString, ?_reader:stdgo._internal.regexp.Regexp_t_inputreader.T_inputReader) {
        if (_bytes != null) this._bytes = _bytes;
        if (_string != null) this._string = _string;
        if (_reader != null) this._reader = _reader;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_bytes", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_inputbytesdott_inputbytes.__type__stdgodot_internaldotregexpdotRegexp_t_inputbytesdotT_inputBytes }, optional : false }, { name : "_string", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_inputstringdott_inputstring.__type__stdgodot_internaldotregexpdotRegexp_t_inputstringdotT_inputString }, optional : false }, { name : "_reader", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_inputreaderdott_inputreader.__type__stdgodot_internaldotregexpdotRegexp_t_inputreaderdotT_inputReader }, optional : false }])));
    public function __copy__() {
        return new T_inputs(_bytes, _string, _reader);
    }
}
