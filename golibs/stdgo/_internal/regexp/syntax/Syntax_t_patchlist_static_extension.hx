package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.T_patchList_asInterface) class T_patchList_static_extension {
    @:keep
    @:tdfield
    static public function _append( _l1:stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList, _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>, _l2:stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList):stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList {
        @:recv var _l1:stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList = _l1?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/compile.go#L42"
        if (_l1._head == ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/compile.go#L43"
            return _l2?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/compile.go#L45"
        if (_l2._head == ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/compile.go#L46"
            return _l1?.__copy__();
        };
        var _i = (stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[((_l1._tail >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_instdotinst.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_instdotInst })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/compile.go#L50"
        if ((_l1._tail & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out = _l2._head;
        } else {
            (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg = _l2._head;
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/compile.go#L55"
        return (new stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList(_l1._head, _l2._tail) : stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList);
    }
    @:keep
    @:tdfield
    static public function _patch( _l:stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList, _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>, _val:stdgo.GoUInt32):Void {
        @:recv var _l:stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList = _l?.__copy__();
        var _head = @:assignType (_l._head : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/compile.go#L29"
        while (_head != ((0u32 : stdgo.GoUInt32))) {
            var _i = (stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[((_head >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_instdotinst.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_instdotInst })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/compile.go#L31"
            if ((_head & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
                _head = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out;
                (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out = _val;
            } else {
                _head = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg;
                (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg = _val;
            };
        };
    }
}
