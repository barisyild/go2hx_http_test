package stdgo.go.parser;
var packageClauseOnly : Mode = 1i64;
var importsOnly : Mode = 2i64;
var parseComments : Mode = 4i64;
var trace_ : Mode = 8i64;
var declarationErrors : Mode = 16i64;
var spuriousErrors : Mode = 32i64;
var skipObjectResolution : Mode = 64i64;
var allErrors : Mode = 32i64;
typedef Mode = stdgo._internal.go.parser.Parser_mode.Mode;
typedef ModePointer = stdgo._internal.go.parser.Parser_modepointer.ModePointer;
typedef ModePointerPointer = stdgo._internal.go.parser.Parser_modepointerpointer.ModePointerPointer;
/**
    * Package parser implements a parser for Go source files. Input may be
    * provided in a variety of forms (see the various Parse* functions); the
    * output is an abstract syntax tree (AST) representing the Go source. The
    * parser is invoked through one of the Parse* functions.
    * 
    * The parser accepts a larger language than is syntactically permitted by
    * the Go spec, for simplicity, and for improved robustness in the presence
    * of syntax errors. For instance, in method declarations, the receiver is
    * treated like an ordinary parameter list and thus may contain multiple
    * entries where the spec permits exactly one. Consequently, the corresponding
    * field in the AST (ast.FuncDecl.Recv) field is not restricted to one entry.
**/
class Parser {
    /**
        * ParseFile parses the source code of a single Go source file and returns
        * the corresponding ast.File node. The source code may be provided via
        * the filename of the source file, or via the src parameter.
        * 
        * If src != nil, ParseFile parses the source from src and the filename is
        * only used when recording position information. The type of the argument
        * for the src parameter must be string, []byte, or io.Reader.
        * If src == nil, ParseFile parses the file specified by filename.
        * 
        * The mode parameter controls the amount of source text parsed and other
        * optional parser functionality. If the SkipObjectResolution mode bit is set,
        * the object resolution phase of parsing will be skipped, causing File.Scope,
        * File.Unresolved, and all Ident.Obj fields to be nil.
        * 
        * Position information is recorded in the file set fset, which must not be
        * nil.
        * 
        * If the source couldn't be read, the returned AST is nil and the error
        * indicates the specific failure. If the source was read but syntax
        * errors were found, the result is a partial AST (with ast.Bad* nodes
        * representing the fragments of erroneous source code). Multiple errors
        * are returned via a scanner.ErrorList which is sorted by source position.
    **/
    static public inline function parseFile(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _filename:stdgo.GoString, _src:stdgo.AnyInterface, _mode:Mode):{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>; var _1 : stdgo.Error; } return stdgo._internal.go.parser.Parser_parsefile.parseFile(_fset, _filename, _src, _mode);
    /**
        * ParseDir calls ParseFile for all files with names ending in ".go" in the
        * directory specified by path and returns a map of package name -> package
        * AST with all the packages found.
        * 
        * If filter != nil, only the files with fs.FileInfo entries passing through
        * the filter (and ending in ".go") are considered. The mode bits are passed
        * to ParseFile unchanged. Position information is recorded in fset, which
        * must not be nil.
        * 
        * If the directory couldn't be read, a nil map and the respective error are
        * returned. If a parse error occurred, a non-nil but incomplete map and the
        * first error encountered are returned.
    **/
    static public inline function parseDir(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _path:stdgo.GoString, _filter:stdgo._internal.io.fs.Fs_fileinfo.FileInfo -> Bool, _mode:Mode):{ var _0 : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>>; var _1 : stdgo.Error; } return stdgo._internal.go.parser.Parser_parsedir.parseDir(_fset, _path, _filter, _mode);
    /**
        * ParseExprFrom is a convenience function for parsing an expression.
        * The arguments have the same meaning as for ParseFile, but the source must
        * be a valid Go (type or value) expression. Specifically, fset must not
        * be nil.
        * 
        * If the source couldn't be read, the returned AST is nil and the error
        * indicates the specific failure. If the source was read but syntax
        * errors were found, the result is a partial AST (with ast.Bad* nodes
        * representing the fragments of erroneous source code). Multiple errors
        * are returned via a scanner.ErrorList which is sorted by source position.
    **/
    static public inline function parseExprFrom(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _filename:stdgo.GoString, _src:stdgo.AnyInterface, _mode:Mode):{ var _0 : stdgo._internal.go.ast.Ast_expr.Expr; var _1 : stdgo.Error; } return stdgo._internal.go.parser.Parser_parseexprfrom.parseExprFrom(_fset, _filename, _src, _mode);
    /**
        * ParseExpr is a convenience function for obtaining the AST of an expression x.
        * The position information recorded in the AST is undefined. The filename used
        * in error messages is the empty string.
        * 
        * If syntax errors were found, the result is a partial AST (with ast.Bad* nodes
        * representing the fragments of erroneous source code). Multiple errors are
        * returned via a scanner.ErrorList which is sorted by source position.
    **/
    static public inline function parseExpr(_x:stdgo.GoString):{ var _0 : stdgo._internal.go.ast.Ast_expr.Expr; var _1 : stdgo.Error; } return stdgo._internal.go.parser.Parser_parseexpr.parseExpr(_x);
}
