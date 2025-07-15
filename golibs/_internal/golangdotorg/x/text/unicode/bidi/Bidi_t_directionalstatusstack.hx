package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
@:structInit @:using(_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_directionalstatusstack_static_extension.T_directionalStatusStack_static_extension) @:using(_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_directionalstatusstack_static_extension.T_directionalStatusStack_static_extension) class T_directionalStatusStack {
    public var _stackCounter : stdgo.GoInt = 0;
    public var _embeddingLevelStack : stdgo.GoArray<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level> = new stdgo.GoArray<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level>(126, 126).__setNumber32__();
    public var _overrideStatusStack : stdgo.GoArray<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_> = new stdgo.GoArray<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>(126, 126).__setNumber32__();
    public var _isolateStatusStack : stdgo.GoArray<Bool> = new stdgo.GoArray<Bool>(126, 126);
    public function new(?_stackCounter:stdgo.GoInt, ?_embeddingLevelStack:stdgo.GoArray<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level>, ?_overrideStatusStack:stdgo.GoArray<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>, ?_isolateStatusStack:stdgo.GoArray<Bool>) {
        if (_stackCounter != null) this._stackCounter = _stackCounter;
        if (_embeddingLevelStack != null) this._embeddingLevelStack = _embeddingLevelStack;
        if (_overrideStatusStack != null) this._overrideStatusStack = _overrideStatusStack;
        if (_isolateStatusStack != null) this._isolateStatusStack = _isolateStatusStack;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_stackCounter", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_embeddingLevelStack", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_t_leveldott_level.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_t_leveldotT_level }, 126) }, optional : false }, { name : "_overrideStatusStack", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_class_dotclass_.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_class_dotClass_ }, 126) }, optional : false }, { name : "_isolateStatusStack", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, 126) }, optional : false }])));
    public function __copy__() {
        return new T_directionalStatusStack(_stackCounter, _embeddingLevelStack, _overrideStatusStack, _isolateStatusStack);
    }
}
