package stdgo._internal.path;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_33:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_32:Bool = false;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    0i64;
                    _gotoNext = 2825642i64;
                } else if (__value__ == (2825642i64)) {
                    //"file://#L0"
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2825684i64;
                    } else {
                        _gotoNext = 2825728i64;
                    };
                } else if (__value__ == (2825684i64)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2825642i64;
                } else if (__value__ == (2825728i64)) {
                    _inrange_32 = false;
                    _gotoNext = 2825756i64;
                } else if (__value__ == (2825756i64)) {
                    _i_33 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2825763i64;
                } else if (__value__ == (2825763i64)) {
                    //"file://#L0"
                    if (!scanBreak && ((_i_33 < (_pattern.length) : Bool))) {
                        _gotoNext = 2825796i64;
                    } else {
                        _gotoNext = 2826045i64;
                    };
                } else if (__value__ == (2825792i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/match.go#L100"
                    _i_33++;
                    _gotoNext = 2825763i64;
                } else if (__value__ == (2825796i64)) {
                    _gotoNext = 2825800i64;
                } else if (__value__ == (2825800i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/match.go#L101"
                    {
                        final __value__ = _pattern[(_i_33 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2825822i64;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2825929i64;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2825959i64;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2825990i64;
                        } else {
                            _gotoNext = 2825792i64;
                        };
                    };
                } else if (__value__ == (2825822i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/match.go#L104"
                    if (((_i_33 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2825912i64;
                    } else {
                        _gotoNext = 2825792i64;
                    };
                } else if (__value__ == (2825912i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/match.go#L105"
                    _i_33++;
                    _gotoNext = 2825792i64;
                } else if (__value__ == (2825929i64)) {
                    _inrange_32 = true;
                    _gotoNext = 2825792i64;
                } else if (__value__ == (2825959i64)) {
                    _inrange_32 = false;
                    _gotoNext = 2825792i64;
                } else if (__value__ == (2825990i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/match.go#L112"
                    if (!_inrange_32) {
                        _gotoNext = 2826015i64;
                    } else {
                        _gotoNext = 2825792i64;
                    };
                } else if (__value__ == (2826015i64)) {
                    scanBreak = true;
                    _gotoNext = 2825763i64;
                } else if (__value__ == (2826045i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/match.go#L117"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_33) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_33) : stdgo.GoString)?.__copy__() };
                        _star = __tmp__._0;
                        _chunk = __tmp__._1;
                        _rest = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
