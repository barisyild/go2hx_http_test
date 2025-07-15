package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.strings.Strings_t_genericreplacer_static_extension.T_genericReplacer_static_extension) @:using(stdgo._internal.strings.Strings_t_genericreplacer_static_extension.T_genericReplacer_static_extension) class T_genericReplacer {
    public var _root : stdgo._internal.strings.Strings_t_trienode.T_trieNode = ({} : stdgo._internal.strings.Strings_t_trienode.T_trieNode);
    public var _tableSize : stdgo.GoInt = 0;
    public var _mapping : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(256, 256).__setNumber32__();
    public function new(?_root:stdgo._internal.strings.Strings_t_trienode.T_trieNode, ?_tableSize:stdgo.GoInt, ?_mapping:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_root != null) this._root = _root;
        if (_tableSize != null) this._tableSize = _tableSize;
        if (_mapping != null) this._mapping = _mapping;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_root", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_t_trienodedott_trienode.__type__stdgodot_internaldotstringsdotStrings_t_trienodedotT_trieNode }, optional : false }, { name : "_tableSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_mapping", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 256) }, optional : false }])));
    public function __copy__() {
        return new T_genericReplacer(_root, _tableSize, _mapping);
    }
}
