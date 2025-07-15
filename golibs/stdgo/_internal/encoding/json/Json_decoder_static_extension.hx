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
@:keep @:allow(stdgo._internal.encoding.json.Json.Decoder_asInterface) class Decoder_static_extension {
    @:keep
    @:tdfield
    static public function inputOffset( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):stdgo.GoInt64 {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L510"
        return ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanned + ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp : stdgo.GoInt64) : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function _peek( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L489"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L490"
            {
                var _i = @:assignType ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp : stdgo.GoInt);
                while ((_i < ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.length) : Bool)) {
                    var _c = @:assignType ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L492"
                    if (stdgo._internal.encoding.json.Json__isspace._isSpace(_c)) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L493"
                        {
                            _i++;
                            continue;
                        };
                    };
(@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp = _i;
//"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L496"
                    return { _0 : _c, _1 : (null : stdgo.Error) };
                    _i++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L499"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L500"
                return { _0 : (0 : stdgo.GoUInt8), _1 : _err };
            };
            _err = _dec._refill();
        };
    }
    @:keep
    @:tdfield
    static public function more( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):Bool {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        var __tmp__ = _dec._peek(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L484"
        return ((_err == null && _c != ((93 : stdgo.GoUInt8)) : Bool) && (_c != (125 : stdgo.GoUInt8)) : Bool);
    }
    @:keep
    @:tdfield
    static public function _tokenError( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>, _c:stdgo.GoUInt8):{ var _0 : stdgo._internal.encoding.json.Json_token.Token; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        var _context:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L463"
        {
            final __value__ = (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _context = (" looking for beginning of value" : stdgo.GoString);
            } else if (__value__ == ((1 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt)) || __value__ == ((7 : stdgo.GoInt))) {
                _context = (" looking for beginning of value" : stdgo.GoString);
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                _context = (" after array element" : stdgo.GoString);
            } else if (__value__ == ((5 : stdgo.GoInt))) {
                _context = (" looking for beginning of object key string" : stdgo.GoString);
            } else if (__value__ == ((6 : stdgo.GoInt))) {
                _context = (" after object key" : stdgo.GoString);
            } else if (__value__ == ((8 : stdgo.GoInt))) {
                _context = (" after object key:value pair" : stdgo.GoString);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L477"
        return { _0 : (null : stdgo._internal.encoding.json.Json_token.Token), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError(((("invalid character " : stdgo.GoString) + stdgo._internal.encoding.json.Json__quotechar._quoteChar(_c)?.__copy__() : stdgo.GoString) + _context?.__copy__() : stdgo.GoString)?.__copy__(), _dec.inputOffset()) : stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_syntaxerrordotsyntaxerror.__type__stdgodot_internaldotencodingdotjsondotJson_syntaxerrordotSyntaxError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_syntaxerrordotsyntaxerror.__type__stdgodot_internaldotencodingdotjsondotJson_syntaxerrordotSyntaxError })) };
    }
    @:keep
    @:tdfield
    static public function token( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):{ var _0 : stdgo._internal.encoding.json.Json_token.Token; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L368"
        while (true) {
            var __tmp__ = _dec._peek(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L370"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L371"
                return { _0 : (null : stdgo._internal.encoding.json.Json_token.Token), _1 : _err };
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L373"
            {
                var __continue__ = false;
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _c;
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (91 : stdgo.GoUInt8)))) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L375"
                            if (!_dec._tokenValueAllowed()) {
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L376"
                                return _dec._tokenError(_c);
                            };
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L378"
                            (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp++;
                            (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenStack = ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenStack.__append__((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState) : stdgo.Slice<stdgo.GoInt>);
                            (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState = (1 : stdgo.GoInt);
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L381"
                            return { _0 : new stdgo.AnyInterface(stdgo.Go.asInterface((91 : stdgo._internal.encoding.json.Json_delim.Delim), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_delimdotdelim.__type__stdgodot_internaldotencodingdotjsondotJson_delimdotDelim), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_delimdotdelim.__type__stdgodot_internaldotencodingdotjsondotJson_delimdotDelim)), _1 : (null : stdgo.Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (93 : stdgo.GoUInt8)))) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L384"
                            if ((((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState != (1 : stdgo.GoInt)) && ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState != (3 : stdgo.GoInt)) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L385"
                                return _dec._tokenError(_c);
                            };
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L387"
                            (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp++;
                            (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState = (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenStack[(((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                            (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenStack = ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenStack.__slice__(0, (((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L390"
                            _dec._tokenValueEnd();
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L391"
                            return { _0 : new stdgo.AnyInterface(stdgo.Go.asInterface((93 : stdgo._internal.encoding.json.Json_delim.Delim), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_delimdotdelim.__type__stdgodot_internaldotencodingdotjsondotJson_delimdotDelim), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_delimdotdelim.__type__stdgodot_internaldotencodingdotjsondotJson_delimdotDelim)), _1 : (null : stdgo.Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (123 : stdgo.GoUInt8)))) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L394"
                            if (!_dec._tokenValueAllowed()) {
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L395"
                                return _dec._tokenError(_c);
                            };
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L397"
                            (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp++;
                            (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenStack = ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenStack.__append__((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState) : stdgo.Slice<stdgo.GoInt>);
                            (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState = (4 : stdgo.GoInt);
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L400"
                            return { _0 : new stdgo.AnyInterface(stdgo.Go.asInterface((123 : stdgo._internal.encoding.json.Json_delim.Delim), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_delimdotdelim.__type__stdgodot_internaldotencodingdotjsondotJson_delimdotDelim), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_delimdotdelim.__type__stdgodot_internaldotencodingdotjsondotJson_delimdotDelim)), _1 : (null : stdgo.Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == (125 : stdgo.GoUInt8)))) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L403"
                            if ((((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState != (4 : stdgo.GoInt)) && ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState != (8 : stdgo.GoInt)) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L404"
                                return _dec._tokenError(_c);
                            };
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L406"
                            (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp++;
                            (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState = (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenStack[(((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                            (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenStack = ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenStack.__slice__(0, (((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L409"
                            _dec._tokenValueEnd();
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L410"
                            return { _0 : new stdgo.AnyInterface(stdgo.Go.asInterface((125 : stdgo._internal.encoding.json.Json_delim.Delim), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_delimdotdelim.__type__stdgodot_internaldotencodingdotjsondotJson_delimdotDelim), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_delimdotdelim.__type__stdgodot_internaldotencodingdotjsondotJson_delimdotDelim)), _1 : (null : stdgo.Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (__value__ == (58 : stdgo.GoUInt8)))) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L413"
                            if ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState != ((6 : stdgo.GoInt))) {
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L414"
                                return _dec._tokenError(_c);
                            };
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L416"
                            (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp++;
                            (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState = (7 : stdgo.GoInt);
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L418"
                            {
                                __continue__ = true;
                                break;
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 5 || (__switchIndex__ == -1 && (__value__ == (44 : stdgo.GoUInt8)))) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L421"
                            if ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState == ((3 : stdgo.GoInt))) {
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L422"
                                (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp++;
                                (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState = (2 : stdgo.GoInt);
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L424"
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L426"
                            if ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState == ((8 : stdgo.GoInt))) {
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L427"
                                (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp++;
                                (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState = (5 : stdgo.GoInt);
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L429"
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L431"
                            return _dec._tokenError(_c);
                            break;
                            break;
                        } else if (__switchIndex__ == 6 || (__switchIndex__ == -1 && (__value__ == (34 : stdgo.GoUInt8)))) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L434"
                            if ((((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState == (4 : stdgo.GoInt)) || ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState == (5 : stdgo.GoInt)) : Bool)) {
                                var _x:stdgo.GoString = ("" : stdgo.GoString), _x__pointer__ = stdgo.Go.pointer(_x);
                                var _old = @:assignType ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState : stdgo.GoInt);
                                (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState = (0 : stdgo.GoInt);
                                var _err = @:assignType (_dec.decode(new stdgo.AnyInterface(_x__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })))) : stdgo.Error);
                                (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState = _old;
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L440"
                                if (_err != null) {
                                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L441"
                                    return { _0 : (null : stdgo._internal.encoding.json.Json_token.Token), _1 : _err };
                                };
                                (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState = (6 : stdgo.GoInt);
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L444"
                                return { _0 : new stdgo.AnyInterface(_x, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), _1 : (null : stdgo.Error) };
                            };
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L446"
                            @:fallthrough {
                                __switchIndex__ = 7;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L449"
                            if (!_dec._tokenValueAllowed()) {
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L450"
                                return _dec._tokenError(_c);
                            };
                            var _x:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L453"
                            {
                                var _err = @:assignType (_dec.decode(new stdgo.AnyInterface(stdgo.Go.pointer(_x), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) })))) : stdgo.Error);
                                if (_err != null) {
                                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L454"
                                    return { _0 : (null : stdgo._internal.encoding.json.Json_token.Token), _1 : _err };
                                };
                            };
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L456"
                            return { _0 : ({
                                final __t__ = _x;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.interfaceType(true, []))).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }), _1 : (null : stdgo.Error) };
                            break;
                        };
                    };
                    break;
                };
                if (__continue__) continue;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _tokenValueEnd( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L341"
        {
            final __value__ = (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState;
            if (__value__ == ((1 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt))) {
                (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState = (3 : stdgo.GoInt);
            } else if (__value__ == ((7 : stdgo.GoInt))) {
                (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState = (8 : stdgo.GoInt);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _tokenValueAllowed( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):Bool {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L333"
        {
            final __value__ = (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState;
            if (__value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt)) || __value__ == ((7 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L335"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L337"
        return false;
    }
    @:keep
    @:tdfield
    static public function _tokenPrepareForDecode( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):stdgo.Error {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L307"
        {
            final __value__ = (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState;
            if (__value__ == ((3 : stdgo.GoInt))) {
                var __tmp__ = _dec._peek(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L310"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L311"
                    return _err;
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L313"
                if (_c != ((44 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L314"
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError(("expected comma after array element" : stdgo.GoString), _dec.inputOffset()) : stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_syntaxerrordotsyntaxerror.__type__stdgodot_internaldotencodingdotjsondotJson_syntaxerrordotSyntaxError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_syntaxerrordotsyntaxerror.__type__stdgodot_internaldotencodingdotjsondotJson_syntaxerrordotSyntaxError }));
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L316"
                (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp++;
                (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState = (2 : stdgo.GoInt);
            } else if (__value__ == ((6 : stdgo.GoInt))) {
                var __tmp__ = _dec._peek(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L320"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L321"
                    return _err;
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L323"
                if (_c != ((58 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L324"
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError(("expected colon after object key" : stdgo.GoString), _dec.inputOffset()) : stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_syntaxerrordotsyntaxerror.__type__stdgodot_internaldotencodingdotjsondotJson_syntaxerrordotSyntaxError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_syntaxerrordotsyntaxerror.__type__stdgodot_internaldotencodingdotjsondotJson_syntaxerrordotSyntaxError }));
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L326"
                (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp++;
                (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokenState = (7 : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L329"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _refill( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):stdgo.Error {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L149"
        if (((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanned = ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanned + (((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp : stdgo.GoInt64)) : stdgo.GoInt64);
            var _n = @:assignType ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__copyTo__(((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp = (0 : stdgo.GoInt);
        };
        {};
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L158"
        if ((((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.capacity - ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.length) : stdgo.GoInt) < (512 : stdgo.GoInt) : Bool)) {
            var _newBuf = (new stdgo.Slice<stdgo.GoUInt8>(((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.length : stdgo.GoInt).toBasic(), (((2 : stdgo.GoInt) * (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.capacity : stdgo.GoInt) + (512 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L160"
            _newBuf.__copyTo__((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf);
            (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = _newBuf;
        };
        var __tmp__ = (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.read(((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.length), (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.capacity) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__((0 : stdgo.GoInt), (((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.length) + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L168"
        return _err;
    }
    @:keep
    @:tdfield
    static public function _readValue( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        var _n_194:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_193:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var inputBreak = false;
        var _err_192:stdgo.Error = (null : stdgo.Error);
        var _scanp_191:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L90"
                    (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scan._reset();
                    _scanp_191 = (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp;
                    _gotoNext = 4650579i64;
                } else if (__value__ == (4650579i64)) {
                    0i64;
                    inputBreak = false;
                    _gotoNext = 4650690i64;
                } else if (__value__ == (4650690i64)) {
                    //"file://#L0"
                    if (!inputBreak && ((_scanp_191 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4650705i64;
                    } else {
                        _gotoNext = 4651800i64;
                    };
                } else if (__value__ == (4650705i64)) {
                    0i64;
                    _gotoNext = 4650751i64;
                } else if (__value__ == (4650751i64)) {
                    //"file://#L0"
                    if ((_scanp_191 < ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.length) : Bool)) {
                        _gotoNext = 4650787i64;
                    } else {
                        _gotoNext = 4651507i64;
                    };
                } else if (__value__ == (4650779i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L100"
                    _scanp_191++;
                    _gotoNext = 4650751i64;
                } else if (__value__ == (4650787i64)) {
                    _c_193 = (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(_scanp_191 : stdgo.GoInt)];
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L102"
                    (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scan._bytes++;
                    _gotoNext = 4650835i64;
                } else if (__value__ == (4650835i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L103"
                    {
                        final __value__ = (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scan._step((stdgo.Go.setRef((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scan, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_scannerdott_scanner.__type__stdgodot_internaldotencodingdotjsondotJson_t_scannerdotT_scanner })) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>), _c_193);
                        if (__value__ == ((10 : stdgo.GoInt))) {
                            _gotoNext = 4650875i64;
                        } else if (__value__ == ((5 : stdgo.GoInt)) || __value__ == ((8 : stdgo.GoInt))) {
                            _gotoNext = 4651088i64;
                        } else if (__value__ == ((11 : stdgo.GoInt))) {
                            _gotoNext = 4651342i64;
                        } else {
                            _gotoNext = 4650779i64;
                        };
                    };
                } else if (__value__ == (4650875i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L108"
                    (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scan._bytes--;
                    inputBreak = true;
                    _gotoNext = 4650690i64;
                } else if (__value__ == (4651088i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L114"
                    if (stdgo._internal.encoding.json.Json__stateendvalue._stateEndValue((stdgo.Go.setRef((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scan, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_scannerdott_scanner.__type__stdgodot_internaldotencodingdotjsondotJson_t_scannerdotT_scanner })) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>), (32 : stdgo.GoUInt8)) == ((10 : stdgo.GoInt))) {
                        _gotoNext = 4651301i64;
                    } else {
                        _gotoNext = 4650779i64;
                    };
                } else if (__value__ == (4651301i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L115"
                    _scanp_191++;
                    inputBreak = true;
                    _gotoNext = 4650690i64;
                } else if (__value__ == (4651342i64)) {
                    (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scan._err;
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L120"
                    return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scan._err };
                    _gotoNext = 4650779i64;
                } else if (__value__ == (4651507i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L126"
                    if (_err_192 != null) {
                        _gotoNext = 4651521i64;
                    } else {
                        _gotoNext = 4651728i64;
                    };
                } else if (__value__ == (4651521i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L127"
                    if (({
                        final __t__ = _err_192;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }) == (({
                        final __t__ = stdgo._internal.io.Io_eof.eOF;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }))) {
                        _gotoNext = 4651543i64;
                    } else {
                        _gotoNext = 4651690i64;
                    };
                } else if (__value__ == (4651543i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L128"
                    if ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scan._step((stdgo.Go.setRef((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scan, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_scannerdott_scanner.__type__stdgodot_internaldotencodingdotjsondotJson_t_scannerdotT_scanner })) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>), (32 : stdgo.GoUInt8)) == ((10 : stdgo.GoInt))) {
                        _gotoNext = 4651593i64;
                    } else {
                        _gotoNext = 4651622i64;
                    };
                } else if (__value__ == (4651593i64)) {
                    inputBreak = true;
                    _gotoNext = 4650690i64;
                } else if (__value__ == (4651622i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L131"
                    if (stdgo._internal.encoding.json.Json__nonspace._nonSpace((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf)) {
                        _gotoNext = 4651643i64;
                    } else {
                        _gotoNext = 4651690i64;
                    };
                } else if (__value__ == (4651643i64)) {
                    _err_192 = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                    _gotoNext = 4651690i64;
                } else if (__value__ == (4651690i64)) {
                    (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _err_192;
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L136"
                    return { _0 : (0 : stdgo.GoInt), _1 : _err_192 };
                    _gotoNext = 4651728i64;
                } else if (__value__ == (4651728i64)) {
                    _n_194 = (_scanp_191 - (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp : stdgo.GoInt);
                    _err_192 = _dec._refill();
                    _scanp_191 = ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp + _n_194 : stdgo.GoInt);
                    _gotoNext = 4650690i64;
                } else if (__value__ == (4651800i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L143"
                    return { _0 : (_scanp_191 - (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp : stdgo.GoInt), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
    @:keep
    @:tdfield
    static public function buffered( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):stdgo._internal.io.Io_reader.Reader {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L84"
        return stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp) : stdgo.Slice<stdgo.GoUInt8>)), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_readerdotreader.__type__stdgodot_internaldotbytesdotBytes_readerdotReader }));
    }
    @:keep
    @:tdfield
    static public function decode( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>, _v:stdgo.AnyInterface):stdgo.Error {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L50"
        if ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L51"
            return (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L54"
        {
            var _err = @:assignType (_dec._tokenPrepareForDecode() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L55"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L58"
        if (!_dec._tokenValueAllowed()) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L59"
            return stdgo.Go.asInterface((stdgo.Go.setRef(({ _msg : ("not at beginning of value" : stdgo.GoString), offset : _dec.inputOffset() } : stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_syntaxerrordotsyntaxerror.__type__stdgodot_internaldotencodingdotjsondotJson_syntaxerrordotSyntaxError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_syntaxerrordotsyntaxerror.__type__stdgodot_internaldotencodingdotjsondotJson_syntaxerrordotSyntaxError }));
        };
        var __tmp__ = _dec._readValue(), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L64"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L65"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L67"
        (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d._init(((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp, ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp = ((@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanp + (_n) : stdgo.GoInt);
        _err = (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d._unmarshal(_v);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L76"
        _dec._tokenValueEnd();
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L78"
        return _err;
    }
    @:keep
    @:tdfield
    static public function disallowUnknownFields( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d._disallowUnknownFields = true;
    }
    @:keep
    @:tdfield
    static public function useNumber( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        (@:checkr _dec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d._useNumber = true;
    }
}
