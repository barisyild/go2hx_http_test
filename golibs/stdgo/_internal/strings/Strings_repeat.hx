package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function repeat(_s:stdgo.GoString, _count:stdgo.GoInt):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L543"
        {
            final __value__ = _count;
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L545"
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L547"
                return _s?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L553"
        if ((_count < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L554"
            throw new stdgo.AnyInterface(("strings: negative Repeat count" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L556"
        if (((_s.length) >= ((2147483647 : stdgo.GoInt) / _count : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L557"
            throw new stdgo.AnyInterface(("strings: Repeat output length overflow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _n = @:assignType ((_s.length) * _count : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L561"
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L562"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        {};
        var _chunkMax = @:assignType (_n : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L577"
        if ((_n > (8192 : stdgo.GoInt) : Bool)) {
            _chunkMax = (((8192 : stdgo.GoInt) / (_s.length) : stdgo.GoInt) * (_s.length) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L579"
            if (_chunkMax == ((0 : stdgo.GoInt))) {
                _chunkMax = (_s.length);
            };
        };
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L585"
        _b.grow(_n);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L586"
        _b.writeString(_s?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L587"
        while ((_b.len() < _n : Bool)) {
            var _chunk = @:assignType (_n - _b.len() : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L589"
            if ((_chunk > _b.len() : Bool)) {
                _chunk = _b.len();
            };
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L592"
            if ((_chunk > _chunkMax : Bool)) {
                _chunk = _chunkMax;
            };
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L595"
            _b.writeString(((_b.string() : stdgo.GoString).__slice__(0, _chunk) : stdgo.GoString)?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L597"
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
