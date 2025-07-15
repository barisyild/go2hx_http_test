package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
@:keep @:allow(_internal.golangdotorg.x.text.unicode.bidi.Bidi.T_bracketPairer_asInterface) class T_bracketPairer_static_extension {
    @:keep
    @:tdfield
    static public function _resolveBrackets( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairer.T_bracketPairer>, _dirEmbed:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_, _initialTypes:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>):Void {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairer.T_bracketPairer> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L332"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairPositions != null) for (__0 => _loc in (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairPositions) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L333"
            _p._assignBracketType(_loc?.__copy__(), _dirEmbed, _initialTypes);
        };
    }
    @:keep
    @:tdfield
    static public function _setBracketsToType( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairer.T_bracketPairer>, _loc:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpair.T_bracketPair, _dirPair:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_, _initialTypes:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>):Void {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairer.T_bracketPairer> = _p;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codesIsolatedRun[(_loc._opener : stdgo.GoInt)] = _dirPair;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codesIsolatedRun[(_loc._closer : stdgo.GoInt)] = _dirPair;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L313"
        {
            var _i = @:assignType (_loc._opener + (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i < _loc._closer : Bool)) {
                var _index = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indexes[(_i : stdgo.GoInt)] : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L315"
                if (_initialTypes[(_index : stdgo.GoInt)] != ((12u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L316"
                    break;
                };
(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codesIsolatedRun[(_i : stdgo.GoInt)] = _dirPair;
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L321"
        {
            var _i = @:assignType (_loc._closer + (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i < ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indexes.length) : Bool)) {
                var _index = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indexes[(_i : stdgo.GoInt)] : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L323"
                if (_initialTypes[(_index : stdgo.GoInt)] != ((12u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L324"
                    break;
                };
(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codesIsolatedRun[(_i : stdgo.GoInt)] = _dirPair;
                _i++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _assignBracketType( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairer.T_bracketPairer>, _loc:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpair.T_bracketPair, _dirEmbed:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_, _initialTypes:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>):Void {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairer.T_bracketPairer> = _p;
        var _dirPair = @:assignType (_p._classifyPairContent(_loc?.__copy__(), _dirEmbed) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L289"
        if (_dirPair == ((10u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L290"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L293"
        if (_dirPair != (_dirEmbed)) {
            _dirPair = _p._classBeforePair(_loc?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L296"
            if (((_dirPair == _dirEmbed) || (_dirPair == (10u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) : Bool)) {
                _dirPair = _dirEmbed;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L306"
        _p._setBracketsToType(_loc?.__copy__(), _dirPair, _initialTypes);
    }
    @:keep
    @:tdfield
    static public function _classBeforePair( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairer.T_bracketPairer>, _loc:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpair.T_bracketPair):_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_ {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairer.T_bracketPairer> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L271"
        {
            var _i = @:assignType (_loc._opener - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L272"
                {
                    var _dir = @:assignType (_p._getStrongTypeN0(_i) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
                    if (_dir != ((10u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L273"
                        return _dir;
                    };
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L277"
        return (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sos;
    }
    @:keep
    @:tdfield
    static public function _classifyPairContent( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairer.T_bracketPairer>, _loc:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpair.T_bracketPair, _dirEmbed:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_):_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_ {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairer.T_bracketPairer> = _p;
        var _dirOpposite = @:assignType (10u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L254"
        {
            var _i = @:assignType (_loc._opener + (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i < _loc._closer : Bool)) {
                var _dir = @:assignType (_p._getStrongTypeN0(_i) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L256"
                if (_dir == ((10u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L257"
                    {
                        _i++;
                        continue;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L259"
                if (_dir == (_dirEmbed)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L260"
                    return _dir;
                };
_dirOpposite = _dir;
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L265"
        return _dirOpposite;
    }
    @:keep
    @:tdfield
    static public function _getStrongTypeN0( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairer.T_bracketPairer>, _index:stdgo.GoInt):_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_ {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairer.T_bracketPairer> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L234"
        {
            final __value__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codesIsolatedRun[(_index : stdgo.GoInt)];
            if (__value__ == ((2u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((5u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((13u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((1u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L237"
                return (1u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
            } else if (__value__ == ((0u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L239"
                return (0u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L241"
                return (10u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _locateBrackets( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairer.T_bracketPairer>, _pairTypes:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType>, _pairValues:stdgo.Slice<stdgo.GoInt32>):Void {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairer.T_bracketPairer> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L138"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indexes != null) for (_i => _index in (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indexes) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L141"
            if (((_pairTypes[(_index : stdgo.GoInt)] == (0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType)) || ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codesIsolatedRun[(_i : stdgo.GoInt)] != (10u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L143"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L145"
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _pairTypes[(_index : stdgo.GoInt)];
                        if (__value__ == ((1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType))) {
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L148"
                            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._openers.len() == ((63 : stdgo.GoInt))) {
                                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L149"
                                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._openers.init();
                                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L150"
                                return;
                            };
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L153"
                            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._openers.pushFront(new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                            break;
                        } else if (__value__ == ((2 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType))) {
                            var _count = @:assignType (0 : stdgo.GoInt);
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L158"
                            {
                                var _elem = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._openers.front();
                                while (({
                                    final value = _elem;
                                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                })) {
                                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L159"
                                    _count++;
var _opener = @:assignType (stdgo.Go.typeAssert((@:checkr _elem ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value, stdgo._internal.internal.reflect.GoType.basic(int_kind)) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L161"
                                    if (_p._matchOpener(_pairValues, _opener, _i)) {
                                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairPositions = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairPositions.__append__((new _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpair.T_bracketPair(_opener, _i) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpair.T_bracketPair)) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairs.T_bracketPairs);
                                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L165"
                                        while ((_count > (0 : stdgo.GoInt) : Bool)) {
                                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L166"
                                            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._openers.remove((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._openers.front());
                                            _count--;
                                        };
                                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L168"
                                        break;
                                    };
                                    _elem = _elem.next();
                                };
                            };
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L171"
                            stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairPositions, _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_t_bracketpairsdott_bracketpairs.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_t_bracketpairsdotT_bracketPairs));
                            break;
                        };
                    };
                    break;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _matchOpener( _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairer.T_bracketPairer>, _pairValues:stdgo.Slice<stdgo.GoInt32>, _opener:stdgo.GoInt, _closer:stdgo.GoInt):Bool {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairer.T_bracketPairer> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L125"
        return _pairValues[((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indexes[(_opener : stdgo.GoInt)] : stdgo.GoInt)] == (_pairValues[((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indexes[(_closer : stdgo.GoInt)] : stdgo.GoInt)]);
    }
}
