package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.regexp.syntax.Syntax_t_patchlist_static_extension.T_patchList_static_extension) @:using(stdgo._internal.regexp.syntax.Syntax_t_patchlist_static_extension.T_patchList_static_extension) class T_patchList {
    public var _head : stdgo.GoUInt32 = 0;
    public var _tail : stdgo.GoUInt32 = 0;
    public function new(?_head:stdgo.GoUInt32, ?_tail:stdgo.GoUInt32) {
        if (_head != null) this._head = _head;
        if (_tail != null) this._tail = _tail;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_head", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "_tail", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }])));
    public function __copy__() {
        return new T_patchList(_head, _tail);
    }
}
