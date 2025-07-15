package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
function _onePassNext(_i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>, _r:stdgo.GoInt32):stdgo.GoUInt32 {
        var _next = @:assignType (_i.matchRunePos(_r) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L77"
        if ((_next >= (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L78"
            return (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).next[(_next : stdgo.GoInt)];
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L80"
        if ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst.op == ((1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L81"
            return (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst.out;
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L83"
        return (0u32 : stdgo.GoUInt32);
    }
