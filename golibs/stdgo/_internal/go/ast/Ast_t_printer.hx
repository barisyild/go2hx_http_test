package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.go.ast.Ast_t_printer_static_extension.T_printer_static_extension) @:using(stdgo._internal.go.ast.Ast_t_printer_static_extension.T_printer_static_extension) class T_printer {
    public var _output : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = (null : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
    public var _filter : stdgo._internal.go.ast.Ast_fieldfilter.FieldFilter = (null : stdgo._internal.go.ast.Ast_fieldfilter.FieldFilter);
    public var _ptrmap : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>);
    public var _indent : stdgo.GoInt = 0;
    public var _last : stdgo.GoUInt8 = 0;
    public var _line : stdgo.GoInt = 0;
    public function new(?_output:stdgo._internal.io.Io_writer.Writer, ?_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, ?_filter:stdgo._internal.go.ast.Ast_fieldfilter.FieldFilter, ?_ptrmap:stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>, ?_indent:stdgo.GoInt, ?_last:stdgo.GoUInt8, ?_line:stdgo.GoInt) {
        if (_output != null) this._output = _output;
        if (_fset != null) this._fset = _fset;
        if (_filter != null) this._filter = _filter;
        if (_ptrmap != null) this._ptrmap = _ptrmap;
        if (_indent != null) this._indent = _indent;
        if (_last != null) this._last = _last;
        if (_line != null) this._line = _line;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_output", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }, optional : false }, { name : "_fset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_filesetdotfileset.__type__stdgodot_internaldotgodottokendotToken_filesetdotFileSet }) }, optional : false }, { name : "_filter", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fieldfilterdotfieldfilter.__type__stdgodot_internaldotgodotastdotAst_fieldfilterdotFieldFilter }, optional : false }, { name : "_ptrmap", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }, { name : "_indent", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_last", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "_line", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_printer(_output, _fset, _filter, _ptrmap, _indent, _last, _line);
    }
}
