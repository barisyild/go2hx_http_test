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
@:structInit @:using(stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension) @:using(stdgo._internal.go.parser.Parser_t_parser_static_extension.T_parser_static_extension) class T_parser {
    public var _file : stdgo.Ref<stdgo._internal.go.token.Token_file.File> = (null : stdgo.Ref<stdgo._internal.go.token.Token_file.File>);
    public var _errors : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList = (new stdgo._internal.go.scanner.Scanner_errorlist.ErrorList(0, 0) : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList);
    public var _scanner : stdgo._internal.go.scanner.Scanner_scanner.Scanner = ({} : stdgo._internal.go.scanner.Scanner_scanner.Scanner);
    public var _mode : stdgo._internal.go.parser.Parser_mode.Mode = ((0 : stdgo.GoUInt) : stdgo._internal.go.parser.Parser_mode.Mode);
    public var _trace : Bool = false;
    public var _indent : stdgo.GoInt = 0;
    public var _comments : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
    public var _leadComment : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
    public var _lineComment : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
    public var _top : Bool = false;
    public var _goVersion : stdgo.GoString = "";
    public var _pos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var _tok : stdgo._internal.go.token.Token_token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token);
    public var _lit : stdgo.GoString = "";
    public var _syncPos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var _syncCnt : stdgo.GoInt = 0;
    public var _exprLev : stdgo.GoInt = 0;
    public var _inRhs : Bool = false;
    public var _imports : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>);
    public var _nestLev : stdgo.GoInt = 0;
    public function new(?_file:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, ?_errors:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList, ?_scanner:stdgo._internal.go.scanner.Scanner_scanner.Scanner, ?_mode:stdgo._internal.go.parser.Parser_mode.Mode, ?_trace:Bool, ?_indent:stdgo.GoInt, ?_comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>, ?_leadComment:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, ?_lineComment:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, ?_top:Bool, ?_goVersion:stdgo.GoString, ?_pos:stdgo._internal.go.token.Token_pos.Pos, ?_tok:stdgo._internal.go.token.Token_token.Token, ?_lit:stdgo.GoString, ?_syncPos:stdgo._internal.go.token.Token_pos.Pos, ?_syncCnt:stdgo.GoInt, ?_exprLev:stdgo.GoInt, ?_inRhs:Bool, ?_imports:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>, ?_nestLev:stdgo.GoInt) {
        if (_file != null) this._file = _file;
        if (_errors != null) this._errors = _errors;
        if (_scanner != null) this._scanner = _scanner;
        if (_mode != null) this._mode = _mode;
        if (_trace != null) this._trace = _trace;
        if (_indent != null) this._indent = _indent;
        if (_comments != null) this._comments = _comments;
        if (_leadComment != null) this._leadComment = _leadComment;
        if (_lineComment != null) this._lineComment = _lineComment;
        if (_top != null) this._top = _top;
        if (_goVersion != null) this._goVersion = _goVersion;
        if (_pos != null) this._pos = _pos;
        if (_tok != null) this._tok = _tok;
        if (_lit != null) this._lit = _lit;
        if (_syncPos != null) this._syncPos = _syncPos;
        if (_syncCnt != null) this._syncCnt = _syncCnt;
        if (_exprLev != null) this._exprLev = _exprLev;
        if (_inRhs != null) this._inRhs = _inRhs;
        if (_imports != null) this._imports = _imports;
        if (_nestLev != null) this._nestLev = _nestLev;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "_file", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_filedotfile.__type__stdgodot_internaldotgodottokendotToken_filedotFile }) }, optional : false },
{ name : "_errors", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotscannerdotscanner_errorlistdoterrorlist.__type__stdgodot_internaldotgodotscannerdotScanner_errorlistdotErrorList }, optional : false },
{ name : "_scanner", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotscannerdotscanner_scannerdotscanner.__type__stdgodot_internaldotgodotscannerdotScanner_scannerdotScanner }, optional : false },
{ name : "_mode", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_modedotmode.__type__stdgodot_internaldotgodotparserdotParser_modedotMode }, optional : false },
{ name : "_trace", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_indent", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_comments", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentgroupdotcommentgroup.__type__stdgodot_internaldotgodotastdotAst_commentgroupdotCommentGroup }) }) }, optional : false },
{ name : "_leadComment", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentgroupdotcommentgroup.__type__stdgodot_internaldotgodotastdotAst_commentgroupdotCommentGroup }) }, optional : false },
{ name : "_lineComment", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentgroupdotcommentgroup.__type__stdgodot_internaldotgodotastdotAst_commentgroupdotCommentGroup }) }, optional : false },
{ name : "_top", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_goVersion", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "_pos", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos }, optional : false },
{ name : "_tok", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_tokendottoken.__type__stdgodot_internaldotgodottokendotToken_tokendotToken }, optional : false },
{ name : "_lit", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "_syncPos", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos }, optional : false },
{ name : "_syncCnt", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_exprLev", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_inRhs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_imports", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_importspecdotimportspec.__type__stdgodot_internaldotgodotastdotAst_importspecdotImportSpec }) }) }, optional : false },
{ name : "_nestLev", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_parser(
_file,
_errors,
_scanner,
_mode,
_trace,
_indent,
_comments,
_leadComment,
_lineComment,
_top,
_goVersion,
_pos,
_tok,
_lit,
_syncPos,
_syncCnt,
_exprLev,
_inRhs,
_imports,
_nestLev);
    }
}
