package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.strings.Strings_t_trienode_static_extension.T_trieNode_static_extension) @:using(stdgo._internal.strings.Strings_t_trienode_static_extension.T_trieNode_static_extension) class T_trieNode {
    public var _value : stdgo.GoString = "";
    public var _priority : stdgo.GoInt = 0;
    public var _prefix : stdgo.GoString = "";
    public var _next : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode> = (null : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>);
    public var _table : stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>>);
    public function new(?_value:stdgo.GoString, ?_priority:stdgo.GoInt, ?_prefix:stdgo.GoString, ?_next:stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>, ?_table:stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>>) {
        if (_value != null) this._value = _value;
        if (_priority != null) this._priority = _priority;
        if (_prefix != null) this._prefix = _prefix;
        if (_next != null) this._next = _next;
        if (_table != null) this._table = _table;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_priority", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_prefix", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_next", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_t_trienodedott_trienode.__type__stdgodot_internaldotstringsdotStrings_t_trienodedotT_trieNode }) }, optional : false }, { name : "_table", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_t_trienodedott_trienode.__type__stdgodot_internaldotstringsdotStrings_t_trienodedotT_trieNode }) }) }, optional : false }])));
    public function __copy__() {
        return new T_trieNode(_value, _priority, _prefix, _next, _table);
    }
}
