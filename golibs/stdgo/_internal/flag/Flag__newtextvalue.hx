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
function _newTextValue(_val:stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler, _p:stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler):stdgo._internal.flag.Flag_t_textvalue.T_textValue {
        var _ptrVal = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(({
            final __t__ = _p;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotencodingdotencoding_textunmarshalerdottextunmarshaler.__type__stdgodot_internaldotencodingdotEncoding_textunmarshalerdotTextUnmarshaler)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L303"
        if (_ptrVal.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L304"
            throw new stdgo.AnyInterface(("variable value type must be a pointer" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _defVal = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(({
            final __t__ = _val;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotencodingdotencoding_textmarshalerdottextmarshaler.__type__stdgodot_internaldotencodingdotEncoding_textmarshalerdotTextMarshaler)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L307"
        if (_defVal.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            _defVal = _defVal.elem()?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L310"
        if (!((_defVal.type().string() : String) == (_ptrVal.type().elem().string() : String))) {
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L311"
            throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("default type does not match variable type: %v != %v" : stdgo.GoString), ({
                final __t__ = _defVal.type();
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), ({
                final __t__ = _ptrVal.type().elem();
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L313"
        _ptrVal.elem().set(_defVal?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L314"
        return (new stdgo._internal.flag.Flag_t_textvalue.T_textValue(_p) : stdgo._internal.flag.Flag_t_textvalue.T_textValue);
    }
