package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
@:structInit @:using(_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph_static_extension.T_paragraph_static_extension) @:using(_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph_static_extension.T_paragraph_static_extension) class T_paragraph {
    public var _initialTypes : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_> = (null : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>);
    public var _pairTypes : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType> = (null : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType>);
    public var _pairValues : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var _embeddingLevel : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level = ((0 : stdgo.GoInt8) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level);
    public var _resultTypes : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_> = (null : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>);
    public var _resultLevels : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level> = (null : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level>);
    public var _matchingPDI : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _matchingIsolateInitiator : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_initialTypes:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>, ?_pairTypes:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType>, ?_pairValues:stdgo.Slice<stdgo.GoInt32>, ?_embeddingLevel:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level, ?_resultTypes:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>, ?_resultLevels:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level>, ?_matchingPDI:stdgo.Slice<stdgo.GoInt>, ?_matchingIsolateInitiator:stdgo.Slice<stdgo.GoInt>) {
        if (_initialTypes != null) this._initialTypes = _initialTypes;
        if (_pairTypes != null) this._pairTypes = _pairTypes;
        if (_pairValues != null) this._pairValues = _pairValues;
        if (_embeddingLevel != null) this._embeddingLevel = _embeddingLevel;
        if (_resultTypes != null) this._resultTypes = _resultTypes;
        if (_resultLevels != null) this._resultLevels = _resultLevels;
        if (_matchingPDI != null) this._matchingPDI = _matchingPDI;
        if (_matchingIsolateInitiator != null) this._matchingIsolateInitiator = _matchingIsolateInitiator;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_initialTypes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_class_dotclass_.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_class_dotClass_ }) }, optional : false }, { name : "_pairTypes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_t_brackettypedott_brackettype.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_t_brackettypedotT_bracketType }) }, optional : false }, { name : "_pairValues", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) }, optional : false }, { name : "_embeddingLevel", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_t_leveldott_level.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_t_leveldotT_level }, optional : false }, { name : "_resultTypes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_class_dotclass_.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_class_dotClass_ }) }, optional : false }, { name : "_resultLevels", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_t_leveldott_level.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_t_leveldotT_level }) }, optional : false }, { name : "_matchingPDI", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }, { name : "_matchingIsolateInitiator", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_paragraph(_initialTypes, _pairTypes, _pairValues, _embeddingLevel, _resultTypes, _resultLevels, _matchingPDI, _matchingIsolateInitiator);
    }
}
