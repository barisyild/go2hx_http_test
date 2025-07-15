package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _bw(_b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _args:haxe.Rest<stdgo.GoString>):Void {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L291"
        if (_args != null) for (__1 => _s in _args) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L292"
            _b.writeString(_s?.__copy__());
        };
    }
