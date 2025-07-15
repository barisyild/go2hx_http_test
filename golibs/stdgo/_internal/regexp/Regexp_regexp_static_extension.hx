package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
@:keep @:allow(stdgo._internal.regexp.Regexp.Regexp_asInterface) class Regexp_static_extension {
    @:keep
    @:tdfield
    static public function unmarshalText( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile((_text : stdgo.GoString)?.__copy__()), _newRE:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1301"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1302"
            return _err;
        };
        {
            var __tmp__ = (_newRE : stdgo._internal.regexp.Regexp_regexp.Regexp)?.__copy__();
            var x = (_re : stdgo._internal.regexp.Regexp_regexp.Regexp);
            x._expr = __tmp__?._expr;
            x._prog = __tmp__?._prog;
            x._onepass = __tmp__?._onepass;
            x._numSubexp = __tmp__?._numSubexp;
            x._maxBitStateLen = __tmp__?._maxBitStateLen;
            x._subexpNames = __tmp__?._subexpNames;
            x._prefix = __tmp__?._prefix;
            x._prefixBytes = __tmp__?._prefixBytes;
            x._prefixRune = __tmp__?._prefixRune;
            x._prefixEnd = __tmp__?._prefixEnd;
            x._mpool = __tmp__?._mpool;
            x._matchcap = __tmp__?._matchcap;
            x._prefixComplete = __tmp__?._prefixComplete;
            x._cond = __tmp__?._cond;
            x._minInputLen = __tmp__?._minInputLen;
            x._longest = __tmp__?._longest;
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1305"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalText( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1294"
        return { _0 : ((_re.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function split( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1255"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1256"
            return (null : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1259"
        if (((((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._expr.length) > (0 : stdgo.GoInt) : Bool) && (_s.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1260"
            return (new stdgo.Slice<stdgo.GoString>(1, 1, ...[(stdgo.Go.str() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        };
        var _matches = _re.findAllStringIndex(_s?.__copy__(), _n);
        var _strings = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_matches.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _beg = @:assignType (0 : stdgo.GoInt);
        var _end = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1268"
        if (_matches != null) for (__0 => _match in _matches) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1269"
            if (((_n > (0 : stdgo.GoInt) : Bool) && ((_strings.length) >= (_n - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1270"
                break;
            };
            _end = _match[(0 : stdgo.GoInt)];
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1274"
            if (_match[(1 : stdgo.GoInt)] != ((0 : stdgo.GoInt))) {
                _strings = (_strings.__append__((_s.__slice__(_beg, _end) : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
            _beg = _match[(1 : stdgo.GoInt)];
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1280"
        if (_end != ((_s.length))) {
            _strings = (_strings.__append__((_s.__slice__(_beg) : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1284"
        return _strings;
    }
    @:keep
    @:tdfield
    static public function findAllStringSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1223"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1227"
        _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1228"
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__(_match) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        });
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1233"
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllStringSubmatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoString>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1198"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoString>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoString>>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1202"
        _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1203"
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoString>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoString>>);
            };
            var _slice = (new stdgo.Slice<stdgo.GoString>(((_match.length) / (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1207"
            if (_slice != null) for (_j => _ in _slice) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1208"
                if ((_match[((2 : stdgo.GoInt) * _j : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool)) {
                    _slice[(_j : stdgo.GoInt)] = (_s.__slice__(_match[((2 : stdgo.GoInt) * _j : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
                };
            };
            _result = (_result.__append__(_slice) : stdgo.Slice<stdgo.Slice<stdgo.GoString>>);
        });
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1214"
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1180"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1184"
        _re._allMatches((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1185"
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__(_match) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        });
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1190"
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllSubmatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1156"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>> = (null : stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1160"
        _re._allMatches((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1161"
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>);
            };
            var _slice = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(((_match.length) / (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1165"
            if (_slice != null) for (_j => _ in _slice) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1166"
                if ((_match[((2 : stdgo.GoInt) * _j : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool)) {
                    _slice[(_j : stdgo.GoInt)] = (_b.__slice__(_match[((2 : stdgo.GoInt) * _j : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                };
            };
            _result = (_result.__append__(_slice) : stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>);
        });
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1172"
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllStringIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1138"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1142"
        _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1143"
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__((_match.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        });
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1148"
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1120"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1124"
        _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1125"
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setString__() : stdgo.Slice<stdgo.GoString>);
            };
            _result = (_result.__append__((_s.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        });
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1130"
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1102"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1106"
        _re._allMatches((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1107"
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__((_match.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        });
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1112"
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAll( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1084"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1088"
        _re._allMatches((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1089"
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
            };
            _result = (_result.__append__((_b.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        });
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1094"
        return _result;
    }
    @:keep
    @:tdfield
    static public function findReaderSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _r:stdgo._internal.io.Io_runereader.RuneReader):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1074"
        return _re._pad(_re._doExecute(_r, (null : stdgo.Slice<stdgo.GoUInt8>), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).numCap, (null : stdgo.Slice<stdgo.GoInt>)));
    }
    @:keep
    @:tdfield
    static public function findStringSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1065"
        return _re._pad(_re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).numCap, (null : stdgo.Slice<stdgo.GoInt>)));
    }
    @:keep
    @:tdfield
    static public function findStringSubmatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(4, 4).__setNumber32__();
        var _a = _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).numCap, (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1047"
        if (_a == null) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1048"
            return (null : stdgo.Slice<stdgo.GoString>);
        };
        var _ret = (new stdgo.Slice<stdgo.GoString>(((1 : stdgo.GoInt) + (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._numSubexp : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1051"
        if (_ret != null) for (_i => _ in _ret) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1052"
            if (((((2 : stdgo.GoInt) * _i : stdgo.GoInt) < (_a.length) : Bool) && (_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                _ret[(_i : stdgo.GoInt)] = (_s.__slice__(_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _a[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1056"
        return _ret;
    }
    @:keep
    @:tdfield
    static public function findSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L1036"
        return _re._pad(_re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), _b, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).numCap, (null : stdgo.Slice<stdgo.GoInt>)));
    }
    @:keep
    @:tdfield
    static public function _expand( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _dst:stdgo.Slice<stdgo.GoUInt8>, _template:stdgo.GoString, _bsrc:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L933"
        while (((_template.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_template?.__copy__(), ("$" : stdgo.GoString)), _before:stdgo.GoString = __tmp__._0, _after:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L935"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L936"
                break;
            };
            _dst = (_dst.__append__(...(_before : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            _template = _after?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L940"
            if (((_template != (stdgo.Go.str() : stdgo.GoString)) && (_template[(0 : stdgo.GoInt)] == (36 : stdgo.GoUInt8)) : Bool)) {
                _dst = (_dst.__append__((36 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                _template = (_template.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L944"
                continue;
            };
            var __tmp__ = stdgo._internal.regexp.Regexp__extract._extract(_template?.__copy__()), _name:stdgo.GoString = __tmp__._0, _num:stdgo.GoInt = __tmp__._1, _rest:stdgo.GoString = __tmp__._2, _ok:Bool = __tmp__._3;
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L947"
            if (!_ok) {
                _dst = (_dst.__append__((36 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L950"
                continue;
            };
            _template = _rest?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L953"
            if ((_num >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L954"
                if ((((((2 : stdgo.GoInt) * _num : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) < (_match.length) : Bool) && (_match[((2 : stdgo.GoInt) * _num : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L955"
                    if (_bsrc != null) {
                        _dst = (_dst.__append__(...((_bsrc.__slice__(_match[((2 : stdgo.GoInt) * _num : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _num : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    } else {
                        _dst = (_dst.__append__(...((_src.__slice__(_match[((2 : stdgo.GoInt) * _num : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _num : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L962"
                if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._subexpNames != null) for (_i => _namei in (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._subexpNames) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L963"
                    if (((_name == (_namei) && ((((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) < (_match.length) : Bool) : Bool) && (_match[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L964"
                        if (_bsrc != null) {
                            _dst = (_dst.__append__(...((_bsrc.__slice__(_match[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                        } else {
                            _dst = (_dst.__append__(...((_src.__slice__(_match[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                        };
                        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L969"
                        break;
                    };
                };
            };
        };
        _dst = (_dst.__append__(...(_template : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L975"
        return _dst;
    }
    @:keep
    @:tdfield
    static public function expandString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _dst:stdgo.Slice<stdgo.GoUInt8>, _template:stdgo.GoString, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L929"
        return _re._expand(_dst, _template?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), _match);
    }
    @:keep
    @:tdfield
    static public function expand( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _dst:stdgo.Slice<stdgo.GoUInt8>, _template:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L922"
        return _re._expand(_dst, (_template : stdgo.GoString)?.__copy__(), _src, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _match);
    }
    @:keep
    @:tdfield
    static public function findSubmatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(4, 4).__setNumber32__();
        var _a = _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), _b, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).numCap, (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L892"
        if (_a == null) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L893"
            return (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        };
        var _ret = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(((1 : stdgo.GoInt) + (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._numSubexp : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L896"
        if (_ret != null) for (_i => _ in _ret) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L897"
            if (((((2 : stdgo.GoInt) * _i : stdgo.GoInt) < (_a.length) : Bool) && (_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                _ret[(_i : stdgo.GoInt)] = (_b.__slice__(_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _a[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)], _a[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L901"
        return _ret;
    }
    @:keep
    @:tdfield
    static public function findReaderIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _r:stdgo._internal.io.Io_runereader.RuneReader):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _loc = (null : stdgo.Slice<stdgo.GoInt>);
        var _a = _re._doExecute(_r, (null : stdgo.Slice<stdgo.GoUInt8>), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>));
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L878"
        if (_a == null) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L879"
            return _loc = (null : stdgo.Slice<stdgo.GoInt>);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L881"
        return _loc = (_a.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
    }
    @:keep
    @:tdfield
    static public function findStringIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _loc = (null : stdgo.Slice<stdgo.GoInt>);
        var _a = _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>));
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L865"
        if (_a == null) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L866"
            return _loc = (null : stdgo.Slice<stdgo.GoInt>);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L868"
        return _loc = (_a.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
    }
    @:keep
    @:tdfield
    static public function findString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(2, 2).__setNumber32__();
        var _a = _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L853"
        if (_a == null) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L854"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L856"
        return (_s.__slice__(_a[(0 : stdgo.GoInt)], _a[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function findIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _loc = (null : stdgo.Slice<stdgo.GoInt>);
        var _a = _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), _b, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>));
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L839"
        if (_a == null) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L840"
            return _loc = (null : stdgo.Slice<stdgo.GoInt>);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L842"
        return _loc = (_a.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
    }
    @:keep
    @:tdfield
    static public function find( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(2, 2).__setNumber32__();
        var _a = _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), _b, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L827"
        if (_a == null) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L828"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L830"
        return (_b.__slice__(_a[(0 : stdgo.GoInt)], _a[(1 : stdgo.GoInt)], _a[(1 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _allMatches( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt, _deliver:stdgo.Slice<stdgo.GoInt> -> Void):Void {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _end:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L777"
        if (_b == null) {
            _end = (_s.length);
        } else {
            _end = (_b.length);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L783"
        {
            var __0 = @:assignType (0 : stdgo.GoInt), __1 = @:assignType (0 : stdgo.GoInt), __2 = @:assignType (-1 : stdgo.GoInt);
var _prevMatchEnd = __2, _i = __1, _pos = __0;
            while (((_i < _n : Bool) && (_pos <= _end : Bool) : Bool)) {
                var _matches = _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), _b, _s?.__copy__(), _pos, (@:checkr (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).numCap, (null : stdgo.Slice<stdgo.GoInt>));
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L785"
                if ((_matches.length) == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L786"
                    break;
                };
                var _accept = @:assignType (true : Bool);
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L790"
                if (_matches[(1 : stdgo.GoInt)] == (_pos)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L792"
                    if (_matches[(0 : stdgo.GoInt)] == (_prevMatchEnd)) {
                        _accept = false;
                    };
                    var _width:stdgo.GoInt = (0 : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L798"
                    if (_b == null) {
                        var _is = @:assignType ({ _str : _s?.__copy__() } : stdgo._internal.regexp.Regexp_t_inputstring.T_inputString);
                        {
                            var __tmp__ = _is._step(_pos);
                            _width = @:tmpset0 __tmp__._1;
                        };
                    } else {
                        var _ib = @:assignType ({ _str : _b } : stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes);
                        {
                            var __tmp__ = _ib._step(_pos);
                            _width = @:tmpset0 __tmp__._1;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L805"
                    if ((_width > (0 : stdgo.GoInt) : Bool)) {
                        _pos = (_pos + (_width) : stdgo.GoInt);
                    } else {
                        _pos = (_end + (1 : stdgo.GoInt) : stdgo.GoInt);
                    };
                } else {
                    _pos = _matches[(1 : stdgo.GoInt)];
                };
                _prevMatchEnd = _matches[(1 : stdgo.GoInt)];
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L815"
                if (_accept) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L816"
                    _deliver(_re._pad(_matches));
                    //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L817"
                    _i++;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _pad( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _a:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L761"
        if (_a == null) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L763"
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        var _n = @:assignType ((((1 : stdgo.GoInt) + (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._numSubexp : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L766"
        while (((_a.length) < _n : Bool)) {
            _a = (_a.__append__((-1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L769"
        return _a;
    }
    @:keep
    @:tdfield
    static public function replaceAllFunc( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _src:stdgo.Slice<stdgo.GoUInt8>, _repl:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L706"
        return _re._replaceAll(_src, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L707"
            return (_dst.__append__(...(_repl((_src.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>)) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        });
    }
    @:keep
    @:tdfield
    static public function replaceAllLiteral( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _src:stdgo.Slice<stdgo.GoUInt8>, _repl:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L696"
        return _re._replaceAll(_src, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L697"
            return (_dst.__append__(...(_repl : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        });
    }
    @:keep
    @:tdfield
    static public function replaceAll( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _src:stdgo.Slice<stdgo.GoUInt8>, _repl:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _n = @:assignType (2 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L679"
        if ((stdgo._internal.bytes.Bytes_indexbyte.indexByte(_repl, (36 : stdgo.GoUInt8)) >= (0 : stdgo.GoInt) : Bool)) {
            _n = ((2 : stdgo.GoInt) * (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._numSubexp + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _srepl = @:assignType ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _b = _re._replaceAll(_src, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _n, function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L684"
            if ((_srepl.length) != ((_repl.length))) {
                _srepl = (_repl : stdgo.GoString)?.__copy__();
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L687"
            return _re._expand(_dst, _srepl?.__copy__(), _src, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _match);
        });
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L689"
        return _b;
    }
    @:keep
    @:tdfield
    static public function _replaceAll( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _bsrc:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.GoString, _nmatch:stdgo.GoInt, _repl:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoInt>) -> stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _lastMatchEnd = @:assignType (0 : stdgo.GoInt);
        var _searchPos = @:assignType (0 : stdgo.GoInt);
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _endPos:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L614"
        if (_bsrc != null) {
            _endPos = (_bsrc.length);
        } else {
            _endPos = (_src.length);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L619"
        if ((_nmatch > (@:checkr (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).numCap : Bool)) {
            _nmatch = (@:checkr (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).numCap;
        };
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(2, 2).__setNumber32__();
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L624"
        while ((_searchPos <= _endPos : Bool)) {
            var _a = _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), _bsrc, _src?.__copy__(), _searchPos, _nmatch, (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L626"
            if ((_a.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L627"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L631"
            if (_bsrc != null) {
                _buf = (_buf.__append__(...((_bsrc.__slice__(_lastMatchEnd, _a[(0 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            } else {
                _buf = (_buf.__append__(...((_src.__slice__(_lastMatchEnd, _a[(0 : stdgo.GoInt)]) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L641"
            if (((_a[(1 : stdgo.GoInt)] > _lastMatchEnd : Bool) || (_a[(0 : stdgo.GoInt)] == (0 : stdgo.GoInt)) : Bool)) {
                _buf = _repl(_buf, _a);
            };
            _lastMatchEnd = _a[(1 : stdgo.GoInt)];
            var _width:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L648"
            if (_bsrc != null) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_bsrc.__slice__(_searchPos) : stdgo.Slice<stdgo.GoUInt8>));
                    _width = @:tmpset0 __tmp__._1;
                };
            } else {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_src.__slice__(_searchPos) : stdgo.GoString)?.__copy__());
                    _width = @:tmpset0 __tmp__._1;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L653"
            if (((_searchPos + _width : stdgo.GoInt) > _a[(1 : stdgo.GoInt)] : Bool)) {
                _searchPos = (_searchPos + (_width) : stdgo.GoInt);
            } else if (((_searchPos + (1 : stdgo.GoInt) : stdgo.GoInt) > _a[(1 : stdgo.GoInt)] : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L658"
                _searchPos++;
            } else {
                _searchPos = _a[(1 : stdgo.GoInt)];
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L665"
        if (_bsrc != null) {
            _buf = (_buf.__append__(...((_bsrc.__slice__(_lastMatchEnd) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _buf = (_buf.__append__(...((_src.__slice__(_lastMatchEnd) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L671"
        return _buf;
    }
    @:keep
    @:tdfield
    static public function replaceAllStringFunc( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _src:stdgo.GoString, _repl:stdgo.GoString -> stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _b = _re._replaceAll((null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L604"
            return (_dst.__append__(...(_repl((_src.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__()) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        });
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L606"
        return (_b : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function replaceAllLiteralString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L593"
        return (_re._replaceAll((null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L594"
            return (_dst.__append__(...(_repl : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        }) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function replaceAllString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _n = @:assignType (2 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L580"
        if (stdgo._internal.strings.Strings_contains.contains(_repl?.__copy__(), ("$" : stdgo.GoString))) {
            _n = ((2 : stdgo.GoInt) * (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._numSubexp + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _b = _re._replaceAll((null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), _n, function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L584"
            return _re._expand(_dst, _repl?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), _match);
        });
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L586"
        return (_b : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function match( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L539"
        return _re._doMatch((null : stdgo._internal.io.Io_runereader.RuneReader), _b, (stdgo.Go.str() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function matchString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L533"
        return _re._doMatch((null : stdgo._internal.io.Io_runereader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__());
    }
    @:keep
    @:tdfield
    static public function matchReader( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _r:stdgo._internal.io.Io_runereader.RuneReader):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L527"
        return _re._doMatch(_r, (null : stdgo.Slice<stdgo.GoUInt8>), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function literalPrefix( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _prefix = ("" : stdgo.GoString), _complete = false;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L521"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix?.__copy__(), _1 : (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefixComplete };
            _prefix = __tmp__._0;
            _complete = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function subexpIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _name:stdgo.GoString):stdgo.GoInt {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L364"
        if (_name != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L365"
            if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._subexpNames != null) for (_i => _s in (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._subexpNames) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L366"
                if (_name == (_s)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L367"
                    return _i;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L371"
        return (-1 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function subexpNames( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L353"
        return (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._subexpNames;
    }
    @:keep
    @:tdfield
    static public function numSubexp( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):stdgo.GoInt {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L344"
        return (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._numSubexp;
    }
    @:keep
    @:tdfield
    static public function _put( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>):Void {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._re = null;
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p = null;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L269"
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inputs._clear();
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L270"
        stdgo._internal.regexp.Regexp__matchpool._matchPool[((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mpool : stdgo.GoInt)].put(new stdgo.AnyInterface(stdgo.Go.asInterface(_m, _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_machinedott_machine.__type__stdgodot_internaldotregexpdotRegexp_t_machinedotT_machine), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_machinedott_machine.__type__stdgodot_internaldotregexpdotRegexp_t_machinedotT_machine }))));
    }
    @:keep
    @:tdfield
    static public function _get( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(stdgo._internal.regexp.Regexp__matchpool._matchPool[((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mpool : stdgo.GoInt)].get(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_machinedott_machine.__type__stdgodot_internaldotregexpdotRegexp_t_machinedotT_machine })) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>), _1 : false };
        }, _m = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L240"
        if (!_ok) {
            _m = (stdgo.Go.setRef(({} : stdgo._internal.regexp.Regexp_t_machine.T_machine), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_machinedott_machine.__type__stdgodot_internaldotregexpdotRegexp_t_machinedotT_machine })) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>);
        };
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._re = _re;
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p = (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prog;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L245"
        if (((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap.capacity < (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap : Bool)) {
            (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L247"
            if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pool != null) for (__0 => _t in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pool) {
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cap = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            };
        };
        var _n = @:assignType (stdgo._internal.regexp.Regexp__matchsize._matchSize[((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mpool : stdgo.GoInt)] : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L255"
        if (_n == ((0 : stdgo.GoInt))) {
            _n = ((@:checkr (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst.length);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L258"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._q0._sparse.length) < _n : Bool)) {
            (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._q0 = (new stdgo._internal.regexp.Regexp_t_queue.T_queue((new stdgo.Slice<stdgo.GoUInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), (new stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp_t_entry.T_entry)]) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>)) : stdgo._internal.regexp.Regexp_t_queue.T_queue);
            (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._q1 = (new stdgo._internal.regexp.Regexp_t_queue.T_queue((new stdgo.Slice<stdgo.GoUInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), (new stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp_t_entry.T_entry)]) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>)) : stdgo._internal.regexp.Regexp_t_queue.T_queue);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L262"
        return _m;
    }
    @:keep
    @:tdfield
    static public function longest( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):Void {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._longest = true;
    }
    @:keep
    @:tdfield
    static public function copy( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _re2 = @:assignType ((_re : stdgo._internal.regexp.Regexp_regexp.Regexp)?.__copy__() : stdgo._internal.regexp.Regexp_regexp.Regexp);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L123"
        return (stdgo.Go.setRef(_re2, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_regexpdotregexp.__type__stdgodot_internaldotregexpdotRegexp_regexpdotRegexp })) : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
    }
    @:keep
    @:tdfield
    static public function string( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L110"
        return (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._expr?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _doExecute( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _r:stdgo._internal.io.Io_runereader.RuneReader, _b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L522"
        if (_dstCap == null) {
            _dstCap = (stdgo._internal.regexp.Regexp__arraynoints._arrayNoInts.__slice__(0, (0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L527"
        if (((_r == null) && (((_b.length) + (_s.length) : stdgo.GoInt) < (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._minInputLen : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L528"
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L531"
        if (({
            final value = (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._onepass;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L532"
            return _re._doOnePass(_r, _b, _s?.__copy__(), _pos, _ncap, _dstCap);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L534"
        if (((_r == null) && (((_b.length) + (_s.length) : stdgo.GoInt) < (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxBitStateLen : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L535"
            return _re._backtrack(_b, _s?.__copy__(), _pos, _ncap, _dstCap);
        };
        var _m = _re._get();
        var __tmp__ = (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inputs._init(_r, _b, _s?.__copy__()), _i:stdgo._internal.regexp.Regexp_t_input.T_input = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L541"
        _m._init(_ncap);
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L542"
        if (!_m._match(_i, _pos)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L543"
            _re._put(_m);
            //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L544"
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        _dstCap = (_dstCap.__append__(...((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap : Array<stdgo.GoInt>)) : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L548"
        _re._put(_m);
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L549"
        return _dstCap;
    }
    @:keep
    @:tdfield
    static public function _doMatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _r:stdgo._internal.io.Io_runereader.RuneReader, _b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L514"
        return _re._doExecute(_r, _b, _s?.__copy__(), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>)) != null;
    }
    @:keep
    @:tdfield
    static public function _doOnePass( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _ir:stdgo._internal.io.Io_runereader.RuneReader, _ib:stdgo.Slice<stdgo.GoUInt8>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _r1_202:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_201:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_199:stdgo.GoInt = (0 : stdgo.GoInt);
        var _matched_198:Bool = false;
        var _startCond_196:stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        var _flag_205:stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag = ((0 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag);
        var _pc_206:stdgo.GoInt = (0 : stdgo.GoInt);
        var _width1_204:stdgo.GoInt = (0 : stdgo.GoInt);
        var _width_203:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_200:stdgo._internal.regexp.Regexp_t_input.T_input = (null : stdgo._internal.regexp.Regexp_t_input.T_input);
        var _m_197:stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine>);
        var _inst_207:stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _startCond_196 = (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cond;
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L399"
                    if (_startCond_196 == ((255 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3850162i64;
                    } else {
                        _gotoNext = 3850196i64;
                    };
                } else if (__value__ == (3850162i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L400"
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3850196i64;
                } else if (__value__ == (3850196i64)) {
                    _m_197 = stdgo._internal.regexp.Regexp__newonepassmachine._newOnePassMachine();
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L404"
                    if (((@:checkr _m_197 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap.capacity < _ncap : Bool)) {
                        _gotoNext = 3850248i64;
                    } else {
                        _gotoNext = 3850291i64;
                    };
                } else if (__value__ == (3850248i64)) {
                    (@:checkr _m_197 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap = (new stdgo.Slice<stdgo.GoInt>((_ncap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3850331i64;
                } else if (__value__ == (3850291i64)) {
                    _gotoNext = 3850291i64;
                    (@:checkr _m_197 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap = ((@:checkr _m_197 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap.__slice__(0, _ncap) : stdgo.Slice<stdgo.GoInt>);
                    0i64;
                    _gotoNext = 3850331i64;
                } else if (__value__ == (3850331i64)) {
                    _matched_198 = false;
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L411"
                    if ((0i64 : stdgo.GoInt) < ((@:checkr _m_197 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap.length)) {
                        _gotoNext = 3850398i64;
                    } else {
                        _gotoNext = 3850403i64;
                    };
                } else if (__value__ == (3850375i64)) {
                    (@:checkr _m_197 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap[(_i_199 : stdgo.GoInt)] = (-1 : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L411"
                    _i_199++;
                    _gotoNext = 3850399i64;
                } else if (__value__ == (3850398i64)) {
                    _i_199 = 0i64;
                    _gotoNext = 3850399i64;
                } else if (__value__ == (3850399i64)) {
                    //"file://#L0"
                    if (_i_199 < ((@:checkr _m_197 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap.length)) {
                        _gotoNext = 3850375i64;
                    } else {
                        _gotoNext = 3850403i64;
                    };
                } else if (__value__ == (3850403i64)) {
                    {
                        var __tmp__ = (@:checkr _m_197 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inputs._init(_ir, _ib, _is?.__copy__());
                        _i_200 = @:tmpset0 __tmp__._0;
                    };
                    {
                        final __tmp__0 = (-1 : stdgo.GoInt32);
                        final __tmp__1 = (-1 : stdgo.GoInt32);
                        _r_201 = @:binopAssign __tmp__0;
                        _r1_202 = @:binopAssign __tmp__1;
                    };
                    {
                        final __tmp__0 = (0 : stdgo.GoInt);
                        final __tmp__1 = (0 : stdgo.GoInt);
                        _width_203 = @:binopAssign __tmp__0;
                        _width1_204 = @:binopAssign __tmp__1;
                    };
                    {
                        var __tmp__ = _i_200._step(_pos);
                        _r_201 = @:tmpset0 __tmp__._0;
                        _width_203 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L420"
                    if (_r_201 != ((-1 : stdgo.GoInt32))) {
                        _gotoNext = 3850535i64;
                    } else {
                        _gotoNext = 3850576i64;
                    };
                } else if (__value__ == (3850535i64)) {
                    {
                        var __tmp__ = _i_200._step((_pos + _width_203 : stdgo.GoInt));
                        _r1_202 = @:tmpset0 __tmp__._0;
                        _width1_204 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3850576i64;
                } else if (__value__ == (3850576i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L424"
                    if (_pos == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3850607i64;
                    } else {
                        _gotoNext = 3850645i64;
                    };
                } else if (__value__ == (3850607i64)) {
                    _flag_205 = stdgo._internal.regexp.Regexp__newlazyflag._newLazyFlag((-1 : stdgo.GoInt32), _r_201);
                    _gotoNext = 3850675i64;
                } else if (__value__ == (3850645i64)) {
                    _gotoNext = 3850645i64;
                    _flag_205 = _i_200._context(_pos);
                    0i64;
                    _gotoNext = 3850675i64;
                } else if (__value__ == (3850675i64)) {
                    _pc_206 = (@:checkr (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._onepass ?? throw stdgo.Error._nullPointerDereference.__underlying__()).start;
                    _inst_207 = (stdgo.Go.setRef((@:checkr (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._onepass ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[(_pc_206 : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_onepassinstdott_onepassinst.__type__stdgodot_internaldotregexpdotRegexp_t_onepassinstdotT_onePassInst })) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L432"
                    if ((((_pos == ((0 : stdgo.GoInt)) && _flag_205._match(((@:checkr _inst_207 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst.arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : Bool) && (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix.length) > (0 : stdgo.GoInt) : Bool) : Bool) && _i_200._canCheckPrefix() : Bool)) {
                        _gotoNext = 3850882i64;
                    } else {
                        _gotoNext = 3851120i64;
                    };
                } else if (__value__ == (3850882i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L435"
                    if (!_i_200._hasPrefix(_re)) {
                        _gotoNext = 3850962i64;
                    } else {
                        _gotoNext = 3850985i64;
                    };
                } else if (__value__ == (3850962i64)) {
                    _gotoNext = 3852244i64;
                } else if (__value__ == (3850985i64)) {
                    _pos = (_pos + (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix.length)) : stdgo.GoInt);
                    {
                        var __tmp__ = _i_200._step(_pos);
                        _r_201 = @:tmpset0 __tmp__._0;
                        _width_203 = @:tmpset0 __tmp__._1;
                    };
                    {
                        var __tmp__ = _i_200._step((_pos + _width_203 : stdgo.GoInt));
                        _r1_202 = @:tmpset0 __tmp__._0;
                        _width1_204 = @:tmpset0 __tmp__._1;
                    };
                    _flag_205 = _i_200._context(_pos);
                    _pc_206 = ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefixEnd : stdgo.GoInt);
                    _gotoNext = 3851120i64;
                } else if (__value__ == (3851120i64)) {
                    0i64;
                    _gotoNext = 3851120i64;
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 3851124i64;
                    } else {
                        _gotoNext = 3852244i64;
                    };
                } else if (__value__ == (3851124i64)) {
                    _inst_207 = (stdgo.Go.setRef((@:checkr (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._onepass ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[(_pc_206 : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_onepassinstdott_onepassinst.__type__stdgodot_internaldotregexpdotRegexp_t_onepassinstdotT_onePassInst })) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>);
                    _pc_206 = ((@:checkr _inst_207 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst.out : stdgo.GoInt);
                    _gotoNext = 3851179i64;
                } else if (__value__ == (3851179i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L447"
                    {
                        final __value__ = (@:checkr _inst_207 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst.op;
                        if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3851230i64;
                        } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3851367i64;
                        } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3851439i64;
                        } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3851511i64;
                        } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3851552i64;
                        } else if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3851690i64;
                        } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3851780i64;
                        } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3851819i64;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3851854i64;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3851963i64;
                        } else {
                            _gotoNext = 3851198i64;
                        };
                    };
                } else if (__value__ == (3851198i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L449"
                    throw new stdgo.AnyInterface(("bad inst" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                    _gotoNext = 3852082i64;
                } else if (__value__ == (3851230i64)) {
                    _matched_198 = true;
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L452"
                    if ((((@:checkr _m_197 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3851297i64;
                    } else {
                        _gotoNext = 3851353i64;
                    };
                } else if (__value__ == (3851297i64)) {
                    (@:checkr _m_197 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap[(0 : stdgo.GoInt)] = (0 : stdgo.GoInt);
                    (@:checkr _m_197 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap[(1 : stdgo.GoInt)] = _pos;
                    _gotoNext = 3851353i64;
                } else if (__value__ == (3851353i64)) {
                    _gotoNext = 3852244i64;
                } else if (__value__ == (3851367i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L458"
                    if (!_inst_207.matchRune(_r_201)) {
                        _gotoNext = 3851414i64;
                    } else {
                        _gotoNext = 3852082i64;
                    };
                } else if (__value__ == (3851414i64)) {
                    _gotoNext = 3852244i64;
                } else if (__value__ == (3851439i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L462"
                    if (_r_201 != ((@:checkr _inst_207 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst.rune[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                        _gotoNext = 3851486i64;
                    } else {
                        _gotoNext = 3852082i64;
                    };
                } else if (__value__ == (3851486i64)) {
                    _gotoNext = 3852244i64;
                } else if (__value__ == (3851511i64)) {
                    _gotoNext = 3852082i64;
                } else if (__value__ == (3851552i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L468"
                    if (_r_201 == ((10 : stdgo.GoInt32))) {
                        _gotoNext = 3851598i64;
                    } else {
                        _gotoNext = 3852082i64;
                    };
                } else if (__value__ == (3851598i64)) {
                    _gotoNext = 3852244i64;
                } else if (__value__ == (3851690i64)) {
                    _pc_206 = (stdgo._internal.regexp.Regexp__onepassnext._onePassNext(_inst_207, _r_201) : stdgo.GoInt);
                    0i64;
                    _gotoNext = 3851120i64;
                } else if (__value__ == (3851780i64)) {
                    _gotoNext = 3852244i64;
                } else if (__value__ == (3851819i64)) {
                    0i64;
                    _gotoNext = 3851120i64;
                } else if (__value__ == (3851854i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L480"
                    if (!_flag_205._match(((@:checkr _inst_207 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst.arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3851926i64;
                    } else {
                        _gotoNext = 3851952i64;
                    };
                } else if (__value__ == (3851926i64)) {
                    _gotoNext = 3852244i64;
                } else if (__value__ == (3851952i64)) {
                    0i64;
                    _gotoNext = 3851120i64;
                } else if (__value__ == (3851963i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L485"
                    if ((((@:checkr _inst_207 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst.arg : stdgo.GoInt) < ((@:checkr _m_197 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap.length) : Bool)) {
                        _gotoNext = 3852026i64;
                    } else {
                        _gotoNext = 3852067i64;
                    };
                } else if (__value__ == (3852026i64)) {
                    (@:checkr _m_197 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap[((@:checkr _inst_207 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst.arg : stdgo.GoInt)] = _pos;
                    _gotoNext = 3852067i64;
                } else if (__value__ == (3852067i64)) {
                    0i64;
                    _gotoNext = 3851120i64;
                } else if (__value__ == (3852082i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L490"
                    if (_width_203 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3852096i64;
                    } else {
                        _gotoNext = 3852113i64;
                    };
                } else if (__value__ == (3852096i64)) {
                    _gotoNext = 3852244i64;
                } else if (__value__ == (3852113i64)) {
                    _flag_205 = stdgo._internal.regexp.Regexp__newlazyflag._newLazyFlag(_r_201, _r1_202);
                    _pos = (_pos + (_width_203) : stdgo.GoInt);
                    {
                        final __tmp__0 = _r1_202;
                        final __tmp__1 = _width1_204;
                        _r_201 = @:binopAssign __tmp__0;
                        _width_203 = @:binopAssign __tmp__1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L496"
                    if (_r_201 != ((-1 : stdgo.GoInt32))) {
                        _gotoNext = 3852198i64;
                    } else {
                        _gotoNext = 3851120i64;
                    };
                } else if (__value__ == (3852198i64)) {
                    {
                        var __tmp__ = _i_200._step((_pos + _width_203 : stdgo.GoInt));
                        _r1_202 = @:tmpset0 __tmp__._0;
                        _width1_204 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3851120i64;
                } else if (__value__ == (3852244i64)) {
                    _gotoNext = 3852244i64;
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L502"
                    if (!_matched_198) {
                        _gotoNext = 3852265i64;
                    } else {
                        _gotoNext = 3852309i64;
                    };
                } else if (__value__ == (3852265i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L503"
                    stdgo._internal.regexp.Regexp__freeonepassmachine._freeOnePassMachine(_m_197);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L504"
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3852309i64;
                } else if (__value__ == (3852309i64)) {
                    _dstCap = (_dstCap.__append__(...((@:checkr _m_197 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap : Array<stdgo.GoInt>)) : stdgo.Slice<stdgo.GoInt>);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L508"
                    stdgo._internal.regexp.Regexp__freeonepassmachine._freeOnePassMachine(_m_197);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L509"
                    return _dstCap;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
    @:keep
    @:tdfield
    static public function _backtrack( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _ib:stdgo.Slice<stdgo.GoUInt8>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _width_163:stdgo.GoInt = (0 : stdgo.GoInt);
        var _end_162:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_161:stdgo._internal.regexp.Regexp_t_input.T_input = (null : stdgo._internal.regexp.Regexp_t_input.T_input);
        var _b_158:stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>);
        var _startCond_157:stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        var _advance_164:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _startCond_157 = (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cond;
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L309"
                    if (_startCond_157 == ((255 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3745840i64;
                    } else {
                        _gotoNext = 3745873i64;
                    };
                } else if (__value__ == (3745840i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L310"
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3745873i64;
                } else if (__value__ == (3745873i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L312"
                    if ((((_startCond_157 & (4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) != (0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) && (_pos != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3745925i64;
                    } else {
                        _gotoNext = 3745990i64;
                    };
                } else if (__value__ == (3745925i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L314"
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3745990i64;
                } else if (__value__ == (3745990i64)) {
                    _b_158 = stdgo._internal.regexp.Regexp__newbitstate._newBitState();
                    {
                        var __tmp__ = (@:checkr _b_158 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inputs._init((null : stdgo._internal.io.Io_runereader.RuneReader), _ib, _is?.__copy__());
                        _i_161 = @:tmpset0 __tmp__._0;
                        _end_162 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L319"
                    _b_158._reset((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prog, _end_162, _ncap);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L322"
                    if ((_startCond_157 & (4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3746179i64;
                    } else {
                        _gotoNext = 3746328i64;
                    };
                } else if (__value__ == (3746179i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L323"
                    if ((((@:checkr _b_158 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3746201i64;
                    } else {
                        _gotoNext = 3746227i64;
                    };
                } else if (__value__ == (3746201i64)) {
                    (@:checkr _b_158 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cap[(0 : stdgo.GoInt)] = _pos;
                    _gotoNext = 3746227i64;
                } else if (__value__ == (3746227i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L326"
                    if (!_re._tryBacktrack(_b_158, _i_161, ((@:checkr (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).start : stdgo.GoUInt32), _pos)) {
                        _gotoNext = 3746281i64;
                    } else {
                        _gotoNext = 3747215i64;
                    };
                } else if (__value__ == (3746281i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L327"
                    stdgo._internal.regexp.Regexp__freebitstate._freeBitState(_b_158);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L328"
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3747215i64;
                } else if (__value__ == (3746328i64)) {
                    _gotoNext = 3746328i64;
                    _width_163 = (-1 : stdgo.GoInt);
                    0i64;
                    _gotoNext = 3746735i64;
                } else if (__value__ == (3746735i64)) {
                    //"file://#L0"
                    if (((_pos <= _end_162 : Bool) && (_width_163 != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3746780i64;
                    } else {
                        _gotoNext = 3747182i64;
                    };
                } else if (__value__ == (3746780i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L340"
                    if ((((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3746807i64;
                    } else {
                        _gotoNext = 3746991i64;
                    };
                } else if (__value__ == (3746807i64)) {
                    _advance_164 = _i_161._index(_re, _pos);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L343"
                    if ((_advance_164 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3746918i64;
                    } else {
                        _gotoNext = 3746967i64;
                    };
                } else if (__value__ == (3746918i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L344"
                    stdgo._internal.regexp.Regexp__freebitstate._freeBitState(_b_158);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L345"
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3746967i64;
                } else if (__value__ == (3746967i64)) {
                    _pos = (_pos + (_advance_164) : stdgo.GoInt);
                    _gotoNext = 3746991i64;
                } else if (__value__ == (3746991i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L350"
                    if ((((@:checkr _b_158 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3747009i64;
                    } else {
                        _gotoNext = 3747038i64;
                    };
                } else if (__value__ == (3747009i64)) {
                    (@:checkr _b_158 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cap[(0 : stdgo.GoInt)] = _pos;
                    _gotoNext = 3747038i64;
                } else if (__value__ == (3747038i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L353"
                    if (_re._tryBacktrack(_b_158, _i_161, ((@:checkr (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).start : stdgo.GoUInt32), _pos)) {
                        _gotoNext = 3747091i64;
                    } else {
                        _gotoNext = 3747153i64;
                    };
                } else if (__value__ == (3747091i64)) {
                    _gotoNext = 3747215i64;
                } else if (__value__ == (3747153i64)) {
                    {
                        var __tmp__ = _i_161._step(_pos);
                        _width_163 = @:tmpset0 __tmp__._1;
                    };
                    _pos = (_pos + (_width_163) : stdgo.GoInt);
                    _gotoNext = 3746735i64;
                } else if (__value__ == (3747182i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L359"
                    stdgo._internal.regexp.Regexp__freebitstate._freeBitState(_b_158);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L360"
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    0i64;
                    _gotoNext = 3747215i64;
                } else if (__value__ == (3747215i64)) {
                    _gotoNext = 3747215i64;
                    _dstCap = (_dstCap.__append__(...((@:checkr _b_158 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap : Array<stdgo.GoInt>)) : stdgo.Slice<stdgo.GoInt>);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L365"
                    stdgo._internal.regexp.Regexp__freebitstate._freeBitState(_b_158);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L366"
                    return _dstCap;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
    @:keep
    @:tdfield
    static public function _tryBacktrack( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>, _i:stdgo._internal.regexp.Regexp_t_input.T_input, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _width_129:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inst_127:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        var _arg_108:Bool = false;
        var _pc_106:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _r_134:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _width_135:stdgo.GoInt = (0 : stdgo.GoInt);
        var _width_131:stdgo.GoInt = (0 : stdgo.GoInt);
        var _l_105:stdgo.GoInt = (0 : stdgo.GoInt);
        var _longest_104:Bool = false;
        var _flag_136:stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag = ((0 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag);
        var _r_130:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _width_133:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_132:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_128:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _pos_107:stdgo.GoInt = (0 : stdgo.GoInt);
        var _old_137:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _longest_104 = (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._longest;
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L143"
                    _b._push(_re, _pc, _pos, false);
                    0i64;
                    _gotoNext = 3741914i64;
                } else if (__value__ == (3741914i64)) {
                    //"file://#L0"
                    if ((((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._jobs.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3741934i64;
                    } else {
                        _gotoNext = 3745550i64;
                    };
                } else if (__value__ == (3741934i64)) {
                    _l_105 = (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._jobs.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _pc_106 = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._jobs[(_l_105 : stdgo.GoInt)]._pc;
                    _pos_107 = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._jobs[(_l_105 : stdgo.GoInt)]._pos;
                    _arg_108 = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._jobs[(_l_105 : stdgo.GoInt)]._arg;
                    (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._jobs = ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._jobs.__slice__(0, _l_105) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_job.T_job>);
                    _gotoNext = 3742428i64;
                } else if (__value__ == (3742366i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L161"
                    if (!_b._shouldVisit(_pc_106, _pos_107)) {
                        _gotoNext = 3742409i64;
                    } else {
                        _gotoNext = 3742428i64;
                    };
                } else if (__value__ == (3742409i64)) {
                    0i64;
                    _gotoNext = 3741914i64;
                } else if (__value__ == (3742428i64)) {
                    _gotoNext = 3742428i64;
                    _inst_127 = (stdgo.Go.setRef((@:checkr (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[(_pc_106 : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_instdotinst.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_instdotInst })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
                    _gotoNext = 3742466i64;
                } else if (__value__ == (3742466i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L168"
                    {
                        final __value__ = (@:checkr _inst_127 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op;
                        if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3742517i64;
                        } else if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3742573i64;
                        } else if (__value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3743134i64;
                        } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3743593i64;
                        } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3743744i64;
                        } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3743895i64;
                        } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3744063i64;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3744213i64;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3744596i64;
                        } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3744755i64;
                        } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3744817i64;
                        } else {
                            _gotoNext = 3742485i64;
                        };
                    };
                } else if (__value__ == (3742485i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L170"
                    throw new stdgo.AnyInterface(("bad inst" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                    _gotoNext = 3741914i64;
                } else if (__value__ == (3742517i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L172"
                    throw new stdgo.AnyInterface(("unexpected InstFail" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                    _gotoNext = 3741914i64;
                } else if (__value__ == (3742573i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L182"
                    if (_arg_108) {
                        _gotoNext = 3742946i64;
                    } else {
                        _gotoNext = 3743054i64;
                    };
                } else if (__value__ == (3742946i64)) {
                    _arg_108 = false;
                    _pc_106 = (@:checkr _inst_127 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg;
                    _gotoNext = 3742366i64;
                } else if (__value__ == (3743054i64)) {
                    _gotoNext = 3743054i64;
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L188"
                    _b._push(_re, _pc_106, _pos_107, true);
                    _pc_106 = (@:checkr _inst_127 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out;
                    _gotoNext = 3742366i64;
                } else if (__value__ == (3743134i64)) {
                    _gotoNext = 3743222i64;
                } else if (__value__ == (3743222i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L195"
                    {
                        final __value__ = (@:checkr (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[((@:checkr _inst_127 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out : stdgo.GoInt)].op;
                        if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3743260i64;
                        } else {
                            _gotoNext = 3743517i64;
                        };
                    };
                } else if (__value__ == (3743260i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L198"
                    _b._push(_re, (@:checkr _inst_127 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg, _pos_107, false);
                    _pc_106 = (@:checkr _inst_127 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg;
                    _pos_107 = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._end;
                    _gotoNext = 3742366i64;
                } else if (__value__ == (3743517i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L204"
                    _b._push(_re, (@:checkr _inst_127 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._end, false);
                    _pc_106 = (@:checkr _inst_127 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out;
                    _gotoNext = 3742366i64;
                } else if (__value__ == (3743593i64)) {
                    {
                        var __tmp__ = _i._step(_pos_107);
                        _r_128 = @:tmpset0 __tmp__._0;
                        _width_129 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L210"
                    if (!_inst_127.matchRune(_r_128)) {
                        _gotoNext = 3743667i64;
                    } else {
                        _gotoNext = 3743690i64;
                    };
                } else if (__value__ == (3743667i64)) {
                    0i64;
                    _gotoNext = 3741914i64;
                } else if (__value__ == (3743690i64)) {
                    _pos_107 = (_pos_107 + (_width_129) : stdgo.GoInt);
                    _pc_106 = (@:checkr _inst_127 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out;
                    _gotoNext = 3742366i64;
                } else if (__value__ == (3743744i64)) {
                    {
                        var __tmp__ = _i._step(_pos_107);
                        _r_130 = @:tmpset0 __tmp__._0;
                        _width_131 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L219"
                    if (_r_130 != ((@:checkr _inst_127 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                        _gotoNext = 3743818i64;
                    } else {
                        _gotoNext = 3743841i64;
                    };
                } else if (__value__ == (3743818i64)) {
                    0i64;
                    _gotoNext = 3741914i64;
                } else if (__value__ == (3743841i64)) {
                    _pos_107 = (_pos_107 + (_width_131) : stdgo.GoInt);
                    _pc_106 = (@:checkr _inst_127 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out;
                    _gotoNext = 3742366i64;
                } else if (__value__ == (3743895i64)) {
                    {
                        var __tmp__ = _i._step(_pos_107);
                        _r_132 = @:tmpset0 __tmp__._0;
                        _width_133 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L228"
                    if (((_r_132 == (10 : stdgo.GoInt32)) || (_r_132 == (-1 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3743986i64;
                    } else {
                        _gotoNext = 3744009i64;
                    };
                } else if (__value__ == (3743986i64)) {
                    0i64;
                    _gotoNext = 3741914i64;
                } else if (__value__ == (3744009i64)) {
                    _pos_107 = (_pos_107 + (_width_133) : stdgo.GoInt);
                    _pc_106 = (@:checkr _inst_127 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out;
                    _gotoNext = 3742366i64;
                } else if (__value__ == (3744063i64)) {
                    {
                        var __tmp__ = _i._step(_pos_107);
                        _r_134 = @:tmpset0 __tmp__._0;
                        _width_135 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L237"
                    if (_r_134 == ((-1 : stdgo.GoInt32))) {
                        _gotoNext = 3744136i64;
                    } else {
                        _gotoNext = 3744159i64;
                    };
                } else if (__value__ == (3744136i64)) {
                    0i64;
                    _gotoNext = 3741914i64;
                } else if (__value__ == (3744159i64)) {
                    _pos_107 = (_pos_107 + (_width_135) : stdgo.GoInt);
                    _pc_106 = (@:checkr _inst_127 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out;
                    _gotoNext = 3742366i64;
                } else if (__value__ == (3744213i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L245"
                    if (_arg_108) {
                        _gotoNext = 3744248i64;
                    } else {
                        _gotoNext = 3744348i64;
                    };
                } else if (__value__ == (3744248i64)) {
                    (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cap[((@:checkr _inst_127 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg : stdgo.GoInt)] = _pos_107;
                    0i64;
                    _gotoNext = 3741914i64;
                } else if (__value__ == (3744348i64)) {
                    _gotoNext = 3744348i64;
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L250"
                    if (((@:checkr _inst_127 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg < ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cap.length : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3744387i64;
                    } else {
                        _gotoNext = 3744552i64;
                    };
                } else if (__value__ == (3744387i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L252"
                    _b._push(_re, _pc_106, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cap[((@:checkr _inst_127 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg : stdgo.GoInt)], true);
                    (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cap[((@:checkr _inst_127 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg : stdgo.GoInt)] = _pos_107;
                    _gotoNext = 3744552i64;
                } else if (__value__ == (3744552i64)) {
                    _pc_106 = (@:checkr _inst_127 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out;
                    _gotoNext = 3742366i64;
                } else if (__value__ == (3744596i64)) {
                    _flag_136 = _i._context(_pos_107);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L261"
                    if (!_flag_136._match(((@:checkr _inst_127 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3744694i64;
                    } else {
                        _gotoNext = 3744717i64;
                    };
                } else if (__value__ == (3744694i64)) {
                    0i64;
                    _gotoNext = 3741914i64;
                } else if (__value__ == (3744717i64)) {
                    _pc_106 = (@:checkr _inst_127 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out;
                    _gotoNext = 3742366i64;
                } else if (__value__ == (3744755i64)) {
                    _pc_106 = (@:checkr _inst_127 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out;
                    _gotoNext = 3742366i64;
                } else if (__value__ == (3744817i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L274"
                    if (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cap.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3744963i64;
                    } else {
                        _gotoNext = 3745129i64;
                    };
                } else if (__value__ == (3744963i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L275"
                    return true;
                    _gotoNext = 3745129i64;
                } else if (__value__ == (3745129i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L281"
                    if ((((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cap.length) > (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3745147i64;
                    } else {
                        _gotoNext = 3745176i64;
                    };
                } else if (__value__ == (3745147i64)) {
                    (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cap[(1 : stdgo.GoInt)] = _pos_107;
                    _gotoNext = 3745176i64;
                } else if (__value__ == (3745176i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L284"
                    {
                        _old_137 = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap[(1 : stdgo.GoInt)];
                        if (((_old_137 == (-1 : stdgo.GoInt)) || (((_longest_104 && (_pos_107 > (0 : stdgo.GoInt) : Bool) : Bool) && (_pos_107 > _old_137 : Bool) : Bool)) : Bool)) {
                            _gotoNext = 3745248i64;
                        } else {
                            _gotoNext = 3745331i64;
                        };
                    };
                } else if (__value__ == (3745248i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L285"
                    (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap.__copyTo__((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cap);
                    _gotoNext = 3745331i64;
                } else if (__value__ == (3745331i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L289"
                    if (!_longest_104) {
                        _gotoNext = 3745343i64;
                    } else {
                        _gotoNext = 3745433i64;
                    };
                } else if (__value__ == (3745343i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L290"
                    return true;
                    _gotoNext = 3745433i64;
                } else if (__value__ == (3745433i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L294"
                    if (_pos_107 == ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._end)) {
                        _gotoNext = 3745449i64;
                    } else {
                        _gotoNext = 3745532i64;
                    };
                } else if (__value__ == (3745449i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L295"
                    return true;
                    _gotoNext = 3745532i64;
                } else if (__value__ == (3745532i64)) {
                    0i64;
                    _gotoNext = 3741914i64;
                } else if (__value__ == (3745550i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L303"
                    return ((_longest_104 && (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap.length) > (1 : stdgo.GoInt) : Bool) : Bool) && ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap[(1 : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool);
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
}
