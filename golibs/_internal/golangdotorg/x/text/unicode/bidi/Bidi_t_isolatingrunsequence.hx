package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
@:structInit @:using(_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequence_static_extension.T_isolatingRunSequence_static_extension) @:using(_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequence_static_extension.T_isolatingRunSequence_static_extension) class T_isolatingRunSequence {
    public var _p : stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph> = (null : stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph>);
    public var _indexes : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _types : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_> = (null : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>);
    public var _resolvedLevels : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level> = (null : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level>);
    public var _level : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level = ((0 : stdgo.GoInt8) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level);
    public var _sos : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_ = ((0 : stdgo.GoUInt) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
    public var _eos : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_ = ((0 : stdgo.GoUInt) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
    public function new(?_p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph>, ?_indexes:stdgo.Slice<stdgo.GoInt>, ?_types:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>, ?_resolvedLevels:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level>, ?_level:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level, ?_sos:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_, ?_eos:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_) {
        if (_p != null) this._p = _p;
        if (_indexes != null) this._indexes = _indexes;
        if (_types != null) this._types = _types;
        if (_resolvedLevels != null) this._resolvedLevels = _resolvedLevels;
        if (_level != null) this._level = _level;
        if (_sos != null) this._sos = _sos;
        if (_eos != null) this._eos = _eos;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_p", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_t_paragraphdott_paragraph.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_t_paragraphdotT_paragraph }) }, optional : false }, { name : "_indexes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }, { name : "_types", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_class_dotclass_.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_class_dotClass_ }) }, optional : false }, { name : "_resolvedLevels", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_t_leveldott_level.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_t_leveldotT_level }) }, optional : false }, { name : "_level", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_t_leveldott_level.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_t_leveldotT_level }, optional : false }, { name : "_sos", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_class_dotclass_.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_class_dotClass_ }, optional : false }, { name : "_eos", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_class_dotclass_.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_class_dotClass_ }, optional : false }])));
    public function __copy__() {
        return new T_isolatingRunSequence(_p, _indexes, _types, _resolvedLevels, _level, _sos, _eos);
    }
}
