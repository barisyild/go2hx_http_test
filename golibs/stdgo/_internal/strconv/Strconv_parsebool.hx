package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function parseBool(_str:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/strconv/atob.go#L11"
        {
            final __value__ = _str;
            if (__value__ == (("1" : stdgo.GoString)) || __value__ == (("t" : stdgo.GoString)) || __value__ == (("T" : stdgo.GoString)) || __value__ == (("true" : stdgo.GoString)) || __value__ == (("TRUE" : stdgo.GoString)) || __value__ == (("True" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/strconv/atob.go#L13"
                return { _0 : true, _1 : (null : stdgo.Error) };
            } else if (__value__ == (("0" : stdgo.GoString)) || __value__ == (("f" : stdgo.GoString)) || __value__ == (("F" : stdgo.GoString)) || __value__ == (("false" : stdgo.GoString)) || __value__ == (("FALSE" : stdgo.GoString)) || __value__ == (("False" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/strconv/atob.go#L15"
                return { _0 : false, _1 : (null : stdgo.Error) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/atob.go#L17"
        return { _0 : false, _1 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__syntaxerror._syntaxError(("ParseBool" : stdgo.GoString), _str?.__copy__()), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_numerrordotnumerror.__type__stdgodot_internaldotstrconvdotStrconv_numerrordotNumError })) };
    }
