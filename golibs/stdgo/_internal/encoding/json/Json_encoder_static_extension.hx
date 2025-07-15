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
@:keep @:allow(stdgo._internal.encoding.json.Json.Encoder_asInterface) class Encoder_static_extension {
    @:keep
    @:tdfield
    static public function setEscapeHTML( _enc:stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder>, _on:Bool):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder> = _enc;
        (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._escapeHTML = _on;
    }
    @:keep
    @:tdfield
    static public function setIndent( _enc:stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder>, _prefix:stdgo.GoString, _indent:stdgo.GoString):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder> = _enc;
        (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indentPrefix = _prefix?.__copy__();
        (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indentValue = _indent?.__copy__();
    }
    @:keep
    @:tdfield
    static public function encode( _enc:stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder>, _v:stdgo.AnyInterface):stdgo.Error {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder> = _enc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L202"
            if ((@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L203"
                return (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
            };
            var _e = stdgo._internal.encoding.json.Json__newencodestate._newEncodeState();
            {
                var _a0 = _e;
                final __f__ = stdgo._internal.encoding.json.Json__encodestatepool._encodeStatePool.put;
                __deferstack__.unshift({ ran : false, f : () -> __f__(new stdgo.AnyInterface(stdgo.Go.asInterface(_a0, _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_encodestatedott_encodestate.__type__stdgodot_internaldotencodingdotjsondotJson_t_encodestatedotT_encodeState), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_encodestatedott_encodestate.__type__stdgodot_internaldotencodingdotjsondotJson_t_encodestatedotT_encodeState })))) });
            };
            var _err = @:assignType (_e._marshal(_v, ({ _escapeHTML : (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._escapeHTML } : stdgo._internal.encoding.json.Json_t_encopts.T_encOpts)) : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L210"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L211"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L220"
            _e.writeByte((10 : stdgo.GoUInt8));
            var _b = _e.bytes();
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L223"
            if ((((@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indentPrefix != (stdgo.Go.str() : stdgo.GoString)) || ((@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indentValue != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.encoding.json.Json__appendindent._appendIndent(((@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indentBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _b, (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indentPrefix?.__copy__(), (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indentValue?.__copy__());
                    (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indentBuf = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L225"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L226"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
                _b = (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indentBuf;
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L230"
            {
                {
                    var __tmp__ = (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.write(_b);
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L233"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _err;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Error);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Error);
            };
        };
    }
}
