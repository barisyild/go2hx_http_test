package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
@:keep @:allow(stdgo._internal.regexp.Regexp.T_inputs_asInterface) class T_inputs_static_extension {
    @:keep
    @:tdfield
    static public function _init( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs>, _r:stdgo._internal.io.Io_runereader.RuneReader, _b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):{ var _0 : stdgo._internal.regexp.Regexp_t_input.T_input; var _1 : stdgo.GoInt; } {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs> = _i;
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L86"
        if (_r != null) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L87"
            return { _0 : _i._newReader(_r), _1 : (0 : stdgo.GoInt) };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L89"
        if (_b != null) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L90"
            return { _0 : _i._newBytes(_b), _1 : (_b.length) };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L92"
        return { _0 : _i._newString(_s?.__copy__()), _1 : (_s.length) };
    }
    @:keep
    @:tdfield
    static public function _clear( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs>):Void {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs> = _i;
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L76"
        if ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes._str != null) {
            (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes._str = (null : stdgo.Slice<stdgo.GoUInt8>);
        } else if ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reader._r != null) {
            (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reader._r = (null : stdgo._internal.io.Io_runereader.RuneReader);
        } else {
            (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._string._str = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
    }
    @:keep
    @:tdfield
    static public function _newReader( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs>, _r:stdgo._internal.io.Io_runereader.RuneReader):stdgo._internal.regexp.Regexp_t_input.T_input {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs> = _i;
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reader._r = _r;
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reader._atEOT = false;
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reader._pos = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L70"
        return stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reader, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_inputreaderdott_inputreader.__type__stdgodot_internaldotregexpdotRegexp_t_inputreaderdotT_inputReader })) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputreader.T_inputReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_inputreaderdott_inputreader.__type__stdgodot_internaldotregexpdotRegexp_t_inputreaderdotT_inputReader }));
    }
    @:keep
    @:tdfield
    static public function _newString( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs>, _s:stdgo.GoString):stdgo._internal.regexp.Regexp_t_input.T_input {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs> = _i;
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._string._str = _s?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L63"
        return stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._string, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_inputstringdott_inputstring.__type__stdgodot_internaldotregexpdotRegexp_t_inputstringdotT_inputString })) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputstring.T_inputString>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_inputstringdott_inputstring.__type__stdgodot_internaldotregexpdotRegexp_t_inputstringdotT_inputString }));
    }
    @:keep
    @:tdfield
    static public function _newBytes( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.regexp.Regexp_t_input.T_input {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs> = _i;
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes._str = _b;
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L58"
        return stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_inputbytesdott_inputbytes.__type__stdgodot_internaldotregexpdotRegexp_t_inputbytesdotT_inputBytes })) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_inputbytesdott_inputbytes.__type__stdgodot_internaldotregexpdotRegexp_t_inputbytesdotT_inputBytes }));
    }
}
