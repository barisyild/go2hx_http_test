package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
@:structInit @:using(_internal.golangdotorg.x.text.unicode.bidi.Bidi_paragraph_static_extension.Paragraph_static_extension) @:using(_internal.golangdotorg.x.text.unicode.bidi.Bidi_paragraph_static_extension.Paragraph_static_extension) class Paragraph {
    public var _p : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _o : _internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering.Ordering = ({} : _internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering.Ordering);
    public var _opts : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_option.Option> = (null : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_option.Option>);
    public var _types : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_> = (null : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>);
    public var _pairTypes : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType> = (null : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType>);
    public var _pairValues : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var _runes : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var _options : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_options.T_options = ({} : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_options.T_options);
    public function new(?_p:stdgo.Slice<stdgo.GoUInt8>, ?_o:_internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering.Ordering, ?_opts:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_option.Option>, ?_types:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>, ?_pairTypes:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType>, ?_pairValues:stdgo.Slice<stdgo.GoInt32>, ?_runes:stdgo.Slice<stdgo.GoInt32>, ?_options:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_options.T_options) {
        if (_p != null) this._p = _p;
        if (_o != null) this._o = _o;
        if (_opts != null) this._opts = _opts;
        if (_types != null) this._types = _types;
        if (_pairTypes != null) this._pairTypes = _pairTypes;
        if (_pairValues != null) this._pairValues = _pairValues;
        if (_runes != null) this._runes = _runes;
        if (_options != null) this._options = _options;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_p", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_o", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_orderingdotordering.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_orderingdotOrdering }, optional : false }, { name : "_opts", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_optiondotoption.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_optiondotOption }) }, optional : false }, { name : "_types", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_class_dotclass_.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_class_dotClass_ }) }, optional : false }, { name : "_pairTypes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_t_brackettypedott_brackettype.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_t_brackettypedotT_bracketType }) }, optional : false }, { name : "_pairValues", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) }, optional : false }, { name : "_runes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) }, optional : false }, { name : "_options", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_t_optionsdott_options.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_t_optionsdotT_options }, optional : false }])));
    public function __copy__() {
        return new Paragraph(_p, _o, _opts, _types, _pairTypes, _pairValues, _runes, _options);
    }
}
