package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
class T_genericReplacer_asInterface {
    @:keep
    public dynamic function writeString(_w:stdgo._internal.io.Io_writer.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.writeString(_w, _s);
    @:keep
    public dynamic function replace(_s:stdgo.GoString):stdgo.GoString return @:_0 __self__.value.replace(_s);
    @:keep
    public dynamic function _lookup(_s:stdgo.GoString, _ignoreRoot:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : Bool; } return @:_0 __self__.value._lookup(_s, _ignoreRoot);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.strings.Strings_t_genericreplacerpointer.T_genericReplacerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
