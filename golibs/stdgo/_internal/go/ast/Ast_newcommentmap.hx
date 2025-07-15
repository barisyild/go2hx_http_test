package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function newCommentMap(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _node:stdgo._internal.go.ast.Ast_node.Node, _comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>):stdgo._internal.go.ast.Ast_commentmap.CommentMap {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L137"
        if ((_comments.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L138"
            return null;
        };
        var _cmap = @:assignType ((({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode);
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>>) : stdgo._internal.go.ast.Ast_commentmap.CommentMap) : stdgo._internal.go.ast.Ast_commentmap.CommentMap);
        var _tmp = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>((_comments.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L145"
        _tmp.__copyTo__(_comments);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L146"
        stdgo._internal.go.ast.Ast__sortcomments._sortComments(_tmp);
        var _r = @:assignType ({ _fset : _fset, _list : _tmp } : stdgo._internal.go.ast.Ast_t_commentlistreader.T_commentListReader);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L148"
        _r._next();
        var _nodes = stdgo._internal.go.ast.Ast__nodelist._nodeList(_node);
        _nodes = (_nodes.__append__((null : stdgo._internal.go.ast.Ast_node.Node)) : stdgo.Slice<stdgo._internal.go.ast.Ast_node.Node>);
        var _p:stdgo._internal.go.ast.Ast_node.Node = (null : stdgo._internal.go.ast.Ast_node.Node), _pend:stdgo._internal.go.token.Token_position.Position = ({} : stdgo._internal.go.token.Token_position.Position), _pg:stdgo._internal.go.ast.Ast_node.Node = (null : stdgo._internal.go.ast.Ast_node.Node), _pgend:stdgo._internal.go.token.Token_position.Position = ({} : stdgo._internal.go.token.Token_position.Position), _stack:stdgo._internal.go.ast.Ast_t_nodestack.T_nodeStack = (new stdgo._internal.go.ast.Ast_t_nodestack.T_nodeStack(0, 0) : stdgo._internal.go.ast.Ast_t_nodestack.T_nodeStack);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L163"
        if (_nodes != null) for (__0 => _q in _nodes) {
            var _qpos:stdgo._internal.go.token.Token_position.Position = ({} : stdgo._internal.go.token.Token_position.Position);
            //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L165"
            if (_q != null) {
                _qpos = _fset.position(_q.pos())?.__copy__();
            } else {
                {};
                _qpos.offset = (1073741824 : stdgo.GoInt);
                _qpos.line = (1073741824 : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L176"
            while ((_r._end.offset <= _qpos.offset : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L178"
                {
                    var _top = @:assignType (_stack._pop(_r._comment.pos()) : stdgo._internal.go.ast.Ast_node.Node);
                    if (_top != null) {
                        _pg = _top;
                        _pgend = _fset.position(_pg.end())?.__copy__();
                    };
                };
                var _assoc:stdgo._internal.go.ast.Ast_node.Node = (null : stdgo._internal.go.ast.Ast_node.Node);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L188"
                if (((_pg != null) && (((_pgend.line == _r._pos.line) || ((_pgend.line + (1 : stdgo.GoInt) : stdgo.GoInt) == (_r._pos.line) && ((_r._end.line + (1 : stdgo.GoInt) : stdgo.GoInt) < _qpos.line : Bool) : Bool) : Bool)) : Bool)) {
                    _assoc = _pg;
                } else if (((_p != null) && (((_pend.line == (_r._pos.line) || ((_pend.line + (1 : stdgo.GoInt) : stdgo.GoInt) == (_r._pos.line) && ((_r._end.line + (1 : stdgo.GoInt) : stdgo.GoInt) < _qpos.line : Bool) : Bool) : Bool) || (_q == null) : Bool)) : Bool)) {
                    _assoc = _p;
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L207"
                    if (_q == null) {
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L210"
                        throw new stdgo.AnyInterface(("internal error: no comments should be associated with sentinel" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                    };
                    _assoc = _q;
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L214"
                _cmap._addComment(_assoc, _r._comment);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L215"
                if (_r._eol()) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L216"
                    return _cmap;
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L218"
                _r._next();
            };
            _p = _q;
            _pend = _fset.position(_p.end())?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L226"
            {
                final __type__ = _q;
                if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_filedotfile.__type__stdgodot_internaldotgodotastdotAst_filedotFile })) || stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fielddotfield.__type__stdgodot_internaldotgodotastdotAst_fielddotField })) || stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_decldotdecl.__type__stdgodot_internaldotgodotastdotAst_decldotDecl) || stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_specdotspec.__type__stdgodot_internaldotgodotastdotAst_specdotSpec) || stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_stmtdotstmt.__type__stdgodot_internaldotgodotastdotAst_stmtdotStmt)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L228"
                    _stack._push(_q);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L232"
        return _cmap;
    }
