package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _syntaxError(_fn:stdgo.GoString, _str:stdgo.GoString):stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError> {
        //"file:///Users/o/.go/go1.21.3/src/strconv/atoi.go#L53"
        return (stdgo.Go.setRef((new stdgo._internal.strconv.Strconv_numerror.NumError(_fn?.__copy__(), stdgo._internal.strconv.Strconv__clonestring._cloneString(_str?.__copy__())?.__copy__(), stdgo._internal.strconv.Strconv_errsyntax.errSyntax) : stdgo._internal.strconv.Strconv_numerror.NumError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_numerrordotnumerror.__type__stdgodot_internaldotstrconvdotStrconv_numerrordotNumError })) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>);
    }
