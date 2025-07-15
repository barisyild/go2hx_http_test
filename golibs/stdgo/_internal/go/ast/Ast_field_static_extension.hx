package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.Field_asInterface) class Field_static_extension {
    @:keep
    @:tdfield
    static public function end( _f:stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field> = _f;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L216"
        if (({
            final value = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tag;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L217"
            return (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tag.end();
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L219"
        if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type != null) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L220"
            return (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type.end();
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L222"
        if ((((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L223"
            return (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names[(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L225"
        return (0 : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _f:stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field> = _f;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L206"
        if ((((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L207"
            return (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names[(0 : stdgo.GoInt)].pos();
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L209"
        if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type != null) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L210"
            return (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type.pos();
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L212"
        return (0 : stdgo._internal.go.token.Token_pos.Pos);
    }
}
