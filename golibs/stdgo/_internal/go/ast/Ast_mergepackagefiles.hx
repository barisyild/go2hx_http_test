package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function mergePackageFiles(_pkg:stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>, _mode:stdgo._internal.go.ast.Ast_mergemode.MergeMode):stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> {
        var _ndocs = @:assignType (0 : stdgo.GoInt);
        var _ncomments = @:assignType (0 : stdgo.GoInt);
        var _ndecls = @:assignType (0 : stdgo.GoInt);
        var _filenames = (new stdgo.Slice<stdgo.GoString>(((@:checkr _pkg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).files.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _minPos:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos), _maxPos:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
        var _i = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L345"
        if ((@:checkr _pkg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).files != null) for (_filename => _f in (@:checkr _pkg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).files) {
            _filenames[(_i : stdgo.GoInt)] = _filename?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L347"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L348"
            if (({
                final value = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).doc;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                _ndocs = (_ndocs + ((((@:checkr (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).doc ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
            _ncomments = (_ncomments + (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).comments.length)) : stdgo.GoInt);
            _ndecls = (_ndecls + (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).decls.length)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L353"
            if (((_i == (0 : stdgo.GoInt)) || ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fileStart < _minPos : Bool) : Bool)) {
                _minPos = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fileStart;
            };
            //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L356"
            if (((_i == (0 : stdgo.GoInt)) || ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fileEnd > _maxPos : Bool) : Bool)) {
                _maxPos = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fileEnd;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L360"
        stdgo._internal.sort.Sort_strings.strings(_filenames);
        var _doc:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        var _pos:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L368"
        if ((_ndocs > (0 : stdgo.GoInt) : Bool)) {
            var _list = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>((_ndocs - (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>);
            var _i = @:assignType (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L371"
            if (_filenames != null) for (__0 => _filename in _filenames) {
                var _f = ((@:checkr _pkg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).files[_filename] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>));
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L373"
                if (({
                    final value = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).doc;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L374"
                    if ((_i > (0 : stdgo.GoInt) : Bool)) {
                        _list[(_i : stdgo.GoInt)] = stdgo._internal.go.ast.Ast__separator._separator;
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L377"
                        _i++;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L379"
                    if ((@:checkr (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).doc ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list != null) for (__1 => _c in (@:checkr (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).doc ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list) {
                        _list[(_i : stdgo.GoInt)] = _c;
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L381"
                        _i++;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L383"
                    if (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).package_ > _pos : Bool)) {
                        _pos = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).package_;
                    };
                };
            };
            _doc = (stdgo.Go.setRef((new stdgo._internal.go.ast.Ast_commentgroup.CommentGroup(_list) : stdgo._internal.go.ast.Ast_commentgroup.CommentGroup), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentgroupdotcommentgroup.__type__stdgodot_internaldotgodotastdotAst_commentgroupdotCommentGroup })) : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        };
        var _decls:stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L396"
        if ((_ndecls > (0 : stdgo.GoInt) : Bool)) {
            _decls = (new stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>((_ndecls : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
            var _funcs = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
            var _i = @:assignType (0 : stdgo.GoInt);
            var _n = @:assignType (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L401"
            if (_filenames != null) for (__0 => _filename in _filenames) {
                var _f = ((@:checkr _pkg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).files[_filename] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>));
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L403"
                if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).decls != null) for (__1 => _d in (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).decls) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L404"
                    if ((_mode & (1u32 : stdgo._internal.go.ast.Ast_mergemode.MergeMode) : stdgo._internal.go.ast.Ast_mergemode.MergeMode) != ((0u32 : stdgo._internal.go.ast.Ast_mergemode.MergeMode))) {
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L414"
                        {
                            var __tmp__ = @:castTranslate try {
                                { _0 : (stdgo.Go.typeAssert(({
                                    final __t__ = _d;
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_decldotdecl.__type__stdgodot_internaldotgodotastdotAst_decldotDecl)).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_funcdecldotfuncdecl.__type__stdgodot_internaldotgodotastdotAst_funcdecldotFuncDecl })) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>), _1 : true };
                            } catch(__exception__) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>), _1 : false };
                            }, _f = __tmp__._0, _isFun = __tmp__._1;
                            if (_isFun) {
                                var _name = @:assignType (stdgo._internal.go.ast.Ast__nameof._nameOf(_f)?.__copy__() : stdgo.GoString);
                                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L416"
                                {
                                    var __tmp__ = (_funcs != null && _funcs.__exists__(_name?.__copy__()) ? { _0 : _funcs[_name?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _j:stdgo.GoInt = __tmp__._0, _exists:Bool = __tmp__._1;
                                    if (_exists) {
                                        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L418"
                                        if (((_decls[(_j : stdgo.GoInt)] != null) && ({
                                            final value = (@:checkr (stdgo.Go.typeAssert(({
                                                final __t__ = _decls[(_j : stdgo.GoInt)];
                                                if (__t__ == null) {
                                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_decldotdecl.__type__stdgodot_internaldotgodotastdotAst_decldotDecl)).__setNil__();
                                                } else {
                                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                                };
                                            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_funcdecldotfuncdecl.__type__stdgodot_internaldotgodotastdotAst_funcdecldotFuncDecl })) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) ?? throw stdgo.Error._nullPointerDereference.__underlying__()).doc;
                                            (value == null || (value : Dynamic).__nil__);
                                        }) : Bool)) {
                                            _decls[(_j : stdgo.GoInt)] = (null : stdgo._internal.go.ast.Ast_decl.Decl);
                                        } else {
                                            _d = (null : stdgo._internal.go.ast.Ast_decl.Decl);
                                        };
                                        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L426"
                                        _n++;
                                    } else {
                                        _funcs[_name] = _i;
                                    };
                                };
                            };
                        };
                    };
                    _decls[(_i : stdgo.GoInt)] = _d;
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L433"
                    _i++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L442"
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                _i = (0 : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L444"
                if (_decls != null) for (__1 => _d in _decls) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L445"
                    if (_d != null) {
                        _decls[(_i : stdgo.GoInt)] = _d;
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L447"
                        _i++;
                    };
                };
                _decls = (_decls.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
            };
        };
        var _imports:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L456"
        if ((_mode & (4u32 : stdgo._internal.go.ast.Ast_mergemode.MergeMode) : stdgo._internal.go.ast.Ast_mergemode.MergeMode) != ((0u32 : stdgo._internal.go.ast.Ast_mergemode.MergeMode))) {
            var _seen = (({
                final x = new stdgo.GoMap.GoStringMap<Bool>();
                x.__defaultValue__ = () -> false;
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
            //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L458"
            if (_filenames != null) for (__0 => _filename in _filenames) {
                var _f = ((@:checkr _pkg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).files[_filename] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>));
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L460"
                if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).imports != null) for (__1 => _imp in (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).imports) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L461"
                    {
                        var _path = @:assignType ((@:checkr (@:checkr _imp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value?.__copy__() : stdgo.GoString);
                        if (!(_seen[_path] ?? false)) {
                            _imports = (_imports.__append__(_imp) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>);
                            _seen[_path] = true;
                        };
                    };
                };
            };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L476"
            if (_filenames != null) for (__0 => _filename in _filenames) {
                var _f = ((@:checkr _pkg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).files[_filename] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>));
                _imports = (_imports.__append__(...((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).imports : Array<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>);
            };
        };
        var _comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L484"
        if ((_mode & (2u32 : stdgo._internal.go.ast.Ast_mergemode.MergeMode) : stdgo._internal.go.ast.Ast_mergemode.MergeMode) == ((0u32 : stdgo._internal.go.ast.Ast_mergemode.MergeMode))) {
            _comments = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>((_ncomments : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
            var _i = @:assignType (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L487"
            if (_filenames != null) for (__0 => _filename in _filenames) {
                var _f = ((@:checkr _pkg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).files[_filename] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>));
                _i = (_i + ((_comments.__slice__(_i) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>).__copyTo__((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).comments)) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L494"
        return (stdgo.Go.setRef((new stdgo._internal.go.ast.Ast_file.File(
_doc,
_pos,
stdgo._internal.go.ast.Ast_newident.newIdent((@:checkr _pkg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__()),
_decls,
_minPos,
_maxPos,
(@:checkr _pkg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scope,
_imports,
(null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>),
_comments,
(stdgo.Go.str() : stdgo.GoString)?.__copy__()) : stdgo._internal.go.ast.Ast_file.File), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_filedotfile.__type__stdgodot_internaldotgodotastdotAst_filedotFile })) : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
    }
