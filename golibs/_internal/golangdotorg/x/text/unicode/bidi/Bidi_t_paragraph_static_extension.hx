package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
@:keep @:allow(_internal.golangdotorg.x.text.unicode.bidi.Bidi.T_paragraph_asInterface) class T_paragraph_static_extension {
    @:keep
    @:tdfield
    static public function _getReordering( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph>, _linebreaks:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L918"
        _internal.golangdotorg.x.text.unicode.bidi.Bidi__validatelinebreaks._validateLineBreaks(_linebreaks, _p.len());
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L920"
        return _internal.golangdotorg.x.text.unicode.bidi.Bidi__computemultilinereordering._computeMultilineReordering(_p._getLevels(_linebreaks), _linebreaks);
    }
    @:keep
    @:tdfield
    static public function _getLevels( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph>, _linebreaks:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level> {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L863"
        _internal.golangdotorg.x.text.unicode.bidi.Bidi__validatelinebreaks._validateLineBreaks(_linebreaks, _p.len());
        var _result = ((null : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level>).__append__(...((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultLevels : Array<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level>)) : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L870"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._initialTypes != null) for (_i => _t in (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._initialTypes) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L871"
            if (_t._in((7u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (8u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                _result[(_i : stdgo.GoInt)] = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._embeddingLevel;
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L876"
                {
                    var _j = @:assignType (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                    while ((_j >= (0 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L877"
                        if (_internal.golangdotorg.x.text.unicode.bidi.Bidi__iswhitespace._isWhitespace((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._initialTypes[(_j : stdgo.GoInt)])) {
                            _result[(_j : stdgo.GoInt)] = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._embeddingLevel;
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L880"
                            break;
                        };
                        _j--;
                    };
                };
            };
        };
        var _start = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L888"
        if (_linebreaks != null) for (__0 => _limit in _linebreaks) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L889"
            {
                var _j = @:assignType (_limit - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_j >= _start : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L890"
                    if (_internal.golangdotorg.x.text.unicode.bidi.Bidi__iswhitespace._isWhitespace((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._initialTypes[(_j : stdgo.GoInt)])) {
                        _result[(_j : stdgo.GoInt)] = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._embeddingLevel;
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L893"
                        break;
                    };
                    _j--;
                };
            };
            _start = _limit;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L899"
        return _result;
    }
    @:keep
    @:tdfield
    static public function _assignLevelsToCharactersRemovedByX9( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph>):Void {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L819"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._initialTypes != null) for (_i => _t in (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._initialTypes) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L820"
            if (_t._in((18u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (19u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (16u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (17u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (20u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (11u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultTypes[(_i : stdgo.GoInt)] = _t;
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultLevels[(_i : stdgo.GoInt)] = (-1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L829"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultLevels[(0 : stdgo.GoInt)] == ((-1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level))) {
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultLevels[(0 : stdgo.GoInt)] = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._embeddingLevel;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L832"
        {
            var _i = @:assignType (1 : stdgo.GoInt);
            while ((_i < ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._initialTypes.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L833"
                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultLevels[(_i : stdgo.GoInt)] == ((-1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level))) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultLevels[(_i : stdgo.GoInt)] = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultLevels[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)];
                };
                _i++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _determineIsolatingRunSequences( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph>):stdgo.Slice<stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequence.T_isolatingRunSequence>> {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph> = _p;
        var _levelRuns = _p._determineLevelRuns();
        var _runForCharacter = (new stdgo.Slice<stdgo.GoInt>((_p.len() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L781"
        if (_levelRuns != null) for (_i => _run in _levelRuns) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L782"
            if (_run != null) for (__0 => _index in _run) {
                _runForCharacter[(_index : stdgo.GoInt)] = _i;
            };
        };
        var _sequences = (new stdgo.Slice<stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequence.T_isolatingRunSequence>>(0, 0, ...[]) : stdgo.Slice<stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequence.T_isolatingRunSequence>>);
        var _currentRunSequence:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L791"
        if (_levelRuns != null) for (__0 => _run in _levelRuns) {
            var _first = @:assignType (_run[(0 : stdgo.GoInt)] : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L793"
            if ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._initialTypes[(_first : stdgo.GoInt)] != (24u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchingIsolateInitiator[(_first : stdgo.GoInt)] == (-1 : stdgo.GoInt)) : Bool)) {
                _currentRunSequence = (null : stdgo.Slice<stdgo.GoInt>);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L796"
                while (true) {
                    _currentRunSequence = (_currentRunSequence.__append__(...(_run : Array<stdgo.GoInt>)) : stdgo.Slice<stdgo.GoInt>);
                    var _last = @:assignType (_currentRunSequence[((_currentRunSequence.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
                    var _lastT = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._initialTypes[(_last : stdgo.GoInt)] : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L802"
                    if ((_lastT._in((21u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (22u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (23u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchingPDI[(_last : stdgo.GoInt)] != _p.len()) : Bool)) {
                        _run = _levelRuns[(_runForCharacter[((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchingPDI[(_last : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoInt)];
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L805"
                        break;
                    };
                };
                _sequences = (_sequences.__append__(_p._isolatingRunSequence(_currentRunSequence)) : stdgo.Slice<stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequence.T_isolatingRunSequence>>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L811"
        return _sequences;
    }
    @:keep
    @:tdfield
    static public function _determineLevelRuns( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph>):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph> = _p;
        var _run = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _allRuns = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>(0, 0, ...[]) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        var _currentLevel = @:assignType (-1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L754"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._initialTypes != null) for (_i => _ in (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._initialTypes) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L755"
            if (!_internal.golangdotorg.x.text.unicode.bidi.Bidi__isremovedbyx9._isRemovedByX9((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._initialTypes[(_i : stdgo.GoInt)])) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L756"
                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultLevels[(_i : stdgo.GoInt)] != (_currentLevel)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L758"
                    if ((_currentLevel >= (0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level) : Bool)) {
                        _allRuns = (_allRuns.__append__(_run) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
                        _run = (null : stdgo.Slice<stdgo.GoInt>);
                    };
                    _currentLevel = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultLevels[(_i : stdgo.GoInt)];
                };
                _run = (_run.__append__(_i) : stdgo.Slice<stdgo.GoInt>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L769"
        if (((_run.length) > (0 : stdgo.GoInt) : Bool)) {
            _allRuns = (_allRuns.__append__(_run) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L772"
        return _allRuns;
    }
    @:keep
    @:tdfield
    static public function _isolatingRunSequence( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph>, _indexes:stdgo.Slice<stdgo.GoInt>):stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequence.T_isolatingRunSequence> {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph> = _p;
        var _length = @:assignType (_indexes.length : stdgo.GoInt);
        var _types = (new stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>((_length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L442"
        if (_indexes != null) for (_i => _x in _indexes) {
            _types[(_i : stdgo.GoInt)] = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultTypes[(_x : stdgo.GoInt)];
        };
        var _prevChar = @:assignType (_indexes[(0 : stdgo.GoInt)] - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L448"
        while (((_prevChar >= (0 : stdgo.GoInt) : Bool) && _internal.golangdotorg.x.text.unicode.bidi.Bidi__isremovedbyx9._isRemovedByX9((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._initialTypes[(_prevChar : stdgo.GoInt)]) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L449"
            _prevChar--;
        };
        var _prevLevel = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._embeddingLevel : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L452"
        if ((_prevChar >= (0 : stdgo.GoInt) : Bool)) {
            _prevLevel = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultLevels[(_prevChar : stdgo.GoInt)];
        };
        var _succLevel:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level = ((0 : stdgo.GoInt8) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level);
        var _lastType = @:assignType (_types[(_length - (1 : stdgo.GoInt) : stdgo.GoInt)] : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L458"
        if (_lastType._in((21u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (22u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (23u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
            _succLevel = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._embeddingLevel;
        } else {
            var _limit = @:assignType (_indexes[(_length - (1 : stdgo.GoInt) : stdgo.GoInt)] + (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L463"
            while (((_limit < _p.len() : Bool) && _internal.golangdotorg.x.text.unicode.bidi.Bidi__isremovedbyx9._isRemovedByX9((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._initialTypes[(_limit : stdgo.GoInt)]) : Bool)) {
                {};
                _limit++;
            };
            _succLevel = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._embeddingLevel;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L467"
            if ((_limit < _p.len() : Bool)) {
                _succLevel = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultLevels[(_limit : stdgo.GoInt)];
            };
        };
        var _level = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultLevels[(_indexes[(0 : stdgo.GoInt)] : stdgo.GoInt)] : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L472"
        return (stdgo.Go.setRef(({ _p : _p, _indexes : _indexes, _types : _types, _level : _level, _sos : _internal.golangdotorg.x.text.unicode.bidi.Bidi__typeforlevel._typeForLevel(_internal.golangdotorg.x.text.unicode.bidi.Bidi__maxlevel._maxLevel(_prevLevel, _level)), _eos : _internal.golangdotorg.x.text.unicode.bidi.Bidi__typeforlevel._typeForLevel(_internal.golangdotorg.x.text.unicode.bidi.Bidi__maxlevel._maxLevel(_succLevel, _level)) } : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequence.T_isolatingRunSequence), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_t_isolatingrunsequencedott_isolatingrunsequence.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_t_isolatingrunsequencedotT_isolatingRunSequence })) : stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequence.T_isolatingRunSequence>);
    }
    @:keep
    @:tdfield
    static public function _determineExplicitEmbeddingLevels( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph>):Void {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph> = _p;
        var _stack:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_directionalstatusstack.T_directionalStatusStack = ({} : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_directionalstatusstack.T_directionalStatusStack);
        var _overflowIsolateCount:stdgo.GoInt = (0 : stdgo.GoInt), _overflowEmbeddingCount:stdgo.GoInt = (0 : stdgo.GoInt), _validIsolateCount:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L307"
        _stack._push((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._embeddingLevel, (10u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), false);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L309"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultTypes != null) for (_i => _t in (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultTypes) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L311"
            {
                final __value__ = _t;
                if (__value__ == ((19u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((18u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((17u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((16u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((22u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((21u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((23u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                    var _isIsolate = @:assignType (_t._in((22u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (21u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (23u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) : Bool);
                    var _isRTL = @:assignType (_t._in((19u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (17u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (22u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) : Bool);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L317"
                    if (_t == ((23u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                        _isRTL = (_p._determineParagraphEmbeddingLevel((_i + (1 : stdgo.GoInt) : stdgo.GoInt), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchingPDI[(_i : stdgo.GoInt)]) == (1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L320"
                    if (_isIsolate) {
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultLevels[(_i : stdgo.GoInt)] = _stack._lastEmbeddingLevel();
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L322"
                        if (_stack._lastDirectionalOverrideStatus() != ((10u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultTypes[(_i : stdgo.GoInt)] = _stack._lastDirectionalOverrideStatus();
                        };
                    };
                    var _newLevel:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level = ((0 : stdgo.GoInt8) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L328"
                    if (_isRTL) {
                        _newLevel = (((_stack._lastEmbeddingLevel() + (1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level)) | (1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level);
                    } else {
                        _newLevel = (((_stack._lastEmbeddingLevel() + (2 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level)) & (((1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level) ^ (-1i64 : stdgo.GoInt32) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level)) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L336"
                    if ((((_newLevel <= (125 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level) : Bool) && _overflowIsolateCount == ((0 : stdgo.GoInt)) : Bool) && (_overflowEmbeddingCount == (0 : stdgo.GoInt)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L337"
                        if (_isIsolate) {
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L338"
                            _validIsolateCount++;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L344"
                        {
                            final __value__ = _t;
                            if (__value__ == ((16u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L346"
                                _stack._push(_newLevel, (0u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), _isIsolate);
                            } else if (__value__ == ((17u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L348"
                                _stack._push(_newLevel, (1u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), _isIsolate);
                            } else {
                                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L350"
                                _stack._push(_newLevel, (10u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), _isIsolate);
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L353"
                        if (!_isIsolate) {
                            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultLevels[(_i : stdgo.GoInt)] = _newLevel;
                        };
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L359"
                        if (_isIsolate) {
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L360"
                            _overflowIsolateCount++;
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L362"
                            if (_overflowIsolateCount == ((0 : stdgo.GoInt))) {
                                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L363"
                                _overflowEmbeddingCount++;
                            };
                        };
                    };
                } else if (__value__ == ((24u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L370"
                    if ((_overflowIsolateCount > (0 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L371"
                        _overflowIsolateCount--;
                    } else if (_validIsolateCount == ((0 : stdgo.GoInt))) {} else {
                        _overflowEmbeddingCount = (0 : stdgo.GoInt);
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L376"
                        while (!_stack._lastDirectionalIsolateStatus()) {
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L377"
                            _stack._pop();
                        };
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L379"
                        _stack._pop();
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L380"
                        _validIsolateCount--;
                    };
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultLevels[(_i : stdgo.GoInt)] = _stack._lastEmbeddingLevel();
                } else if (__value__ == ((20u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultLevels[(_i : stdgo.GoInt)] = _stack._lastEmbeddingLevel();
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L389"
                    if ((_overflowIsolateCount > (0 : stdgo.GoInt) : Bool)) {} else if ((_overflowEmbeddingCount > (0 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L392"
                        _overflowEmbeddingCount--;
                    } else if ((!_stack._lastDirectionalIsolateStatus() && (_stack._depth() >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L394"
                        _stack._pop();
                    };
                } else if (__value__ == ((7u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L402"
                    _stack._empty();
                    _overflowIsolateCount = (0 : stdgo.GoInt);
                    _overflowEmbeddingCount = (0 : stdgo.GoInt);
                    _validIsolateCount = (0 : stdgo.GoInt);
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultLevels[(_i : stdgo.GoInt)] = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._embeddingLevel;
                } else {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultLevels[(_i : stdgo.GoInt)] = _stack._lastEmbeddingLevel();
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L410"
                    if (_stack._lastDirectionalOverrideStatus() != ((10u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultTypes[(_i : stdgo.GoInt)] = _stack._lastDirectionalOverrideStatus();
                    };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _determineParagraphEmbeddingLevel( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph>, _start:stdgo.GoInt, _end:stdgo.GoInt):_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph> = _p;
        var _strongType:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_ = (-1u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L244"
        {
            var _i = @:assignType (_start : stdgo.GoInt);
            while ((_i < _end : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L245"
                {
                    var _t = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultTypes[(_i : stdgo.GoInt)] : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
                    if (_t._in((0u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (13u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (1u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                        _strongType = _t;
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L247"
                        break;
                    } else if (_t._in((23u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (21u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (22u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                        _i = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchingPDI[(_i : stdgo.GoInt)];
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L250"
                        if ((_i > _end : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L251"
                            stdgo._internal.log.Log_panic.panic(new stdgo.AnyInterface(("assert (i <= end)" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                        };
                    };
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L256"
        {
            final __value__ = _strongType;
            if (__value__ == ((-1u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L259"
                return (0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level);
            } else if (__value__ == ((0u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L261"
                return (0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L263"
                return (1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _determineMatchingIsolates( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph>):Void {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph> = _p;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchingPDI = (new stdgo.Slice<stdgo.GoInt>((_p.len() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchingIsolateInitiator = (new stdgo.Slice<stdgo.GoInt>((_p.len() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L208"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchingIsolateInitiator != null) for (_i => _ in (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchingIsolateInitiator) {
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchingIsolateInitiator[(_i : stdgo.GoInt)] = (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L212"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchingPDI != null) for (_i => _ in (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchingPDI) {
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchingPDI[(_i : stdgo.GoInt)] = (-1 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L215"
            {
                var _t = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultTypes[(_i : stdgo.GoInt)] : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
                if (_t._in((21u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (22u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (23u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                    var _depthCounter = @:assignType (1 : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L217"
                    {
                        var _j = @:assignType (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _p.len() : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L218"
                            {
                                var _u = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultTypes[(_j : stdgo.GoInt)] : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
                                if (_u._in((21u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (22u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (23u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L219"
                                    _depthCounter++;
                                } else if (_u == ((24u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L221"
                                    {
                                        _depthCounter--;
                                        if (_depthCounter == ((0 : stdgo.GoInt))) {
                                            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchingPDI[(_i : stdgo.GoInt)] = _j;
                                            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchingIsolateInitiator[(_j : stdgo.GoInt)] = _i;
                                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L224"
                                            break;
                                        };
                                    };
                                };
                            };
                            _j++;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L228"
                    if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchingPDI[(_i : stdgo.GoInt)] == ((-1 : stdgo.GoInt))) {
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchingPDI[(_i : stdgo.GoInt)] = _p.len();
                    };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _run( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph>):Void {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L136"
        _p._determineMatchingIsolates();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L142"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._embeddingLevel == ((-1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level))) {
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._embeddingLevel = _p._determineParagraphEmbeddingLevel((0 : stdgo.GoInt), _p.len());
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultLevels = (new stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level>((_p.len() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L148"
        _internal.golangdotorg.x.text.unicode.bidi.Bidi__setlevels._setLevels((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultLevels, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._embeddingLevel);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L152"
        _p._determineExplicitEmbeddingLevels();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L162"
        if (_p._determineIsolatingRunSequences() != null) for (__0 => _seq in _p._determineIsolatingRunSequences()) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L165"
            _seq._resolveWeakTypes();
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L169"
            _internal.golangdotorg.x.text.unicode.bidi.Bidi__resolvepairedbrackets._resolvePairedBrackets(_seq);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L173"
            _seq._resolveNeutralTypes();
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L177"
            _seq._resolveImplicitLevels();
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L180"
            _seq._applyLevelsAndTypes();
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L186"
        _p._assignLevelsToCharactersRemovedByX9();
    }
    @:keep
    @:tdfield
    static public function len( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph>):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L131"
        return ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._initialTypes.length);
    }
}
