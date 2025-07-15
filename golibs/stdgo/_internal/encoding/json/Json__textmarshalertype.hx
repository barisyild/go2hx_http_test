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
var _textMarshalerType : stdgo._internal.reflect.Reflect_type_.Type_ = stdgo._internal.reflect.Reflect_typeof.typeOf(({
        final __t__ = (null : stdgo.Ref<stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler>);
        if (__t__ == null) {
            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotencoding_textmarshalerdottextmarshaler.__type__stdgodot_internaldotencodingdotEncoding_textmarshalerdotTextMarshaler }))).__setNil__();
        } else {
            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
        };
    })).elem();
