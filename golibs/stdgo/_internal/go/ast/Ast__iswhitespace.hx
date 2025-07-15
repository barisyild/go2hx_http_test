package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _isWhitespace(_ch:stdgo.GoUInt8):Bool {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L81"
        return (((_ch == ((32 : stdgo.GoUInt8)) || _ch == ((9 : stdgo.GoUInt8)) : Bool) || _ch == ((10 : stdgo.GoUInt8)) : Bool) || (_ch == (13 : stdgo.GoUInt8)) : Bool);
    }
