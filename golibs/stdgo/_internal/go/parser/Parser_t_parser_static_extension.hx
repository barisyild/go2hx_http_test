package stdgo._internal.go.parser;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.go.ast.Ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.go.token.Token;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.go.build.constraint.Constraint;
import stdgo._internal.go.internal.typeparams.Typeparams;
@:keep @:allow(stdgo._internal.go.parser.Parser.T_parser_asInterface) class T_parser_static_extension {
    @:keep
    @:tdfield
    static public function _parseFile( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2813"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("File" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2819"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errors.len() != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2820"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return null;
                };
            };
            var _doc = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._leadComment;
            var _pos = @:assignType (_p._expect((78 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _ident = _p._parseIdent();
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2829"
            if ((((@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name == ("_" : stdgo.GoString)) && (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mode & (16u32 : stdgo._internal.go.parser.Parser_mode.Mode) : stdgo._internal.go.parser.Parser_mode.Mode) != (0u32 : stdgo._internal.go.parser.Parser_mode.Mode)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2830"
                _p._error((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, ("invalid package name _" : stdgo.GoString));
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2832"
            _p._expectSemi();
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2836"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errors.len() != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2837"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return null;
                };
            };
            var _decls:stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2841"
            if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mode & (1u32 : stdgo._internal.go.parser.Parser_mode.Mode) : stdgo._internal.go.parser.Parser_mode.Mode) == ((0u32 : stdgo._internal.go.parser.Parser_mode.Mode))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2843"
                while ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((75 : stdgo._internal.go.token.Token_token.Token))) {
                    _decls = (_decls.__append__(stdgo.Go.asInterface(_p._parseGenDecl((75 : stdgo._internal.go.token.Token_token.Token), _p._parseImportSpec), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_gendecldotgendecl.__type__stdgodot_internaldotgodotastdotAst_gendecldotGenDecl }))) : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2847"
                if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mode & (2u32 : stdgo._internal.go.parser.Parser_mode.Mode) : stdgo._internal.go.parser.Parser_mode.Mode) == ((0u32 : stdgo._internal.go.parser.Parser_mode.Mode))) {
                    var _prev = @:assignType (75 : stdgo._internal.go.token.Token_token.Token);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2850"
                    while ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((1 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2852"
                        if ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == (75 : stdgo._internal.go.token.Token_token.Token)) && (_prev != (75 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2853"
                            _p._error((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, ("imports must appear before other declarations" : stdgo.GoString));
                        };
                        _prev = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok;
                        _decls = (_decls.__append__(_p._parseDecl(stdgo._internal.go.parser.Parser__declstart._declStart)) : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
                    };
                };
            };
            var _f = (stdgo.Go.setRef(({ doc : _doc, package_ : _pos, name : _ident, decls : _decls, fileStart : ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.base() : stdgo._internal.go.token.Token_pos.Pos), fileEnd : (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.base() + (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.size() : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos), imports : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._imports, comments : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._comments, goVersion : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goVersion?.__copy__() } : stdgo._internal.go.ast.Ast_file.File), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_filedotfile.__type__stdgodot_internaldotgodotastdotAst_filedotFile })) : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
            var _declErr:(stdgo._internal.go.token.Token_pos.Pos, stdgo.GoString) -> Void = null;
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2874"
            if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mode & (16u32 : stdgo._internal.go.parser.Parser_mode.Mode) : stdgo._internal.go.parser.Parser_mode.Mode) != ((0u32 : stdgo._internal.go.parser.Parser_mode.Mode))) {
                _declErr = _p._error;
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2877"
            if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mode & (64u32 : stdgo._internal.go.parser.Parser_mode.Mode) : stdgo._internal.go.parser.Parser_mode.Mode) == ((0u32 : stdgo._internal.go.parser.Parser_mode.Mode))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2878"
                stdgo._internal.go.parser.Parser__resolvefile._resolveFile(_f, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file, _declErr);
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2881"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _f;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseDecl( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _sync:stdgo.GoMap<stdgo._internal.go.token.Token_token.Token, Bool>):stdgo._internal.go.ast.Ast_decl.Decl {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2781"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("Declaration" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _f:stdgo._internal.go.parser.Parser_t_parsespecfunction.T_parseSpecFunction = (null : stdgo._internal.go.parser.Parser_t_parsespecfunction.T_parseSpecFunction);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2786"
            {
                final __value__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok;
                if (__value__ == ((75 : stdgo._internal.go.token.Token_token.Token))) {
                    _f = _p._parseImportSpec;
                } else if (__value__ == ((64 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((85 : stdgo._internal.go.token.Token_token.Token))) {
                    _f = _p._parseValueSpec;
                } else if (__value__ == ((84 : stdgo._internal.go.token.Token_token.Token))) {
                    _f = _p._parseTypeSpec;
                } else if (__value__ == ((71 : stdgo._internal.go.token.Token_token.Token))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2797"
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_decl.Decl = stdgo.Go.asInterface(_p._parseFuncDecl(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_funcdecldotfuncdecl.__type__stdgodot_internaldotgodotastdotAst_funcdecldotFuncDecl }));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else {
                    var _pos = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2801"
                    _p._errorExpected(_pos, ("declaration" : stdgo.GoString));
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2802"
                    _p._advance(_sync);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2803"
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_decl.Decl = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : _pos, to : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos } : stdgo._internal.go.ast.Ast_baddecl.BadDecl), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_baddecldotbaddecl.__type__stdgodot_internaldotgodotastdotAst_baddecldotBadDecl })) : stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_baddecldotbaddecl.__type__stdgodot_internaldotgodotastdotAst_baddecldotBadDecl }));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2806"
            {
                final __ret__:stdgo._internal.go.ast.Ast_decl.Decl = stdgo.Go.asInterface(_p._parseGenDecl((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok, _f), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_gendecldotgendecl.__type__stdgodot_internaldotgodotastdotAst_gendecldotGenDecl }));
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_decl.Decl);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_decl.Decl);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseFuncDecl( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2725"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("FunctionDecl" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _doc = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._leadComment;
            var _pos = @:assignType (_p._expect((71 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _recv:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2733"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((49 : stdgo._internal.go.token.Token_token.Token))) {
                {
                    var __tmp__ = _p._parseParameters(false);
                    _recv = @:tmpset0 __tmp__._1;
                };
            };
            var _ident = _p._parseIdent();
            var __tmp__ = _p._parseParameters(true), _tparams:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = __tmp__._0, _params:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2740"
            if ((({
                final value = _recv;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ({
                final value = _tparams;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2743"
                _p._error((@:checkr _tparams ?? throw stdgo.Error._nullPointerDereference.__underlying__()).opening, ("method must have no type parameters" : stdgo.GoString));
                _tparams = null;
            };
            var _results = _p._parseResult();
            var _body:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2749"
            {
                final __value__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok;
                if (__value__ == ((51 : stdgo._internal.go.token.Token_token.Token))) {
                    _body = _p._parseBody();
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2752"
                    _p._expectSemi();
                } else if (__value__ == ((57 : stdgo._internal.go.token.Token_token.Token))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2754"
                    _p._next();
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2755"
                    if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((51 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2757"
                        _p._error((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, ("unexpected semicolon or newline before {" : stdgo.GoString));
                        _body = _p._parseBody();
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2759"
                        _p._expectSemi();
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2762"
                    _p._expectSemi();
                };
            };
            var _decl = (stdgo.Go.setRef(({ doc : _doc, recv : _recv, name : _ident, type : (stdgo.Go.setRef(({ func : _pos, typeParams : _tparams, params : _params, results : _results } : stdgo._internal.go.ast.Ast_functype.FuncType), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_functypedotfunctype.__type__stdgodot_internaldotgodotastdotAst_functypedotFuncType })) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>), body : _body } : stdgo._internal.go.ast.Ast_funcdecl.FuncDecl), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_funcdecldotfuncdecl.__type__stdgodot_internaldotgodotastdotAst_funcdecldotFuncDecl })) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2777"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _decl;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseGenDecl( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _keyword:stdgo._internal.go.token.Token_token.Token, _f:stdgo._internal.go.parser.Parser_t_parsespecfunction.T_parseSpecFunction):stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2694"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ((("GenDecl(" : stdgo.GoString) + (_keyword.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _doc = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._leadComment;
            var _pos = @:assignType (_p._expect(_keyword) : stdgo._internal.go.token.Token_pos.Pos);
            var _lparen:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos), _rparen:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
            var _list:stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2702"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((49 : stdgo._internal.go.token.Token_token.Token))) {
                _lparen = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos;
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2704"
                _p._next();
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2705"
                {
                    var _iota = @:assignType (0 : stdgo.GoInt);
                    while ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != (54 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != (1 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                        _list = (_list.__append__(_f((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._leadComment, _keyword, _iota)) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
                        _iota++;
                    };
                };
                _rparen = _p._expect((54 : stdgo._internal.go.token.Token_token.Token));
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2709"
                _p._expectSemi();
            } else {
                _list = (_list.__append__(_f(null, _keyword, (0 : stdgo.GoInt))) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2714"
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = (stdgo.Go.setRef(({ doc : _doc, tokPos : _pos, tok : _keyword, lparen : _lparen, specs : _list, rparen : _rparen } : stdgo._internal.go.ast.Ast_gendecl.GenDecl), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_gendecldotgendecl.__type__stdgodot_internaldotgodotastdotAst_gendecldotGenDecl })) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseTypeSpec( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _doc:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, __0:stdgo._internal.go.token.Token_token.Token, __1:stdgo.GoInt):stdgo._internal.go.ast.Ast_spec.Spec {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2555"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("TypeSpec" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _name = _p._parseIdent();
            var _spec = (stdgo.Go.setRef(({ doc : _doc, name : _name } : stdgo._internal.go.ast.Ast_typespec.TypeSpec), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_typespecdottypespec.__type__stdgodot_internaldotgodotastdotAst_typespecdotTypeSpec })) : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2562"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((50 : stdgo._internal.go.token.Token_token.Token))) {
                var _lbrack = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2566"
                _p._next();
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2567"
                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((4 : stdgo._internal.go.token.Token_token.Token))) {
                    var _x:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(_p._parseIdent(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent }));
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2584"
                    if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((50 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2588"
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev++;
                        var _lhs = @:assignType (_p._parsePrimaryExpr(_x) : stdgo._internal.go.ast.Ast_expr.Expr);
                        _x = _p._parseBinaryExpr(_lhs, (1 : stdgo.GoInt));
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2591"
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev--;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2600"
                    {
                        var __tmp__ = stdgo._internal.go.parser.Parser__extractname._extractName(_x, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((52 : stdgo._internal.go.token.Token_token.Token))), _pname:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __tmp__._0, _ptype:stdgo._internal.go.ast.Ast_expr.Expr = __tmp__._1;
                        if ((({
                            final value = _pname;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        }) && (((_ptype != null) || ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != (55 : stdgo._internal.go.token.Token_token.Token)) : Bool)) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2604"
                            _p._parseGenericType(_spec, _lbrack, _pname, _ptype);
                        } else {
                            (@:checkr _spec ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type = stdgo.Go.asInterface(_p._parseArrayType(_lbrack, _x), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_arraytypedotarraytype.__type__stdgodot_internaldotgodotastdotAst_arraytypedotArrayType }));
                        };
                    };
                } else {
                    (@:checkr _spec ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type = stdgo.Go.asInterface(_p._parseArrayType(_lbrack, (null : stdgo._internal.go.ast.Ast_expr.Expr)), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_arraytypedotarraytype.__type__stdgodot_internaldotgodotastdotAst_arraytypedotArrayType }));
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2616"
                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((42 : stdgo._internal.go.token.Token_token.Token))) {
                    (@:checkr _spec ?? throw stdgo.Error._nullPointerDereference.__underlying__()).assign = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos;
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2619"
                    _p._next();
                };
                (@:checkr _spec ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type = _p._parseType();
            };
            (@:checkr _spec ?? throw stdgo.Error._nullPointerDereference.__underlying__()).comment = _p._expectSemi();
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2626"
            {
                final __ret__:stdgo._internal.go.ast.Ast_spec.Spec = stdgo.Go.asInterface(_spec, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_typespecdottypespec.__type__stdgodot_internaldotgodotastdotAst_typespecdotTypeSpec }));
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_spec.Spec);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_spec.Spec);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseGenericType( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _spec:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>, _openPos:stdgo._internal.go.token.Token_pos.Pos, _name0:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, _typ0:stdgo._internal.go.ast.Ast_expr.Expr):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2537"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("parseGenericType" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _list = _p._parseParameterList(_name0, _typ0, (55 : stdgo._internal.go.token.Token_token.Token));
            var _closePos = @:assignType (_p._expect((55 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            (@:checkr _spec ?? throw stdgo.Error._nullPointerDereference.__underlying__()).typeParams = (stdgo.Go.setRef(({ opening : _openPos, list : _list, closing : _closePos } : stdgo._internal.go.ast.Ast_fieldlist.FieldList), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fieldlistdotfieldlist.__type__stdgodot_internaldotgodotastdotAst_fieldlistdotFieldList })) : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2546"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((42 : stdgo._internal.go.token.Token_token.Token))) {
                (@:checkr _spec ?? throw stdgo.Error._nullPointerDereference.__underlying__()).assign = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos;
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2549"
                _p._next();
            };
            (@:checkr _spec ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type = _p._parseType();
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseValueSpec( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _doc:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, _keyword:stdgo._internal.go.token.Token_token.Token, _iota:stdgo.GoInt):stdgo._internal.go.ast.Ast_spec.Spec {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2496"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ((_keyword.string() : stdgo.GoString) + ("Spec" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _idents = _p._parseIdentList();
            var _typ:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
            var _values:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2503"
            {
                final __value__ = _keyword;
                if (__value__ == ((64 : stdgo._internal.go.token.Token_token.Token))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2506"
                    if ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((1 : stdgo._internal.go.token.Token_token.Token)) && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((57 : stdgo._internal.go.token.Token_token.Token)) : Bool) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != (54 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                        _typ = _p._tryIdentOrType();
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2508"
                        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((42 : stdgo._internal.go.token.Token_token.Token))) {
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2509"
                            _p._next();
                            _values = _p._parseList(true);
                        };
                    };
                } else if (__value__ == ((85 : stdgo._internal.go.token.Token_token.Token))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2514"
                    if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((42 : stdgo._internal.go.token.Token_token.Token))) {
                        _typ = _p._parseType();
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2517"
                    if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((42 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2518"
                        _p._next();
                        _values = _p._parseList(true);
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2522"
                    throw new stdgo.AnyInterface(("unreachable" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                };
            };
            var _comment = _p._expectSemi();
            var _spec = (stdgo.Go.setRef(({ doc : _doc, names : _idents, type : _typ, values : _values, comment : _comment } : stdgo._internal.go.ast.Ast_valuespec.ValueSpec), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_valuespecdotvaluespec.__type__stdgodot_internaldotgodotastdotAst_valuespecdotValueSpec })) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2533"
            {
                final __ret__:stdgo._internal.go.ast.Ast_spec.Spec = stdgo.Go.asInterface(_spec, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_valuespecdotvaluespec.__type__stdgodot_internaldotgodotastdotAst_valuespecdotValueSpec }));
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_spec.Spec);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_spec.Spec);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseImportSpec( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _doc:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, __0:stdgo._internal.go.token.Token_token.Token, __1:stdgo.GoInt):stdgo._internal.go.ast.Ast_spec.Spec {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2456"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("ImportSpec" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _ident:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2461"
            {
                final __value__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok;
                if (__value__ == ((4 : stdgo._internal.go.token.Token_token.Token))) {
                    _ident = _p._parseIdent();
                } else if (__value__ == ((53 : stdgo._internal.go.token.Token_token.Token))) {
                    _ident = (stdgo.Go.setRef(({ namePos : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, name : ("." : stdgo.GoString) } : stdgo._internal.go.ast.Ast_ident.Ident), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2466"
                    _p._next();
                };
            };
            var _pos = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
            var _path:stdgo.GoString = ("" : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2471"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((9 : stdgo._internal.go.token.Token_token.Token))) {
                _path = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lit?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2473"
                _p._next();
            } else if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok.isLiteral()) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2475"
                _p._error(_pos, ("import path must be a string" : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2476"
                _p._next();
            } else {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2478"
                _p._error(_pos, ("missing import path" : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2479"
                _p._advance(stdgo._internal.go.parser.Parser__exprend._exprEnd);
            };
            var _comment = _p._expectSemi();
            var _spec = (stdgo.Go.setRef(({ doc : _doc, name : _ident, path : (stdgo.Go.setRef(({ valuePos : _pos, kind : (9 : stdgo._internal.go.token.Token_token.Token), value : _path?.__copy__() } : stdgo._internal.go.ast.Ast_basiclit.BasicLit), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_basiclitdotbasiclit.__type__stdgodot_internaldotgodotastdotAst_basiclitdotBasicLit })) : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>), comment : _comment } : stdgo._internal.go.ast.Ast_importspec.ImportSpec), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_importspecdotimportspec.__type__stdgodot_internaldotgodotastdotAst_importspecdotImportSpec })) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>);
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._imports = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._imports.__append__(_spec) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2492"
            {
                final __ret__:stdgo._internal.go.ast.Ast_spec.Spec = stdgo.Go.asInterface(_spec, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_importspecdotimportspec.__type__stdgodot_internaldotgodotastdotAst_importspecdotImportSpec }));
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_spec.Spec);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_spec.Spec);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseStmt( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_stmt.Stmt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _s = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
        try {
            {
                var _a0 = stdgo._internal.go.parser.Parser__incnestlev._incNestLev(_p);
                final __f__ = stdgo._internal.go.parser.Parser__decnestlev._decNestLev;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2392"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("Statement" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2396"
            {
                final __value__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok;
                if (__value__ == ((64 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((84 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((85 : stdgo._internal.go.token.Token_token.Token))) {
                    _s = stdgo.Go.asInterface((stdgo.Go.setRef(({ decl : _p._parseDecl(stdgo._internal.go.parser.Parser__stmtstart._stmtStart) } : stdgo._internal.go.ast.Ast_declstmt.DeclStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_declstmtdotdeclstmt.__type__stdgodot_internaldotgodotastdotAst_declstmtdotDeclStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_declstmtdotdeclstmt.__type__stdgodot_internaldotgodotastdotAst_declstmtdotDeclStmt }));
                } else if (__value__ == ((4 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((5 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((6 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((7 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((8 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((9 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((71 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((49 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((50 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((82 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((77 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((63 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((76 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((12 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((13 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((14 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((17 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((19 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((36 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((43 : stdgo._internal.go.token.Token_token.Token))) {
                    {
                        var __tmp__ = _p._parseSimpleStmt((1 : stdgo.GoInt));
                        _s = @:tmpset0 __tmp__._0;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2408"
                    {
                        var __tmp__ = @:castTranslate try {
                            { _0 : (stdgo.Go.typeAssert(({
                                final __t__ = _s;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_stmtdotstmt.__type__stdgodot_internaldotgodotastdotAst_stmtdotStmt)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_labeledstmtdotlabeledstmt.__type__stdgodot_internaldotgodotastdotAst_labeledstmtdotLabeledStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>), _1 : true };
                        } catch(__exception__) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>), _1 : false };
                        }, __0 = __tmp__._0, _isLabeledStmt = __tmp__._1;
                        if (!_isLabeledStmt) {
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2409"
                            _p._expectSemi();
                        };
                    };
                } else if (__value__ == ((72 : stdgo._internal.go.token.Token_token.Token))) {
                    _s = _p._parseGoStmt();
                } else if (__value__ == ((67 : stdgo._internal.go.token.Token_token.Token))) {
                    _s = _p._parseDeferStmt();
                } else if (__value__ == ((80 : stdgo._internal.go.token.Token_token.Token))) {
                    _s = stdgo.Go.asInterface(_p._parseReturnStmt(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_returnstmtdotreturnstmt.__type__stdgodot_internaldotgodotastdotAst_returnstmtdotReturnStmt }));
                } else if (__value__ == ((61 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((65 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((73 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((69 : stdgo._internal.go.token.Token_token.Token))) {
                    _s = stdgo.Go.asInterface(_p._parseBranchStmt((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_branchstmtdotbranchstmt.__type__stdgodot_internaldotgodotastdotAst_branchstmtdotBranchStmt }));
                } else if (__value__ == ((51 : stdgo._internal.go.token.Token_token.Token))) {
                    _s = stdgo.Go.asInterface(_p._parseBlockStmt(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_blockstmtdotblockstmt.__type__stdgodot_internaldotgodotastdotAst_blockstmtdotBlockStmt }));
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2421"
                    _p._expectSemi();
                } else if (__value__ == ((74 : stdgo._internal.go.token.Token_token.Token))) {
                    _s = stdgo.Go.asInterface(_p._parseIfStmt(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_ifstmtdotifstmt.__type__stdgodot_internaldotgodotastdotAst_ifstmtdotIfStmt }));
                } else if (__value__ == ((83 : stdgo._internal.go.token.Token_token.Token))) {
                    _s = _p._parseSwitchStmt();
                } else if (__value__ == ((81 : stdgo._internal.go.token.Token_token.Token))) {
                    _s = stdgo.Go.asInterface(_p._parseSelectStmt(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_selectstmtdotselectstmt.__type__stdgodot_internaldotgodotastdotAst_selectstmtdotSelectStmt }));
                } else if (__value__ == ((70 : stdgo._internal.go.token.Token_token.Token))) {
                    _s = _p._parseForStmt();
                } else if (__value__ == ((57 : stdgo._internal.go.token.Token_token.Token))) {
                    _s = stdgo.Go.asInterface((stdgo.Go.setRef(({ semicolon : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, implicit : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lit == (("\n" : stdgo.GoString)) } : stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_emptystmtdotemptystmt.__type__stdgodot_internaldotgodotastdotAst_emptystmtdotEmptyStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_emptystmtdotemptystmt.__type__stdgodot_internaldotgodotastdotAst_emptystmtdotEmptyStmt }));
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2435"
                    _p._next();
                } else if (__value__ == ((56 : stdgo._internal.go.token.Token_token.Token))) {
                    _s = stdgo.Go.asInterface((stdgo.Go.setRef(({ semicolon : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, implicit : true } : stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_emptystmtdotemptystmt.__type__stdgodot_internaldotgodotastdotAst_emptystmtdotEmptyStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_emptystmtdotemptystmt.__type__stdgodot_internaldotgodotastdotAst_emptystmtdotEmptyStmt }));
                } else {
                    var _pos = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2442"
                    _p._errorExpected(_pos, ("statement" : stdgo.GoString));
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2443"
                    _p._advance(stdgo._internal.go.parser.Parser__stmtstart._stmtStart);
                    _s = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : _pos, to : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos } : stdgo._internal.go.ast.Ast_badstmt.BadStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badstmtdotbadstmt.__type__stdgodot_internaldotgodotastdotAst_badstmtdotBadStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badstmtdotbadstmt.__type__stdgodot_internaldotgodotastdotAst_badstmtdotBadStmt }));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2447"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _s;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return _s;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return _s;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseForStmt( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_stmt.Stmt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2308"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("ForStmt" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = @:assignType (_p._expect((70 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _s1:stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt), _s2:stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt), _s3:stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
            var _isRange:Bool = false;
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2316"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((51 : stdgo._internal.go.token.Token_token.Token))) {
                var _prevLev = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev : stdgo.GoInt);
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev = (-1 : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2319"
                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((57 : stdgo._internal.go.token.Token_token.Token))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2320"
                    if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((79 : stdgo._internal.go.token.Token_token.Token))) {
                        var _pos = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2323"
                        _p._next();
                        var _y = (new stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>(1, 1, ...[stdgo.Go.asInterface((stdgo.Go.setRef(({ opPos : _pos, op : (79 : stdgo._internal.go.token.Token_token.Token), x : _p._parseRhs() } : stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_unaryexprdotunaryexpr.__type__stdgodot_internaldotgodotastdotAst_unaryexprdotUnaryExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_unaryexprdotunaryexpr.__type__stdgodot_internaldotgodotastdotAst_unaryexprdotUnaryExpr }))]) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                        _s2 = stdgo.Go.asInterface((stdgo.Go.setRef(({ rhs : _y } : stdgo._internal.go.ast.Ast_assignstmt.AssignStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_assignstmtdotassignstmt.__type__stdgodot_internaldotgodotastdotAst_assignstmtdotAssignStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_assignstmtdotassignstmt.__type__stdgodot_internaldotgodotastdotAst_assignstmtdotAssignStmt }));
                        _isRange = true;
                    } else {
                        {
                            var __tmp__ = _p._parseSimpleStmt((2 : stdgo.GoInt));
                            _s2 = @:tmpset0 __tmp__._0;
                            _isRange = @:tmpset0 __tmp__._1;
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2331"
                if ((!_isRange && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == (57 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2332"
                    _p._next();
                    _s1 = _s2;
                    _s2 = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2335"
                    if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((57 : stdgo._internal.go.token.Token_token.Token))) {
                        {
                            var __tmp__ = _p._parseSimpleStmt((0 : stdgo.GoInt));
                            _s2 = @:tmpset0 __tmp__._0;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2338"
                    _p._expectSemi();
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2339"
                    if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((51 : stdgo._internal.go.token.Token_token.Token))) {
                        {
                            var __tmp__ = _p._parseSimpleStmt((0 : stdgo.GoInt));
                            _s3 = @:tmpset0 __tmp__._0;
                        };
                    };
                };
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev = _prevLev;
            };
            var _body = _p._parseBlockStmt();
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2347"
            _p._expectSemi();
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2349"
            if (_isRange) {
                var _as = (stdgo.Go.typeAssert(({
                    final __t__ = _s2;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_stmtdotstmt.__type__stdgodot_internaldotgodotastdotAst_stmtdotStmt)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_assignstmtdotassignstmt.__type__stdgodot_internaldotgodotastdotAst_assignstmtdotAssignStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>);
                var _key:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr), _value:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2353"
                {
                    final __value__ = ((@:checkr _as ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lhs.length);
                    if (__value__ == ((0 : stdgo.GoInt))) {} else if (__value__ == ((1 : stdgo.GoInt))) {
                        _key = (@:checkr _as ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lhs[(0 : stdgo.GoInt)];
                    } else if (__value__ == ((2 : stdgo.GoInt))) {
                        {
                            final __tmp__0 = (@:checkr _as ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lhs[(0 : stdgo.GoInt)];
                            final __tmp__1 = (@:checkr _as ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lhs[(1 : stdgo.GoInt)];
                            _key = @:binopAssign __tmp__0;
                            _value = @:binopAssign __tmp__1;
                        };
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2361"
                        _p._errorExpected((@:checkr _as ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lhs[(((@:checkr _as ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lhs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].pos(), ("at most 2 expressions" : stdgo.GoString));
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2362"
                        {
                            final __ret__:stdgo._internal.go.ast.Ast_stmt.Stmt = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : _pos, to : _p._safePos(_body.end()) } : stdgo._internal.go.ast.Ast_badstmt.BadStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badstmtdotbadstmt.__type__stdgodot_internaldotgodotastdotAst_badstmtdotBadStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badstmtdotbadstmt.__type__stdgodot_internaldotgodotastdotAst_badstmtdotBadStmt }));
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
                var _x = @:assignType ((@:checkr (stdgo.Go.typeAssert(({
                    final __t__ = (@:checkr _as ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rhs[(0 : stdgo.GoInt)];
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_unaryexprdotunaryexpr.__type__stdgodot_internaldotgodotastdotAst_unaryexprdotUnaryExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x : stdgo._internal.go.ast.Ast_expr.Expr);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2367"
                {
                    final __ret__:stdgo._internal.go.ast.Ast_stmt.Stmt = stdgo.Go.asInterface((stdgo.Go.setRef(({ for_ : _pos, key : _key, value : _value, tokPos : (@:checkr _as ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tokPos, tok : (@:checkr _as ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tok, range : (@:checkr _as ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rhs[(0 : stdgo.GoInt)].pos(), x : _x, body : _body } : stdgo._internal.go.ast.Ast_rangestmt.RangeStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_rangestmtdotrangestmt.__type__stdgodot_internaldotgodotastdotAst_rangestmtdotRangeStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_rangestmtdotrangestmt.__type__stdgodot_internaldotgodotastdotAst_rangestmtdotRangeStmt }));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2380"
            {
                final __ret__:stdgo._internal.go.ast.Ast_stmt.Stmt = stdgo.Go.asInterface((stdgo.Go.setRef(({ for_ : _pos, init : _s1, cond : _p._makeExpr(_s2, ("boolean or range expression" : stdgo.GoString)), post : _s3, body : _body } : stdgo._internal.go.ast.Ast_forstmt.ForStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_forstmtdotforstmt.__type__stdgodot_internaldotgodotastdotAst_forstmtdotForStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_forstmtdotforstmt.__type__stdgodot_internaldotgodotastdotAst_forstmtdotForStmt }));
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseSelectStmt( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2290"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("SelectStmt" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = @:assignType (_p._expect((81 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _lbrace = @:assignType (_p._expect((51 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _list:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2297"
            while ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == (62 : stdgo._internal.go.token.Token_token.Token)) || ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == (66 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                _list = (_list.__append__(stdgo.Go.asInterface(_p._parseCommClause(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commclausedotcommclause.__type__stdgodot_internaldotgodotastdotAst_commclausedotCommClause }))) : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
            };
            var _rbrace = @:assignType (_p._expect((56 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2301"
            _p._expectSemi();
            var _body = (stdgo.Go.setRef(({ lbrace : _lbrace, list : _list, rbrace : _rbrace } : stdgo._internal.go.ast.Ast_blockstmt.BlockStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_blockstmtdotblockstmt.__type__stdgodot_internaldotgodotastdotAst_blockstmtdotBlockStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2304"
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt> = (stdgo.Go.setRef(({ select : _pos, body : _body } : stdgo._internal.go.ast.Ast_selectstmt.SelectStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_selectstmtdotselectstmt.__type__stdgodot_internaldotgodotastdotAst_selectstmtdotSelectStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseCommClause( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2238"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("CommClause" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
            var _comm:stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2244"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((62 : stdgo._internal.go.token.Token_token.Token))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2245"
                _p._next();
                var _lhs = _p._parseList(false);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2247"
                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((36 : stdgo._internal.go.token.Token_token.Token))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2249"
                    if (((_lhs.length) > (1 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2250"
                        _p._errorExpected(_lhs[(0 : stdgo.GoInt)].pos(), ("1 expression" : stdgo.GoString));
                    };
                    var _arrow = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2254"
                    _p._next();
                    var _rhs = @:assignType (_p._parseRhs() : stdgo._internal.go.ast.Ast_expr.Expr);
                    _comm = stdgo.Go.asInterface((stdgo.Go.setRef(({ chan : _lhs[(0 : stdgo.GoInt)], arrow : _arrow, value : _rhs } : stdgo._internal.go.ast.Ast_sendstmt.SendStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_sendstmtdotsendstmt.__type__stdgodot_internaldotgodotastdotAst_sendstmtdotSendStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_sendstmtdotsendstmt.__type__stdgodot_internaldotgodotastdotAst_sendstmtdotSendStmt }));
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2259"
                    {
                        var _tok = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok : stdgo._internal.go.token.Token_token.Token);
                        if (((_tok == (42 : stdgo._internal.go.token.Token_token.Token)) || (_tok == (47 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2261"
                            if (((_lhs.length) > (2 : stdgo.GoInt) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2262"
                                _p._errorExpected(_lhs[(0 : stdgo.GoInt)].pos(), ("1 or 2 expressions" : stdgo.GoString));
                                _lhs = (_lhs.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                            };
                            var _pos = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2267"
                            _p._next();
                            var _rhs = @:assignType (_p._parseRhs() : stdgo._internal.go.ast.Ast_expr.Expr);
                            _comm = stdgo.Go.asInterface((stdgo.Go.setRef(({ lhs : _lhs, tokPos : _pos, tok : _tok, rhs : (new stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>(1, 1, ...[_rhs]) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>) } : stdgo._internal.go.ast.Ast_assignstmt.AssignStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_assignstmtdotassignstmt.__type__stdgodot_internaldotgodotastdotAst_assignstmtdotAssignStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_assignstmtdotassignstmt.__type__stdgodot_internaldotgodotastdotAst_assignstmtdotAssignStmt }));
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2272"
                            if (((_lhs.length) > (1 : stdgo.GoInt) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2273"
                                _p._errorExpected(_lhs[(0 : stdgo.GoInt)].pos(), ("1 expression" : stdgo.GoString));
                            };
                            _comm = stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _lhs[(0 : stdgo.GoInt)] } : stdgo._internal.go.ast.Ast_exprstmt.ExprStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprstmtdotexprstmt.__type__stdgodot_internaldotgodotastdotAst_exprstmtdotExprStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprstmtdotexprstmt.__type__stdgodot_internaldotgodotastdotAst_exprstmtdotExprStmt }));
                        };
                    };
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2280"
                _p._expect((66 : stdgo._internal.go.token.Token_token.Token));
            };
            var _colon = @:assignType (_p._expect((58 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _body = _p._parseStmtList();
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2286"
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause> = (stdgo.Go.setRef(({ case_ : _pos, comm : _comm, colon : _colon, body : _body } : stdgo._internal.go.ast.Ast_commclause.CommClause), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commclausedotcommclause.__type__stdgodot_internaldotgodotastdotAst_commclausedotCommClause })) : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseSwitchStmt( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_stmt.Stmt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2184"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("SwitchStmt" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = @:assignType (_p._expect((83 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _s1:stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt), _s2:stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2191"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((51 : stdgo._internal.go.token.Token_token.Token))) {
                var _prevLev = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev : stdgo.GoInt);
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev = (-1 : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2194"
                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((57 : stdgo._internal.go.token.Token_token.Token))) {
                    {
                        var __tmp__ = _p._parseSimpleStmt((0 : stdgo.GoInt));
                        _s2 = @:tmpset0 __tmp__._0;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2197"
                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((57 : stdgo._internal.go.token.Token_token.Token))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2198"
                    _p._next();
                    _s1 = _s2;
                    _s2 = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2201"
                    if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((51 : stdgo._internal.go.token.Token_token.Token))) {
                        {
                            var __tmp__ = _p._parseSimpleStmt((0 : stdgo.GoInt));
                            _s2 = @:tmpset0 __tmp__._0;
                        };
                    };
                };
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev = _prevLev;
            };
            var _typeSwitch = @:assignType (_p._isTypeSwitchGuard(_s2) : Bool);
            var _lbrace = @:assignType (_p._expect((51 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _list:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2223"
            while ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == (62 : stdgo._internal.go.token.Token_token.Token)) || ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == (66 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                _list = (_list.__append__(stdgo.Go.asInterface(_p._parseCaseClause(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_caseclausedotcaseclause.__type__stdgodot_internaldotgodotastdotAst_caseclausedotCaseClause }))) : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
            };
            var _rbrace = @:assignType (_p._expect((56 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2227"
            _p._expectSemi();
            var _body = (stdgo.Go.setRef(({ lbrace : _lbrace, list : _list, rbrace : _rbrace } : stdgo._internal.go.ast.Ast_blockstmt.BlockStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_blockstmtdotblockstmt.__type__stdgodot_internaldotgodotastdotAst_blockstmtdotBlockStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2230"
            if (_typeSwitch) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2231"
                {
                    final __ret__:stdgo._internal.go.ast.Ast_stmt.Stmt = stdgo.Go.asInterface((stdgo.Go.setRef(({ switch_ : _pos, init : _s1, assign : _s2, body : _body } : stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_typeswitchstmtdottypeswitchstmt.__type__stdgodot_internaldotgodotastdotAst_typeswitchstmtdotTypeSwitchStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_typeswitchstmtdottypeswitchstmt.__type__stdgodot_internaldotgodotastdotAst_typeswitchstmtdotTypeSwitchStmt }));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2234"
            {
                final __ret__:stdgo._internal.go.ast.Ast_stmt.Stmt = stdgo.Go.asInterface((stdgo.Go.setRef(({ switch_ : _pos, init : _s1, tag : _p._makeExpr(_s2, ("switch expression" : stdgo.GoString)), body : _body } : stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_switchstmtdotswitchstmt.__type__stdgodot_internaldotgodotastdotAst_switchstmtdotSwitchStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_switchstmtdotswitchstmt.__type__stdgodot_internaldotgodotastdotAst_switchstmtdotSwitchStmt }));
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _isTypeSwitchGuard( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _s:stdgo._internal.go.ast.Ast_stmt.Stmt):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2163"
        {
            final __type__ = _s;
            {
                var __bool__ = true;
                while (__bool__) {
                    __bool__ = false;
                    if (stdgo.Go.typeEquals(({
                        final __t__ = __type__;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_stmtdotstmt.__type__stdgodot_internaldotgodotastdotAst_stmtdotStmt)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprstmtdotexprstmt.__type__stdgodot_internaldotgodotastdotAst_exprstmtdotExprStmt }))) {
                        var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>) : __type__.__underlying__().value);
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2166"
                        return stdgo._internal.go.parser.Parser__istypeswitchassert._isTypeSwitchAssert((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x);
                    } else if (stdgo.Go.typeEquals(({
                        final __t__ = __type__;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_stmtdotstmt.__type__stdgodot_internaldotgodotastdotAst_stmtdotStmt)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_assignstmtdotassignstmt.__type__stdgodot_internaldotgodotastdotAst_assignstmtdotAssignStmt }))) {
                        var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__.__underlying__().value);
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2169"
                        if (((((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lhs.length) == ((1 : stdgo.GoInt)) && ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rhs.length) == ((1 : stdgo.GoInt)) : Bool) && stdgo._internal.go.parser.Parser__istypeswitchassert._isTypeSwitchAssert((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rhs[(0 : stdgo.GoInt)]) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2170"
                            {
                                var __switchIndex__ = -1;
                                var __run__ = true;
                                while (__run__) {
                                    __run__ = false;
                                    {
                                        final __value__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tok;
                                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (42 : stdgo._internal.go.token.Token_token.Token)))) {
                                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2173"
                                            _p._error((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tokPos, ("expected \':=\', found \'=\'" : stdgo.GoString));
                                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2174"
                                            @:fallthrough {
                                                __switchIndex__ = 1;
                                                __run__ = true;
                                                continue;
                                            };
                                            break;
                                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (47 : stdgo._internal.go.token.Token_token.Token)))) {
                                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2176"
                                            return true;
                                            break;
                                            break;
                                        };
                                    };
                                    break;
                                };
                            };
                        };
                    };
                    break;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2180"
        return false;
    }
    @:keep
    @:tdfield
    static public function _parseCaseClause( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2138"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("CaseClause" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
            var _list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2144"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((62 : stdgo._internal.go.token.Token_token.Token))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2145"
                _p._next();
                _list = _p._parseList(true);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2148"
                _p._expect((66 : stdgo._internal.go.token.Token_token.Token));
            };
            var _colon = @:assignType (_p._expect((58 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _body = _p._parseStmtList();
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2154"
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause> = (stdgo.Go.setRef(({ case_ : _pos, list : _list, colon : _colon, body : _body } : stdgo._internal.go.ast.Ast_caseclause.CaseClause), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_caseclausedotcaseclause.__type__stdgodot_internaldotgodotastdotAst_caseclausedotCaseClause })) : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseIfStmt( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _a0 = stdgo._internal.go.parser.Parser__incnestlev._incNestLev(_p);
                final __f__ = stdgo._internal.go.parser.Parser__decnestlev._decNestLev;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2108"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("IfStmt" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = @:assignType (_p._expect((74 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var __tmp__ = _p._parseIfHeader(), _init:stdgo._internal.go.ast.Ast_stmt.Stmt = __tmp__._0, _cond:stdgo._internal.go.ast.Ast_expr.Expr = __tmp__._1;
            var _body = _p._parseBlockStmt();
            var _else_:stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2118"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((68 : stdgo._internal.go.token.Token_token.Token))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2119"
                _p._next();
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2120"
                {
                    final __value__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok;
                    if (__value__ == ((74 : stdgo._internal.go.token.Token_token.Token))) {
                        _else_ = stdgo.Go.asInterface(_p._parseIfStmt(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_ifstmtdotifstmt.__type__stdgodot_internaldotgodotastdotAst_ifstmtdotIfStmt }));
                    } else if (__value__ == ((51 : stdgo._internal.go.token.Token_token.Token))) {
                        _else_ = stdgo.Go.asInterface(_p._parseBlockStmt(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_blockstmtdotblockstmt.__type__stdgodot_internaldotgodotastdotAst_blockstmtdotBlockStmt }));
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2125"
                        _p._expectSemi();
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2127"
                        _p._errorExpected((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, ("if statement or block" : stdgo.GoString));
                        _else_ = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, to : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos } : stdgo._internal.go.ast.Ast_badstmt.BadStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badstmtdotbadstmt.__type__stdgodot_internaldotgodotastdotAst_badstmtdotBadStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badstmtdotbadstmt.__type__stdgodot_internaldotgodotastdotAst_badstmtdotBadStmt }));
                    };
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2131"
                _p._expectSemi();
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2134"
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt> = (stdgo.Go.setRef(({ if_ : _pos, init : _init, cond : _cond, body : _body, else_ : _else_ } : stdgo._internal.go.ast.Ast_ifstmt.IfStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_ifstmtdotifstmt.__type__stdgodot_internaldotgodotastdotAst_ifstmtdotIfStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseIfHeader( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):{ var _0 : stdgo._internal.go.ast.Ast_stmt.Stmt; var _1 : stdgo._internal.go.ast.Ast_expr.Expr; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var _init = (null : stdgo._internal.go.ast.Ast_stmt.Stmt), _cond = (null : stdgo._internal.go.ast.Ast_expr.Expr);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2046"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((51 : stdgo._internal.go.token.Token_token.Token))) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2047"
            _p._error((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, ("missing condition in if statement" : stdgo.GoString));
            _cond = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, to : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos } : stdgo._internal.go.ast.Ast_badexpr.BadExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr }));
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2049"
            return { _0 : _init, _1 : _cond };
        };
        var _prevLev = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev : stdgo.GoInt);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev = (-1 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2056"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((57 : stdgo._internal.go.token.Token_token.Token))) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2058"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((85 : stdgo._internal.go.token.Token_token.Token))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2059"
                _p._next();
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2060"
                _p._error((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, ("var declaration not allowed in if initializer" : stdgo.GoString));
            };
            {
                var __tmp__ = _p._parseSimpleStmt((0 : stdgo.GoInt));
                _init = @:tmpset0 __tmp__._0;
            };
        };
        var _condStmt:stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
        var _semi:stdgo._internal.go.parser.Parser_t__struct_27.T__struct_27 = ({ _pos : ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos), _lit : ("" : stdgo.GoString) } : stdgo._internal.go.parser.Parser_t__struct_27.T__struct_27);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2070"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((51 : stdgo._internal.go.token.Token_token.Token))) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2071"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((57 : stdgo._internal.go.token.Token_token.Token))) {
                _semi._pos = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos;
                _semi._lit = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lit?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2074"
                _p._next();
            } else {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2076"
                _p._expect((57 : stdgo._internal.go.token.Token_token.Token));
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2078"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((51 : stdgo._internal.go.token.Token_token.Token))) {
                {
                    var __tmp__ = _p._parseSimpleStmt((0 : stdgo.GoInt));
                    _condStmt = @:tmpset0 __tmp__._0;
                };
            };
        } else {
            _condStmt = _init;
            _init = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2086"
        if (_condStmt != null) {
            _cond = _p._makeExpr(_condStmt, ("boolean expression" : stdgo.GoString));
        } else if (_semi._pos.isValid()) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2089"
            if (_semi._lit == (("\n" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2090"
                _p._error(_semi._pos, ("unexpected newline, expecting { after if clause" : stdgo.GoString));
            } else {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2092"
                _p._error(_semi._pos, ("missing condition in if statement" : stdgo.GoString));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2097"
        if (_cond == null) {
            _cond = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, to : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos } : stdgo._internal.go.ast.Ast_badexpr.BadExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr }));
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev = _prevLev;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2102"
        return { _0 : _init, _1 : _cond };
    }
    @:keep
    @:tdfield
    static public function _makeExpr( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _s:stdgo._internal.go.ast.Ast_stmt.Stmt, _want:stdgo.GoString):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2028"
        if (_s == null) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2029"
            return (null : stdgo._internal.go.ast.Ast_expr.Expr);
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2031"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _s;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_stmtdotstmt.__type__stdgodot_internaldotgodotastdotAst_stmtdotStmt)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprstmtdotexprstmt.__type__stdgodot_internaldotgodotastdotAst_exprstmtdotExprStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>), _1 : false };
            }, _es = __tmp__._0, _isExpr = __tmp__._1;
            if (_isExpr) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2032"
                return (@:checkr _es ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x;
            };
        };
        var _found = @:assignType (("simple statement" : stdgo.GoString) : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2035"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _s;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_stmtdotstmt.__type__stdgodot_internaldotgodotastdotAst_stmtdotStmt)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_assignstmtdotassignstmt.__type__stdgodot_internaldotgodotastdotAst_assignstmtdotAssignStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>), _1 : false };
            }, __0 = __tmp__._0, _isAss = __tmp__._1;
            if (_isAss) {
                _found = ("assignment" : stdgo.GoString);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2038"
        _p._error(_s.pos(), stdgo._internal.fmt.Fmt_sprintf.sprintf(("expected %s, found %s (missing parentheses around composite literal?)" : stdgo.GoString), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_found, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2039"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ from : _s.pos(), to : _p._safePos(_s.end()) } : stdgo._internal.go.ast.Ast_badexpr.BadExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr }));
    }
    @:keep
    @:tdfield
    static public function _parseBranchStmt( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _tok:stdgo._internal.go.token.Token_token.Token):stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2013"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("BranchStmt" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = @:assignType (_p._expect(_tok) : stdgo._internal.go.token.Token_pos.Pos);
            var _label:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2019"
            if (((_tok != (69 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == (4 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                _label = _p._parseIdent();
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2022"
            _p._expectSemi();
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2024"
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt> = (stdgo.Go.setRef(({ tokPos : _pos, tok : _tok, label : _label } : stdgo._internal.go.ast.Ast_branchstmt.BranchStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_branchstmtdotbranchstmt.__type__stdgodot_internaldotgodotastdotAst_branchstmtdotBranchStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseReturnStmt( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1997"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("ReturnStmt" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2002"
            _p._expect((80 : stdgo._internal.go.token.Token_token.Token));
            var _x:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2004"
            if ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != (57 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != (56 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                _x = _p._parseList(true);
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2007"
            _p._expectSemi();
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2009"
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt> = (stdgo.Go.setRef(({ return_ : _pos, results : _x } : stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_returnstmtdotreturnstmt.__type__stdgodot_internaldotgodotastdotAst_returnstmtdotReturnStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseDeferStmt( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_stmt.Stmt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1982"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("DeferStmt" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = @:assignType (_p._expect((67 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _call = _p._parseCallExpr(("defer" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1988"
            _p._expectSemi();
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1989"
            if (({
                final value = _call;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1990"
                {
                    final __ret__:stdgo._internal.go.ast.Ast_stmt.Stmt = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : _pos, to : (_pos + (5 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos) } : stdgo._internal.go.ast.Ast_badstmt.BadStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badstmtdotbadstmt.__type__stdgodot_internaldotgodotastdotAst_badstmtdotBadStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badstmtdotbadstmt.__type__stdgodot_internaldotgodotastdotAst_badstmtdotBadStmt }));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1993"
            {
                final __ret__:stdgo._internal.go.ast.Ast_stmt.Stmt = stdgo.Go.asInterface((stdgo.Go.setRef(({ defer : _pos, call : _call } : stdgo._internal.go.ast.Ast_deferstmt.DeferStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_deferstmtdotdeferstmt.__type__stdgodot_internaldotgodotastdotAst_deferstmtdotDeferStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_deferstmtdotdeferstmt.__type__stdgodot_internaldotgodotastdotAst_deferstmtdotDeferStmt }));
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseGoStmt( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_stmt.Stmt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1967"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("GoStmt" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = @:assignType (_p._expect((72 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _call = _p._parseCallExpr(("go" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1973"
            _p._expectSemi();
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1974"
            if (({
                final value = _call;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1975"
                {
                    final __ret__:stdgo._internal.go.ast.Ast_stmt.Stmt = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : _pos, to : (_pos + (2 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos) } : stdgo._internal.go.ast.Ast_badstmt.BadStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badstmtdotbadstmt.__type__stdgodot_internaldotgodotastdotAst_badstmtdotBadStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badstmtdotbadstmt.__type__stdgodot_internaldotgodotastdotAst_badstmtdotBadStmt }));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1978"
            {
                final __ret__:stdgo._internal.go.ast.Ast_stmt.Stmt = stdgo.Go.asInterface((stdgo.Go.setRef(({ go : _pos, call : _call } : stdgo._internal.go.ast.Ast_gostmt.GoStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_gostmtdotgostmt.__type__stdgodot_internaldotgodotastdotAst_gostmtdotGoStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_gostmtdotgostmt.__type__stdgodot_internaldotgodotastdotAst_gostmtdotGoStmt }));
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseCallExpr( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _callType:stdgo.GoString):stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var _x = @:assignType (_p._parseRhs() : stdgo._internal.go.ast.Ast_expr.Expr);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1952"
        {
            var _t = @:assignType (stdgo._internal.go.parser.Parser__unparen._unparen(_x) : stdgo._internal.go.ast.Ast_expr.Expr);
            if (({
                final __t__ = _t;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) != (({
                final __t__ = _x;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1953"
                _p._error(_x.pos(), stdgo._internal.fmt.Fmt_sprintf.sprintf(("expression in %s must not be parenthesized" : stdgo.GoString), new stdgo.AnyInterface(_callType, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__());
                _x = _t;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1956"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _x;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_callexprdotcallexpr.__type__stdgodot_internaldotgodotastdotAst_callexprdotCallExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>), _1 : false };
            }, _call = __tmp__._0, _isCall = __tmp__._1;
            if (_isCall) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1957"
                return _call;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1959"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _x;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>), _1 : false };
            }, __0 = __tmp__._0, _isBad = __tmp__._1;
            if (!_isBad) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1961"
                _p._error(_p._safePos(_x.end()), stdgo._internal.fmt.Fmt_sprintf.sprintf(("expression in %s must be function call" : stdgo.GoString), new stdgo.AnyInterface(_callType, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__());
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1963"
        return null;
    }
    @:keep
    @:tdfield
    static public function _parseSimpleStmt( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _mode:stdgo.GoInt):{ var _0 : stdgo._internal.go.ast.Ast_stmt.Stmt; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1878"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("SimpleStmt" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _x = _p._parseList(false);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1884"
            {
                final __value__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok;
                if (__value__ == ((47 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((42 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((23 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((24 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((25 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((26 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((27 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((28 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((29 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((30 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((31 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((32 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((33 : stdgo._internal.go.token.Token_token.Token))) {
                    var __0 = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos), __1 = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok : stdgo._internal.go.token.Token_token.Token);
var _tok = __1, _pos = __0;
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1892"
                    _p._next();
                    var _y:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                    var _isRange = @:assignType (false : Bool);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1895"
                    if (((_mode == ((2 : stdgo.GoInt)) && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((79 : stdgo._internal.go.token.Token_token.Token)) : Bool) && (((_tok == (47 : stdgo._internal.go.token.Token_token.Token)) || (_tok == (42 : stdgo._internal.go.token.Token_token.Token)) : Bool)) : Bool)) {
                        var _pos = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1897"
                        _p._next();
                        _y = (new stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>(1, 1, ...[stdgo.Go.asInterface((stdgo.Go.setRef(({ opPos : _pos, op : (79 : stdgo._internal.go.token.Token_token.Token), x : _p._parseRhs() } : stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_unaryexprdotunaryexpr.__type__stdgodot_internaldotgodotastdotAst_unaryexprdotUnaryExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_unaryexprdotunaryexpr.__type__stdgodot_internaldotgodotastdotAst_unaryexprdotUnaryExpr }))]) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                        _isRange = true;
                    } else {
                        _y = _p._parseList(true);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1903"
                    {
                        final __ret__:{ var _0 : stdgo._internal.go.ast.Ast_stmt.Stmt; var _1 : Bool; } = { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(({ lhs : _x, tokPos : _pos, tok : _tok, rhs : _y } : stdgo._internal.go.ast.Ast_assignstmt.AssignStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_assignstmtdotassignstmt.__type__stdgodot_internaldotgodotastdotAst_assignstmtdotAssignStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_assignstmtdotassignstmt.__type__stdgodot_internaldotgodotastdotAst_assignstmtdotAssignStmt })), _1 : _isRange };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1906"
            if (((_x.length) > (1 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1907"
                _p._errorExpected(_x[(0 : stdgo.GoInt)].pos(), ("1 expression" : stdgo.GoString));
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1911"
            {
                final __value__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok;
                if (__value__ == ((58 : stdgo._internal.go.token.Token_token.Token))) {
                    var _colon = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1915"
                    _p._next();
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1916"
                    {
                        var __tmp__ = @:castTranslate try {
                            { _0 : (stdgo.Go.typeAssert(({
                                final __t__ = _x[(0 : stdgo.GoInt)];
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                        } catch(__exception__) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                        }, _label = __tmp__._0, _isIdent = __tmp__._1;
                        if (((_mode == (1 : stdgo.GoInt)) && _isIdent : Bool)) {
                            var _stmt = (stdgo.Go.setRef(({ label : _label, colon : _colon, stmt : _p._parseStmt() } : stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_labeledstmtdotlabeledstmt.__type__stdgodot_internaldotgodotastdotAst_labeledstmtdotLabeledStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>);
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1921"
                            {
                                final __ret__:{ var _0 : stdgo._internal.go.ast.Ast_stmt.Stmt; var _1 : Bool; } = { _0 : stdgo.Go.asInterface(_stmt, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_labeledstmtdotlabeledstmt.__type__stdgodot_internaldotgodotastdotAst_labeledstmtdotLabeledStmt })), _1 : false };
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1929"
                    _p._error(_colon, ("illegal label declaration" : stdgo.GoString));
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1930"
                    {
                        final __ret__:{ var _0 : stdgo._internal.go.ast.Ast_stmt.Stmt; var _1 : Bool; } = { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(({ from : _x[(0 : stdgo.GoInt)].pos(), to : (_colon + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos) } : stdgo._internal.go.ast.Ast_badstmt.BadStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badstmtdotbadstmt.__type__stdgodot_internaldotgodotastdotAst_badstmtdotBadStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badstmtdotbadstmt.__type__stdgodot_internaldotgodotastdotAst_badstmtdotBadStmt })), _1 : false };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((36 : stdgo._internal.go.token.Token_token.Token))) {
                    var _arrow = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1935"
                    _p._next();
                    var _y = @:assignType (_p._parseRhs() : stdgo._internal.go.ast.Ast_expr.Expr);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1937"
                    {
                        final __ret__:{ var _0 : stdgo._internal.go.ast.Ast_stmt.Stmt; var _1 : Bool; } = { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(({ chan : _x[(0 : stdgo.GoInt)], arrow : _arrow, value : _y } : stdgo._internal.go.ast.Ast_sendstmt.SendStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_sendstmtdotsendstmt.__type__stdgodot_internaldotgodotastdotAst_sendstmtdotSendStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_sendstmtdotsendstmt.__type__stdgodot_internaldotgodotastdotAst_sendstmtdotSendStmt })), _1 : false };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((37 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((38 : stdgo._internal.go.token.Token_token.Token))) {
                    var _s = (stdgo.Go.setRef(({ x : _x[(0 : stdgo.GoInt)], tokPos : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, tok : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok } : stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_incdecstmtdotincdecstmt.__type__stdgodot_internaldotgodotastdotAst_incdecstmtdotIncDecStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1942"
                    _p._next();
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1943"
                    {
                        final __ret__:{ var _0 : stdgo._internal.go.ast.Ast_stmt.Stmt; var _1 : Bool; } = { _0 : stdgo.Go.asInterface(_s, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_incdecstmtdotincdecstmt.__type__stdgodot_internaldotgodotastdotAst_incdecstmtdotIncDecStmt })), _1 : false };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1947"
            {
                final __ret__:{ var _0 : stdgo._internal.go.ast.Ast_stmt.Stmt; var _1 : Bool; } = { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x[(0 : stdgo.GoInt)] } : stdgo._internal.go.ast.Ast_exprstmt.ExprStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprstmtdotexprstmt.__type__stdgodot_internaldotgodotastdotAst_exprstmtdotExprStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprstmtdotexprstmt.__type__stdgodot_internaldotgodotastdotAst_exprstmtdotExprStmt })), _1 : false };
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return { _0 : (null : stdgo._internal.go.ast.Ast_stmt.Stmt), _1 : false };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return { _0 : (null : stdgo._internal.go.ast.Ast_stmt.Stmt), _1 : false };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseRhs( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var _old = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inRhs : Bool);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inRhs = true;
        var _x = @:assignType (_p._parseExpr() : stdgo._internal.go.ast.Ast_expr.Expr);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inRhs = _old;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1860"
        return _x;
    }
    @:keep
    @:tdfield
    static public function _parseExpr( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1848"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("Expression" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1852"
            {
                final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = _p._parseBinaryExpr((null : stdgo._internal.go.ast.Ast_expr.Expr), (1 : stdgo.GoInt));
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseBinaryExpr( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _x:stdgo._internal.go.ast.Ast_expr.Expr, _prec1:stdgo.GoInt):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1822"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("BinaryExpr" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1826"
            if (_x == null) {
                _x = _p._parseUnaryExpr();
            };
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nestLev = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nestLev - (_n) : stdgo.GoInt);
                    };
                    a();
                }) });
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1834"
            {
                _n = (1 : stdgo.GoInt);
                while (true) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1835"
                    stdgo._internal.go.parser.Parser__incnestlev._incNestLev(_p);
var __tmp__ = _p._tokPrec(), _op:stdgo._internal.go.token.Token_token.Token = __tmp__._0, _oprec:stdgo.GoInt = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1837"
                    if ((_oprec < _prec1 : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1838"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return _x;
                        };
                    };
var _pos = @:assignType (_p._expect(_op) : stdgo._internal.go.token.Token_pos.Pos);
var _y = @:assignType (_p._parseBinaryExpr((null : stdgo._internal.go.ast.Ast_expr.Expr), (_oprec + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.go.ast.Ast_expr.Expr);
_x = stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x, opPos : _pos, op : _op, y : _y } : stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_binaryexprdotbinaryexpr.__type__stdgodot_internaldotgodotastdotAst_binaryexprdotBinaryExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_binaryexprdotbinaryexpr.__type__stdgodot_internaldotgodotastdotAst_binaryexprdotBinaryExpr }));
                    _n++;
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _tokPrec( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):{ var _0 : stdgo._internal.go.token.Token_token.Token; var _1 : stdgo.GoInt; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var _tok = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok : stdgo._internal.go.token.Token_token.Token);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1811"
        if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inRhs && (_tok == (42 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
            _tok = (39 : stdgo._internal.go.token.Token_token.Token);
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1814"
        return { _0 : _tok, _1 : _tok.precedence() };
    }
    @:keep
    @:tdfield
    static public function _parseUnaryExpr( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _a0 = stdgo._internal.go.parser.Parser__incnestlev._incNestLev(_p);
                final __f__ = stdgo._internal.go.parser.Parser__decnestlev._decNestLev;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1741"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("UnaryExpr" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1745"
            {
                final __value__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok;
                if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((13 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((43 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((19 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((17 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((88 : stdgo._internal.go.token.Token_token.Token))) {
                    var __0 = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos), __1 = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok : stdgo._internal.go.token.Token_token.Token);
var _op = __1, _pos = __0;
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1748"
                    _p._next();
                    var _x = @:assignType (_p._parseUnaryExpr() : stdgo._internal.go.ast.Ast_expr.Expr);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1750"
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ opPos : _pos, op : _op, x : _x } : stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_unaryexprdotunaryexpr.__type__stdgodot_internaldotgodotastdotAst_unaryexprdotUnaryExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_unaryexprdotunaryexpr.__type__stdgodot_internaldotgodotastdotAst_unaryexprdotUnaryExpr }));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((36 : stdgo._internal.go.token.Token_token.Token))) {
                    var _arrow = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1755"
                    _p._next();
                    var _x = @:assignType (_p._parseUnaryExpr() : stdgo._internal.go.ast.Ast_expr.Expr);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1774"
                    {
                        var __tmp__ = @:castTranslate try {
                            { _0 : (stdgo.Go.typeAssert(({
                                final __t__ = _x;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_chantypedotchantype.__type__stdgodot_internaldotgodotastdotAst_chantypedotChanType })) : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>), _1 : true };
                        } catch(__exception__) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>), _1 : false };
                        }, _typ = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            var _dir = @:assignType (1 : stdgo._internal.go.ast.Ast_chandir.ChanDir);
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1779"
                            while ((_ok && (_dir == (1 : stdgo._internal.go.ast.Ast_chandir.ChanDir)) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1780"
                                if ((@:checkr _typ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dir == ((2 : stdgo._internal.go.ast.Ast_chandir.ChanDir))) {
                                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1782"
                                    _p._errorExpected((@:checkr _typ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arrow, ("\'chan\'" : stdgo.GoString));
                                };
                                {
                                    final __tmp__0 = (@:checkr _typ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arrow;
                                    final __tmp__1 = _arrow;
                                    final __tmp__2 = _arrow;
                                    _arrow = @:binopAssign __tmp__0;
                                    (@:checkr _typ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).begin = @:binopAssign __tmp__1;
                                    (@:checkr _typ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arrow = @:binopAssign __tmp__2;
                                };
                                {
                                    final __tmp__0 = (@:checkr _typ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dir;
                                    final __tmp__1 = (2 : stdgo._internal.go.ast.Ast_chandir.ChanDir);
                                    _dir = @:binopAssign __tmp__0;
                                    (@:checkr _typ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dir = @:binopAssign __tmp__1;
                                };
                                {
                                    var __tmp__ = @:castTranslate try {
                                        { _0 : (stdgo.Go.typeAssert(({
                                            final __t__ = (@:checkr _typ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value;
                                            if (__t__ == null) {
                                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                                            } else {
                                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                            };
                                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_chantypedotchantype.__type__stdgodot_internaldotgodotastdotAst_chantypedotChanType })) : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>), _1 : true };
                                    } catch(__exception__) {
                                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>), _1 : false };
                                    };
                                    _typ = @:tmpset0 __tmp__._0;
                                    _ok = @:tmpset0 __tmp__._1;
                                };
                            };
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1788"
                            if (_dir == ((1 : stdgo._internal.go.ast.Ast_chandir.ChanDir))) {
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1789"
                                _p._errorExpected(_arrow, ("channel type" : stdgo.GoString));
                            };
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1792"
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return _x;
                            };
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1796"
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ opPos : _arrow, op : (36 : stdgo._internal.go.token.Token_token.Token), x : _x } : stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_unaryexprdotunaryexpr.__type__stdgodot_internaldotgodotastdotAst_unaryexprdotUnaryExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_unaryexprdotunaryexpr.__type__stdgodot_internaldotgodotastdotAst_unaryexprdotUnaryExpr }));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                    var _pos = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1801"
                    _p._next();
                    var _x = @:assignType (_p._parseUnaryExpr() : stdgo._internal.go.ast.Ast_expr.Expr);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1803"
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ star : _pos, x : _x } : stdgo._internal.go.ast.Ast_starexpr.StarExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_starexprdotstarexpr.__type__stdgodot_internaldotgodotastdotAst_starexprdotStarExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_starexprdotstarexpr.__type__stdgodot_internaldotgodotastdotAst_starexprdotStarExpr }));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1806"
            {
                final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = _p._parsePrimaryExpr((null : stdgo._internal.go.ast.Ast_expr.Expr));
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parsePrimaryExpr( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1666"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("PrimaryExpr" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1670"
            if (_x == null) {
                _x = _p._parseOperand();
            };
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nestLev = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nestLev - (_n) : stdgo.GoInt);
                    };
                    a();
                }) });
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1678"
            {
                _n = (1 : stdgo.GoInt);
                while (true) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1679"
                    stdgo._internal.go.parser.Parser__incnestlev._incNestLev(_p);
//"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1680"
                    {
                        final __value__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok;
                        if (__value__ == ((53 : stdgo._internal.go.token.Token_token.Token))) {
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1682"
                            _p._next();
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1683"
                            {
                                final __value__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok;
                                if (__value__ == ((4 : stdgo._internal.go.token.Token_token.Token))) {
                                    _x = _p._parseSelector(_x);
                                } else if (__value__ == ((49 : stdgo._internal.go.token.Token_token.Token))) {
                                    _x = _p._parseTypeAssertion(_x);
                                } else {
                                    var _pos = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
                                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1690"
                                    _p._errorExpected(_pos, ("selector or type assertion" : stdgo.GoString));
                                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1696"
                                    if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((56 : stdgo._internal.go.token.Token_token.Token))) {
                                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1697"
                                        _p._next();
                                    };
                                    var _sel = (stdgo.Go.setRef(({ namePos : _pos, name : ("_" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_ident.Ident), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
                                    _x = stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x, sel : _sel } : stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_selectorexprdotselectorexpr.__type__stdgodot_internaldotgodotastdotAst_selectorexprdotSelectorExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_selectorexprdotselectorexpr.__type__stdgodot_internaldotgodotastdotAst_selectorexprdotSelectorExpr }));
                                };
                            };
                        } else if (__value__ == ((50 : stdgo._internal.go.token.Token_token.Token))) {
                            _x = _p._parseIndexOrSliceOrInstance(_x);
                        } else if (__value__ == ((49 : stdgo._internal.go.token.Token_token.Token))) {
                            _x = stdgo.Go.asInterface(_p._parseCallOrConversion(_x), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_callexprdotcallexpr.__type__stdgodot_internaldotgodotastdotAst_callexprdotCallExpr }));
                        } else if (__value__ == ((51 : stdgo._internal.go.token.Token_token.Token))) {
                            var _t = @:assignType (stdgo._internal.go.parser.Parser__unparen._unparen(_x) : stdgo._internal.go.ast.Ast_expr.Expr);
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1711"
                            {
                                final __type__ = _t;
                                if (stdgo.Go.typeEquals(({
                                    final __t__ = __type__;
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr })) || stdgo.Go.typeEquals(({
                                    final __t__ = __type__;
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) || stdgo.Go.typeEquals(({
                                    final __t__ = __type__;
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_selectorexprdotselectorexpr.__type__stdgodot_internaldotgodotastdotAst_selectorexprdotSelectorExpr }))) {
                                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1713"
                                    if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev < (0 : stdgo.GoInt) : Bool)) {
                                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1714"
                                        {
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return _x;
                                        };
                                    };
                                } else if (stdgo.Go.typeEquals(({
                                    final __t__ = __type__;
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_indexexprdotindexexpr.__type__stdgodot_internaldotgodotastdotAst_indexexprdotIndexExpr })) || stdgo.Go.typeEquals(({
                                    final __t__ = __type__;
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_indexlistexprdotindexlistexpr.__type__stdgodot_internaldotgodotastdotAst_indexlistexprdotIndexListExpr }))) {
                                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1718"
                                    if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev < (0 : stdgo.GoInt) : Bool)) {
                                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1719"
                                        {
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return _x;
                                        };
                                    };
                                } else if (stdgo.Go.typeEquals(({
                                    final __t__ = __type__;
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_arraytypedotarraytype.__type__stdgodot_internaldotgodotastdotAst_arraytypedotArrayType })) || stdgo.Go.typeEquals(({
                                    final __t__ = __type__;
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_structtypedotstructtype.__type__stdgodot_internaldotgodotastdotAst_structtypedotStructType })) || stdgo.Go.typeEquals(({
                                    final __t__ = __type__;
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_maptypedotmaptype.__type__stdgodot_internaldotgodotastdotAst_maptypedotMapType }))) {} else {
                                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1725"
                                    {
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return _x;
                                    };
                                };
                            };
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1727"
                            if (({
                                final __t__ = _t;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }) != (({
                                final __t__ = _x;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }))) {
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1728"
                                _p._error(_t.pos(), ("cannot parenthesize type in composite literal" : stdgo.GoString));
                            };
                            _x = _p._parseLiteralValue(_x);
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1733"
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return _x;
                            };
                        };
                    };
                    _n++;
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseLiteralValue( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _typ:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1642"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("LiteralValue" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _lbrace = @:assignType (_p._expect((51 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _elts:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1648"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev++;
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1649"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((56 : stdgo._internal.go.token.Token_token.Token))) {
                _elts = _p._parseElementList();
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1652"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev--;
            var _rbrace = @:assignType (_p._expectClosing((56 : stdgo._internal.go.token.Token_token.Token), ("composite literal" : stdgo.GoString)) : stdgo._internal.go.token.Token_pos.Pos);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1654"
            {
                final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ type : _typ, lbrace : _lbrace, elts : _elts, rbrace : _rbrace } : stdgo._internal.go.ast.Ast_compositelit.CompositeLit), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_compositelitdotcompositelit.__type__stdgodot_internaldotgodotastdotAst_compositelitdotCompositeLit })) : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_compositelitdotcompositelit.__type__stdgodot_internaldotgodotastdotAst_compositelitdotCompositeLit }));
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseElementList( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _list = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1626"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("ElementList" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1630"
            while ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != (56 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != (1 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                _list = (_list.__append__(_p._parseElement()) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1632"
                if (!_p._atComma(("composite literal" : stdgo.GoString), (56 : stdgo._internal.go.token.Token_token.Token))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1633"
                    break;
                };
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1635"
                _p._next();
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1638"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _list;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return _list;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return _list;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseElement( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1611"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("Element" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _x = @:assignType (_p._parseValue() : stdgo._internal.go.ast.Ast_expr.Expr);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1616"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((58 : stdgo._internal.go.token.Token_token.Token))) {
                var _colon = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1618"
                _p._next();
                _x = stdgo.Go.asInterface((stdgo.Go.setRef(({ key : _x, colon : _colon, value : _p._parseValue() } : stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_keyvalueexprdotkeyvalueexpr.__type__stdgodot_internaldotgodotastdotAst_keyvalueexprdotKeyValueExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_keyvalueexprdotkeyvalueexpr.__type__stdgodot_internaldotgodotastdotAst_keyvalueexprdotKeyValueExpr }));
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1622"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _x;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseValue( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1597"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("Element" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1601"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((51 : stdgo._internal.go.token.Token_token.Token))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1602"
                {
                    final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = _p._parseLiteralValue((null : stdgo._internal.go.ast.Ast_expr.Expr));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _x = @:assignType (_p._parseExpr() : stdgo._internal.go.ast.Ast_expr.Expr);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1607"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _x;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseCallOrConversion( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _fun:stdgo._internal.go.ast.Ast_expr.Expr):stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1571"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("CallOrConversion" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _lparen = @:assignType (_p._expect((49 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1576"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev++;
            var _list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
            var _ellipsis:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1579"
            while ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((54 : stdgo._internal.go.token.Token_token.Token)) && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((1 : stdgo._internal.go.token.Token_token.Token)) : Bool) && !_ellipsis.isValid() : Bool)) {
                _list = (_list.__append__(_p._parseRhs()) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1581"
                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((48 : stdgo._internal.go.token.Token_token.Token))) {
                    _ellipsis = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos;
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1583"
                    _p._next();
                };
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1585"
                if (!_p._atComma(("argument list" : stdgo.GoString), (54 : stdgo._internal.go.token.Token_token.Token))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1586"
                    break;
                };
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1588"
                _p._next();
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1590"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev--;
            var _rparen = @:assignType (_p._expectClosing((54 : stdgo._internal.go.token.Token_token.Token), ("argument list" : stdgo.GoString)) : stdgo._internal.go.token.Token_pos.Pos);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1593"
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr> = (stdgo.Go.setRef(({ fun : _fun, lparen : _lparen, args : _list, ellipsis : _ellipsis, rparen : _rparen } : stdgo._internal.go.ast.Ast_callexpr.CallExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_callexprdotcallexpr.__type__stdgodot_internaldotgodotastdotAst_callexprdotCallExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseIndexOrSliceOrInstance( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1487"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("parseIndexOrSliceOrInstance" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _lbrack = @:assignType (_p._expect((50 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1492"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((55 : stdgo._internal.go.token.Token_token.Token))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1495"
                _p._errorExpected((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, ("operand" : stdgo.GoString));
                var _rbrack = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1497"
                _p._next();
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1498"
                {
                    final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x, lbrack : _lbrack, index : stdgo.Go.asInterface((stdgo.Go.setRef(({ from : _rbrack, to : _rbrack } : stdgo._internal.go.ast.Ast_badexpr.BadExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr })), rbrack : _rbrack } : stdgo._internal.go.ast.Ast_indexexpr.IndexExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_indexexprdotindexexpr.__type__stdgodot_internaldotgodotastdotAst_indexexprdotIndexExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_indexexprdotindexexpr.__type__stdgodot_internaldotgodotastdotAst_indexexprdotIndexExpr }));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1505"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev++;
            {};
            var _args:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
            var _index:stdgo.GoArray<stdgo._internal.go.ast.Ast_expr.Expr> = new stdgo.GoArray<stdgo._internal.go.ast.Ast_expr.Expr>(3, 3);
            var _colons:stdgo.GoArray<stdgo._internal.go.token.Token_pos.Pos> = new stdgo.GoArray<stdgo._internal.go.token.Token_pos.Pos>(2, 2).__setNumber32__();
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1511"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((58 : stdgo._internal.go.token.Token_token.Token))) {
                _index[(0 : stdgo.GoInt)] = _p._parseRhs();
            };
            var _ncolons = @:assignType (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1517"
            {
                final __value__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok;
                if (__value__ == ((58 : stdgo._internal.go.token.Token_token.Token))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1520"
                    while ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == (58 : stdgo._internal.go.token.Token_token.Token)) && (_ncolons < (_colons.length) : Bool) : Bool)) {
                        _colons[(_ncolons : stdgo.GoInt)] = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos;
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1522"
                        _ncolons++;
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1523"
                        _p._next();
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1524"
                        if ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((58 : stdgo._internal.go.token.Token_token.Token)) && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((55 : stdgo._internal.go.token.Token_token.Token)) : Bool) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != (1 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                            _index[(_ncolons : stdgo.GoInt)] = _p._parseRhs();
                        };
                    };
                } else if (__value__ == ((52 : stdgo._internal.go.token.Token_token.Token))) {
                    _args = (_args.__append__(_index[(0 : stdgo.GoInt)]) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1531"
                    while ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((52 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1532"
                        _p._next();
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1533"
                        if ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != (55 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != (1 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                            _args = (_args.__append__(_p._parseType()) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                        };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1539"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev--;
            var _rbrack = @:assignType (_p._expect((55 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1542"
            if ((_ncolons > (0 : stdgo.GoInt) : Bool)) {
                var _slice3 = @:assignType (false : Bool);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1545"
                if (_ncolons == ((2 : stdgo.GoInt))) {
                    _slice3 = true;
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1549"
                    if (_index[(1 : stdgo.GoInt)] == null) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1550"
                        _p._error(_colons[(0 : stdgo.GoInt)], ("middle index required in 3-index slice" : stdgo.GoString));
                        _index[(1 : stdgo.GoInt)] = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : (_colons[(0 : stdgo.GoInt)] + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos), to : _colons[(1 : stdgo.GoInt)] } : stdgo._internal.go.ast.Ast_badexpr.BadExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr }));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1553"
                    if (_index[(2 : stdgo.GoInt)] == null) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1554"
                        _p._error(_colons[(1 : stdgo.GoInt)], ("final index required in 3-index slice" : stdgo.GoString));
                        _index[(2 : stdgo.GoInt)] = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : (_colons[(1 : stdgo.GoInt)] + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos), to : _rbrack } : stdgo._internal.go.ast.Ast_badexpr.BadExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr }));
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1558"
                {
                    final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x, lbrack : _lbrack, low : _index[(0 : stdgo.GoInt)], high : _index[(1 : stdgo.GoInt)], max : _index[(2 : stdgo.GoInt)], slice3 : _slice3, rbrack : _rbrack } : stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_sliceexprdotsliceexpr.__type__stdgodot_internaldotgodotastdotAst_sliceexprdotSliceExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_sliceexprdotsliceexpr.__type__stdgodot_internaldotgodotastdotAst_sliceexprdotSliceExpr }));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1561"
            if ((_args.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1563"
                {
                    final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x, lbrack : _lbrack, index : _index[(0 : stdgo.GoInt)], rbrack : _rbrack } : stdgo._internal.go.ast.Ast_indexexpr.IndexExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_indexexprdotindexexpr.__type__stdgodot_internaldotgodotastdotAst_indexexprdotIndexExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_indexexprdotindexexpr.__type__stdgodot_internaldotgodotastdotAst_indexexprdotIndexExpr }));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1567"
            {
                final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo._internal.go.internal.typeparams.Typeparams_packindexexpr.packIndexExpr(_x, _lbrack, _args, _rbrack);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseTypeAssertion( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1469"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("TypeAssertion" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _lparen = @:assignType (_p._expect((49 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _typ:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1475"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((84 : stdgo._internal.go.token.Token_token.Token))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1477"
                _p._next();
            } else {
                _typ = _p._parseType();
            };
            var _rparen = @:assignType (_p._expect((54 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1483"
            {
                final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x, type : _typ, lparen : _lparen, rparen : _rparen } : stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_typeassertexprdottypeassertexpr.__type__stdgodot_internaldotgodotastdotAst_typeassertexprdotTypeAssertExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_typeassertexprdottypeassertexpr.__type__stdgodot_internaldotgodotastdotAst_typeassertexprdotTypeAssertExpr }));
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseSelector( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1459"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("Selector" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _sel = _p._parseIdent();
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1465"
            {
                final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x, sel : _sel } : stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_selectorexprdotselectorexpr.__type__stdgodot_internaldotgodotastdotAst_selectorexprdotSelectorExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_selectorexprdotselectorexpr.__type__stdgodot_internaldotgodotastdotAst_selectorexprdotSelectorExpr }));
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseOperand( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1417"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("Operand" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1421"
            {
                final __value__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok;
                if (__value__ == ((4 : stdgo._internal.go.token.Token_token.Token))) {
                    var _x = _p._parseIdent();
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1424"
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(_x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent }));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((5 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((6 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((7 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((8 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((9 : stdgo._internal.go.token.Token_token.Token))) {
                    var _x = (stdgo.Go.setRef(({ valuePos : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, kind : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok, value : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lit?.__copy__() } : stdgo._internal.go.ast.Ast_basiclit.BasicLit), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_basiclitdotbasiclit.__type__stdgodot_internaldotgodotastdotAst_basiclitdotBasicLit })) : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1428"
                    _p._next();
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1429"
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(_x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_basiclitdotbasiclit.__type__stdgodot_internaldotgodotastdotAst_basiclitdotBasicLit }));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((49 : stdgo._internal.go.token.Token_token.Token))) {
                    var _lparen = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1433"
                    _p._next();
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1434"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev++;
                    var _x = @:assignType (_p._parseRhs() : stdgo._internal.go.ast.Ast_expr.Expr);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1436"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev--;
                    var _rparen = @:assignType (_p._expect((54 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1438"
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ lparen : _lparen, x : _x, rparen : _rparen } : stdgo._internal.go.ast.Ast_parenexpr.ParenExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_parenexprdotparenexpr.__type__stdgodot_internaldotgodotastdotAst_parenexprdotParenExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_parenexprdotparenexpr.__type__stdgodot_internaldotgodotastdotAst_parenexprdotParenExpr }));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((71 : stdgo._internal.go.token.Token_token.Token))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1441"
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = _p._parseFuncTypeOrLit();
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1444"
            {
                var _typ = @:assignType (_p._tryIdentOrType() : stdgo._internal.go.ast.Ast_expr.Expr);
                if (_typ != null) {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(({
                            final __t__ = _typ;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                    }, __0 = __tmp__._0, _isIdent = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1447"
                    stdgo._internal.go.parser.Parser__assert._assert(!_isIdent, ("type cannot be identifier" : stdgo.GoString));
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1448"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _typ;
                    };
                };
            };
            var _pos = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1453"
            _p._errorExpected(_pos, ("operand" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1454"
            _p._advance(stdgo._internal.go.parser.Parser__stmtstart._stmtStart);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1455"
            {
                final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : _pos, to : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos } : stdgo._internal.go.ast.Ast_badexpr.BadExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr }));
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseFuncTypeOrLit( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1397"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("FuncTypeOrLit" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _typ = _p._parseFuncType();
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1402"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((51 : stdgo._internal.go.token.Token_token.Token))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1404"
                {
                    final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(_typ, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_functypedotfunctype.__type__stdgodot_internaldotgodotastdotAst_functypedotFuncType }));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1407"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev++;
            var _body = _p._parseBody();
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1409"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev--;
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1411"
            {
                final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ type : _typ, body : _body } : stdgo._internal.go.ast.Ast_funclit.FuncLit), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_funclitdotfunclit.__type__stdgodot_internaldotgodotastdotAst_funclitdotFuncLit })) : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_funclitdotfunclit.__type__stdgodot_internaldotgodotastdotAst_funclitdotFuncLit }));
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseBlockStmt( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1382"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("BlockStmt" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _lbrace = @:assignType (_p._expect((51 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _list = _p._parseStmtList();
            var _rbrace = @:assignType (_p._expect2((56 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1390"
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = (stdgo.Go.setRef(({ lbrace : _lbrace, list : _list, rbrace : _rbrace } : stdgo._internal.go.ast.Ast_blockstmt.BlockStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_blockstmtdotblockstmt.__type__stdgodot_internaldotgodotastdotAst_blockstmtdotBlockStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseBody( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1370"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("Body" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _lbrace = @:assignType (_p._expect((51 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _list = _p._parseStmtList();
            var _rbrace = @:assignType (_p._expect2((56 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1378"
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = (stdgo.Go.setRef(({ lbrace : _lbrace, list : _list, rbrace : _rbrace } : stdgo._internal.go.ast.Ast_blockstmt.BlockStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_blockstmtdotblockstmt.__type__stdgodot_internaldotgodotastdotAst_blockstmtdotBlockStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseStmtList( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _list = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1358"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("StatementList" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1362"
            while (((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((62 : stdgo._internal.go.token.Token_token.Token)) && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((66 : stdgo._internal.go.token.Token_token.Token)) : Bool) && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((56 : stdgo._internal.go.token.Token_token.Token)) : Bool) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != (1 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                _list = (_list.__append__(_p._parseStmt()) : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1366"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _list;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return _list;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return _list;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _tryIdentOrType( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _a0 = stdgo._internal.go.parser.Parser__incnestlev._incNestLev(_p);
                final __f__ = stdgo._internal.go.parser.Parser__decnestlev._decNestLev;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1320"
            {
                final __value__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok;
                if (__value__ == ((4 : stdgo._internal.go.token.Token_token.Token))) {
                    var _typ = @:assignType (_p._parseTypeName(null) : stdgo._internal.go.ast.Ast_expr.Expr);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1323"
                    if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((50 : stdgo._internal.go.token.Token_token.Token))) {
                        _typ = _p._parseTypeInstance(_typ);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1326"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _typ;
                    };
                } else if (__value__ == ((50 : stdgo._internal.go.token.Token_token.Token))) {
                    var _lbrack = @:assignType (_p._expect((50 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1329"
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(_p._parseArrayType(_lbrack, (null : stdgo._internal.go.ast.Ast_expr.Expr)), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_arraytypedotarraytype.__type__stdgodot_internaldotgodotastdotAst_arraytypedotArrayType }));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((82 : stdgo._internal.go.token.Token_token.Token))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1331"
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(_p._parseStructType(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_structtypedotstructtype.__type__stdgodot_internaldotgodotastdotAst_structtypedotStructType }));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1333"
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(_p._parsePointerType(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_starexprdotstarexpr.__type__stdgodot_internaldotgodotastdotAst_starexprdotStarExpr }));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((71 : stdgo._internal.go.token.Token_token.Token))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1335"
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(_p._parseFuncType(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_functypedotfunctype.__type__stdgodot_internaldotgodotastdotAst_functypedotFuncType }));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((76 : stdgo._internal.go.token.Token_token.Token))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1337"
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(_p._parseInterfaceType(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_interfacetypedotinterfacetype.__type__stdgodot_internaldotgodotastdotAst_interfacetypedotInterfaceType }));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((77 : stdgo._internal.go.token.Token_token.Token))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1339"
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(_p._parseMapType(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_maptypedotmaptype.__type__stdgodot_internaldotgodotastdotAst_maptypedotMapType }));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((63 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((36 : stdgo._internal.go.token.Token_token.Token))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1341"
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(_p._parseChanType(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_chantypedotchantype.__type__stdgodot_internaldotgodotastdotAst_chantypedotChanType }));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((49 : stdgo._internal.go.token.Token_token.Token))) {
                    var _lparen = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1344"
                    _p._next();
                    var _typ = @:assignType (_p._parseType() : stdgo._internal.go.ast.Ast_expr.Expr);
                    var _rparen = @:assignType (_p._expect((54 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1347"
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ lparen : _lparen, x : _typ, rparen : _rparen } : stdgo._internal.go.ast.Ast_parenexpr.ParenExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_parenexprdotparenexpr.__type__stdgodot_internaldotgodotastdotAst_parenexprdotParenExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_parenexprdotparenexpr.__type__stdgodot_internaldotgodotastdotAst_parenexprdotParenExpr }));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1351"
            {
                final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseTypeInstance( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _typ:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1286"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("TypeInstance" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _opening = @:assignType (_p._expect((50 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1291"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev++;
            var _list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1293"
            while ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != (55 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != (1 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                _list = (_list.__append__(_p._parseType()) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1295"
                if (!_p._atComma(("type argument list" : stdgo.GoString), (55 : stdgo._internal.go.token.Token_token.Token))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1296"
                    break;
                };
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1298"
                _p._next();
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1300"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev--;
            var _closing = @:assignType (_p._expectClosing((55 : stdgo._internal.go.token.Token_token.Token), ("type argument list" : stdgo.GoString)) : stdgo._internal.go.token.Token_pos.Pos);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1304"
            if ((_list.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1305"
                _p._errorExpected(_closing, ("type argument list" : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1306"
                {
                    final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _typ, lbrack : _opening, index : stdgo.Go.asInterface((stdgo.Go.setRef(({ from : (_opening + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos), to : _closing } : stdgo._internal.go.ast.Ast_badexpr.BadExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr })), rbrack : _closing } : stdgo._internal.go.ast.Ast_indexexpr.IndexExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_indexexprdotindexexpr.__type__stdgodot_internaldotgodotastdotAst_indexexprdotIndexExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_indexexprdotindexexpr.__type__stdgodot_internaldotgodotastdotAst_indexexprdotIndexExpr }));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1314"
            {
                final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo._internal.go.internal.typeparams.Typeparams_packindexexpr.packIndexExpr(_typ, _opening, _list, _closing);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseChanType( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1261"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("ChanType" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
            var _dir = @:assignType (3 : stdgo._internal.go.ast.Ast_chandir.ChanDir);
            var _arrow:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1268"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((63 : stdgo._internal.go.token.Token_token.Token))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1269"
                _p._next();
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1270"
                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((36 : stdgo._internal.go.token.Token_token.Token))) {
                    _arrow = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos;
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1272"
                    _p._next();
                    _dir = (1 : stdgo._internal.go.ast.Ast_chandir.ChanDir);
                };
            } else {
                _arrow = _p._expect((36 : stdgo._internal.go.token.Token_token.Token));
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1277"
                _p._expect((63 : stdgo._internal.go.token.Token_token.Token));
                _dir = (2 : stdgo._internal.go.ast.Ast_chandir.ChanDir);
            };
            var _value = @:assignType (_p._parseType() : stdgo._internal.go.ast.Ast_expr.Expr);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1282"
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType> = (stdgo.Go.setRef(({ begin : _pos, arrow : _arrow, dir : _dir, value : _value } : stdgo._internal.go.ast.Ast_chantype.ChanType), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_chantypedotchantype.__type__stdgodot_internaldotgodotastdotAst_chantypedotChanType })) : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseMapType( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1247"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("MapType" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = @:assignType (_p._expect((77 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1252"
            _p._expect((50 : stdgo._internal.go.token.Token_token.Token));
            var _key = @:assignType (_p._parseType() : stdgo._internal.go.ast.Ast_expr.Expr);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1254"
            _p._expect((55 : stdgo._internal.go.token.Token_token.Token));
            var _value = @:assignType (_p._parseType() : stdgo._internal.go.ast.Ast_expr.Expr);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1257"
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType> = (stdgo.Go.setRef(({ map_ : _pos, key : _key, value : _value } : stdgo._internal.go.ast.Ast_maptype.MapType), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_maptypedotmaptype.__type__stdgodot_internaldotgodotastdotAst_maptypedotMapType })) : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseInterfaceType( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _list_232:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
            var _lbrace_231:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
            var _comment_238:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
            var _typ_237:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
            var _t_236:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
            var _typ_234:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
            var _parseElementsBreak = false;
            var _f_233:stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>);
            var _pos_230:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
            var _rbrace_239:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
            var _comment_235:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
            var _gotoNext = 0i64;
            _gotoNext == ((0i64 : stdgo.GoInt));
            //"file://#L0"
            while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
                //"file://#L0"
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1198"
                        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                            _gotoNext = 5290238i64;
                        } else {
                            _gotoNext = 5290283i64;
                        };
                    } else if (__value__ == (5290238i64)) {
                        {
                            var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("InterfaceType" : stdgo.GoString));
                            final __f__ = stdgo._internal.go.parser.Parser__un._un;
                            __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                        };
                        _gotoNext = 5290283i64;
                    } else if (__value__ == (5290283i64)) {
                        _pos_230 = _p._expect((76 : stdgo._internal.go.token.Token_token.Token));
                        _lbrace_231 = _p._expect((51 : stdgo._internal.go.token.Token_token.Token));
                        _gotoNext = 5290375i64;
                    } else if (__value__ == (5290375i64)) {
                        0i64;
                        _parseElementsBreak = false;
                        _gotoNext = 5290391i64;
                    } else if (__value__ == (5290391i64)) {
                        //"file://#L0"
                        if (!_parseElementsBreak) {
                            _gotoNext = 5290395i64;
                        } else {
                            _gotoNext = 5291100i64;
                        };
                    } else if (__value__ == (5290395i64)) {
                        _gotoNext = 5290399i64;
                    } else if (__value__ == (5290399i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1209"
                        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((4 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5290410i64;
                        } else if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((88 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5290587i64;
                        } else {
                            _gotoNext = 5290739i64;
                        };
                    } else if (__value__ == (5290410i64)) {
                        _f_233 = _p._parseMethodSpec();
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1212"
                        if ((@:checkr _f_233 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names == null) {
                            _gotoNext = 5290486i64;
                        } else {
                            _gotoNext = 5290532i64;
                        };
                    } else if (__value__ == (5290486i64)) {
                        (@:checkr _f_233 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type = _p._embeddedElem((@:checkr _f_233 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type);
                        _gotoNext = 5290532i64;
                    } else if (__value__ == (5290532i64)) {
                        (@:checkr _f_233 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).comment = _p._expectSemi();
                        _list_232 = (_list_232.__append__(_f_233) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
                        _gotoNext = 5290391i64;
                    } else if (__value__ == (5290587i64)) {
                        _typ_234 = _p._embeddedElem((null : stdgo._internal.go.ast.Ast_expr.Expr));
                        _comment_235 = _p._expectSemi();
                        _list_232 = (_list_232.__append__((stdgo.Go.setRef(({ type : _typ_234, comment : _comment_235 } : stdgo._internal.go.ast.Ast_field.Field), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fielddotfield.__type__stdgodot_internaldotgodotastdotAst_fielddotField })) : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
                        _gotoNext = 5290391i64;
                    } else if (__value__ == (5290739i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1222"
                        {
                            _t_236 = _p._tryIdentOrType();
                            if (_t_236 != null) {
                                _gotoNext = 5290788i64;
                            } else {
                                _gotoNext = 5290924i64;
                            };
                        };
                    } else if (__value__ == (5290788i64)) {
                        _typ_237 = _p._embeddedElem(_t_236);
                        _comment_238 = _p._expectSemi();
                        _list_232 = (_list_232.__append__((stdgo.Go.setRef(({ type : _typ_237, comment : _comment_238 } : stdgo._internal.go.ast.Ast_field.Field), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fielddotfield.__type__stdgodot_internaldotgodotastdotAst_fielddotField })) : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
                        _gotoNext = 5290391i64;
                    } else if (__value__ == (5290924i64)) {
                        _gotoNext = 5290924i64;
                        _parseElementsBreak = true;
                        _gotoNext = 5290391i64;
                    } else if (__value__ == (5291100i64)) {
                        _rbrace_239 = _p._expect((56 : stdgo._internal.go.token.Token_token.Token));
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1236"
                        {
                            final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType> = (stdgo.Go.setRef(({ interface_ : _pos_230, methods : (stdgo.Go.setRef(({ opening : _lbrace_231, list : _list_232, closing : _rbrace_239 } : stdgo._internal.go.ast.Ast_fieldlist.FieldList), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fieldlistdotfieldlist.__type__stdgodot_internaldotgodotastdotAst_fieldlistdotFieldList })) : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>) } : stdgo._internal.go.ast.Ast_interfacetype.InterfaceType), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_interfacetypedotinterfacetype.__type__stdgodot_internaldotgodotastdotAst_interfacetypedotInterfaceType })) : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>);
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = -1i64;
                    };
                };
            };
            //"file://#L0"
            throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _embeddedTerm( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1174"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("EmbeddedTerm" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1177"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((88 : stdgo._internal.go.token.Token_token.Token))) {
                var _t = (stdgo.Go.setRef(({} : stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_unaryexprdotunaryexpr.__type__stdgodot_internaldotgodotastdotAst_unaryexprdotUnaryExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>);
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).opPos = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op = (88 : stdgo._internal.go.token.Token_token.Token);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1181"
                _p._next();
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x = _p._parseType();
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1183"
                {
                    final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_unaryexprdotunaryexpr.__type__stdgodot_internaldotgodotastdotAst_unaryexprdotUnaryExpr }));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _t = @:assignType (_p._tryIdentOrType() : stdgo._internal.go.ast.Ast_expr.Expr);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1187"
            if (_t == null) {
                var _pos = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1189"
                _p._errorExpected(_pos, ("~ term or type" : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1190"
                _p._advance(stdgo._internal.go.parser.Parser__exprend._exprEnd);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1191"
                {
                    final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : _pos, to : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos } : stdgo._internal.go.ast.Ast_badexpr.BadExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr }));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1194"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _t;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _embeddedElem( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1155"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("EmbeddedElem" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1158"
            if (_x == null) {
                _x = _p._embeddedTerm();
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1161"
            while ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((18 : stdgo._internal.go.token.Token_token.Token))) {
                var _t = (stdgo.Go.setRef(({} : stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_binaryexprdotbinaryexpr.__type__stdgodot_internaldotgodotastdotAst_binaryexprdotBinaryExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>);
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).opPos = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op = (18 : stdgo._internal.go.token.Token_token.Token);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1165"
                _p._next();
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x = _x;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).y = _p._embeddedTerm();
                _x = stdgo.Go.asInterface(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_binaryexprdotbinaryexpr.__type__stdgodot_internaldotgodotastdotAst_binaryexprdotBinaryExpr }));
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1170"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _x;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseMethodSpec( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1073"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("MethodSpec" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _doc = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._leadComment;
            var _idents:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
            var _typ:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
            var _x = @:assignType (_p._parseTypeName(null) : stdgo._internal.go.ast.Ast_expr.Expr);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1081"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _x;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                }, _ident = __tmp__._0, __0 = __tmp__._1;
                if (({
                    final value = _ident;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1082"
                    {
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((50 : stdgo._internal.go.token.Token_token.Token))) {
                                var _lbrack = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1086"
                                _p._next();
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1087"
                                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev++;
                                var _x = @:assignType (_p._parseExpr() : stdgo._internal.go.ast.Ast_expr.Expr);
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1089"
                                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev--;
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1090"
                                {
                                    var __tmp__ = @:castTranslate try {
                                        { _0 : (stdgo.Go.typeAssert(({
                                            final __t__ = _x;
                                            if (__t__ == null) {
                                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                                            } else {
                                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                            };
                                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                                    } catch(__exception__) {
                                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                                    }, _name0 = __tmp__._0, __1 = __tmp__._1;
                                    if (((({
                                        final value = _name0;
                                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                    }) && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((52 : stdgo._internal.go.token.Token_token.Token)) : Bool) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != (55 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                                        _p._parseParameterList(_name0, (null : stdgo._internal.go.ast.Ast_expr.Expr), (55 : stdgo._internal.go.token.Token_token.Token));
                                        _p._expect((55 : stdgo._internal.go.token.Token_token.Token));
                                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1097"
                                        _p._error(_lbrack, ("interface method must have no type parameters" : stdgo.GoString));
                                        var __tmp__ = _p._parseParameters(false), __2:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = __tmp__._0, _params:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = __tmp__._1;
                                        var _results = _p._parseResult();
                                        _idents = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>(1, 1, ...[_ident]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
                                        _typ = stdgo.Go.asInterface((stdgo.Go.setRef(({ func : (0 : stdgo._internal.go.token.Token_pos.Pos), params : _params, results : _results } : stdgo._internal.go.ast.Ast_functype.FuncType), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_functypedotfunctype.__type__stdgodot_internaldotgodotastdotAst_functypedotFuncType })) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_functypedotfunctype.__type__stdgodot_internaldotgodotastdotAst_functypedotFuncType }));
                                    } else {
                                        var _list = (new stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>(1, 1, ...[_x]) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1112"
                                        if (_p._atComma(("type argument list" : stdgo.GoString), (55 : stdgo._internal.go.token.Token_token.Token))) {
                                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1113"
                                            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev++;
                                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1114"
                                            _p._next();
                                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1115"
                                            while ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != (55 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != (1 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                                                _list = (_list.__append__(_p._parseType()) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                                                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1117"
                                                if (!_p._atComma(("type argument list" : stdgo.GoString), (55 : stdgo._internal.go.token.Token_token.Token))) {
                                                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1118"
                                                    break;
                                                };
                                                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1120"
                                                _p._next();
                                            };
                                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1122"
                                            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev--;
                                        };
                                        var _rbrack = @:assignType (_p._expectClosing((55 : stdgo._internal.go.token.Token_token.Token), ("type argument list" : stdgo.GoString)) : stdgo._internal.go.token.Token_pos.Pos);
                                        _typ = stdgo._internal.go.internal.typeparams.Typeparams_packindexexpr.packIndexExpr(stdgo.Go.asInterface(_ident, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })), _lbrack, _list, _rbrack);
                                    };
                                };
                                break;
                            } else if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((49 : stdgo._internal.go.token.Token_token.Token))) {
                                var __tmp__ = _p._parseParameters(false), __1:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = __tmp__._0, _params:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = __tmp__._1;
                                var _results = _p._parseResult();
                                _idents = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>(1, 1, ...[_ident]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
                                _typ = stdgo.Go.asInterface((stdgo.Go.setRef(({ func : (0 : stdgo._internal.go.token.Token_pos.Pos), params : _params, results : _results } : stdgo._internal.go.ast.Ast_functype.FuncType), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_functypedotfunctype.__type__stdgodot_internaldotgodotastdotAst_functypedotFuncType })) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_functypedotfunctype.__type__stdgodot_internaldotgodotastdotAst_functypedotFuncType }));
                                break;
                            } else {
                                _typ = _x;
                            };
                            break;
                        };
                    };
                } else {
                    _typ = _x;
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1141"
                    if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((50 : stdgo._internal.go.token.Token_token.Token))) {
                        _typ = _p._parseTypeInstance(_typ);
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1151"
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field> = (stdgo.Go.setRef(({ doc : _doc, names : _idents, type : _typ } : stdgo._internal.go.ast.Ast_field.Field), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fielddotfield.__type__stdgodot_internaldotgodotastdotAst_fielddotField })) : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseFuncType( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1058"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("FuncType" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = @:assignType (_p._expect((71 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var __tmp__ = _p._parseParameters(true), _tparams:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = __tmp__._0, _params:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1064"
            if (({
                final value = _tparams;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1065"
                _p._error(_tparams.pos(), ("function type must have no type parameters" : stdgo.GoString));
            };
            var _results = _p._parseResult();
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1069"
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> = (stdgo.Go.setRef(({ func : _pos, params : _params, results : _results } : stdgo._internal.go.ast.Ast_functype.FuncType), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_functypedotfunctype.__type__stdgodot_internaldotgodotastdotAst_functypedotFuncType })) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseResult( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1038"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("Result" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1042"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((49 : stdgo._internal.go.token.Token_token.Token))) {
                var __tmp__ = _p._parseParameters(false), __0:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = __tmp__._0, _results:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1044"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _results;
                };
            };
            var _typ = @:assignType (_p._tryIdentOrType() : stdgo._internal.go.ast.Ast_expr.Expr);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1048"
            if (_typ != null) {
                var _list = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>((1 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
                _list[(0 : stdgo.GoInt)] = (stdgo.Go.setRef(({ type : _typ } : stdgo._internal.go.ast.Ast_field.Field), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fielddotfield.__type__stdgodot_internaldotgodotastdotAst_fielddotField })) : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1051"
                {
                    final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = (stdgo.Go.setRef(({ list : _list } : stdgo._internal.go.ast.Ast_fieldlist.FieldList), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fieldlistdotfieldlist.__type__stdgodot_internaldotgodotastdotAst_fieldlistdotFieldList })) : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1054"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return null;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseParameters( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _acceptTParams:Bool):{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>; var _1 : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _tparams = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>), _params = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1006"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("Parameters" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1010"
            if ((_acceptTParams && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == (50 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                var _opening = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1012"
                _p._next();
                var _list = _p._parseParameterList(null, (null : stdgo._internal.go.ast.Ast_expr.Expr), (55 : stdgo._internal.go.token.Token_token.Token));
                var _rbrack = @:assignType (_p._expect((55 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
                _tparams = (stdgo.Go.setRef(({ opening : _opening, list : _list, closing : _rbrack } : stdgo._internal.go.ast.Ast_fieldlist.FieldList), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fieldlistdotfieldlist.__type__stdgodot_internaldotgodotastdotAst_fieldlistdotFieldList })) : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1018"
                if (_tparams.numFields() == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1019"
                    _p._error((@:checkr _tparams ?? throw stdgo.Error._nullPointerDereference.__underlying__()).closing, ("empty type parameter list" : stdgo.GoString));
                    _tparams = null;
                };
            };
            var _opening = @:assignType (_p._expect((49 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _fields:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1027"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((54 : stdgo._internal.go.token.Token_token.Token))) {
                _fields = _p._parseParameterList(null, (null : stdgo._internal.go.ast.Ast_expr.Expr), (54 : stdgo._internal.go.token.Token_token.Token));
            };
            var _rparen = @:assignType (_p._expect((54 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            _params = (stdgo.Go.setRef(({ opening : _opening, list : _fields, closing : _rparen } : stdgo._internal.go.ast.Ast_fieldlist.FieldList), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fieldlistdotfieldlist.__type__stdgodot_internaldotgodotastdotAst_fieldlistdotFieldList })) : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1034"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return { _0 : _tparams, _1 : _params };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return { _0 : _tparams, _1 : _params };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return { _0 : _tparams, _1 : _params };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseParameterList( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _name0:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, _typ0:stdgo._internal.go.ast.Ast_expr.Expr, _closing:stdgo._internal.go.token.Token_token.Token):stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _params = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L877"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("ParameterList" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _tparams = @:assignType (_closing == ((55 : stdgo._internal.go.token.Token_token.Token)) : Bool);
            var _typeSetsOK = @:assignType (_tparams : Bool);
            var _pos = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L887"
            if (({
                final value = _name0;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                _pos = _name0.pos();
            };
            var _list:stdgo.Slice<stdgo._internal.go.parser.Parser_t_field.T_field> = (null : stdgo.Slice<stdgo._internal.go.parser.Parser_t_field.T_field>);
            var _named:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L894"
            while ((({
                final value = _name0;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) || ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != (_closing) && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((1 : stdgo._internal.go.token.Token_token.Token)) : Bool) : Bool)) {
                var _par:stdgo._internal.go.parser.Parser_t_field.T_field = ({} : stdgo._internal.go.parser.Parser_t_field.T_field);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L896"
                if (_typ0 != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L897"
                    if (_typeSetsOK) {
                        _typ0 = _p._embeddedElem(_typ0);
                    };
                    _par = (new stdgo._internal.go.parser.Parser_t_field.T_field(_name0, _typ0) : stdgo._internal.go.parser.Parser_t_field.T_field);
                } else {
                    _par = _p._parseParamDecl(_name0, _typeSetsOK)?.__copy__();
                };
                _name0 = null;
                _typ0 = (null : stdgo._internal.go.ast.Ast_expr.Expr);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L906"
                if ((({
                    final value = _par._name;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) || (_par._typ != null) : Bool)) {
                    _list = (_list.__append__(_par?.__copy__()) : stdgo.Slice<stdgo._internal.go.parser.Parser_t_field.T_field>);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L908"
                    if ((({
                        final value = _par._name;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    }) && (_par._typ != null) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L909"
                        _named++;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L912"
                if (!_p._atComma(("parameter list" : stdgo.GoString), _closing)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L913"
                    break;
                };
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L915"
                _p._next();
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L918"
            if ((_list.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L919"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _params;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L926"
            if (_named == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L928"
                {
                    var _i = @:assignType (0 : stdgo.GoInt);
                    while ((_i < (_list.length) : Bool)) {
                        var _par = (stdgo.Go.setRef(_list[(_i : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_fielddott_field.__type__stdgodot_internaldotgodotparserdotParser_t_fielddotT_field })) : stdgo.Ref<stdgo._internal.go.parser.Parser_t_field.T_field>);
//"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L930"
                        {
                            var _typ = (@:checkr _par ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name;
                            if (({
                                final value = _typ;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                (@:checkr _par ?? throw stdgo.Error._nullPointerDereference.__underlying__())._typ = stdgo.Go.asInterface(_typ, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent }));
                                (@:checkr _par ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name = null;
                            };
                        };
                        _i++;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L935"
                if (_tparams) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L936"
                    _p._error(_pos, ("type parameters must be named" : stdgo.GoString));
                };
            } else if (_named != ((_list.length))) {
                var _ok = @:assignType (true : Bool);
                var _typ:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
                var _missingName = @:assignType (_pos : stdgo._internal.go.token.Token_pos.Pos);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L943"
                {
                    var _i = @:assignType ((_list.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L944"
                        {
                            var _par = (stdgo.Go.setRef(_list[(_i : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_fielddott_field.__type__stdgodot_internaldotgodotparserdotParser_t_fielddotT_field })) : stdgo.Ref<stdgo._internal.go.parser.Parser_t_field.T_field>);
                            if ((@:checkr _par ?? throw stdgo.Error._nullPointerDereference.__underlying__())._typ != null) {
                                _typ = (@:checkr _par ?? throw stdgo.Error._nullPointerDereference.__underlying__())._typ;
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L946"
                                if (({
                                    final value = (@:checkr _par ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name;
                                    (value == null || (value : Dynamic).__nil__);
                                })) {
                                    _ok = false;
                                    _missingName = (@:checkr _par ?? throw stdgo.Error._nullPointerDereference.__underlying__())._typ.pos();
                                    var _n = stdgo._internal.go.ast.Ast_newident.newIdent(("_" : stdgo.GoString));
                                    (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).namePos = _typ.pos();
                                    (@:checkr _par ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name = _n;
                                };
                            } else if (_typ != null) {
                                (@:checkr _par ?? throw stdgo.Error._nullPointerDereference.__underlying__())._typ = _typ;
                            } else {
                                _ok = false;
                                _missingName = (@:checkr _par ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name.pos();
                                (@:checkr _par ?? throw stdgo.Error._nullPointerDereference.__underlying__())._typ = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : (@:checkr _par ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name.pos(), to : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos } : stdgo._internal.go.ast.Ast_badexpr.BadExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr }));
                            };
                        };
                        _i--;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L962"
                if (!_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L963"
                    if (_tparams) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L964"
                        _p._error(_missingName, ("type parameters must be named" : stdgo.GoString));
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L966"
                        _p._error(_pos, ("mixed named and unnamed parameters" : stdgo.GoString));
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L972"
            if (_named == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L974"
                if (_list != null) for (__0 => _par in _list) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L975"
                    stdgo._internal.go.parser.Parser__assert._assert(_par._typ != null, ("nil type in unnamed parameter list" : stdgo.GoString));
                    _params = (_params.__append__((stdgo.Go.setRef(({ type : _par._typ } : stdgo._internal.go.ast.Ast_field.Field), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fielddotfield.__type__stdgodot_internaldotgodotastdotAst_fielddotField })) : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L978"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _params;
                };
            };
            var _names:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
            var _typ:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
            var _addParams = @:assignType (function():Void {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L985"
                stdgo._internal.go.parser.Parser__assert._assert(_typ != null, ("nil type in named parameter list" : stdgo.GoString));
                var _field = (stdgo.Go.setRef(({ names : _names, type : _typ } : stdgo._internal.go.ast.Ast_field.Field), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fielddotfield.__type__stdgodot_internaldotgodotastdotAst_fielddotField })) : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>);
                _params = (_params.__append__(_field) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
                _names = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
            } : () -> Void);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L990"
            if (_list != null) for (__0 => _par in _list) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L991"
                if (({
                    final __t__ = _par._typ;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) != (({
                    final __t__ = _typ;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L992"
                    if (((_names.length) > (0 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L993"
                        _addParams();
                    };
                    _typ = _par._typ;
                };
                _names = (_names.__append__(_par._name) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L999"
            if (((_names.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1000"
                _addParams();
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L1002"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _params;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return _params;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return _params;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseParamDecl( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _name:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, _typeSetsOK:Bool):stdgo._internal.go.parser.Parser_t_field.T_field {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _f = ({} : stdgo._internal.go.parser.Parser_t_field.T_field);
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L796"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("ParamDeclOrNil" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _ptok = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok : stdgo._internal.go.token.Token_token.Token);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L801"
            if (({
                final value = _name;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok = (4 : stdgo._internal.go.token.Token_token.Token);
            } else if ((_typeSetsOK && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == (88 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L805"
                {
                    final __ret__:stdgo._internal.go.parser.Parser_t_field.T_field = _f = (new stdgo._internal.go.parser.Parser_t_field.T_field(null, _p._embeddedElem((null : stdgo._internal.go.ast.Ast_expr.Expr))) : stdgo._internal.go.parser.Parser_t_field.T_field);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L808"
            {
                final __value__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok;
                if (__value__ == ((4 : stdgo._internal.go.token.Token_token.Token))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L811"
                    if (({
                        final value = _name;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        _f._name = _name;
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok = _ptok;
                    } else {
                        _f._name = _p._parseIdent();
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L817"
                    {
                        final __value__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok;
                        if (__value__ == ((4 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((14 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((36 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((71 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((63 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((77 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((82 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((76 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((49 : stdgo._internal.go.token.Token_token.Token))) {
                            _f._typ = _p._parseType();
                        } else if (__value__ == ((50 : stdgo._internal.go.token.Token_token.Token))) {
                            {
                                var __tmp__ = _p._parseArrayFieldOrTypeInstance(_f._name);
                                _f._name = @:tmpset0 __tmp__._0;
                                _f._typ = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((48 : stdgo._internal.go.token.Token_token.Token))) {
                            _f._typ = stdgo.Go.asInterface(_p._parseDotsType(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_ellipsisdotellipsis.__type__stdgodot_internaldotgodotastdotAst_ellipsisdotEllipsis }));
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L829"
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return _f;
                            };
                        } else if (__value__ == ((53 : stdgo._internal.go.token.Token_token.Token))) {
                            _f._typ = _p._parseQualifiedIdent(_f._name);
                            _f._name = null;
                        } else if (__value__ == ((88 : stdgo._internal.go.token.Token_token.Token))) {
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L837"
                            if (_typeSetsOK) {
                                _f._typ = _p._embeddedElem((null : stdgo._internal.go.ast.Ast_expr.Expr));
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L839"
                                {
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return _f;
                                };
                            };
                        } else if (__value__ == ((18 : stdgo._internal.go.token.Token_token.Token))) {
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L843"
                            if (_typeSetsOK) {
                                _f._typ = _p._embeddedElem(stdgo.Go.asInterface(_f._name, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })));
                                _f._name = null;
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L847"
                                {
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return _f;
                                };
                            };
                        };
                    };
                } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((36 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((71 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((50 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((63 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((77 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((82 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((76 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((49 : stdgo._internal.go.token.Token_token.Token))) {
                    _f._typ = _p._parseType();
                } else if (__value__ == ((48 : stdgo._internal.go.token.Token_token.Token))) {
                    _f._typ = stdgo.Go.asInterface(_p._parseDotsType(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_ellipsisdotellipsis.__type__stdgodot_internaldotgodotastdotAst_ellipsisdotEllipsis }));
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L859"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _f;
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L864"
                    _p._errorExpected((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, ("\')\'" : stdgo.GoString));
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L865"
                    _p._advance(stdgo._internal.go.parser.Parser__exprend._exprEnd);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L869"
            if (((_typeSetsOK && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((18 : stdgo._internal.go.token.Token_token.Token)) : Bool) && (_f._typ != null) : Bool)) {
                _f._typ = _p._embeddedElem(_f._typ);
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L873"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _f;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return _f;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return _f;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseDotsType( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L778"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("DotsType" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = @:assignType (_p._expect((48 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _elt = @:assignType (_p._parseType() : stdgo._internal.go.ast.Ast_expr.Expr);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L785"
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis> = (stdgo.Go.setRef(({ ellipsis : _pos, elt : _elt } : stdgo._internal.go.ast.Ast_ellipsis.Ellipsis), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_ellipsisdotellipsis.__type__stdgodot_internaldotgodotastdotAst_ellipsisdotEllipsis })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parsePointerType( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L767"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("PointerType" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _star = @:assignType (_p._expect((14 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _base = @:assignType (_p._parseType() : stdgo._internal.go.ast.Ast_expr.Expr);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L774"
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr> = (stdgo.Go.setRef(({ star : _star, x : _base } : stdgo._internal.go.ast.Ast_starexpr.StarExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_starexprdotstarexpr.__type__stdgodot_internaldotgodotastdotAst_starexprdotStarExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseStructType( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L741"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("StructType" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = @:assignType (_p._expect((82 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _lbrace = @:assignType (_p._expect((51 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L748"
            while ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((4 : stdgo._internal.go.token.Token_token.Token)) || (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((14 : stdgo._internal.go.token.Token_token.Token)) : Bool) || ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == (49 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                _list = (_list.__append__(_p._parseFieldDecl()) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
            };
            var _rbrace = @:assignType (_p._expect((56 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L756"
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType> = (stdgo.Go.setRef(({ struct_ : _pos, fields : (stdgo.Go.setRef(({ opening : _lbrace, list : _list, closing : _rbrace } : stdgo._internal.go.ast.Ast_fieldlist.FieldList), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fieldlistdotfieldlist.__type__stdgodot_internaldotgodotastdotAst_fieldlistdotFieldList })) : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>) } : stdgo._internal.go.ast.Ast_structtype.StructType), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_structtypedotstructtype.__type__stdgodot_internaldotgodotastdotAst_structtypedotStructType })) : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseFieldDecl( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L650"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("FieldDecl" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _doc = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._leadComment;
            var _names:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
            var _typ:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L658"
            {
                final __value__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok;
                if (__value__ == ((4 : stdgo._internal.go.token.Token_token.Token))) {
                    var _name = _p._parseIdent();
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L661"
                    if (((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((53 : stdgo._internal.go.token.Token_token.Token)) || (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((9 : stdgo._internal.go.token.Token_token.Token)) : Bool) || (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((57 : stdgo._internal.go.token.Token_token.Token)) : Bool) || ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == (56 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                        _typ = stdgo.Go.asInterface(_name, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent }));
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L664"
                        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((53 : stdgo._internal.go.token.Token_token.Token))) {
                            _typ = _p._parseQualifiedIdent(_name);
                        };
                    } else {
                        _names = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>(1, 1, ...[_name]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L670"
                        while ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((52 : stdgo._internal.go.token.Token_token.Token))) {
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L671"
                            _p._next();
                            _names = (_names.__append__(_p._parseIdent()) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
                        };
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L676"
                        if (((_names.length == (1 : stdgo.GoInt)) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == (50 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                            {
                                var __tmp__ = _p._parseArrayFieldOrTypeInstance(_name);
                                _name = @:tmpset0 __tmp__._0;
                                _typ = @:tmpset0 __tmp__._1;
                            };
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L678"
                            if (({
                                final value = _name;
                                (value == null || (value : Dynamic).__nil__);
                            })) {
                                _names = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
                            };
                        } else {
                            _typ = _p._parseType();
                        };
                    };
                } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                    var _star = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L688"
                    _p._next();
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L689"
                    if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((49 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L691"
                        _p._error((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, ("cannot parenthesize embedded type" : stdgo.GoString));
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L692"
                        _p._next();
                        _typ = _p._parseQualifiedIdent(null);
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L695"
                        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((54 : stdgo._internal.go.token.Token_token.Token))) {
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L696"
                            _p._next();
                        };
                    } else {
                        _typ = _p._parseQualifiedIdent(null);
                    };
                    _typ = stdgo.Go.asInterface((stdgo.Go.setRef(({ star : _star, x : _typ } : stdgo._internal.go.ast.Ast_starexpr.StarExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_starexprdotstarexpr.__type__stdgodot_internaldotgodotastdotAst_starexprdotStarExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_starexprdotstarexpr.__type__stdgodot_internaldotgodotastdotAst_starexprdotStarExpr }));
                } else if (__value__ == ((49 : stdgo._internal.go.token.Token_token.Token))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L705"
                    _p._error((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, ("cannot parenthesize embedded type" : stdgo.GoString));
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L706"
                    _p._next();
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L707"
                    if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                        var _star = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L710"
                        _p._next();
                        _typ = stdgo.Go.asInterface((stdgo.Go.setRef(({ star : _star, x : _p._parseQualifiedIdent(null) } : stdgo._internal.go.ast.Ast_starexpr.StarExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_starexprdotstarexpr.__type__stdgodot_internaldotgodotastdotAst_starexprdotStarExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_starexprdotstarexpr.__type__stdgodot_internaldotgodotastdotAst_starexprdotStarExpr }));
                    } else {
                        _typ = _p._parseQualifiedIdent(null);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L717"
                    if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((54 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L718"
                        _p._next();
                    };
                } else {
                    var _pos = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L723"
                    _p._errorExpected(_pos, ("field name or embedded type" : stdgo.GoString));
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L724"
                    _p._advance(stdgo._internal.go.parser.Parser__exprend._exprEnd);
                    _typ = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : _pos, to : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos } : stdgo._internal.go.ast.Ast_badexpr.BadExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr }));
                };
            };
            var _tag:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L729"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((9 : stdgo._internal.go.token.Token_token.Token))) {
                _tag = (stdgo.Go.setRef(({ valuePos : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, kind : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok, value : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lit?.__copy__() } : stdgo._internal.go.ast.Ast_basiclit.BasicLit), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_basiclitdotbasiclit.__type__stdgodot_internaldotgodotastdotAst_basiclitdotBasicLit })) : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L731"
                _p._next();
            };
            var _comment = _p._expectSemi();
            var _field = (stdgo.Go.setRef(({ doc : _doc, names : _names, type : _typ, tag : _tag, comment : _comment } : stdgo._internal.go.ast.Ast_field.Field), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fielddotfield.__type__stdgodot_internaldotgodotastdotAst_fielddotField })) : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L737"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _field;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseArrayFieldOrTypeInstance( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>; var _1 : stdgo._internal.go.ast.Ast_expr.Expr; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L603"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("ArrayFieldOrTypeInstance" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _lbrack = @:assignType (_p._expect((50 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _trailingComma = @:assignType (0 : stdgo._internal.go.token.Token_pos.Pos);
            var _args:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L610"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((55 : stdgo._internal.go.token.Token_token.Token))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L611"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev++;
                _args = (_args.__append__(_p._parseRhs()) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L613"
                while ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((52 : stdgo._internal.go.token.Token_token.Token))) {
                    var _comma = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L615"
                    _p._next();
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L616"
                    if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((55 : stdgo._internal.go.token.Token_token.Token))) {
                        _trailingComma = _comma;
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L618"
                        break;
                    };
                    _args = (_args.__append__(_p._parseRhs()) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L622"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev--;
            };
            var _rbrack = @:assignType (_p._expect((55 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L626"
            if ((_args.length) == ((0 : stdgo.GoInt))) {
                var _elt = @:assignType (_p._parseType() : stdgo._internal.go.ast.Ast_expr.Expr);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L629"
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>; var _1 : stdgo._internal.go.ast.Ast_expr.Expr; } = { _0 : _x, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ lbrack : _lbrack, elt : _elt } : stdgo._internal.go.ast.Ast_arraytype.ArrayType), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_arraytypedotarraytype.__type__stdgodot_internaldotgodotastdotAst_arraytypedotArrayType })) : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_arraytypedotarraytype.__type__stdgodot_internaldotgodotastdotAst_arraytypedotArrayType })) };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L633"
            if ((_args.length) == ((1 : stdgo.GoInt))) {
                var _elt = @:assignType (_p._tryIdentOrType() : stdgo._internal.go.ast.Ast_expr.Expr);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L635"
                if (_elt != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L637"
                    if (_trailingComma.isValid()) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L639"
                        _p._error(_trailingComma, ("unexpected comma; expecting ]" : stdgo.GoString));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L641"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>; var _1 : stdgo._internal.go.ast.Ast_expr.Expr; } = { _0 : _x, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ lbrack : _lbrack, len : _args[(0 : stdgo.GoInt)], elt : _elt } : stdgo._internal.go.ast.Ast_arraytype.ArrayType), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_arraytypedotarraytype.__type__stdgodot_internaldotgodotastdotAst_arraytypedotArrayType })) : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_arraytypedotarraytype.__type__stdgodot_internaldotgodotastdotAst_arraytypedotArrayType })) };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L646"
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>; var _1 : stdgo._internal.go.ast.Ast_expr.Expr; } = { _0 : null, _1 : stdgo._internal.go.internal.typeparams.Typeparams_packindexexpr.packIndexExpr(stdgo.Go.asInterface(_x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })), _lbrack, _args, _rbrack) };
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : (null : stdgo._internal.go.ast.Ast_expr.Expr) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : (null : stdgo._internal.go.ast.Ast_expr.Expr) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseArrayType( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _lbrack:stdgo._internal.go.token.Token_pos.Pos, _len:stdgo._internal.go.ast.Ast_expr.Expr):stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L575"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("ArrayType" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L579"
            if (_len == null) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L580"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev++;
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L582"
                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((48 : stdgo._internal.go.token.Token_token.Token))) {
                    _len = stdgo.Go.asInterface((stdgo.Go.setRef(({ ellipsis : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos } : stdgo._internal.go.ast.Ast_ellipsis.Ellipsis), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_ellipsisdotellipsis.__type__stdgodot_internaldotgodotastdotAst_ellipsisdotEllipsis })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_ellipsisdotellipsis.__type__stdgodot_internaldotgodotastdotAst_ellipsisdotEllipsis }));
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L584"
                    _p._next();
                } else if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((55 : stdgo._internal.go.token.Token_token.Token))) {
                    _len = _p._parseRhs();
                };
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L588"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exprLev--;
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L590"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((52 : stdgo._internal.go.token.Token_token.Token))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L594"
                _p._error((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, ("unexpected comma; expecting ]" : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L595"
                _p._next();
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L597"
            _p._expect((55 : stdgo._internal.go.token.Token_token.Token));
            var _elt = @:assignType (_p._parseType() : stdgo._internal.go.ast.Ast_expr.Expr);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L599"
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType> = (stdgo.Go.setRef(({ lbrack : _lbrack, len : _len, elt : _elt } : stdgo._internal.go.ast.Ast_arraytype.ArrayType), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_arraytypedotarraytype.__type__stdgodot_internaldotgodotastdotAst_arraytypedotArrayType })) : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseTypeName( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _ident:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L554"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("TypeName" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L558"
            if (({
                final value = _ident;
                (value == null || (value : Dynamic).__nil__);
            })) {
                _ident = _p._parseIdent();
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L562"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((53 : stdgo._internal.go.token.Token_token.Token))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L564"
                _p._next();
                var _sel = _p._parseIdent();
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L566"
                {
                    final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ x : stdgo.Go.asInterface(_ident, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })), sel : _sel } : stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_selectorexprdotselectorexpr.__type__stdgodot_internaldotgodotastdotAst_selectorexprdotSelectorExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_selectorexprdotselectorexpr.__type__stdgodot_internaldotgodotastdotAst_selectorexprdotSelectorExpr }));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L569"
            {
                final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(_ident, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent }));
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseQualifiedIdent( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _ident:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L540"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("QualifiedIdent" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _typ = @:assignType (_p._parseTypeName(_ident) : stdgo._internal.go.ast.Ast_expr.Expr);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L545"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((50 : stdgo._internal.go.token.Token_token.Token))) {
                _typ = _p._parseTypeInstance(_typ);
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L549"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _typ;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseType( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L523"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("Type" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _typ = @:assignType (_p._tryIdentOrType() : stdgo._internal.go.ast.Ast_expr.Expr);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L529"
            if (_typ == null) {
                var _pos = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L531"
                _p._errorExpected(_pos, ("type" : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L532"
                _p._advance(stdgo._internal.go.parser.Parser__exprend._exprEnd);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L533"
                {
                    final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : _pos, to : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos } : stdgo._internal.go.ast.Ast_badexpr.BadExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr }));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L536"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _typ;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseList( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _inRhs:Bool):stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var _old = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inRhs : Bool);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inRhs = _inRhs;
        var _list = _p._parseExprList();
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inRhs = _old;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L516"
        return _list;
    }
    @:keep
    @:tdfield
    static public function _parseExprList( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _list = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L498"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("ExpressionList" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            _list = (_list.__append__(_p._parseExpr()) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L503"
            while ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((52 : stdgo._internal.go.token.Token_token.Token))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L504"
                _p._next();
                _list = (_list.__append__(_p._parseExpr()) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L508"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _list;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return _list;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return _list;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseIdentList( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _list = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L480"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("IdentList" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            _list = (_list.__append__(_p._parseIdent()) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L485"
            while ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((52 : stdgo._internal.go.token.Token_token.Token))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L486"
                _p._next();
                _list = (_list.__append__(_p._parseIdent()) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L490"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _list;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return _list;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return _list;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseIdent( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var _pos = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
        var _name = @:assignType (("_" : stdgo.GoString) : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L470"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((4 : stdgo._internal.go.token.Token_token.Token))) {
            _name = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lit?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L472"
            _p._next();
        } else {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L474"
            _p._expect((4 : stdgo._internal.go.token.Token_token.Token));
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L476"
        return (stdgo.Go.setRef(({ namePos : _pos, name : _name?.__copy__() } : stdgo._internal.go.ast.Ast_ident.Ident), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
    }
    @:keep
    @:tdfield
    static public function _safePos( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _pos:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _res = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
        try {
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L456"
                        if (({
                            final value = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            });
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        })) {
                            _res = (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.base() + (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.size() : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
                        };
                    };
                    a();
                }) });
            };
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.offset(_pos);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L461"
            {
                final __ret__:stdgo._internal.go.token.Token_pos.Pos = _res = _pos;
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return _res;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return _res;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _advance( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _to:stdgo.GoMap<stdgo._internal.go.token.Token_token.Token, Bool>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L385"
        while ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((1 : stdgo._internal.go.token.Token_token.Token))) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L386"
            if ((_to[(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok] ?? false)) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L394"
                if ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos == (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._syncPos) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._syncCnt < (10 : stdgo.GoInt) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L395"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._syncCnt++;
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L396"
                    return;
                };
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L398"
                if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos > (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._syncPos : Bool)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._syncPos = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos;
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._syncCnt = (0 : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L401"
                    return;
                };
            };
            _p._next();
        };
    }
    @:keep
    @:tdfield
    static public function _atComma( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _context:stdgo.GoString, _follow:stdgo._internal.go.token.Token_token.Token):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L362"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((52 : stdgo._internal.go.token.Token_token.Token))) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L363"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L365"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != (_follow)) {
            var _msg = @:assignType (("missing \',\'" : stdgo.GoString) : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L367"
            if ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == (57 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lit == ("\n" : stdgo.GoString)) : Bool)) {
                _msg = (_msg + ((" before newline" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L370"
            _p._error((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, ((_msg + (" in " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _context?.__copy__() : stdgo.GoString)?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L371"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L373"
        return false;
    }
    @:keep
    @:tdfield
    static public function _expectSemi( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var _comment = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L336"
        if ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != (54 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != (56 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L337"
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok;
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (52 : stdgo._internal.go.token.Token_token.Token)))) {
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L340"
                            _p._errorExpected((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, ("\';\'" : stdgo.GoString));
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L341"
                            @:fallthrough {
                                __switchIndex__ = 1;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (57 : stdgo._internal.go.token.Token_token.Token)))) {
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L343"
                            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lit == ((";" : stdgo.GoString))) {
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L345"
                                _p._next();
                                _comment = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lineComment;
                            } else {
                                _comment = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lineComment;
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L350"
                                _p._next();
                            };
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L352"
                            return _comment;
                            break;
                            break;
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L354"
                            _p._errorExpected((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, ("\';\'" : stdgo.GoString));
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L355"
                            _p._advance(stdgo._internal.go.parser.Parser__stmtstart._stmtStart);
                            break;
                        };
                    };
                    break;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L358"
        return _comment = null;
    }
    @:keep
    @:tdfield
    static public function _expectClosing( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _tok:stdgo._internal.go.token.Token_token.Token, _context:stdgo.GoString):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L326"
        if ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != (_tok) && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((57 : stdgo._internal.go.token.Token_token.Token)) : Bool) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lit == ("\n" : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L327"
            _p._error((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, (("missing \',\' before newline in " : stdgo.GoString) + _context?.__copy__() : stdgo.GoString)?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L328"
            _p._next();
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L330"
        return _p._expect(_tok);
    }
    @:keep
    @:tdfield
    static public function _expect2( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _tok:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var _pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L314"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == (_tok)) {
            _pos = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos;
        } else {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L317"
            _p._errorExpected((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, ((("\'" : stdgo.GoString) + (_tok.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("\'" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L319"
        _p._next();
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L320"
        return _pos;
    }
    @:keep
    @:tdfield
    static public function _expect( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _tok:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var _pos = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L304"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != (_tok)) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L305"
            _p._errorExpected(_pos, ((("\'" : stdgo.GoString) + (_tok.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("\'" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L307"
        _p._next();
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L308"
        return _pos;
    }
    @:keep
    @:tdfield
    static public function _errorExpected( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _pos:stdgo._internal.go.token.Token_pos.Pos, _msg:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        _msg = (("expected " : stdgo.GoString) + _msg?.__copy__() : stdgo.GoString)?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L286"
        if (_pos == ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos)) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L289"
            if ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == (57 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lit == ("\n" : stdgo.GoString)) : Bool)) {
                _msg = (_msg + ((", found newline" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            } else if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok.isLiteral()) {
                _msg = (_msg + (((", found " : stdgo.GoString) + (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lit?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            } else {
                _msg = (_msg + ((((", found \'" : stdgo.GoString) + ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("\'" : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L299"
        _p._error(_pos, _msg?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _error( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _pos:stdgo._internal.go.token.Token_pos.Pos, _msg:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L262"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, (("error: " : stdgo.GoString) + _msg?.__copy__() : stdgo.GoString)?.__copy__());
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _epos = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.position(_pos)?.__copy__() : stdgo._internal.go.token.Token_position.Position);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L271"
            if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mode & (32u32 : stdgo._internal.go.parser.Parser_mode.Mode) : stdgo._internal.go.parser.Parser_mode.Mode) == ((0u32 : stdgo._internal.go.parser.Parser_mode.Mode))) {
                var _n = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errors.length : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L273"
                if (((_n > (0 : stdgo.GoInt) : Bool) && ((@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errors[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).pos.line == _epos.line) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L274"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L276"
                if ((_n > (10 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L277"
                    throw new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo._internal.go.parser.Parser_t_bailout.T_bailout() : stdgo._internal.go.parser.Parser_t_bailout.T_bailout), _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_bailoutdott_bailout.__type__stdgodot_internaldotgodotparserdotParser_t_bailoutdotT_bailout), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_bailoutdott_bailout.__type__stdgodot_internaldotgodotparserdotParser_t_bailoutdotT_bailout));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L281"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errors.add(_epos?.__copy__(), _msg?.__copy__());
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _next( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._leadComment = null;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lineComment = null;
        var _prev = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo._internal.go.token.Token_pos.Pos);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L223"
        _p._next0();
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L225"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((2 : stdgo._internal.go.token.Token_token.Token))) {
            var _comment:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
            var _endline:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L229"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.line((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos) == ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.line(_prev))) {
                {
                    var __tmp__ = _p._consumeCommentGroup((0 : stdgo.GoInt));
                    _comment = @:tmpset0 __tmp__._0;
                    _endline = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L233"
                if ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.line((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos) != (_endline) || (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((57 : stdgo._internal.go.token.Token_token.Token)) : Bool) || ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == (1 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lineComment = _comment;
                };
            };
            _endline = (-1 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L242"
            while ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((2 : stdgo._internal.go.token.Token_token.Token))) {
                {
                    var __tmp__ = _p._consumeCommentGroup((1 : stdgo.GoInt));
                    _comment = @:tmpset0 __tmp__._0;
                    _endline = @:tmpset0 __tmp__._1;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L246"
            if ((_endline + (1 : stdgo.GoInt) : stdgo.GoInt) == ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.line((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos))) {
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._leadComment = _comment;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _consumeCommentGroup( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _n:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>; var _1 : stdgo.GoInt; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var _comments = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>), _endline = (0 : stdgo.GoInt);
        var _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>);
        _endline = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.line((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L192"
        while ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == (2 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.line((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos) <= (_endline + _n : stdgo.GoInt) : Bool) : Bool)) {
            var _comment:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>);
            {
                var __tmp__ = _p._consumeComment();
                _comment = @:tmpset0 __tmp__._0;
                _endline = @:tmpset0 __tmp__._1;
            };
            _list = (_list.__append__(_comment) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>);
        };
        _comments = (stdgo.Go.setRef(({ list : _list } : stdgo._internal.go.ast.Ast_commentgroup.CommentGroup), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentgroupdotcommentgroup.__type__stdgodot_internaldotgodotastdotAst_commentgroupdotCommentGroup })) : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._comments = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._comments.__append__(_comments) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L202"
        return { _0 : _comments, _1 : _endline };
    }
    @:keep
    @:tdfield
    static public function _consumeComment( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>; var _1 : stdgo.GoInt; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var _comment = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>), _endline = (0 : stdgo.GoInt);
        _endline = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.line((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L170"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lit[(1 : stdgo.GoInt)] == ((42 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L172"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lit.length) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L173"
                    if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lit[(_i : stdgo.GoInt)] == ((10 : stdgo.GoUInt8))) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L174"
                        _endline++;
                    };
                    _i++;
                };
            };
        };
        _comment = (stdgo.Go.setRef(({ slash : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, text : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lit?.__copy__() } : stdgo._internal.go.ast.Ast_comment.Comment), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentdotcomment.__type__stdgodot_internaldotgodotastdotAst_commentdotComment })) : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L180"
        _p._next0();
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L182"
        return { _0 : _comment, _1 : _endline };
    }
    @:keep
    @:tdfield
    static public function _next0( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L134"
        if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos.isValid() : Bool)) {
            var _s = @:assignType (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L136"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok.isLiteral()) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L138"
                _p._printTrace(new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lit, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            } else if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok.isOperator() || (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok.isKeyword()) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L140"
                _p._printTrace(new stdgo.AnyInterface(((("\"" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            } else {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L142"
                _p._printTrace(new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L146"
        while (true) {
            {
                var __tmp__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanner.scan();
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos = @:tmpset0 __tmp__._0;
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok = @:tmpset0 __tmp__._1;
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lit = @:tmpset0 __tmp__._2?.__copy__();
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L148"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok == ((2 : stdgo._internal.go.token.Token_token.Token))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L149"
                if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._top && stdgo._internal.strings.Strings_hasprefix.hasPrefix((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lit?.__copy__(), ("//go:build" : stdgo.GoString)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L150"
                    {
                        var __tmp__ = stdgo._internal.go.build.constraint.Constraint_parse.parse((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lit?.__copy__()), _x:stdgo._internal.go.build.constraint.Constraint_expr.Expr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err == null) {
                            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goVersion = stdgo._internal.go.build.constraint.Constraint_goversion.goVersion(_x)?.__copy__();
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L154"
                if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mode & (4u32 : stdgo._internal.go.parser.Parser_mode.Mode) : stdgo._internal.go.parser.Parser_mode.Mode) == ((0u32 : stdgo._internal.go.parser.Parser_mode.Mode))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L155"
                    continue;
                };
            } else {
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._top = false;
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L161"
            break;
        };
    }
    @:keep
    @:tdfield
    static public function _printTrace( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _a:haxe.Rest<stdgo.AnyInterface>):Void {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        {};
        {};
        var _pos = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.position((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos)?.__copy__() : stdgo._internal.go.token.Token_position.Position);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L87"
        stdgo._internal.fmt.Fmt_printf.printf(("%5d:%3d: " : stdgo.GoString), new stdgo.AnyInterface(_pos.line, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_pos.column, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        var _i = @:assignType ((2 : stdgo.GoInt) * (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indent : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L89"
        while ((_i > (64 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L90"
            stdgo._internal.fmt.Fmt_print.print(new stdgo.AnyInterface((". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . " : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            _i = (_i - ((64 : stdgo.GoInt)) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L94"
        stdgo._internal.fmt.Fmt_print.print(new stdgo.AnyInterface(((". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . " : stdgo.GoString).__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L95"
        stdgo._internal.fmt.Fmt_println.println(...(_a : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function _init( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _filename:stdgo.GoString, _src:stdgo.Slice<stdgo.GoUInt8>, _mode:stdgo._internal.go.parser.Parser_mode.Mode):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file = _fset.addFile(_filename?.__copy__(), (-1 : stdgo.GoInt), (_src.length));
        var _eh = @:assignType (function(_pos:stdgo._internal.go.token.Token_position.Position, _msg:stdgo.GoString):Void {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L71"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errors.add(_pos?.__copy__(), _msg?.__copy__());
        } : (stdgo._internal.go.token.Token_position.Position, stdgo.GoString) -> Void);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L72"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scanner.init((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file, _src, _eh, (1u32 : stdgo._internal.go.scanner.Scanner_mode.Mode));
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._top = true;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mode = _mode;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace = (_mode & (8u32 : stdgo._internal.go.parser.Parser_mode.Mode) : stdgo._internal.go.parser.Parser_mode.Mode) != ((0u32 : stdgo._internal.go.parser.Parser_mode.Mode));
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L77"
        _p._next();
    }
}
