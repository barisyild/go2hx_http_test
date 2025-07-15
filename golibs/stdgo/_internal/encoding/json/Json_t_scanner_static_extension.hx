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
@:keep @:allow(stdgo._internal.encoding.json.Json.T_scanner_asInterface) class T_scanner_static_extension {
    @:keep
    @:tdfield
    static public function _error( _s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8, _context:stdgo.GoString):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner> = _s;
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = stdgo._internal.encoding.json.Json__stateerror._stateError;
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError((((("invalid character " : stdgo.GoString) + stdgo._internal.encoding.json.Json__quotechar._quoteChar(_c)?.__copy__() : stdgo.GoString) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _context?.__copy__() : stdgo.GoString)?.__copy__(), (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes) : stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_syntaxerrordotsyntaxerror.__type__stdgodot_internaldotencodingdotjsondotJson_syntaxerrordotSyntaxError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_syntaxerrordotsyntaxerror.__type__stdgodot_internaldotencodingdotjsondotJson_syntaxerrordotSyntaxError }));
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L594"
        return (11 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _popParseState( _s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner> = _s;
        var _n = @:assignType (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parseState.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parseState = ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parseState.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L191"
        if (_n == ((0 : stdgo.GoInt))) {
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = stdgo._internal.encoding.json.Json__stateendtop._stateEndTop;
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._endTop = true;
        } else {
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = stdgo._internal.encoding.json.Json__stateendvalue._stateEndValue;
        };
    }
    @:keep
    @:tdfield
    static public function _pushParseState( _s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8, _newParseState:stdgo.GoInt, _successState:stdgo.GoInt):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner> = _s;
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parseState = ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parseState.__append__(_newParseState) : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L180"
        if ((((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parseState.length) <= (10000 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L181"
            return _successState;
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L183"
        return _s._error(_c, ("exceeded max depth" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _eof( _s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner> = _s;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L160"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L161"
            return (11 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L163"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._endTop) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L164"
            return (10 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L166"
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step(_s, (32 : stdgo.GoUInt8));
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L167"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._endTop) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L168"
            return (10 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L170"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err == null) {
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError(("unexpected end of JSON input" : stdgo.GoString), (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes) : stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_syntaxerrordotsyntaxerror.__type__stdgodot_internaldotencodingdotjsondotJson_syntaxerrordotSyntaxError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_syntaxerrordotsyntaxerror.__type__stdgodot_internaldotencodingdotjsondotJson_syntaxerrordotSyntaxError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L173"
        return (11 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _reset( _s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner> = _s;
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = stdgo._internal.encoding.json.Json__statebeginvalue._stateBeginValue;
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parseState = ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parseState.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = (null : stdgo.Error);
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._endTop = false;
    }
}
