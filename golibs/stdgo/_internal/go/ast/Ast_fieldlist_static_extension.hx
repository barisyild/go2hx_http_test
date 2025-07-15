package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.FieldList_asInterface) class FieldList_static_extension {
    @:keep
    @:tdfield
    static public function numFields( _f:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = _f;
        var _n = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L263"
        if (({
            final value = _f;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L264"
            if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list != null) for (__0 => _g in (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list) {
                var _m = @:assignType ((@:checkr _g ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names.length : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L266"
                if (_m == ((0 : stdgo.GoInt))) {
                    _m = (1 : stdgo.GoInt);
                };
                _n = (_n + (_m) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L272"
        return _n;
    }
    @:keep
    @:tdfield
    static public function end( _f:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = _f;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L249"
        if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).closing.isValid()) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L250"
            return ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).closing + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L254"
        {
            var _n = @:assignType ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list.length : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L255"
                return (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L257"
        return (0 : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _f:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = _f;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L237"
        if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).opening.isValid()) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L238"
            return (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).opening;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L242"
        if ((((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L243"
            return (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list[(0 : stdgo.GoInt)].pos();
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L245"
        return (0 : stdgo._internal.go.token.Token_pos.Pos);
    }
}
