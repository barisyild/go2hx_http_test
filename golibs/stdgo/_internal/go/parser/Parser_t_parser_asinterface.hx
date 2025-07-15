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
class T_parser_asInterface {
    @:keep
    public dynamic function _parseFile():stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> return @:_0 __self__.value._parseFile();
    @:keep
    public dynamic function _parseDecl(_sync:stdgo.GoMap<stdgo._internal.go.token.Token_token.Token, Bool>):stdgo._internal.go.ast.Ast_decl.Decl return @:_0 __self__.value._parseDecl(_sync);
    @:keep
    public dynamic function _parseFuncDecl():stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> return @:_0 __self__.value._parseFuncDecl();
    @:keep
    public dynamic function _parseGenDecl(_keyword:stdgo._internal.go.token.Token_token.Token, _f:stdgo._internal.go.parser.Parser_t_parsespecfunction.T_parseSpecFunction):stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> return @:_0 __self__.value._parseGenDecl(_keyword, _f);
    @:keep
    public dynamic function _parseTypeSpec(_doc:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, __0:stdgo._internal.go.token.Token_token.Token, __1:stdgo.GoInt):stdgo._internal.go.ast.Ast_spec.Spec return @:_0 __self__.value._parseTypeSpec(_doc, __0, __1);
    @:keep
    public dynamic function _parseGenericType(_spec:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>, _openPos:stdgo._internal.go.token.Token_pos.Pos, _name0:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, _typ0:stdgo._internal.go.ast.Ast_expr.Expr):Void @:_0 __self__.value._parseGenericType(_spec, _openPos, _name0, _typ0);
    @:keep
    public dynamic function _parseValueSpec(_doc:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, _keyword:stdgo._internal.go.token.Token_token.Token, _iota:stdgo.GoInt):stdgo._internal.go.ast.Ast_spec.Spec return @:_0 __self__.value._parseValueSpec(_doc, _keyword, _iota);
    @:keep
    public dynamic function _parseImportSpec(_doc:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, __0:stdgo._internal.go.token.Token_token.Token, __1:stdgo.GoInt):stdgo._internal.go.ast.Ast_spec.Spec return @:_0 __self__.value._parseImportSpec(_doc, __0, __1);
    @:keep
    public dynamic function _parseStmt():stdgo._internal.go.ast.Ast_stmt.Stmt return @:_0 __self__.value._parseStmt();
    @:keep
    public dynamic function _parseForStmt():stdgo._internal.go.ast.Ast_stmt.Stmt return @:_0 __self__.value._parseForStmt();
    @:keep
    public dynamic function _parseSelectStmt():stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt> return @:_0 __self__.value._parseSelectStmt();
    @:keep
    public dynamic function _parseCommClause():stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause> return @:_0 __self__.value._parseCommClause();
    @:keep
    public dynamic function _parseSwitchStmt():stdgo._internal.go.ast.Ast_stmt.Stmt return @:_0 __self__.value._parseSwitchStmt();
    @:keep
    public dynamic function _isTypeSwitchGuard(_s:stdgo._internal.go.ast.Ast_stmt.Stmt):Bool return @:_0 __self__.value._isTypeSwitchGuard(_s);
    @:keep
    public dynamic function _parseCaseClause():stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause> return @:_0 __self__.value._parseCaseClause();
    @:keep
    public dynamic function _parseIfStmt():stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt> return @:_0 __self__.value._parseIfStmt();
    @:keep
    public dynamic function _parseIfHeader():{ var _0 : stdgo._internal.go.ast.Ast_stmt.Stmt; var _1 : stdgo._internal.go.ast.Ast_expr.Expr; } return @:_0 __self__.value._parseIfHeader();
    @:keep
    public dynamic function _makeExpr(_s:stdgo._internal.go.ast.Ast_stmt.Stmt, _want:stdgo.GoString):stdgo._internal.go.ast.Ast_expr.Expr return @:_0 __self__.value._makeExpr(_s, _want);
    @:keep
    public dynamic function _parseBranchStmt(_tok:stdgo._internal.go.token.Token_token.Token):stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt> return @:_0 __self__.value._parseBranchStmt(_tok);
    @:keep
    public dynamic function _parseReturnStmt():stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt> return @:_0 __self__.value._parseReturnStmt();
    @:keep
    public dynamic function _parseDeferStmt():stdgo._internal.go.ast.Ast_stmt.Stmt return @:_0 __self__.value._parseDeferStmt();
    @:keep
    public dynamic function _parseGoStmt():stdgo._internal.go.ast.Ast_stmt.Stmt return @:_0 __self__.value._parseGoStmt();
    @:keep
    public dynamic function _parseCallExpr(_callType:stdgo.GoString):stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr> return @:_0 __self__.value._parseCallExpr(_callType);
    @:keep
    public dynamic function _parseSimpleStmt(_mode:stdgo.GoInt):{ var _0 : stdgo._internal.go.ast.Ast_stmt.Stmt; var _1 : Bool; } return @:_0 __self__.value._parseSimpleStmt(_mode);
    @:keep
    public dynamic function _parseRhs():stdgo._internal.go.ast.Ast_expr.Expr return @:_0 __self__.value._parseRhs();
    @:keep
    public dynamic function _parseExpr():stdgo._internal.go.ast.Ast_expr.Expr return @:_0 __self__.value._parseExpr();
    @:keep
    public dynamic function _parseBinaryExpr(_x:stdgo._internal.go.ast.Ast_expr.Expr, _prec1:stdgo.GoInt):stdgo._internal.go.ast.Ast_expr.Expr return @:_0 __self__.value._parseBinaryExpr(_x, _prec1);
    @:keep
    public dynamic function _tokPrec():{ var _0 : stdgo._internal.go.token.Token_token.Token; var _1 : stdgo.GoInt; } return @:_0 __self__.value._tokPrec();
    @:keep
    public dynamic function _parseUnaryExpr():stdgo._internal.go.ast.Ast_expr.Expr return @:_0 __self__.value._parseUnaryExpr();
    @:keep
    public dynamic function _parsePrimaryExpr(_x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr return @:_0 __self__.value._parsePrimaryExpr(_x);
    @:keep
    public dynamic function _parseLiteralValue(_typ:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr return @:_0 __self__.value._parseLiteralValue(_typ);
    @:keep
    public dynamic function _parseElementList():stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> return @:_0 __self__.value._parseElementList();
    @:keep
    public dynamic function _parseElement():stdgo._internal.go.ast.Ast_expr.Expr return @:_0 __self__.value._parseElement();
    @:keep
    public dynamic function _parseValue():stdgo._internal.go.ast.Ast_expr.Expr return @:_0 __self__.value._parseValue();
    @:keep
    public dynamic function _parseCallOrConversion(_fun:stdgo._internal.go.ast.Ast_expr.Expr):stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr> return @:_0 __self__.value._parseCallOrConversion(_fun);
    @:keep
    public dynamic function _parseIndexOrSliceOrInstance(_x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr return @:_0 __self__.value._parseIndexOrSliceOrInstance(_x);
    @:keep
    public dynamic function _parseTypeAssertion(_x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr return @:_0 __self__.value._parseTypeAssertion(_x);
    @:keep
    public dynamic function _parseSelector(_x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr return @:_0 __self__.value._parseSelector(_x);
    @:keep
    public dynamic function _parseOperand():stdgo._internal.go.ast.Ast_expr.Expr return @:_0 __self__.value._parseOperand();
    @:keep
    public dynamic function _parseFuncTypeOrLit():stdgo._internal.go.ast.Ast_expr.Expr return @:_0 __self__.value._parseFuncTypeOrLit();
    @:keep
    public dynamic function _parseBlockStmt():stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> return @:_0 __self__.value._parseBlockStmt();
    @:keep
    public dynamic function _parseBody():stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> return @:_0 __self__.value._parseBody();
    @:keep
    public dynamic function _parseStmtList():stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt> return @:_0 __self__.value._parseStmtList();
    @:keep
    public dynamic function _tryIdentOrType():stdgo._internal.go.ast.Ast_expr.Expr return @:_0 __self__.value._tryIdentOrType();
    @:keep
    public dynamic function _parseTypeInstance(_typ:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr return @:_0 __self__.value._parseTypeInstance(_typ);
    @:keep
    public dynamic function _parseChanType():stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType> return @:_0 __self__.value._parseChanType();
    @:keep
    public dynamic function _parseMapType():stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType> return @:_0 __self__.value._parseMapType();
    @:keep
    public dynamic function _parseInterfaceType():stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType> return @:_0 __self__.value._parseInterfaceType();
    @:keep
    public dynamic function _embeddedTerm():stdgo._internal.go.ast.Ast_expr.Expr return @:_0 __self__.value._embeddedTerm();
    @:keep
    public dynamic function _embeddedElem(_x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr return @:_0 __self__.value._embeddedElem(_x);
    @:keep
    public dynamic function _parseMethodSpec():stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field> return @:_0 __self__.value._parseMethodSpec();
    @:keep
    public dynamic function _parseFuncType():stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> return @:_0 __self__.value._parseFuncType();
    @:keep
    public dynamic function _parseResult():stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> return @:_0 __self__.value._parseResult();
    @:keep
    public dynamic function _parseParameters(_acceptTParams:Bool):{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>; var _1 : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>; } return @:_0 __self__.value._parseParameters(_acceptTParams);
    @:keep
    public dynamic function _parseParameterList(_name0:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, _typ0:stdgo._internal.go.ast.Ast_expr.Expr, _closing:stdgo._internal.go.token.Token_token.Token):stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>> return @:_0 __self__.value._parseParameterList(_name0, _typ0, _closing);
    @:keep
    public dynamic function _parseParamDecl(_name:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, _typeSetsOK:Bool):stdgo._internal.go.parser.Parser_t_field.T_field return @:_0 __self__.value._parseParamDecl(_name, _typeSetsOK);
    @:keep
    public dynamic function _parseDotsType():stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis> return @:_0 __self__.value._parseDotsType();
    @:keep
    public dynamic function _parsePointerType():stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr> return @:_0 __self__.value._parsePointerType();
    @:keep
    public dynamic function _parseStructType():stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType> return @:_0 __self__.value._parseStructType();
    @:keep
    public dynamic function _parseFieldDecl():stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field> return @:_0 __self__.value._parseFieldDecl();
    @:keep
    public dynamic function _parseArrayFieldOrTypeInstance(_x:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>; var _1 : stdgo._internal.go.ast.Ast_expr.Expr; } return @:_0 __self__.value._parseArrayFieldOrTypeInstance(_x);
    @:keep
    public dynamic function _parseArrayType(_lbrack:stdgo._internal.go.token.Token_pos.Pos, _len:stdgo._internal.go.ast.Ast_expr.Expr):stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType> return @:_0 __self__.value._parseArrayType(_lbrack, _len);
    @:keep
    public dynamic function _parseTypeName(_ident:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):stdgo._internal.go.ast.Ast_expr.Expr return @:_0 __self__.value._parseTypeName(_ident);
    @:keep
    public dynamic function _parseQualifiedIdent(_ident:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):stdgo._internal.go.ast.Ast_expr.Expr return @:_0 __self__.value._parseQualifiedIdent(_ident);
    @:keep
    public dynamic function _parseType():stdgo._internal.go.ast.Ast_expr.Expr return @:_0 __self__.value._parseType();
    @:keep
    public dynamic function _parseList(_inRhs:Bool):stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> return @:_0 __self__.value._parseList(_inRhs);
    @:keep
    public dynamic function _parseExprList():stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> return @:_0 __self__.value._parseExprList();
    @:keep
    public dynamic function _parseIdentList():stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>> return @:_0 __self__.value._parseIdentList();
    @:keep
    public dynamic function _parseIdent():stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> return @:_0 __self__.value._parseIdent();
    @:keep
    public dynamic function _safePos(_pos:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos return @:_0 __self__.value._safePos(_pos);
    @:keep
    public dynamic function _advance(_to:stdgo.GoMap<stdgo._internal.go.token.Token_token.Token, Bool>):Void @:_0 __self__.value._advance(_to);
    @:keep
    public dynamic function _atComma(_context:stdgo.GoString, _follow:stdgo._internal.go.token.Token_token.Token):Bool return @:_0 __self__.value._atComma(_context, _follow);
    @:keep
    public dynamic function _expectSemi():stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> return @:_0 __self__.value._expectSemi();
    @:keep
    public dynamic function _expectClosing(_tok:stdgo._internal.go.token.Token_token.Token, _context:stdgo.GoString):stdgo._internal.go.token.Token_pos.Pos return @:_0 __self__.value._expectClosing(_tok, _context);
    @:keep
    public dynamic function _expect2(_tok:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_pos.Pos return @:_0 __self__.value._expect2(_tok);
    @:keep
    public dynamic function _expect(_tok:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_pos.Pos return @:_0 __self__.value._expect(_tok);
    @:keep
    public dynamic function _errorExpected(_pos:stdgo._internal.go.token.Token_pos.Pos, _msg:stdgo.GoString):Void @:_0 __self__.value._errorExpected(_pos, _msg);
    @:keep
    public dynamic function _error(_pos:stdgo._internal.go.token.Token_pos.Pos, _msg:stdgo.GoString):Void @:_0 __self__.value._error(_pos, _msg);
    @:keep
    public dynamic function _next():Void @:_0 __self__.value._next();
    @:keep
    public dynamic function _consumeCommentGroup(_n:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>; var _1 : stdgo.GoInt; } return @:_0 __self__.value._consumeCommentGroup(_n);
    @:keep
    public dynamic function _consumeComment():{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>; var _1 : stdgo.GoInt; } return @:_0 __self__.value._consumeComment();
    @:keep
    public dynamic function _next0():Void @:_0 __self__.value._next0();
    @:keep
    public dynamic function _printTrace(_a:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._printTrace(..._a);
    @:keep
    public dynamic function _init(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _filename:stdgo.GoString, _src:stdgo.Slice<stdgo.GoUInt8>, _mode:stdgo._internal.go.parser.Parser_mode.Mode):Void @:_0 __self__.value._init(_fset, _filename, _src, _mode);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.parser.Parser_t_parserpointer.T_parserPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
