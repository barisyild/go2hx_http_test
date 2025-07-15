package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.CommentMap_asInterface) class CommentMap_static_extension {
    @:keep
    @:tdfield
    static public function string( _cmap:stdgo._internal.go.ast.Ast_commentmap.CommentMap):stdgo.GoString {
        @:recv var _cmap:stdgo._internal.go.ast.Ast_commentmap.CommentMap = _cmap;
        var _nodes:stdgo.Slice<stdgo._internal.go.ast.Ast_node.Node> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_node.Node>);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L310"
        if (_cmap != null) for (_node => _ in _cmap) {
            _nodes = (_nodes.__append__(_node) : stdgo.Slice<stdgo._internal.go.ast.Ast_node.Node>);
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L313"
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface((_nodes : stdgo._internal.go.ast.Ast_t_byinterval.T_byInterval), _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_t_byintervaldott_byinterval.__type__stdgodot_internaldotgodotastdotAst_t_byintervaldotT_byInterval));
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L316"
        stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })), new stdgo.AnyInterface(("CommentMap {" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L317"
        if (_nodes != null) for (__0 => _node in _nodes) {
            var _comment = (_cmap[_node] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>));
            var _s:stdgo.GoString = ("" : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L321"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _node;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                }, _ident = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _s = (@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__();
                } else {
                    _s = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%T" : stdgo.GoString), ({
                        final __t__ = _node;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }))?.__copy__();
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L326"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })), ("\t%p  %20s:  %s\n" : stdgo.GoString), ({
                final __t__ = _node;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo._internal.go.ast.Ast__summary._summary(_comment), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L328"
        stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })), new stdgo.AnyInterface(("}" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L329"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function comments( _cmap:stdgo._internal.go.ast.Ast_commentmap.CommentMap):stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>> {
        @:recv var _cmap:stdgo._internal.go.ast.Ast_commentmap.CommentMap = _cmap;
        var _list = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>((0 : stdgo.GoInt).toBasic(), (_cmap.length)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L264"
        if (_cmap != null) for (__0 => _e in _cmap) {
            _list = (_list.__append__(...(_e : Array<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L267"
        stdgo._internal.go.ast.Ast__sortcomments._sortComments(_list);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L268"
        return _list;
    }
    @:keep
    @:tdfield
    static public function filter( _cmap:stdgo._internal.go.ast.Ast_commentmap.CommentMap, _node:stdgo._internal.go.ast.Ast_node.Node):stdgo._internal.go.ast.Ast_commentmap.CommentMap {
        @:recv var _cmap:stdgo._internal.go.ast.Ast_commentmap.CommentMap = _cmap;
        var _umap = @:assignType ((({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode);
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>>) : stdgo._internal.go.ast.Ast_commentmap.CommentMap) : stdgo._internal.go.ast.Ast_commentmap.CommentMap);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L251"
        stdgo._internal.go.ast.Ast_inspect.inspect(_node, function(_n:stdgo._internal.go.ast.Ast_node.Node):Bool {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L252"
            {
                var _g = (_cmap[_n] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>));
                if (((_g.length) > (0 : stdgo.GoInt) : Bool)) {
                    _umap[_n] = _g;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L255"
            return true;
        });
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L257"
        return _umap;
    }
    @:keep
    @:tdfield
    static public function update( _cmap:stdgo._internal.go.ast.Ast_commentmap.CommentMap, _old:stdgo._internal.go.ast.Ast_node.Node, _new_:stdgo._internal.go.ast.Ast_node.Node):stdgo._internal.go.ast.Ast_node.Node {
        @:recv var _cmap:stdgo._internal.go.ast.Ast_commentmap.CommentMap = _cmap;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L239"
        {
            var _list = (_cmap[_old] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>));
            if (((_list.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L240"
                if (_cmap != null) _cmap.__remove__(_old);
                _cmap[_new_] = ((_cmap[_new_] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>)).__append__(...(_list : Array<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L243"
        return _new_;
    }
    @:keep
    @:tdfield
    static public function _addComment( _cmap:stdgo._internal.go.ast.Ast_commentmap.CommentMap, _n:stdgo._internal.go.ast.Ast_node.Node, _c:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>):Void {
        @:recv var _cmap:stdgo._internal.go.ast.Ast_commentmap.CommentMap = _cmap;
        var _list = (_cmap[_n] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>));
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L38"
        if ((_list.length) == ((0 : stdgo.GoInt))) {
            _list = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>(1, 1, ...[_c]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        } else {
            _list = (_list.__append__(_c) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        };
        _cmap[_n] = _list;
    }
}
