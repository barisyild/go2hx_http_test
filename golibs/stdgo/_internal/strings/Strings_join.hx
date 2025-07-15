package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function join(_elems:stdgo.Slice<stdgo.GoString>, _sep:stdgo.GoString):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L435"
        {
            final __value__ = (_elems.length);
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L437"
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L439"
                return _elems[(0 : stdgo.GoInt)]?.__copy__();
            };
        };
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L443"
        if (((_sep.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L444"
            if (((_sep.length) >= ((2147483647 : stdgo.GoInt) / (((_elems.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L445"
                throw new stdgo.AnyInterface(("strings: Join output length overflow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            _n = (_n + (((_sep.length) * (((_elems.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L449"
        if (_elems != null) for (__0 => _elem in _elems) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L450"
            if (((_elem.length) > ((2147483647 : stdgo.GoInt) - _n : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L451"
                throw new stdgo.AnyInterface(("strings: Join output length overflow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            _n = (_n + ((_elem.length)) : stdgo.GoInt);
        };
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L457"
        _b.grow(_n);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L458"
        _b.writeString(_elems[(0 : stdgo.GoInt)]?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L459"
        if ((_elems.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>) != null) for (__1 => _s in (_elems.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L460"
            _b.writeString(_sep?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L461"
            _b.writeString(_s?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L463"
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
