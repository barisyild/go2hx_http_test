package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
@:keep @:allow(stdgo._internal.strconv.Strconv.NumError_asInterface) class NumError_static_extension {
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError> = _e;
        //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L34"
        return (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError> = _e;
        //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L31"
        return ((((((("strconv." : stdgo.GoString) + (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).func?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("parsing " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_quote.quote((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).num?.__copy__())?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err.error()?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
