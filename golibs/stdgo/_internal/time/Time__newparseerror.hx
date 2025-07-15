package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _newParseError(_layout:stdgo.GoString, _value:stdgo.GoString, _layoutElem:stdgo.GoString, _valueElem:stdgo.GoString, _message:stdgo.GoString):stdgo.Ref<stdgo._internal.time.Time_parseerror.ParseError> {
        var _valueCopy = @:assignType (stdgo._internal.time.Time__clonestring._cloneString(_value?.__copy__())?.__copy__() : stdgo.GoString);
        var _valueElemCopy = @:assignType (stdgo._internal.time.Time__clonestring._cloneString(_valueElem?.__copy__())?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L832"
        return (stdgo.Go.setRef((new stdgo._internal.time.Time_parseerror.ParseError(_layout?.__copy__(), _valueCopy?.__copy__(), _layoutElem?.__copy__(), _valueElemCopy?.__copy__(), _message?.__copy__()) : stdgo._internal.time.Time_parseerror.ParseError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_parseerrordotparseerror.__type__stdgodot_internaldottimedotTime_parseerrordotParseError })) : stdgo.Ref<stdgo._internal.time.Time_parseerror.ParseError>);
    }
