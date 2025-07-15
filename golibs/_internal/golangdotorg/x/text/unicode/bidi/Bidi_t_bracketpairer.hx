package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
@:structInit @:using(_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairer_static_extension.T_bracketPairer_static_extension) @:using(_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairer_static_extension.T_bracketPairer_static_extension) class T_bracketPairer {
    public var _sos : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_ = ((0 : stdgo.GoUInt) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
    public var _openers : stdgo.Ref<stdgo._internal.container.list.List_list.List> = (null : stdgo.Ref<stdgo._internal.container.list.List_list.List>);
    public var _pairPositions : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairs.T_bracketPairs = (new _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairs.T_bracketPairs(0, 0) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairs.T_bracketPairs);
    public var _codesIsolatedRun : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_> = (null : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>);
    public var _indexes : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_sos:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_, ?_openers:stdgo.Ref<stdgo._internal.container.list.List_list.List>, ?_pairPositions:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairs.T_bracketPairs, ?_codesIsolatedRun:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>, ?_indexes:stdgo.Slice<stdgo.GoInt>) {
        if (_sos != null) this._sos = _sos;
        if (_openers != null) this._openers = _openers;
        if (_pairPositions != null) this._pairPositions = _pairPositions;
        if (_codesIsolatedRun != null) this._codesIsolatedRun = _codesIsolatedRun;
        if (_indexes != null) this._indexes = _indexes;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_sos", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_class_dotclass_.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_class_dotClass_ }, optional : false }, { name : "_openers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontainerdotlistdotlist_listdotlist.__type__stdgodot_internaldotcontainerdotlistdotList_listdotList }) }, optional : false }, { name : "_pairPositions", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_t_bracketpairsdott_bracketpairs.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_t_bracketpairsdotT_bracketPairs }, optional : false }, { name : "_codesIsolatedRun", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_class_dotclass_.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_class_dotClass_ }) }, optional : false }, { name : "_indexes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_bracketPairer(_sos, _openers, _pairPositions, _codesIsolatedRun, _indexes);
    }
}
