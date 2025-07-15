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
@:keep @:allow(stdgo._internal.encoding.json.Json.T_ptrEncoder_asInterface) class T_ptrEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _pe:stdgo._internal.encoding.json.Json_t_ptrencoder.T_ptrEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _pe:stdgo._internal.encoding.json.Json_t_ptrencoder.T_ptrEncoder = _pe?.__copy__();
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L864"
            if (_v.isNil()) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L865"
                _e.writeString(("null" : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L866"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L868"
            {
                (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ptrLevel++;
                if (((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ptrLevel > (1000u32 : stdgo.GoUInt) : Bool)) {
                    var _ptr = @:assignType (_v.interface_() : stdgo.AnyInterface);
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L872"
                    {
                        var __tmp__ = ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ptrSeen != null && (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ptrSeen.__exists__(_ptr) ? { _0 : (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ptrSeen[_ptr], _1 : true } : { _0 : ({  } : stdgo._internal.encoding.json.Json_t__struct_25.T__struct_25), _1 : false }), __2:stdgo._internal.encoding.json.Json_t__struct_25.T__struct_25 = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L873"
                            _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError(_v?.__copy__(), stdgo._internal.fmt.Fmt_sprintf.sprintf(("encountered a cycle via %s" : stdgo.GoString), ({
                                final __t__ = _v.type();
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }))?.__copy__()) : stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unsupportedvalueerrordotunsupportedvalueerror.__type__stdgodot_internaldotencodingdotjsondotJson_unsupportedvalueerrordotUnsupportedValueError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unsupportedvalueerrordotunsupportedvalueerror.__type__stdgodot_internaldotencodingdotjsondotJson_unsupportedvalueerrordotUnsupportedValueError })));
                        };
                    };
                    (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ptrSeen[_ptr] = ({  } : stdgo._internal.encoding.json.Json_t__struct_25.T__struct_25);
                    {
                        var _a0 = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ptrSeen;
                        var _a1 = _ptr;
                        __deferstack__.unshift({ ran : false, f : () -> if (_a0 != null) _a0.__remove__(_a1) });
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L878"
            _pe._elemEnc(_e, _v.elem()?.__copy__(), _opts?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L879"
            (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ptrLevel--;
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
                return;
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
                return;
            };
        };
    }
}
