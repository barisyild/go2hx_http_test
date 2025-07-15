package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
@:keep @:allow(_internal.golangdotorg.x.text.unicode.bidi.Bidi.Paragraph_asInterface) class Paragraph_static_extension {
    @:keep
    @:tdfield
    static public function line( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_paragraph.Paragraph>, _start:stdgo.GoInt, _end:stdgo.GoInt):{ var _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering.Ordering; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_paragraph.Paragraph> = _p;
        var _lineTypes = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types.__slice__(_start, _end) : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>);
        var __tmp__ = _internal.golangdotorg.x.text.unicode.bidi.Bidi__newparagraph._newParagraph(_lineTypes, ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairTypes.__slice__(_start, _end) : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType>), ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairValues.__slice__(_start, _end) : stdgo.Slice<stdgo.GoInt32>), (-1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level)), _para:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L241"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L242"
            return { _0 : (new _internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering.Ordering() : _internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering.Ordering), _1 : _err };
        };
        var _levels = _para._getLevels((new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(_lineTypes.length)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>));
        var _o = @:assignType (_internal.golangdotorg.x.text.unicode.bidi.Bidi__calculateordering._calculateOrdering(_levels, ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runes.__slice__(_start, _end) : stdgo.Slice<stdgo.GoInt32>))?.__copy__() : _internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering.Ordering);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L246"
        return { _0 : _o?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function order( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_paragraph.Paragraph>):{ var _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering.Ordering; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_paragraph.Paragraph> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L214"
        if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L215"
            return { _0 : (new _internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering.Ordering() : _internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering.Ordering), _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L218"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts != null) for (__0 => _fn in (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L219"
            _fn((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_t_optionsdott_options.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_t_optionsdotT_options })) : stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_options.T_options>));
        };
        var _lvl = @:assignType ((-1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L222"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options._defaultDirection == ((1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction))) {
            _lvl = (1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level);
        };
        var __tmp__ = _internal.golangdotorg.x.text.unicode.bidi.Bidi__newparagraph._newParagraph((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairTypes, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairValues, _lvl), _para:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L226"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L227"
            return { _0 : (new _internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering.Ordering() : _internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering.Ordering), _1 : _err };
        };
        var _levels = _para._getLevels((new stdgo.Slice<stdgo.GoInt>(1, 1, ...[((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types.length)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>));
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._o = _internal.golangdotorg.x.text.unicode.bidi.Bidi__calculateordering._calculateOrdering(_levels, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runes)?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L233"
        return { _0 : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._o?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function runAt( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_paragraph.Paragraph>, _pos:stdgo.GoInt):_internal.golangdotorg.x.text.unicode.bidi.Bidi_run.Run {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_paragraph.Paragraph> = _p;
        var _c = @:assignType (0 : stdgo.GoInt);
        var _runNumber = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L172"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._o._runes != null) for (_i => _r in (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._o._runes) {
            _c = (_c + ((_r.length)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L174"
            if ((_pos < _c : Bool)) {
                _runNumber = _i;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L178"
        return (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._o.run(_runNumber)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function direction( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_paragraph.Paragraph>):_internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_paragraph.Paragraph> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L161"
        return (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._o.direction();
    }
    @:keep
    @:tdfield
    static public function isLeftToRight( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_paragraph.Paragraph>):Bool {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_paragraph.Paragraph> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L154"
        return _p.direction() == ((0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction));
    }
    @:keep
    @:tdfield
    static public function setString( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_paragraph.Paragraph>, _s:stdgo.GoString, _opts:haxe.Rest<_internal.golangdotorg.x.text.unicode.bidi.Bidi_option.Option>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _opts = new stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_option.Option>(_opts.length, 0, ..._opts);
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_paragraph.Paragraph> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p = (_s : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts = _opts;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L147"
        return _p._prepareInput();
    }
    @:keep
    @:tdfield
    static public function setBytes( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_paragraph.Paragraph>, _b:stdgo.Slice<stdgo.GoUInt8>, _opts:haxe.Rest<_internal.golangdotorg.x.text.unicode.bidi.Bidi_option.Option>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _opts = new stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_option.Option>(_opts.length, 0, ..._opts);
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_paragraph.Paragraph> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p = _b;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts = _opts;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L136"
        return _p._prepareInput();
    }
    @:keep
    @:tdfield
    static public function _prepareInput( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_paragraph.Paragraph>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_paragraph.Paragraph> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runes = stdgo._internal.bytes.Bytes_runes.runes((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p);
        var _bytecount = @:assignType (0 : stdgo.GoInt);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairTypes = (null : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType>);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairValues = (null : stdgo.Slice<stdgo.GoInt32>);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types = (null : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L104"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runes != null) for (__0 => _r in (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runes) {
            var __tmp__ = _internal.golangdotorg.x.text.unicode.bidi.Bidi_lookuprune.lookupRune(_r), _props:_internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties = __tmp__._0, _i:stdgo.GoInt = __tmp__._1;
            _bytecount = (_bytecount + (_i) : stdgo.GoInt);
            var _cls = @:assignType (_props.class_() : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L108"
            if (_cls == ((7u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L109"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _bytecount, _1 : (null : stdgo.Error) };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types.__append__(_cls) : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L112"
            if (_props.isOpeningBracket()) {
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairTypes = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairTypes.__append__((1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType)) : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType>);
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairValues = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairValues.__append__(_r) : stdgo.Slice<stdgo.GoInt32>);
            } else if (_props.isBracket()) {
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairTypes = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairTypes.__append__((2 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType)) : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType>);
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairValues = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairValues.__append__(_r) : stdgo.Slice<stdgo.GoInt32>);
            } else {
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairTypes = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairTypes.__append__((0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType)) : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType>);
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairValues = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairValues.__append__((0 : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoInt32>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L125"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _bytecount, _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
