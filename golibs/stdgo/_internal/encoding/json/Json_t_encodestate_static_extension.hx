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
@:keep @:allow(stdgo._internal.encoding.json.Json.T_encodeState_asInterface) class T_encodeState_static_extension {
    @:keep
    @:tdfield
    static public function _reflectValue( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState> = _e;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L323"
        stdgo._internal.encoding.json.Json__valueencoder._valueEncoder(_v?.__copy__())(_e, _v?.__copy__(), _opts?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _error( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _err:stdgo.Error):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState> = _e;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L301"
        throw new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_t_jsonerror.T_jsonError(_err) : stdgo._internal.encoding.json.Json_t_jsonerror.T_jsonError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_jsonerrordott_jsonerror.__type__stdgodot_internaldotencodingdotjsondotJson_t_jsonerrordotT_jsonError), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_jsonerrordott_jsonerror.__type__stdgodot_internaldotencodingdotjsondotJson_t_jsonerrordotT_jsonError));
    }
    @:keep
    @:tdfield
    static public function _marshal( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo.AnyInterface, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState> = _e;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L287"
                        {
                            var _r = @:assignType ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (({
                                final value = _r;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L288"
                                {
                                    var __tmp__ = @:castTranslate try {
                                        { _0 : (stdgo.Go.typeAssert(_r, _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_jsonerrordott_jsonerror.__type__stdgodot_internaldotencodingdotjsondotJson_t_jsonerrordotT_jsonError) : stdgo._internal.encoding.json.Json_t_jsonerror.T_jsonError), _1 : true };
                                    } catch(__exception__) {
                                        { _0 : ({} : stdgo._internal.encoding.json.Json_t_jsonerror.T_jsonError), _1 : false };
                                    }, _je = __tmp__._0, _ok = __tmp__._1;
                                    if (_ok) {
                                        _err = _je._error;
                                    } else {
                                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L291"
                                        throw ({
                                            final __t__ = _r;
                                            if (__t__ == null) {
                                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.interfaceType(true, []))).__setNil__();
                                            } else {
                                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                            };
                                        });
                                    };
                                };
                            };
                        };
                    };
                    a();
                }) });
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L295"
            _e._reflectValue(stdgo._internal.reflect.Reflect_valueof.valueOf(_v)?.__copy__(), _opts?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L296"
            {
                final __ret__:stdgo.Error = _err = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
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
                return _err;
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
                return _err;
            };
        };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _tryGrowByReslice( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return @:_5 __self__._tryGrowByReslice(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _readSlice( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_5 __self__._readSlice(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _grow( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:stdgo.GoInt):stdgo.GoInt return @:_5 __self__._grow(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _empty( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState):Bool return @:_5 __self__._empty();
    @:embedded
    @:embeddededffieldsffun
    public static function writeTo( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_5 __self__.writeTo(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function writeString( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.writeString(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function writeRune( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.writeRune(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function writeByte( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:stdgo.GoUInt8):stdgo.Error return @:_5 __self__.writeByte(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function unreadRune( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState):stdgo.Error return @:_5 __self__.unreadRune();
    @:embedded
    @:embeddededffieldsffun
    public static function unreadByte( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState):stdgo.Error return @:_5 __self__.unreadByte();
    @:embedded
    @:embeddededffieldsffun
    public static function truncate( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:stdgo.GoInt):Void return @:_5 __self__.truncate(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function reset( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState):Void return @:_5 __self__.reset();
    @:embedded
    @:embeddededffieldsffun
    public static function readString( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_5 __self__.readString(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function readRune( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_5 __self__.readRune();
    @:embedded
    @:embeddededffieldsffun
    public static function readFrom( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_5 __self__.readFrom(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function readBytes( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_5 __self__.readBytes(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function readByte( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return @:_5 __self__.readByte();
    @:embedded
    @:embeddededffieldsffun
    public static function read( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.read(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function next( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.next(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function len( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState):stdgo.GoInt return @:_5 __self__.len();
    @:embedded
    @:embeddededffieldsffun
    public static function grow( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:stdgo.GoInt):Void return @:_5 __self__.grow(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function cap( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState):stdgo.GoInt return @:_5 __self__.cap();
    @:embedded
    @:embeddededffieldsffun
    public static function bytes( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.bytes();
    @:embedded
    @:embeddededffieldsffun
    public static function availableBuffer( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.availableBuffer();
    @:embedded
    @:embeddededffieldsffun
    public static function available( __self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState):stdgo.GoInt return @:_5 __self__.available();
}
