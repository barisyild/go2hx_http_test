package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _isDirective(_c:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L167"
        if (((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_c?.__copy__(), ("line " : stdgo.GoString)) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_c?.__copy__(), ("extern " : stdgo.GoString)) : Bool) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_c?.__copy__(), ("export " : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L168"
            return true;
        };
        var _colon = @:assignType (stdgo._internal.strings.Strings_index.index(_c?.__copy__(), (":" : stdgo.GoString)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L174"
        if (((_colon <= (0 : stdgo.GoInt) : Bool) || ((_colon + (1 : stdgo.GoInt) : stdgo.GoInt) >= (_c.length) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L175"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L177"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i <= (_colon + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L178"
                if (_i == (_colon)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L179"
                    {
                        _i++;
                        continue;
                    };
                };
var _b = @:assignType (_c[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L182"
                if (!(((((97 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (122 : stdgo.GoUInt8) : Bool) : Bool) || (((48 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L183"
                    return false;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L186"
        return true;
    }
