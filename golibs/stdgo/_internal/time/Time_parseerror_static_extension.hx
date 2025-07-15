package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.time.Time.ParseError_asInterface) class ParseError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.time.Time_parseerror.ParseError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.time.Time_parseerror.ParseError> = _e;
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L887"
        if ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).message == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L888"
            return (((((((("parsing time " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value?.__copy__())?.__copy__() : stdgo.GoString) + (" as " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.time.Time__quote._quote((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).layout?.__copy__())?.__copy__() : stdgo.GoString) + (": cannot parse " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.time.Time__quote._quote((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).valueElem?.__copy__())?.__copy__() : stdgo.GoString) + (" as " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.time.Time__quote._quote((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).layoutElem?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L894"
        return ((("parsing time " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value?.__copy__())?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).message?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
