package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
function _iop(_i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>):stdgo._internal.regexp.syntax.Syntax_instop.InstOp {
        var _op = @:assignType ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op : stdgo._internal.regexp.syntax.Syntax_instop.InstOp);
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L88"
        {
            final __value__ = _op;
            if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                _op = (7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L92"
        return _op;
    }
