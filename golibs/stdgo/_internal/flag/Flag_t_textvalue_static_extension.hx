package stdgo._internal.flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
@:keep @:allow(stdgo._internal.flag.Flag.T_textValue_asInterface) class T_textValue_static_extension {
    @:keep
    @:tdfield
    static public function string( _v:stdgo._internal.flag.Flag_t_textvalue.T_textValue):stdgo.GoString {
        @:recv var _v:stdgo._internal.flag.Flag_t_textvalue.T_textValue = _v?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L326"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _v._p;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotencodingdotencoding_textunmarshalerdottextunmarshaler.__type__stdgodot_internaldotencodingdotEncoding_textunmarshalerdotTextUnmarshaler)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotencoding_textmarshalerdottextmarshaler.__type__stdgodot_internaldotencodingdotEncoding_textmarshalerdotTextMarshaler) : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler), _1 : false };
            }, _m = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L327"
                {
                    var __tmp__ = _m.marshalText(), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L328"
                        return (_b : stdgo.GoString)?.__copy__();
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L331"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function get( _v:stdgo._internal.flag.Flag_t_textvalue.T_textValue):stdgo.AnyInterface {
        @:recv var _v:stdgo._internal.flag.Flag_t_textvalue.T_textValue = _v?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L322"
        return ({
            final __t__ = _v._p;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotencodingdotencoding_textunmarshalerdottextunmarshaler.__type__stdgodot_internaldotencodingdotEncoding_textunmarshalerdotTextUnmarshaler)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        });
    }
    @:keep
    @:tdfield
    static public function set( _v:stdgo._internal.flag.Flag_t_textvalue.T_textValue, _s:stdgo.GoString):stdgo.Error {
        @:recv var _v:stdgo._internal.flag.Flag_t_textvalue.T_textValue = _v?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L318"
        return _v._p.unmarshalText((_s : stdgo.Slice<stdgo.GoUInt8>));
    }
}
