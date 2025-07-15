package _internal.githubdotcom.dlclark.regexp2.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.sort.Sort;
@:keep @:allow(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax.CharSet_asInterface) class CharSet_static_extension {
    @:keep
    @:tdfield
    static public function _addLowercaseRange( _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>, _chMin:stdgo.GoInt32, _chMax:stdgo.GoInt32):Void {
        @:recv var _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = _c;
        var _i:stdgo.GoInt = (0 : stdgo.GoInt), _iMax:stdgo.GoInt = (0 : stdgo.GoInt), _iMid:stdgo.GoInt = (0 : stdgo.GoInt);
        var _chMinT:stdgo.GoInt32 = (0 : stdgo.GoInt32), _chMaxT:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _lc:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_lcmap.T_lcMap = ({} : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_lcmap.T_lcMap);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L818"
        {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = (_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__lctable._lcTable.length);
                _i = @:binopAssign __tmp__0;
                _iMax = @:binopAssign __tmp__1;
            };
            while ((_i < _iMax : Bool)) {
                _iMid = (((_i + _iMax : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L820"
                if ((_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__lctable._lcTable[(_iMid : stdgo.GoInt)]._chMax < _chMin : Bool)) {
                    _i = (_iMid + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _iMax = _iMid;
                };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L827"
        while ((_i < (_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__lctable._lcTable.length) : Bool)) {
            _lc = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__lctable._lcTable[(_i : stdgo.GoInt)];
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L829"
            if ((_lc._chMin > _chMax : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L830"
                return;
            };
_chMinT = _lc._chMin;
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L833"
            if ((_chMinT < _chMin : Bool)) {
                _chMinT = _chMin;
            };
_chMaxT = _lc._chMax;
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L838"
            if ((_chMaxT > _chMax : Bool)) {
                _chMaxT = _chMax;
            };
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L842"
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _lc._op;
                        if (__value__ == ((0 : stdgo.GoInt32))) {
                            _chMinT = (_lc._data : stdgo.GoInt32);
                            _chMaxT = (_lc._data : stdgo.GoInt32);
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L846"
                            break;
                            break;
                        } else if (__value__ == ((1 : stdgo.GoInt32))) {
                            _chMinT = (_chMinT + (_lc._data) : stdgo.GoInt32);
                            _chMaxT = (_chMaxT + (_lc._data) : stdgo.GoInt32);
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L850"
                            break;
                            break;
                        } else if (__value__ == ((2 : stdgo.GoInt32))) {
                            _chMinT = (_chMinT | ((1 : stdgo.GoInt32)) : stdgo.GoInt32);
                            _chMaxT = (_chMaxT | ((1 : stdgo.GoInt32)) : stdgo.GoInt32);
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L854"
                            break;
                            break;
                        } else if (__value__ == ((3 : stdgo.GoInt32))) {
                            _chMinT = (_chMinT + ((_chMinT & (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
                            _chMaxT = (_chMaxT + ((_chMaxT & (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L858"
                            break;
                            break;
                        };
                    };
                    break;
                };
            };
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L861"
            if (((_chMinT < _chMin : Bool) || (_chMaxT > _chMax : Bool) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L862"
                _c._addRange(_chMinT, _chMaxT);
            };
            _i++;
        };
    }
    @:keep
    @:tdfield
    static public function _addLowercase( _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>):Void {
        @:recv var _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = _c;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L656"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._anything) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L657"
            return;
        };
        var _toAdd = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)])) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L660"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges.length) : Bool)) {
                var _r = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges[(_i : stdgo.GoInt)] : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange);
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L662"
                if (_r._first == (_r._last)) {
                    var _lower = @:assignType (stdgo._internal.unicode.Unicode_tolower.toLower(_r._first) : stdgo.GoInt32);
                    (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges[(_i : stdgo.GoInt)] = ({ _first : _lower, _last : _lower } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange);
                } else {
                    _toAdd = (_toAdd.__append__(_r.__copy__()) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>);
                };
                _i++;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L670"
        if (_toAdd != null) for (__0 => _r in _toAdd) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L671"
            _c._addLowercaseRange(_r._first, _r._last);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L673"
        _c._canonicalize();
    }
    @:keep
    @:tdfield
    static public function _canonicalize( _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>):Void {
        @:recv var _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = _c;
        var _i:stdgo.GoInt = (0 : stdgo.GoInt), _j:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L614"
        if ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges.length) > (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L615"
            stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerangesorter.T_singleRangeSorter), _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_t_singlerangesorterdott_singlerangesorter.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_t_singlerangesorterdotT_singleRangeSorter));
            var _done = @:assignType (false : Bool);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L619"
            {
                {
                    final __tmp__0 = (1 : stdgo.GoInt);
                    final __tmp__1 = (0 : stdgo.GoInt);
                    _i = @:binopAssign __tmp__0;
                    _j = @:binopAssign __tmp__1;
                };
                while (true) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L620"
                    {
                        _last = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges[(_j : stdgo.GoInt)]._last;
                        while (true) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L621"
                            if (((_i == ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges.length)) || (_last == (1114111 : stdgo.GoInt32)) : Bool)) {
                                _done = true;
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L623"
                                break;
                            };
var currentRange = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges[(_i : stdgo.GoInt)] : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange);
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L627"
                            if ((currentRange._first > (_last + (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L628"
                                break;
                            };
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L631"
                            if ((_last < currentRange._last : Bool)) {
                                _last = currentRange._last;
                            };
                            _i++;
                        };
                    };
(@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges[(_j : stdgo.GoInt)] = ({ _first : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges[(_j : stdgo.GoInt)]._first, _last : _last } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange);
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L638"
                    _j++;
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L640"
                    if (_done) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L641"
                        break;
                    };
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L644"
                    if ((_j < _i : Bool)) {
                        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges[(_j : stdgo.GoInt)] = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges[(_i : stdgo.GoInt)];
                    };
                    _i++;
                };
            };
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges = (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges.__slice__(0, _j) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>).__append__(...(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges.__slice__(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges.length)) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>) : Array<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>)) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>);
        };
    }
    @:keep
    @:tdfield
    static public function _addNamedASCII( _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>, _name:stdgo.GoString, _negate:Bool):Bool {
        @:recv var _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = _c;
        var _rs:stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange> = (null : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L555"
        {
            final __value__ = _name;
            if (__value__ == (("alnum" : stdgo.GoString))) {
                _rs = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>(3, 3, ...[(new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange((48 : stdgo.GoInt32), (57 : stdgo.GoInt32)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange), (new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange((65 : stdgo.GoInt32), (90 : stdgo.GoInt32)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange), (new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange((97 : stdgo.GoInt32), (122 : stdgo.GoInt32)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)])) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>);
            } else if (__value__ == (("alpha" : stdgo.GoString))) {
                _rs = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>(2, 2, ...[(new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange((65 : stdgo.GoInt32), (90 : stdgo.GoInt32)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange), (new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange((97 : stdgo.GoInt32), (122 : stdgo.GoInt32)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)])) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>);
            } else if (__value__ == (("ascii" : stdgo.GoString))) {
                _rs = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>(1, 1, ...[(new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange((0 : stdgo.GoInt32), (127 : stdgo.GoInt32)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)])) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>);
            } else if (__value__ == (("blank" : stdgo.GoString))) {
                _rs = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>(2, 2, ...[(new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange((9 : stdgo.GoInt32), (9 : stdgo.GoInt32)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange), (new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange((32 : stdgo.GoInt32), (32 : stdgo.GoInt32)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)])) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>);
            } else if (__value__ == (("cntrl" : stdgo.GoString))) {
                _rs = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>(2, 2, ...[(new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange((0 : stdgo.GoInt32), (31 : stdgo.GoInt32)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange), (new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange((127 : stdgo.GoInt32), (127 : stdgo.GoInt32)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)])) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>);
            } else if (__value__ == (("digit" : stdgo.GoString))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L567"
                _c._addDigit(false, _negate, (stdgo.Go.str() : stdgo.GoString)?.__copy__());
            } else if (__value__ == (("graph" : stdgo.GoString))) {
                _rs = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>(1, 1, ...[(new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange((33 : stdgo.GoInt32), (126 : stdgo.GoInt32)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)])) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>);
            } else if (__value__ == (("lower" : stdgo.GoString))) {
                _rs = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>(1, 1, ...[(new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange((97 : stdgo.GoInt32), (122 : stdgo.GoInt32)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)])) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>);
            } else if (__value__ == (("print" : stdgo.GoString))) {
                _rs = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>(1, 1, ...[(new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange((32 : stdgo.GoInt32), (126 : stdgo.GoInt32)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)])) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>);
            } else if (__value__ == (("punct" : stdgo.GoString))) {
                _rs = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>(4, 4, ...[(new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange((33 : stdgo.GoInt32), (47 : stdgo.GoInt32)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange), (new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange((58 : stdgo.GoInt32), (64 : stdgo.GoInt32)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange), (new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange((91 : stdgo.GoInt32), (96 : stdgo.GoInt32)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange), (new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange((123 : stdgo.GoInt32), (126 : stdgo.GoInt32)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)])) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>);
            } else if (__value__ == (("space" : stdgo.GoString))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L577"
                _c._addSpace(true, false, _negate);
            } else if (__value__ == (("upper" : stdgo.GoString))) {
                _rs = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>(1, 1, ...[(new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange((65 : stdgo.GoInt32), (90 : stdgo.GoInt32)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)])) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>);
            } else if (__value__ == (("word" : stdgo.GoString))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L581"
                _c._addWord(true, _negate);
            } else if (__value__ == (("xdigit" : stdgo.GoString))) {
                _rs = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>(3, 3, ...[(new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange((48 : stdgo.GoInt32), (57 : stdgo.GoInt32)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange), (new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange((65 : stdgo.GoInt32), (70 : stdgo.GoInt32)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange), (new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange((97 : stdgo.GoInt32), (102 : stdgo.GoInt32)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)])) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>);
            } else {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L585"
                return false;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L588"
        if (((_rs.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L589"
            if (_negate) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L590"
                _c._addNegativeRanges(_rs);
            } else {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L592"
                _c._addRanges(_rs);
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L596"
        return true;
    }
    @:keep
    @:tdfield
    static public function _addRange( _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>, _chMin:stdgo.GoInt32, _chMax:stdgo.GoInt32):Void {
        @:recv var _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = _c;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges.__append__(({ _first : _chMin, _last : _chMax } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L549"
        _c._canonicalize();
    }
    @:keep
    @:tdfield
    static public function _addSubtraction( _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>, _sub:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>):Void {
        @:recv var _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = _c;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sub = _sub;
    }
    @:keep
    @:tdfield
    static public function _addCategory( _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>, _categoryName:stdgo.GoString, _negate:Bool, _caseInsensitive:Bool, _pattern:stdgo.GoString):Void {
        @:recv var _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = _c;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L527"
        if (!_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__isvalidunicodecat._isValidUnicodeCat(_categoryName?.__copy__())) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L529"
            throw ({
                final __t__ = stdgo._internal.fmt.Fmt_errorf.errorf(("Unknown unicode category, script, or property \'%v\'" : stdgo.GoString), new stdgo.AnyInterface(_categoryName, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            });
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L533"
        if ((_caseInsensitive && (((_categoryName == (("Ll" : stdgo.GoString)) || _categoryName == (("Lu" : stdgo.GoString)) : Bool) || (_categoryName == ("Lt" : stdgo.GoString)) : Bool)) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L535"
            _c._addCategories(({ _cat : ("Ll" : stdgo.GoString), _negate : _negate } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category), ({ _cat : ("Lu" : stdgo.GoString), _negate : _negate } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category), ({ _cat : ("Lt" : stdgo.GoString), _negate : _negate } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L540"
        _c._addCategories(({ _cat : _categoryName?.__copy__(), _negate : _negate } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category));
    }
    @:keep
    @:tdfield
    static public function _addNegativeRanges( _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>, _ranges:stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>):Void {
        @:recv var _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = _c;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L500"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._anything) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L501"
            return;
        };
        var _hi:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L507"
        if (_ranges != null) for (__0 => _r in _ranges) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L508"
            if ((_hi < _r._first : Bool)) {
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges.__append__((new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange(_hi, (_r._first - (1 : stdgo.GoInt32) : stdgo.GoInt32)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>);
            };
            _hi = (_r._last + (1 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L514"
        if ((_hi < (1114111 : stdgo.GoInt32) : Bool)) {
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges.__append__((new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange(_hi, (1114111 : stdgo.GoInt32)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L518"
        _c._canonicalize();
    }
    @:keep
    @:tdfield
    static public function _addRanges( _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>, _ranges:stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>):Void {
        @:recv var _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = _c;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L491"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._anything) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L492"
            return;
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges.__append__(...(_ranges : Array<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>)) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L495"
        _c._canonicalize();
    }
    @:keep
    @:tdfield
    static public function _addCategories( _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>, _cats:haxe.Rest<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category>):Void {
        var _cats = new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category>(_cats.length, 0, ..._cats);
        @:recv var _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = _c;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L462"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._anything) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L465"
            return;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L468"
        if (_cats != null) for (__0 => _ct in _cats) {
            var _found = @:assignType (false : Bool);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L470"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._categories != null) for (__1 => _ct2 in (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._categories) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L471"
                if (_ct._cat == (_ct2._cat)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L472"
                    if (_ct._negate != (_ct2._negate)) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L475"
                        _c._makeAnything();
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L476"
                        return;
                    };
                    _found = true;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L479"
                    break;
                };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L483"
            if (!_found) {
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._categories = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._categories.__append__(_ct?.__copy__()) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _makeAnything( _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>):Void {
        @:recv var _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = _c;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._anything = true;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._categories = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category)])) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category>);
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anyclass.anyClass()._ranges;
    }
    @:keep
    @:tdfield
    static public function _addSet( _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>, _set:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet):Void {
        @:recv var _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = _c;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L441"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._anything) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L442"
            return;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L444"
        if (_set._anything) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L445"
            _c._makeAnything();
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L446"
            return;
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ranges.__append__(...(_set._ranges : Array<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>)) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L450"
        _c._addCategories(...(_set._categories : Array<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category>));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L451"
        _c._canonicalize();
    }
    @:keep
    @:tdfield
    static public function _addWord( _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>, _ecma:Bool, _negate:Bool):Void {
        @:recv var _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = _c;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L428"
        if (_ecma) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L429"
            if (_negate) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L430"
                _c._addRanges(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notecmawordclass.notECMAWordClass()._ranges);
            } else {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L432"
                _c._addRanges(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_ecmawordclass.eCMAWordClass()._ranges);
            };
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L435"
            _c._addCategories(({ _cat : ("W" : stdgo.GoString), _negate : _negate } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category));
        };
    }
    @:keep
    @:tdfield
    static public function _addSpace( _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>, _ecma:Bool, _re2:Bool, _negate:Bool):Void {
        @:recv var _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = _c;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L410"
        if (_ecma) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L411"
            if (_negate) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L412"
                _c._addRanges(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notecmaspaceclass.notECMASpaceClass()._ranges);
            } else {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L414"
                _c._addRanges(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_ecmaspaceclass.eCMASpaceClass()._ranges);
            };
        } else if (_re2) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L417"
            if (_negate) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L418"
                _c._addRanges(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notre2spaceclass.notRE2SpaceClass()._ranges);
            } else {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L420"
                _c._addRanges(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_re2spaceclass.rE2SpaceClass()._ranges);
            };
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L423"
            _c._addCategories(({ _cat : (" " : stdgo.GoString), _negate : _negate } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category));
        };
    }
    @:keep
    @:tdfield
    static public function _addChar( _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>, _ch:stdgo.GoInt32):Void {
        @:recv var _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = _c;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L406"
        _c._addRange(_ch, _ch);
    }
    @:keep
    @:tdfield
    static public function _addDigit( _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>, _ecma:Bool, _negate:Bool, _pattern:stdgo.GoString):Void {
        @:recv var _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = _c;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L394"
        if (_ecma) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L395"
            if (_negate) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L396"
                _c._addRanges(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notecmadigitclass.notECMADigitClass()._ranges);
            } else {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L398"
                _c._addRanges(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_ecmadigitclass.eCMADigitClass()._ranges);
            };
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L401"
            _c._addCategories(({ _cat : ("Nd" : stdgo.GoString), _negate : _negate } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category));
        };
    }
    @:keep
    @:tdfield
    static public function isEmpty( _c:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet):Bool {
        @:recv var _c:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet = _c?.__copy__();
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L390"
        return (((_c._ranges.length) == ((0 : stdgo.GoInt)) && (_c._categories.length) == ((0 : stdgo.GoInt)) : Bool) && ({
            final value = _c._sub;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool);
    }
    @:keep
    @:tdfield
    static public function hasSubtraction( _c:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet):Bool {
        @:recv var _c:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet = _c?.__copy__();
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L386"
        return ({
            final value = _c._sub;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        });
    }
    @:keep
    @:tdfield
    static public function isNegated( _c:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet):Bool {
        @:recv var _c:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet = _c?.__copy__();
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L382"
        return _c._negate;
    }
    @:keep
    @:tdfield
    static public function isMergeable( _c:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet):Bool {
        @:recv var _c:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet = _c?.__copy__();
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L378"
        return (!_c.isNegated() && !_c.hasSubtraction() : Bool);
    }
    @:keep
    @:tdfield
    static public function isSingletonInverse( _c:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet):Bool {
        @:recv var _c:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet = _c?.__copy__();
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L371"
        return ((((_c._negate && (_c._categories.length) == ((0 : stdgo.GoInt)) : Bool) && (_c._ranges.length) == ((1 : stdgo.GoInt)) : Bool) && ({
            final value = _c._sub;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool) && (_c._ranges[(0 : stdgo.GoInt)]._first == _c._ranges[(0 : stdgo.GoInt)]._last) : Bool);
    }
    @:keep
    @:tdfield
    static public function isSingleton( _c:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet):Bool {
        @:recv var _c:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet = _c?.__copy__();
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L364"
        return ((((!_c._negate && (_c._categories.length) == ((0 : stdgo.GoInt)) : Bool) && (_c._ranges.length) == ((1 : stdgo.GoInt)) : Bool) && ({
            final value = _c._sub;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool) && (_c._ranges[(0 : stdgo.GoInt)]._first == _c._ranges[(0 : stdgo.GoInt)]._last) : Bool);
    }
    @:keep
    @:tdfield
    static public function singletonChar( _c:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet):stdgo.GoInt32 {
        @:recv var _c:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet = _c?.__copy__();
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L360"
        return _c._ranges[(0 : stdgo.GoInt)]._first;
    }
    @:keep
    @:tdfield
    static public function charIn( _c:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet, _ch:stdgo.GoInt32):Bool {
        @:recv var _c:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet = _c?.__copy__();
        var _val = @:assignType (false : Bool);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L236"
        if (_c._ranges != null) for (__0 => _r in _c._ranges) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L237"
            if ((_ch < _r._first : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L238"
                continue;
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L240"
            if ((_ch <= _r._last : Bool)) {
                _val = true;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L242"
                break;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L247"
        if ((!_val && ((_c._categories.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L248"
            if (_c._categories != null) for (__1 => _ct in _c._categories) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L250"
                if (_ct._cat == ((" " : stdgo.GoString))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L251"
                    if (stdgo._internal.unicode.Unicode_isspace.isSpace(_ch)) {
                        _val = !_ct._negate;
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L255"
                        break;
                    } else if (_ct._negate) {
                        _val = true;
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L258"
                        break;
                    };
                } else if (_ct._cat == (("W" : stdgo.GoString))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L261"
                    if (_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_ch)) {
                        _val = !_ct._negate;
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L263"
                        break;
                    } else if (_ct._negate) {
                        _val = true;
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L266"
                        break;
                    };
                } else if (stdgo._internal.unicode.Unicode_is_.is_((_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__unicodecategories._unicodeCategories[_ct._cat] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>)), _ch)) {
                    _val = !_ct._negate;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L273"
                    break;
                } else if (_ct._negate) {
                    _val = true;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L276"
                    break;
                };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L282"
        if (_c._negate) {
            _val = !_val;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L287"
        if ((_val && ({
            final value = _c._sub;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) : Bool)) {
            _val = !(@:checkr _c._sub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).charIn(_ch);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L292"
        return _val;
    }
    @:keep
    @:tdfield
    static public function _mapHashFill( _c:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):Void {
        @:recv var _c:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet = _c?.__copy__();
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L203"
        if (_c._negate) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L204"
            _buf.writeByte((0 : stdgo.GoUInt8));
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L206"
            _buf.writeByte((1 : stdgo.GoUInt8));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L209"
        stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian, _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotbinarydotbinary_t_littleendiandott_littleendian.__type__stdgodot_internaldotencodingdotbinarydotBinary_t_littleendiandotT_littleEndian), new stdgo.AnyInterface((_c._ranges.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L210"
        stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian, _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotbinarydotbinary_t_littleendiandott_littleendian.__type__stdgodot_internaldotencodingdotbinarydotBinary_t_littleendiandotT_littleEndian), new stdgo.AnyInterface((_c._categories.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L211"
        if (_c._ranges != null) for (__0 => _r in _c._ranges) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L212"
            _buf.writeRune(_r._first);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L213"
            _buf.writeRune(_r._last);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L215"
        if (_c._categories != null) for (__1 => _ct in _c._categories) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L216"
            _buf.writeString(_ct._cat?.__copy__());
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L217"
            if (_ct._negate) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L218"
                _buf.writeByte((1 : stdgo.GoUInt8));
            } else {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L220"
                _buf.writeByte((0 : stdgo.GoUInt8));
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L224"
        if (({
            final value = _c._sub;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L225"
            (@:checkr _c._sub ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mapHashFill(_buf);
        };
    }
    @:keep
    @:tdfield
    static public function string( _c:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet):stdgo.GoString {
        @:recv var _c:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet = _c?.__copy__();
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L169"
        _buf.writeRune((91 : stdgo.GoInt32));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L171"
        if (_c.isNegated()) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L172"
            _buf.writeRune((94 : stdgo.GoInt32));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L175"
        if (_c._ranges != null) for (__0 => _r in _c._ranges) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L177"
            _buf.writeString(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_chardescription.charDescription(_r._first)?.__copy__());
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L178"
            if (_r._first != (_r._last)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L179"
                if ((_r._last - _r._first : stdgo.GoInt32) != ((1 : stdgo.GoInt32))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L181"
                    _buf.writeRune((45 : stdgo.GoInt32));
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L183"
                _buf.writeString(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_chardescription.charDescription(_r._last)?.__copy__());
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L187"
        if (_c._categories != null) for (__1 => _c in _c._categories) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L188"
            _buf.writeString((_c.string() : stdgo.GoString)?.__copy__());
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L191"
        if (({
            final value = _c._sub;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L192"
            _buf.writeRune((45 : stdgo.GoInt32));
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L193"
            _buf.writeString(((@:checkr _c._sub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).string() : stdgo.GoString)?.__copy__());
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L196"
        _buf.writeRune((93 : stdgo.GoInt32));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L198"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function copy( _c:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet):_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet {
        @:recv var _c:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet = _c?.__copy__();
        var _ret = @:assignType ({ _anything : _c._anything, _negate : _c._negate } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet);
        _ret._ranges = (_ret._ranges.__append__(...(_c._ranges : Array<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>)) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>);
        _ret._categories = (_ret._categories.__append__(...(_c._categories : Array<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category>)) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L158"
        if (({
            final value = _c._sub;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            var _sub = @:assignType ((@:checkr _c._sub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).copy()?.__copy__() : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet);
            _ret._sub = (stdgo.Go.setRef(_sub, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_charsetdotcharset.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_charsetdotCharSet })) : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L163"
        return _ret?.__copy__();
    }
}
