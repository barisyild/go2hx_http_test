package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _sortSpecs(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>, _specs:stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>):stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec> {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L105"
        if (((_specs.length) <= (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L106"
            return _specs;
        };
        var _pos = (new stdgo.Slice<stdgo._internal.go.ast.Ast_t_posspan.T_posSpan>((_specs.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_specs.length : stdgo.GoInt).toBasic() > 0 ? (_specs.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.go.ast.Ast_t_posspan.T_posSpan)]) : stdgo.Slice<stdgo._internal.go.ast.Ast_t_posspan.T_posSpan>);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L111"
        if (_specs != null) for (_i => _s in _specs) {
            _pos[(_i : stdgo.GoInt)] = (new stdgo._internal.go.ast.Ast_t_posspan.T_posSpan(_s.pos(), _s.end()) : stdgo._internal.go.ast.Ast_t_posspan.T_posSpan);
        };
        var _begSpecs = @:assignType (_pos[(0 : stdgo.GoInt)].start : stdgo._internal.go.token.Token_pos.Pos);
        var _endSpecs = @:assignType (_pos[((_pos.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].end : stdgo._internal.go.token.Token_pos.Pos);
        var _beg = @:assignType (_fset.file(_begSpecs).lineStart(stdgo._internal.go.ast.Ast__lineat._lineAt(_fset, _begSpecs)) : stdgo._internal.go.token.Token_pos.Pos);
        var _endLine = @:assignType (stdgo._internal.go.ast.Ast__lineat._lineAt(_fset, _endSpecs) : stdgo.GoInt);
        var _endFile = _fset.file(_endSpecs);
        var _end:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L122"
        if (_endLine == (_endFile.lineCount())) {
            _end = _endSpecs;
        } else {
            _end = _endFile.lineStart((_endLine + (1 : stdgo.GoInt) : stdgo.GoInt));
        };
        var _first = @:assignType ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).comments.length : stdgo.GoInt);
        var _last = @:assignType (-1 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L129"
        if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).comments != null) for (_i => _g in (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).comments) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L130"
            if ((_g.end() >= _end : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L131"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L134"
            if ((_beg <= _g.pos() : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L136"
                if ((_i < _first : Bool)) {
                    _first = _i;
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L139"
                if ((_i > _last : Bool)) {
                    _last = _i;
                };
            };
        };
        var _comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L146"
        if ((_last >= (0 : stdgo.GoInt) : Bool)) {
            _comments = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).comments.__slice__(_first, (_last + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        };
        var _importComments = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>, stdgo.Slice<stdgo._internal.go.ast.Ast_t_cgpos.T_cgPos>>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>, stdgo.Slice<stdgo._internal.go.ast.Ast_t_cgpos.T_cgPos>>);
        var _specIndex = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L153"
        if (_comments != null) for (__0 => _g in _comments) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L154"
            while ((((_specIndex + (1 : stdgo.GoInt) : stdgo.GoInt) < (_specs.length) : Bool) && (_pos[(_specIndex + (1 : stdgo.GoInt) : stdgo.GoInt)].start <= _g.pos() : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L155"
                _specIndex++;
            };
            var _left:Bool = false;
            //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L159"
            if (((_specIndex == (0 : stdgo.GoInt)) && (_pos[(_specIndex : stdgo.GoInt)].start > _g.pos() : Bool) : Bool)) {
                _left = true;
            } else if ((((_specIndex + (1 : stdgo.GoInt) : stdgo.GoInt) < (_specs.length) : Bool) && ((stdgo._internal.go.ast.Ast__lineat._lineAt(_fset, _pos[(_specIndex : stdgo.GoInt)].start) + (1 : stdgo.GoInt) : stdgo.GoInt) == stdgo._internal.go.ast.Ast__lineat._lineAt(_fset, _g.pos())) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L163"
                _specIndex++;
                _left = true;
            };
            var _s = (stdgo.Go.typeAssert(({
                final __t__ = _specs[(_specIndex : stdgo.GoInt)];
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_specdotspec.__type__stdgodot_internaldotgodotastdotAst_specdotSpec)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_importspecdotimportspec.__type__stdgodot_internaldotgodotastdotAst_importspecdotImportSpec })) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>);
            _importComments[_s] = ((_importComments[_s] ?? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_t_cgpos.T_cgPos>)).__append__(({ _left : _left, _cg : _g } : stdgo._internal.go.ast.Ast_t_cgpos.T_cgPos)) : stdgo.Slice<stdgo._internal.go.ast.Ast_t_cgpos.T_cgPos>);
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L175"
        stdgo._internal.sort.Sort_slice.slice(new stdgo.AnyInterface(_specs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_specdotspec.__type__stdgodot_internaldotgodotastdotAst_specdotSpec }))), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            var _ipath = @:assignType (stdgo._internal.go.ast.Ast__importpath._importPath(_specs[(_i : stdgo.GoInt)])?.__copy__() : stdgo.GoString);
            var _jpath = @:assignType (stdgo._internal.go.ast.Ast__importpath._importPath(_specs[(_j : stdgo.GoInt)])?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L178"
            if (_ipath != (_jpath)) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L179"
                return (_ipath < _jpath : Bool);
            };
            var _iname = @:assignType (stdgo._internal.go.ast.Ast__importname._importName(_specs[(_i : stdgo.GoInt)])?.__copy__() : stdgo.GoString);
            var _jname = @:assignType (stdgo._internal.go.ast.Ast__importname._importName(_specs[(_j : stdgo.GoInt)])?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L183"
            if (_iname != (_jname)) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L184"
                return (_iname < _jname : Bool);
            };
            //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L186"
            return (stdgo._internal.go.ast.Ast__importcomment._importComment(_specs[(_i : stdgo.GoInt)]) < stdgo._internal.go.ast.Ast__importcomment._importComment(_specs[(_j : stdgo.GoInt)]) : Bool);
        });
        var _deduped = (_specs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L192"
        if (_specs != null) for (_i => _s in _specs) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L193"
            if (((_i == ((_specs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) || !stdgo._internal.go.ast.Ast__collapse._collapse(_s, _specs[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                _deduped = (_deduped.__append__(_s) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
            } else {
                var _p = @:assignType (_s.pos() : stdgo._internal.go.token.Token_pos.Pos);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L197"
                _fset.file(_p).mergeLine(stdgo._internal.go.ast.Ast__lineat._lineAt(_fset, _p));
            };
        };
        _specs = _deduped;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L203"
        if (_specs != null) for (_i => _s in _specs) {
            var _s = (stdgo.Go.typeAssert(({
                final __t__ = _s;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_specdotspec.__type__stdgodot_internaldotgodotastdotAst_specdotSpec)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_importspecdotimportspec.__type__stdgodot_internaldotgodotastdotAst_importspecdotImportSpec })) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>);
            //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L205"
            if (({
                final value = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                (@:checkr (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name ?? throw stdgo.Error._nullPointerDereference.__underlying__()).namePos = _pos[(_i : stdgo.GoInt)].start;
            };
            (@:checkr (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path ?? throw stdgo.Error._nullPointerDereference.__underlying__()).valuePos = _pos[(_i : stdgo.GoInt)].start;
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).endPos = _pos[(_i : stdgo.GoInt)].end;
            //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L210"
            if ((_importComments[_s] ?? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_t_cgpos.T_cgPos>)) != null) for (__1 => _g in (_importComments[_s] ?? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_t_cgpos.T_cgPos>))) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L211"
                if ((@:checkr _g._cg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list != null) for (__2 => _c in (@:checkr _g._cg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L212"
                    if (_g._left) {
                        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).slash = (_pos[(_i : stdgo.GoInt)].start - (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
                    } else {
                        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).slash = _pos[(_i : stdgo.GoInt)].end;
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L225"
        stdgo._internal.sort.Sort_slice.slice(new stdgo.AnyInterface(_comments, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentgroupdotcommentgroup.__type__stdgodot_internaldotgodotastdotAst_commentgroupdotCommentGroup }) }))), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L226"
            return (_comments[(_i : stdgo.GoInt)].pos() < _comments[(_j : stdgo.GoInt)].pos() : Bool);
        });
        //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L229"
        return _specs;
    }
