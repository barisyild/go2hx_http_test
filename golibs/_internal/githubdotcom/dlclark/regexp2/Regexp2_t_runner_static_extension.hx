package _internal.githubdotcom.dlclark.regexp2;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.log.Log;
import _internal.githubdotcom.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.unicode.Unicode;
@:keep @:allow(_internal.githubdotcom.dlclark.regexp2.Regexp2.T_runner_asInterface) class T_runner_static_extension {
    @:keep
    @:tdfield
    static public function _initTrackCount( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackcount = (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trackCount;
    }
    @:keep
    @:tdfield
    static public function _checkTimeout( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.Error {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1561"
        if (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ignoreTimeout || !(@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._deadline._reached() : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1562"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1565"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._re.debug()) {};
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1575"
        return stdgo._internal.fmt.Fmt_errorf.errorf(("match timeout after %v on input `%v`" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._timeout, _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)), new stdgo.AnyInterface(((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtext : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
    }
    @:keep
    @:tdfield
    static public function _startTimeoutWatch( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1554"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ignoreTimeout) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1555"
            return;
        };
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._deadline = _internal.githubdotcom.dlclark.regexp2.Regexp2__makedeadline._makeDeadline((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._timeout);
    }
    @:keep
    @:tdfield
    static public function _isECMABoundary( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, _index:stdgo.GoInt, _startpos:stdgo.GoInt, _endpos:stdgo.GoInt):Bool {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1549"
        return (((_index > _startpos : Bool) && _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_isecmawordchar.isECMAWordChar((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtext[(_index - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) != (((_index < _endpos : Bool) && _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_isecmawordchar.isECMAWordChar((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtext[(_index : stdgo.GoInt)]) : Bool));
    }
    @:keep
    @:tdfield
    static public function _isBoundary( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, _index:stdgo.GoInt, _startpos:stdgo.GoInt, _endpos:stdgo.GoInt):Bool {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1544"
        return (((_index > _startpos : Bool) && _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtext[(_index - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) != (((_index < _endpos : Bool) && _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtext[(_index : stdgo.GoInt)]) : Bool));
    }
    @:keep
    @:tdfield
    static public function _textposDescription( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1513"
        _buf.writeString(stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos)?.__copy__());
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1515"
        if ((_buf.len() < (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1516"
            _buf.writeString(stdgo._internal.strings.Strings_repeat.repeat((" " : stdgo.GoString), ((8 : stdgo.GoInt) - _buf.len() : stdgo.GoInt))?.__copy__());
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1519"
        if (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1520"
            _buf.writeString(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_chardescription.charDescription((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtext[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos - (1 : stdgo.GoInt) : stdgo.GoInt)])?.__copy__());
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1522"
            _buf.writeRune((94 : stdgo.GoInt32));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1525"
        _buf.writeRune((62 : stdgo.GoInt32));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1527"
        {
            var _i = @:assignType ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos : stdgo.GoInt);
            while ((_i < (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextend : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1528"
                _buf.writeString(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_chardescription.charDescription((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtext[(_i : stdgo.GoInt)]).__copy__());
                _i++;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1530"
        if ((_buf.len() >= (64 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1531"
            _buf.truncate((61 : stdgo.GoInt));
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1532"
            _buf.writeString(("..." : stdgo.GoString));
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1534"
            _buf.writeRune((36 : stdgo.GoInt32));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1537"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _stackDescription( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, _a:stdgo.Slice<stdgo.GoInt>, _index:stdgo.GoInt):stdgo.GoString {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1491"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("%v/%v" : stdgo.GoString), new stdgo.AnyInterface(((_a.length) - _index : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_a.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1492"
        if ((_buf.len() < (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1493"
            _buf.writeString(stdgo._internal.strings.Strings_repeat.repeat((" " : stdgo.GoString), ((8 : stdgo.GoInt) - _buf.len() : stdgo.GoInt))?.__copy__());
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1496"
        _buf.writeRune((40 : stdgo.GoInt32));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1497"
        {
            var _i = @:assignType (_index : stdgo.GoInt);
            while ((_i < (_a.length) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1498"
                if ((_i > _index : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1499"
                    _buf.writeRune((32 : stdgo.GoInt32));
                };
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1502"
                _buf.writeString(stdgo._internal.strconv.Strconv_itoa.itoa(_a[(_i : stdgo.GoInt)]).__copy__());
                _i++;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1505"
        _buf.writeRune((41 : stdgo.GoInt32));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1507"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _dumpState( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        var _back = @:assignType ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1474"
        if (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._operator & (128 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
            _back = (" Back" : stdgo.GoString);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1477"
        if (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._operator & (256 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
            _back = (_back + ((" Back2" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1480"
        stdgo._internal.fmt.Fmt_printf.printf(("Text:  %v\nTrack: %v\nStack: %v\n       %s%s\n\n" : stdgo.GoString), new stdgo.AnyInterface(_r._textposDescription(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_r._stackDescription((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack, (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_r._stackDescription((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstack, (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstackpos), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code.opcodeDescription((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codepos), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_back, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
    }
    @:keep
    @:tdfield
    static public function _uncapture( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        var _capnum = @:assignType (_r._popcrawl() : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1467"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runmatch._removeMatch(_capnum);
    }
    @:keep
    @:tdfield
    static public function _transferCapture( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, _capnum:stdgo.GoInt, _uncapnum:stdgo.GoInt, _start:stdgo.GoInt, _end:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        var _start2:stdgo.GoInt = (0 : stdgo.GoInt), _end2:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1430"
        if ((_end < _start : Bool)) {
            var t = @:assignType (_end : stdgo.GoInt);
            _end = _start;
            _start = t;
        };
        _start2 = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runmatch._matchIndex(_uncapnum);
        _end2 = (_start2 + (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runmatch._matchLength(_uncapnum) : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1441"
        if ((_start >= _end2 : Bool)) {
            _end = _start;
            _start = _end2;
        } else if ((_end <= _start2 : Bool)) {
            _start = _start2;
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1447"
            if ((_end > _end2 : Bool)) {
                _end = _end2;
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1450"
            if ((_start2 > _start : Bool)) {
                _start = _start2;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1455"
        _r._crawl(_uncapnum);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1456"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runmatch._balanceMatch(_uncapnum);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1458"
        if (_capnum != ((-1 : stdgo.GoInt))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1459"
            _r._crawl(_capnum);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1460"
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runmatch._addMatch(_capnum, _start, (_end - _start : stdgo.GoInt));
        };
    }
    @:keep
    @:tdfield
    static public function _capture( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, _capnum:stdgo.GoInt, _start:stdgo.GoInt, _end:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1412"
        if ((_end < _start : Bool)) {
            var t = @:assignType (_end : stdgo.GoInt);
            _end = _start;
            _start = t;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1418"
        _r._crawl(_capnum);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1419"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runmatch._addMatch(_capnum, _start, (_end - _start : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _tidyMatch( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, _quick:Bool):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1394"
        if (!_quick) {
            var _match = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runmatch;
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runmatch = null;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1399"
            _match._tidy((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1400"
            return _match;
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1404"
            return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runmatch;
        };
    }
    @:keep
    @:tdfield
    static public function _initMatch( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1349"
        if (({
            final value = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runmatch;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1350"
            if ((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps != null) {
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runmatch = _internal.githubdotcom.dlclark.regexp2.Regexp2__newmatchsparse._newMatchSparse((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._re, (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps, (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capsize, (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtext, (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextstart);
            } else {
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runmatch = _internal.githubdotcom.dlclark.regexp2.Regexp2__newmatch._newMatch((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._re, (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capsize, (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtext, (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextstart);
            };
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1356"
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runmatch._reset((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtext, (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextstart);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1364"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runcrawl != null) {
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack.length);
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstackpos = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstack.length);
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runcrawlpos = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runcrawl.length);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1368"
            return;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1371"
        _r._initTrackCount();
        var _tracksize = @:assignType ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackcount * (8 : stdgo.GoInt) : stdgo.GoInt);
        var _stacksize = @:assignType ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackcount * (8 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1376"
        if ((_tracksize < (32 : stdgo.GoInt) : Bool)) {
            _tracksize = (32 : stdgo.GoInt);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1379"
        if ((_stacksize < (16 : stdgo.GoInt) : Bool)) {
            _stacksize = (16 : stdgo.GoInt);
        };
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack = (new stdgo.Slice<stdgo.GoInt>((_tracksize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos = _tracksize;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstack = (new stdgo.Slice<stdgo.GoInt>((_stacksize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstackpos = _stacksize;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runcrawl = (new stdgo.Slice<stdgo.GoInt>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runcrawlpos = (32 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _findFirstChar( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):Bool {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1273"
        if ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).anchors & (53 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1274"
            if (!(@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rightToLeft) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1275"
                if ((((((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).anchors & (1 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) && ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos > (0 : stdgo.GoInt) : Bool) : Bool)) || ((((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).anchors & (4 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) && ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos > (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextstart : Bool) : Bool)) : Bool)) {
                    (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextend;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1278"
                    return false;
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1280"
                if ((((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).anchors & (16 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) && ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos < ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextend - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                    (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextend - (1 : stdgo.GoInt) : stdgo.GoInt);
                } else if ((((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).anchors & (32 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) && ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos < (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextend : Bool) : Bool)) {
                    (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextend;
                };
            } else {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1286"
                if (((((((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).anchors & (32 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) && ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos < (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextend : Bool) : Bool)) || ((((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).anchors & (16 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) && ((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos < ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextend - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool) || ((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos == ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextend - (1 : stdgo.GoInt) : stdgo.GoInt)) && (_r._charAt((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos) != (10 : stdgo.GoInt32)) : Bool)) : Bool)) : Bool)) : Bool) || ((((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).anchors & (4 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) && ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos < (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextstart : Bool) : Bool)) : Bool)) {
                    (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos = (0 : stdgo.GoInt);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1291"
                    return false;
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1293"
                if ((((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).anchors & (1 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) && ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos = (0 : stdgo.GoInt);
                };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1298"
            if (({
                final value = (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).bmPrefix;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1299"
                return (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).bmPrefix.isMatch((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtext, (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos, (0 : stdgo.GoInt), (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextend);
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1302"
            return true;
        } else if (({
            final value = (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).bmPrefix;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos = (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).bmPrefix.scan((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtext, (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos, (0 : stdgo.GoInt), (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextend);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1306"
            if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos == ((-1 : stdgo.GoInt))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1307"
                if ((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rightToLeft) {
                    (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos = (0 : stdgo.GoInt);
                } else {
                    (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextend;
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1312"
                return false;
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1315"
            return true;
        } else if (({
            final value = (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fcPrefix;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1317"
            return true;
        };
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rightToLeft = (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rightToLeft;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caseInsensitive = (@:checkr (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fcPrefix ?? throw stdgo.Error._nullPointerDereference.__underlying__()).caseInsensitive;
        var _set = @:assignType ((@:checkr (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fcPrefix ?? throw stdgo.Error._nullPointerDereference.__underlying__()).prefixSet?.__copy__() : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1324"
        if (_set.isSingleton()) {
            var _ch = @:assignType (_set.singletonChar() : stdgo.GoInt32);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1326"
            {
                var _i = @:assignType (_r._forwardchars() : stdgo.GoInt);
                while ((_i > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1327"
                    if (_ch == (_r._forwardcharnext())) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1328"
                        _r._backwardnext();
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1329"
                        return true;
                    };
                    _i--;
                };
            };
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1333"
            {
                var _i = @:assignType (_r._forwardchars() : stdgo.GoInt);
                while ((_i > (0 : stdgo.GoInt) : Bool)) {
                    var _n = @:assignType (_r._forwardcharnext() : stdgo.GoInt32);
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1336"
                    if (_set.charIn(_n)) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1337"
                        _r._backwardnext();
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1338"
                        return true;
                    };
                    _i--;
                };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1343"
        return false;
    }
    @:keep
    @:tdfield
    static public function _charAt( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, _j:stdgo.GoInt):stdgo.GoInt32 {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1268"
        return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtext[(_j : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _backwardnext( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1260"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rightToLeft) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1261"
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos++;
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1263"
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos--;
        };
    }
    @:keep
    @:tdfield
    static public function _refmatch( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, _index:stdgo.GoInt, _len:stdgo.GoInt):Bool {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        var _c:stdgo.GoInt = (0 : stdgo.GoInt), _pos:stdgo.GoInt = (0 : stdgo.GoInt), _cmpos:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1211"
        if (!(@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rightToLeft) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1212"
            if ((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextend - (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos : stdgo.GoInt) < _len : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1213"
                return false;
            };
            _pos = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos + _len : stdgo.GoInt);
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1218"
            if ((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos - (0 : stdgo.GoInt) : stdgo.GoInt) < _len : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1219"
                return false;
            };
            _pos = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos;
        };
        _cmpos = (_index + _len : stdgo.GoInt);
        _c = _len;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1228"
        if (!(@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caseInsensitive) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1229"
            while (_c != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1230"
                _c--;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1231"
                _cmpos--;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1232"
                _pos--;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1233"
                if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtext[(_cmpos : stdgo.GoInt)] != ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtext[(_pos : stdgo.GoInt)])) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1234"
                    return false;
                };
            };
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1239"
            while (_c != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1240"
                _c--;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1241"
                _cmpos--;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1242"
                _pos--;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1244"
                if (stdgo._internal.unicode.Unicode_tolower.toLower((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtext[(_cmpos : stdgo.GoInt)]) != (stdgo._internal.unicode.Unicode_tolower.toLower((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtext[(_pos : stdgo.GoInt)]))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1245"
                    return false;
                };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1250"
        if (!(@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rightToLeft) {
            _pos = (_pos + (_len) : stdgo.GoInt);
        };
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos = _pos;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1256"
        return true;
    }
    @:keep
    @:tdfield
    static public function _runematch( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, _str:stdgo.Slice<stdgo.GoInt32>):Bool {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        var _pos:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c = @:assignType (_str.length : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1167"
        if (!(@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rightToLeft) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1168"
            if ((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextend - (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos : stdgo.GoInt) < _c : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1169"
                return false;
            };
            _pos = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos + _c : stdgo.GoInt);
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1174"
            if ((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos - (0 : stdgo.GoInt) : stdgo.GoInt) < _c : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1175"
                return false;
            };
            _pos = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1181"
        if (!(@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caseInsensitive) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1182"
            while (_c != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1183"
                _c--;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1184"
                _pos--;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1185"
                if (_str[(_c : stdgo.GoInt)] != ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtext[(_pos : stdgo.GoInt)])) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1186"
                    return false;
                };
            };
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1190"
            while (_c != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1191"
                _c--;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1192"
                _pos--;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1193"
                if (_str[(_c : stdgo.GoInt)] != (stdgo._internal.unicode.Unicode_tolower.toLower((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtext[(_pos : stdgo.GoInt)]))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1194"
                    return false;
                };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1199"
        if (!(@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rightToLeft) {
            _pos = (_pos + ((_str.length)) : stdgo.GoInt);
        };
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos = _pos;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1205"
        return true;
    }
    @:keep
    @:tdfield
    static public function _forwardcharnext( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoInt32 {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        var _ch:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1149"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rightToLeft) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1150"
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos--;
            _ch = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtext[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos : stdgo.GoInt)];
        } else {
            _ch = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtext[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos : stdgo.GoInt)];
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1154"
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos++;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1157"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caseInsensitive) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1158"
            return stdgo._internal.unicode.Unicode_tolower.toLower(_ch);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1160"
        return _ch;
    }
    @:keep
    @:tdfield
    static public function _forwardchars( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1141"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rightToLeft) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1142"
            return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1144"
        return ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextend - (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _bump( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1134"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rightToLeft) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1135"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1137"
        return (1 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _rightchars( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1130"
        return ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextend - (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _leftchars( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1126"
        return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos;
    }
    @:keep
    @:tdfield
    static public function _operand( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, _i:stdgo.GoInt):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1122"
        return (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).codes[(((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codepos + _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _stackPeekN( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, _i:stdgo.GoInt):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1118"
        return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstack[(((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstackpos - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _stackPeek( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1113"
        return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstack[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstackpos - (1 : stdgo.GoInt) : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _stackPopN( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, _framesize:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstackpos = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstackpos + (_framesize) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _stackPop( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1100"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstackpos++;
    }
    @:keep
    @:tdfield
    static public function _stackPush2( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, i1:stdgo.GoInt, i2:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1093"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstackpos--;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstack[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstackpos : stdgo.GoInt)] = i1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1095"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstackpos--;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstack[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstackpos : stdgo.GoInt)] = i2;
    }
    @:keep
    @:tdfield
    static public function _stackPush( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, i1:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1088"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstackpos--;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstack[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstackpos : stdgo.GoInt)] = i1;
    }
    @:keep
    @:tdfield
    static public function _trackPeekN( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, _i:stdgo.GoInt):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1083"
        return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack[(((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _trackPeek( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1078"
        return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos - (1 : stdgo.GoInt) : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _trackPopN( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, _framesize:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos + (_framesize) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _trackPop( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1065"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos++;
    }
    @:keep
    @:tdfield
    static public function _setOperator( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, _op:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caseInsensitive = ((0 : stdgo.GoInt) != ((_op & (512 : stdgo.GoInt) : stdgo.GoInt)));
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rightToLeft = ((0 : stdgo.GoInt) != ((_op & (64 : stdgo.GoInt) : stdgo.GoInt)));
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._operator = ((_op & (-577 : stdgo.GoInt) : stdgo.GoInt) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp);
    }
    @:keep
    @:tdfield
    static public function _backtrack( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        var _newpos = @:assignType ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos : stdgo.GoInt)] : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1033"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos++;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1035"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._re.debug()) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1036"
            if ((_newpos < (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1037"
                stdgo._internal.fmt.Fmt_printf.printf(("       Backtracking (back2) to code position %v\n" : stdgo.GoString), new stdgo.AnyInterface(-_newpos, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            } else {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1039"
                stdgo._internal.fmt.Fmt_printf.printf(("       Backtracking to code position %v\n" : stdgo.GoString), new stdgo.AnyInterface(_newpos, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1043"
        if ((_newpos < (0 : stdgo.GoInt) : Bool)) {
            _newpos = -_newpos;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1045"
            _r._setOperator(((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).codes[(_newpos : stdgo.GoInt)] | (256 : stdgo.GoInt) : stdgo.GoInt));
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1047"
            _r._setOperator(((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).codes[(_newpos : stdgo.GoInt)] | (128 : stdgo.GoInt) : stdgo.GoInt));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1051"
        if ((_newpos < (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codepos : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1052"
            _r._ensureStorage();
        };
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codepos = _newpos;
    }
    @:keep
    @:tdfield
    static public function _trackPushNeg2( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, i1:stdgo.GoInt, i2:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1023"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos--;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos : stdgo.GoInt)] = i1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1025"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos--;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos : stdgo.GoInt)] = i2;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1027"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos--;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos : stdgo.GoInt)] = -(@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codepos;
    }
    @:keep
    @:tdfield
    static public function _trackPushNeg1( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, i1:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1016"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos--;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos : stdgo.GoInt)] = i1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1018"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos--;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos : stdgo.GoInt)] = -(@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codepos;
    }
    @:keep
    @:tdfield
    static public function _trackPush3( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, i1:stdgo.GoInt, i2:stdgo.GoInt, i3:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1005"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos--;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos : stdgo.GoInt)] = i1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1007"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos--;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos : stdgo.GoInt)] = i2;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1009"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos--;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos : stdgo.GoInt)] = i3;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1011"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos--;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos : stdgo.GoInt)] = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codepos;
    }
    @:keep
    @:tdfield
    static public function _trackPush2( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, i1:stdgo.GoInt, i2:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L996"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos--;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos : stdgo.GoInt)] = i1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L998"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos--;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos : stdgo.GoInt)] = i2;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1000"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos--;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos : stdgo.GoInt)] = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codepos;
    }
    @:keep
    @:tdfield
    static public function _trackPush1( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, i1:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L989"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos--;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos : stdgo.GoInt)] = i1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L991"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos--;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos : stdgo.GoInt)] = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codepos;
    }
    @:keep
    @:tdfield
    static public function _trackPush( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L984"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos--;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos : stdgo.GoInt)] = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codepos;
    }
    @:keep
    @:tdfield
    static public function _trackpos( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L980"
        return (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack.length) - (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _textPos( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L975"
        return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos;
    }
    @:keep
    @:tdfield
    static public function _textstart( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L971"
        return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextstart;
    }
    @:keep
    @:tdfield
    static public function _trackto( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, _newpos:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos = (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack.length) - _newpos : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _textto( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, _newpos:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos = _newpos;
    }
    @:keep
    @:tdfield
    static public function _goTo( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, _newpos:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L954"
        if ((_newpos <= (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codepos : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L955"
            _r._ensureStorage();
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L958"
        _r._setOperator((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).codes[(_newpos : stdgo.GoInt)]);
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codepos = _newpos;
    }
    @:keep
    @:tdfield
    static public function _advance( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, _i:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codepos = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codepos + ((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L949"
        _r._setOperator((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).codes[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codepos : stdgo.GoInt)]);
    }
    @:keep
    @:tdfield
    static public function _crawlpos( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L944"
        return (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runcrawl.length) - (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runcrawlpos : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _popcrawl( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        var _val = @:assignType ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runcrawl[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runcrawlpos : stdgo.GoInt)] : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L938"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runcrawlpos++;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L939"
        return _val;
    }
    @:keep
    @:tdfield
    static public function _crawl( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, _i:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L928"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runcrawlpos == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L929"
            _internal.githubdotcom.dlclark.regexp2.Regexp2__doubleintslice._doubleIntSlice((stdgo.Go.setRef((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runcrawl, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>), stdgo.Go.pointer((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runcrawlpos));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L931"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runcrawlpos--;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runcrawl[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runcrawlpos : stdgo.GoInt)] = _i;
    }
    @:keep
    @:tdfield
    static public function _ensureStorage( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L909"
        if (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstackpos < ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackcount * (4 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L910"
            _internal.githubdotcom.dlclark.regexp2.Regexp2__doubleintslice._doubleIntSlice((stdgo.Go.setRef((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstack, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>), stdgo.Go.pointer((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstackpos));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L912"
        if (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos < ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackcount * (4 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L913"
            _internal.githubdotcom.dlclark.regexp2.Regexp2__doubleintslice._doubleIntSlice((stdgo.Go.setRef((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>), stdgo.Go.pointer((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos));
        };
    }
    @:keep
    @:tdfield
    static public function _execute( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.Error {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        var _ch_225:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _c_222:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_295:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_294:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_290:stdgo.GoInt = (0 : stdgo.GoInt);
        var _capnum_221:stdgo.GoInt = (0 : stdgo.GoInt);
        var _textpos_219:stdgo.GoInt = (0 : stdgo.GoInt);
        var _count_217:stdgo.GoInt = (0 : stdgo.GoInt);
        var _mark_216:stdgo.GoInt = (0 : stdgo.GoInt);
        var _matched_210:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_291:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_288:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ch_238:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _c_224:stdgo.GoInt = (0 : stdgo.GoInt);
        var _count_214:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_287:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_286:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ch_223:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_283:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ch_235:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _c_234:stdgo.GoInt = (0 : stdgo.GoInt);
        var _mark_218:stdgo.GoInt = (0 : stdgo.GoInt);
        var _matched_215:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_209:stdgo.Error = (null : stdgo.Error);
        var _i_293:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_240:stdgo.GoInt = (0 : stdgo.GoInt);
        var _rchars_220:stdgo.GoInt = (0 : stdgo.GoInt);
        var _mark_213:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_212:stdgo.GoInt = (0 : stdgo.GoInt);
        var _oldMarkPos_211:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_292:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_289:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_285:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_284:stdgo.GoInt = (0 : stdgo.GoInt);
        var _set_233:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
        var _set_282:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
        var _i_239:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_237:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_236:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_226:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L176"
                    _r._goTo((0 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5088848i64)) {
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 5088852i64;
                    } else {
                        _gotoNext = 5103435i64;
                    };
                } else if (__value__ == (5088852i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L180"
                    if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._re.debug()) {
                        _gotoNext = 5088873i64;
                    } else {
                        _gotoNext = 5088899i64;
                    };
                } else if (__value__ == (5088873i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L181"
                    _r._dumpState();
                    _gotoNext = 5088899i64;
                } else if (__value__ == (5088899i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L184"
                    {
                        _err_209 = _r._checkTimeout();
                        if (_err_209 != null) {
                            _gotoNext = 5088938i64;
                        } else {
                            _gotoNext = 5088961i64;
                        };
                    };
                } else if (__value__ == (5088938i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L185"
                    return _err_209;
                    _gotoNext = 5088961i64;
                } else if (__value__ == (5088961i64)) {
                    _gotoNext = 5088961i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L188"
                    {
                        final __value__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._operator;
                        if (__value__ == ((40 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5088983i64;
                        } else if (__value__ == ((22 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5089018i64;
                        } else if (__value__ == ((38 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5089051i64;
                        } else if (__value__ == ((37 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5089108i64;
                        } else if (__value__ == ((23 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5089219i64;
                        } else if (__value__ == ((151 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5089303i64;
                        } else if (__value__ == ((31 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5089423i64;
                        } else if (__value__ == ((30 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5089520i64;
                        } else if (__value__ == ((159 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((158 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5089609i64;
                        } else if (__value__ == ((33 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5089703i64;
                        } else if (__value__ == ((161 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5089829i64;
                        } else if (__value__ == ((32 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5089922i64;
                        } else if (__value__ == ((160 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5090286i64;
                        } else if (__value__ == ((24 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5090473i64;
                        } else if (__value__ == ((152 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5090956i64;
                        } else if (__value__ == ((280 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5091193i64;
                        } else if (__value__ == ((25 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5091343i64;
                        } else if (__value__ == ((153 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5092330i64;
                        } else if (__value__ == ((281 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5092976i64;
                        } else if (__value__ == ((27 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5093214i64;
                        } else if (__value__ == ((26 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5093327i64;
                        } else if (__value__ == ((155 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5093432i64;
                        } else if (__value__ == ((154 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5093498i64;
                        } else if (__value__ == ((28 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5093565i64;
                        } else if (__value__ == ((156 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5094193i64;
                        } else if (__value__ == ((284 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5094772i64;
                        } else if (__value__ == ((29 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5095040i64;
                        } else if (__value__ == ((157 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5095603i64;
                        } else if (__value__ == ((285 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5096356i64;
                        } else if (__value__ == ((34 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5096697i64;
                        } else if (__value__ == ((162 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5096810i64;
                        } else if (__value__ == ((35 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5096875i64;
                        } else if (__value__ == ((36 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5097086i64;
                        } else if (__value__ == ((164 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5097283i64;
                        } else if (__value__ == ((14 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5097451i64;
                        } else if (__value__ == ((15 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5097575i64;
                        } else if (__value__ == ((16 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5097698i64;
                        } else if (__value__ == ((17 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5097818i64;
                        } else if (__value__ == ((41 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5097940i64;
                        } else if (__value__ == ((42 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5098068i64;
                        } else if (__value__ == ((18 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5098198i64;
                        } else if (__value__ == ((19 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5098293i64;
                        } else if (__value__ == ((20 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5098395i64;
                        } else if (__value__ == ((21 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5098891i64;
                        } else if (__value__ == ((9 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5098981i64;
                        } else if (__value__ == ((10 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5099119i64;
                        } else if (__value__ == ((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5099260i64;
                        } else if (__value__ == ((12 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5099412i64;
                        } else if (__value__ == ((13 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5099529i64;
                        } else if (__value__ == ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5099820i64;
                        } else if (__value__ == ((1 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5100062i64;
                        } else if (__value__ == ((2 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5100306i64;
                        } else if (__value__ == ((3 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5100563i64;
                        } else if (__value__ == ((4 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5100905i64;
                        } else if (__value__ == ((5 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5101250i64;
                        } else if (__value__ == ((131 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((132 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5101607i64;
                        } else if (__value__ == ((133 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5101848i64;
                        } else if (__value__ == ((6 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((7 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5102056i64;
                        } else if (__value__ == ((8 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5102265i64;
                        } else if (__value__ == ((134 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5102455i64;
                        } else if (__value__ == ((135 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5102729i64;
                        } else if (__value__ == ((136 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 5103006i64;
                        } else {
                            _gotoNext = 5103293i64;
                        };
                    };
                } else if (__value__ == (5088983i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L190"
                    return (null : stdgo.Error);
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5089018i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5089051i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L196"
                    _r._goTo(_r._operand((0 : stdgo.GoInt)));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5089108i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L200"
                    if (!(@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runmatch._isMatched(_r._operand((0 : stdgo.GoInt)))) {
                        _gotoNext = 5089171i64;
                    } else {
                        _gotoNext = 5089191i64;
                    };
                } else if (__value__ == (5089171i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5089191i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L203"
                    _r._advance((1 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5089219i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L207"
                    _r._trackPush1(_r._textPos());
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L208"
                    _r._advance((1 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5089303i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L212"
                    _r._trackPop();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L213"
                    _r._textto(_r._trackPeek());
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L214"
                    _r._goTo(_r._operand((0 : stdgo.GoInt)));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5089423i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L218"
                    _r._stackPush(_r._textPos());
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L219"
                    _r._trackPush();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L220"
                    _r._advance((0 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5089520i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L224"
                    _r._stackPush((-1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L225"
                    _r._trackPush();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L226"
                    _r._advance((0 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5089609i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L230"
                    _r._stackPop();
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5089703i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L234"
                    _r._stackPop();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L235"
                    _r._trackPush1(_r._stackPeek());
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L236"
                    _r._textto(_r._stackPeek());
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L237"
                    _r._advance((0 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5089829i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L241"
                    _r._trackPop();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L242"
                    _r._stackPush(_r._trackPeek());
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5089922i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L246"
                    if (((_r._operand((1 : stdgo.GoInt)) != (-1 : stdgo.GoInt)) && !(@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runmatch._isMatched(_r._operand((1 : stdgo.GoInt))) : Bool)) {
                        _gotoNext = 5090011i64;
                    } else {
                        _gotoNext = 5090031i64;
                    };
                } else if (__value__ == (5090011i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5090031i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L249"
                    _r._stackPop();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L250"
                    if (_r._operand((1 : stdgo.GoInt)) != ((-1 : stdgo.GoInt))) {
                        _gotoNext = 5090069i64;
                    } else {
                        _gotoNext = 5090159i64;
                    };
                } else if (__value__ == (5090069i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L251"
                    _r._transferCapture(_r._operand((0 : stdgo.GoInt)), _r._operand((1 : stdgo.GoInt)), _r._stackPeek(), _r._textPos());
                    _gotoNext = 5090225i64;
                } else if (__value__ == (5090159i64)) {
                    _gotoNext = 5090159i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L253"
                    _r._capture(_r._operand((0 : stdgo.GoInt)), _r._stackPeek(), _r._textPos());
                    0i64;
                    _gotoNext = 5090225i64;
                } else if (__value__ == (5090225i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L255"
                    _r._trackPush1(_r._stackPeek());
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L257"
                    _r._advance((2 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5090286i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L262"
                    _r._trackPop();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L263"
                    _r._stackPush(_r._trackPeek());
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L264"
                    _r._uncapture();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L265"
                    if (((_r._operand((0 : stdgo.GoInt)) != (-1 : stdgo.GoInt)) && (_r._operand((1 : stdgo.GoInt)) != (-1 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5090435i64;
                    } else {
                        _gotoNext = 5090464i64;
                    };
                } else if (__value__ == (5090435i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L266"
                    _r._uncapture();
                    _gotoNext = 5090464i64;
                } else if (__value__ == (5090464i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5090473i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L272"
                    _r._stackPop();
                    _matched_210 = (_r._textPos() - _r._stackPeek() : stdgo.GoInt);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L276"
                    if (_matched_210 != ((0 : stdgo.GoInt))) {
                        _gotoNext = 5090576i64;
                    } else {
                        _gotoNext = 5090804i64;
                    };
                } else if (__value__ == (5090576i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L277"
                    _r._trackPush2(_r._stackPeek(), _r._textPos());
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L278"
                    _r._stackPush(_r._textPos());
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L279"
                    _r._goTo(_r._operand((0 : stdgo.GoInt)));
                    _gotoNext = 5090944i64;
                } else if (__value__ == (5090804i64)) {
                    _gotoNext = 5090804i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L281"
                    _r._trackPushNeg1(_r._stackPeek());
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L282"
                    _r._advance((1 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5090944i64;
                } else if (__value__ == (5090944i64)) {
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5090956i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L287"
                    _r._trackPopN((2 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L288"
                    _r._stackPop();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L289"
                    _r._textto(_r._trackPeekN((1 : stdgo.GoInt)));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L290"
                    _r._trackPushNeg1(_r._trackPeek());
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L291"
                    _r._advance((1 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5091193i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L295"
                    _r._trackPop();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L296"
                    _r._stackPush(_r._trackPeek());
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5091343i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L300"
                    {
                        _gotoNext = 5091374i64;
                    };
                } else if (__value__ == (5091374i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L304"
                    _r._stackPop();
                    _oldMarkPos_211 = _r._stackPeek();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L308"
                    if (_r._textPos() != (_oldMarkPos_211)) {
                        _gotoNext = 5091627i64;
                    } else {
                        _gotoNext = 5091867i64;
                    };
                } else if (__value__ == (5091627i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L309"
                    if (_oldMarkPos_211 != ((-1 : stdgo.GoInt))) {
                        _gotoNext = 5091718i64;
                    } else {
                        _gotoNext = 5091802i64;
                    };
                } else if (__value__ == (5091718i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L310"
                    _r._trackPush2(_oldMarkPos_211, _r._textPos());
                    _gotoNext = 5092296i64;
                } else if (__value__ == (5091802i64)) {
                    _gotoNext = 5091802i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L312"
                    _r._trackPush2(_r._textPos(), _r._textPos());
                    0i64;
                    _gotoNext = 5092296i64;
                } else if (__value__ == (5091867i64)) {
                    _gotoNext = 5091867i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L319"
                    _r._stackPush(_oldMarkPos_211);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L321"
                    _r._trackPushNeg1(_r._stackPeek());
                    0i64;
                    _gotoNext = 5092296i64;
                } else if (__value__ == (5092296i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L323"
                    _r._advance((1 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5092330i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L335"
                    _r._trackPopN((2 : stdgo.GoInt));
                    _pos_212 = _r._trackPeekN((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L337"
                    _r._trackPushNeg1(_r._trackPeek());
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L338"
                    _r._stackPush(_pos_212);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L339"
                    _r._textto(_pos_212);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L340"
                    _r._goTo(_r._operand((0 : stdgo.GoInt)));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5092976i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L346"
                    _r._stackPop();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L347"
                    _r._trackPop();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L348"
                    _r._stackPush(_r._trackPeek());
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5093214i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L352"
                    _r._stackPush2(_r._textPos(), _r._operand((0 : stdgo.GoInt)));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L353"
                    _r._trackPush();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L354"
                    _r._advance((1 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5093327i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L358"
                    _r._stackPush2((-1 : stdgo.GoInt), _r._operand((0 : stdgo.GoInt)));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L359"
                    _r._trackPush();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L360"
                    _r._advance((1 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5093432i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L364"
                    _r._stackPopN((2 : stdgo.GoInt));
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5093498i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L368"
                    _r._stackPopN((2 : stdgo.GoInt));
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5093565i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L376"
                    _r._stackPopN((2 : stdgo.GoInt));
                    _mark_213 = _r._stackPeek();
                    _count_214 = _r._stackPeekN((1 : stdgo.GoInt));
                    _matched_215 = (_r._textPos() - _mark_213 : stdgo.GoInt);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L381"
                    if (((_count_214 >= _r._operand((1 : stdgo.GoInt)) : Bool) || (((_matched_215 == (0 : stdgo.GoInt)) && (_count_214 >= (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5093806i64;
                    } else {
                        _gotoNext = 5093964i64;
                    };
                } else if (__value__ == (5093806i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L382"
                    _r._trackPushNeg2(_mark_213, _count_214);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L383"
                    _r._advance((2 : stdgo.GoInt));
                    _gotoNext = 5094181i64;
                } else if (__value__ == (5093964i64)) {
                    _gotoNext = 5093964i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L385"
                    _r._trackPush1(_mark_213);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L386"
                    _r._stackPush2(_r._textPos(), (_count_214 + (1 : stdgo.GoInt) : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L387"
                    _r._goTo(_r._operand((0 : stdgo.GoInt)));
                    0i64;
                    _gotoNext = 5094181i64;
                } else if (__value__ == (5094181i64)) {
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5094193i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L397"
                    _r._trackPop();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L398"
                    _r._stackPopN((2 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L399"
                    if ((_r._stackPeekN((1 : stdgo.GoInt)) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5094412i64;
                    } else {
                        _gotoNext = 5094683i64;
                    };
                } else if (__value__ == (5094412i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L400"
                    _r._textto(_r._stackPeek());
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L401"
                    _r._trackPushNeg2(_r._trackPeek(), (_r._stackPeekN((1 : stdgo.GoInt)) - (1 : stdgo.GoInt) : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L402"
                    _r._advance((2 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5094683i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L405"
                    _r._stackPush2(_r._trackPeek(), (_r._stackPeekN((1 : stdgo.GoInt)) - (1 : stdgo.GoInt) : stdgo.GoInt));
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5094772i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L412"
                    _r._trackPopN((2 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L413"
                    _r._stackPush2(_r._trackPeek(), _r._trackPeekN((1 : stdgo.GoInt)));
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5095040i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L421"
                    _r._stackPopN((2 : stdgo.GoInt));
                    _mark_216 = _r._stackPeek();
                    _count_217 = _r._stackPeekN((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L425"
                    if ((_count_217 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5095208i64;
                    } else {
                        _gotoNext = 5095421i64;
                    };
                } else if (__value__ == (5095208i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L426"
                    _r._trackPushNeg1(_mark_216);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L427"
                    _r._stackPush2(_r._textPos(), (_count_217 + (1 : stdgo.GoInt) : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L428"
                    _r._goTo(_r._operand((0 : stdgo.GoInt)));
                    _gotoNext = 5095591i64;
                } else if (__value__ == (5095421i64)) {
                    _gotoNext = 5095421i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L430"
                    _r._trackPush3(_mark_216, _count_217, _r._textPos());
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L431"
                    _r._advance((2 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5095591i64;
                } else if (__value__ == (5095591i64)) {
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5095603i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L441"
                    _r._trackPopN((3 : stdgo.GoInt));
                    _mark_218 = _r._trackPeek();
                    _textpos_219 = _r._trackPeekN((2 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L445"
                    if (((_r._trackPeekN((1 : stdgo.GoInt)) < _r._operand((1 : stdgo.GoInt)) : Bool) && (_textpos_219 != _mark_218) : Bool)) {
                        _gotoNext = 5095847i64;
                    } else {
                        _gotoNext = 5096168i64;
                    };
                } else if (__value__ == (5095847i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L446"
                    _r._textto(_textpos_219);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L447"
                    _r._stackPush2(_textpos_219, (_r._trackPeekN((1 : stdgo.GoInt)) + (1 : stdgo.GoInt) : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L448"
                    _r._trackPushNeg1(_mark_218);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L449"
                    _r._goTo(_r._operand((0 : stdgo.GoInt)));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5096168i64)) {
                    _gotoNext = 5096168i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L452"
                    _r._stackPush2(_r._trackPeek(), _r._trackPeekN((1 : stdgo.GoInt)));
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5096356i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L462"
                    _r._trackPop();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L463"
                    _r._stackPopN((2 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L464"
                    _r._stackPush2(_r._trackPeek(), (_r._stackPeekN((1 : stdgo.GoInt)) - (1 : stdgo.GoInt) : stdgo.GoInt));
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5096697i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L468"
                    _r._stackPush2(_r._trackpos(), _r._crawlpos());
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L469"
                    _r._trackPush();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L470"
                    _r._advance((0 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5096810i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L474"
                    _r._stackPopN((2 : stdgo.GoInt));
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5096875i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L481"
                    _r._stackPopN((2 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L482"
                    _r._trackto(_r._stackPeek());
                    0i64;
                    _gotoNext = 5097012i64;
                } else if (__value__ == (5097012i64)) {
                    //"file://#L0"
                    if (_r._crawlpos() != (_r._stackPeekN((1 : stdgo.GoInt)))) {
                        _gotoNext = 5097048i64;
                    } else {
                        _gotoNext = 5097077i64;
                    };
                } else if (__value__ == (5097048i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L485"
                    _r._uncapture();
                    _gotoNext = 5097012i64;
                } else if (__value__ == (5097077i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5097086i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L494"
                    _r._stackPopN((2 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L495"
                    _r._trackto(_r._stackPeek());
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L496"
                    _r._trackPush1(_r._stackPeekN((1 : stdgo.GoInt)));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L497"
                    _r._advance((0 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5097283i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L503"
                    _r._trackPop();
                    0i64;
                    _gotoNext = 5097379i64;
                } else if (__value__ == (5097379i64)) {
                    //"file://#L0"
                    if (_r._crawlpos() != (_r._trackPeek())) {
                        _gotoNext = 5097413i64;
                    } else {
                        _gotoNext = 5097442i64;
                    };
                } else if (__value__ == (5097413i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L506"
                    _r._uncapture();
                    _gotoNext = 5097379i64;
                } else if (__value__ == (5097442i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5097451i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L512"
                    if (((_r._leftchars() > (0 : stdgo.GoInt) : Bool) && (_r._charAt((_r._textPos() - (1 : stdgo.GoInt) : stdgo.GoInt)) != (10 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 5097527i64;
                    } else {
                        _gotoNext = 5097547i64;
                    };
                } else if (__value__ == (5097527i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5097547i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L515"
                    _r._advance((0 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5097575i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L519"
                    if (((_r._rightchars() > (0 : stdgo.GoInt) : Bool) && (_r._charAt(_r._textPos()) != (10 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 5097650i64;
                    } else {
                        _gotoNext = 5097670i64;
                    };
                } else if (__value__ == (5097650i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5097670i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L522"
                    _r._advance((0 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5097698i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L526"
                    if (!_r._isBoundary(_r._textPos(), (0 : stdgo.GoInt), (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextend)) {
                        _gotoNext = 5097770i64;
                    } else {
                        _gotoNext = 5097790i64;
                    };
                } else if (__value__ == (5097770i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5097790i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L529"
                    _r._advance((0 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5097818i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L533"
                    if (_r._isBoundary(_r._textPos(), (0 : stdgo.GoInt), (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextend)) {
                        _gotoNext = 5097892i64;
                    } else {
                        _gotoNext = 5097912i64;
                    };
                } else if (__value__ == (5097892i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5097912i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L536"
                    _r._advance((0 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5097940i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L540"
                    if (!_r._isECMABoundary(_r._textPos(), (0 : stdgo.GoInt), (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextend)) {
                        _gotoNext = 5098020i64;
                    } else {
                        _gotoNext = 5098040i64;
                    };
                } else if (__value__ == (5098020i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5098040i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L543"
                    _r._advance((0 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5098068i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L547"
                    if (_r._isECMABoundary(_r._textPos(), (0 : stdgo.GoInt), (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextend)) {
                        _gotoNext = 5098150i64;
                    } else {
                        _gotoNext = 5098170i64;
                    };
                } else if (__value__ == (5098150i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5098170i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L550"
                    _r._advance((0 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5098198i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L554"
                    if ((_r._leftchars() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5098245i64;
                    } else {
                        _gotoNext = 5098265i64;
                    };
                } else if (__value__ == (5098245i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5098265i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L557"
                    _r._advance((0 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5098293i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L561"
                    if (_r._textPos() != (_r._textstart())) {
                        _gotoNext = 5098347i64;
                    } else {
                        _gotoNext = 5098367i64;
                    };
                } else if (__value__ == (5098347i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5098367i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L564"
                    _r._advance((0 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5098395i64)) {
                    _rchars_220 = _r._rightchars();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L569"
                    if ((_rchars_220 > (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5098458i64;
                    } else {
                        _gotoNext = 5098652i64;
                    };
                } else if (__value__ == (5098458i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5098652i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L574"
                    if ((((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (768 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)) != ((0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions))) {
                        _gotoNext = 5098696i64;
                    } else if (((_rchars_220 == (1 : stdgo.GoInt)) && (_r._charAt(_r._textPos()) != (10 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 5098820i64;
                    } else {
                        _gotoNext = 5098863i64;
                    };
                } else if (__value__ == (5098696i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L576"
                    if ((_rchars_220 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5098743i64;
                    } else {
                        _gotoNext = 5098863i64;
                    };
                } else if (__value__ == (5098743i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5098820i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5098863i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L584"
                    _r._advance((0 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5098891i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L588"
                    if ((_r._rightchars() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5098933i64;
                    } else {
                        _gotoNext = 5098953i64;
                    };
                } else if (__value__ == (5098933i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5098953i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L591"
                    _r._advance((0 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5098981i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L595"
                    if (((_r._forwardchars() < (1 : stdgo.GoInt) : Bool) || (_r._forwardcharnext() != (_r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 5099070i64;
                    } else {
                        _gotoNext = 5099091i64;
                    };
                } else if (__value__ == (5099070i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5099091i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L599"
                    _r._advance((1 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5099119i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L603"
                    if (((_r._forwardchars() < (1 : stdgo.GoInt) : Bool) || (_r._forwardcharnext() == (_r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 5099211i64;
                    } else {
                        _gotoNext = 5099232i64;
                    };
                } else if (__value__ == (5099211i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5099232i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L607"
                    _r._advance((1 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5099260i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L612"
                    if (((_r._forwardchars() < (1 : stdgo.GoInt) : Bool) || !(@:checkr (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sets[(_r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).charIn(_r._forwardcharnext()) : Bool)) {
                        _gotoNext = 5099363i64;
                    } else {
                        _gotoNext = 5099384i64;
                    };
                } else if (__value__ == (5099363i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5099384i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L616"
                    _r._advance((1 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5099412i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L620"
                    if (!_r._runematch((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).strings[(_r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)])) {
                        _gotoNext = 5099480i64;
                    } else {
                        _gotoNext = 5099501i64;
                    };
                } else if (__value__ == (5099480i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5099501i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L624"
                    _r._advance((1 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5099529i64)) {
                    _capnum_221 = _r._operand((0 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L631"
                    if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runmatch._isMatched(_capnum_221)) {
                        _gotoNext = 5099609i64;
                    } else {
                        _gotoNext = 5099722i64;
                    };
                } else if (__value__ == (5099609i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L632"
                    if (!_r._refmatch((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runmatch._matchIndex(_capnum_221), (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runmatch._matchLength(_capnum_221))) {
                        _gotoNext = 5099693i64;
                    } else {
                        _gotoNext = 5099792i64;
                    };
                } else if (__value__ == (5099693i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5099722i64)) {
                    _gotoNext = 5099722i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L636"
                    if ((((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (256 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)) == ((0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions))) {
                        _gotoNext = 5099764i64;
                    } else {
                        _gotoNext = 5099792i64;
                    };
                } else if (__value__ == (5099764i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5099792i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L641"
                    _r._advance((1 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5099820i64)) {
                    _c_222 = _r._operand((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L648"
                    if ((_r._forwardchars() < _c_222 : Bool)) {
                        _gotoNext = 5099890i64;
                    } else {
                        _gotoNext = 5099911i64;
                    };
                } else if (__value__ == (5099890i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5099911i64)) {
                    _ch_223 = (_r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32);
                    0i64;
                    _gotoNext = 5099940i64;
                } else if (__value__ == (5099940i64)) {
                    //"file://#L0"
                    if ((_c_222 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5099950i64;
                    } else {
                        _gotoNext = 5100034i64;
                    };
                } else if (__value__ == (5099950i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L655"
                    if (_r._forwardcharnext() != (_ch_223)) {
                        _gotoNext = 5099985i64;
                    } else {
                        _gotoNext = 5100021i64;
                    };
                } else if (__value__ == (5099985i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5100021i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L658"
                    _c_222--;
                    _gotoNext = 5099940i64;
                } else if (__value__ == (5100034i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L661"
                    _r._advance((2 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5100062i64)) {
                    _c_224 = _r._operand((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L668"
                    if ((_r._forwardchars() < _c_224 : Bool)) {
                        _gotoNext = 5100135i64;
                    } else {
                        _gotoNext = 5100155i64;
                    };
                } else if (__value__ == (5100135i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5100155i64)) {
                    _ch_225 = (_r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32);
                    0i64;
                    _gotoNext = 5100184i64;
                } else if (__value__ == (5100184i64)) {
                    //"file://#L0"
                    if ((_c_224 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5100194i64;
                    } else {
                        _gotoNext = 5100278i64;
                    };
                } else if (__value__ == (5100194i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L674"
                    if (_r._forwardcharnext() == (_ch_225)) {
                        _gotoNext = 5100229i64;
                    } else {
                        _gotoNext = 5100265i64;
                    };
                } else if (__value__ == (5100229i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5100265i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L677"
                    _c_224--;
                    _gotoNext = 5100184i64;
                } else if (__value__ == (5100278i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L680"
                    _r._advance((2 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5100306i64)) {
                    _c_226 = _r._operand((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L687"
                    if ((_r._forwardchars() < _c_226 : Bool)) {
                        _gotoNext = 5100376i64;
                    } else {
                        _gotoNext = 5100397i64;
                    };
                } else if (__value__ == (5100376i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5100397i64)) {
                    _set_233 = (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sets[(_r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)];
                    0i64;
                    _gotoNext = 5100434i64;
                } else if (__value__ == (5100434i64)) {
                    //"file://#L0"
                    if ((_c_226 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5100444i64;
                    } else {
                        _gotoNext = 5100535i64;
                    };
                } else if (__value__ == (5100444i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L694"
                    if (!(@:checkr _set_233 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).charIn(_r._forwardcharnext())) {
                        _gotoNext = 5100486i64;
                    } else {
                        _gotoNext = 5100522i64;
                    };
                } else if (__value__ == (5100486i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5100522i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L697"
                    _c_226--;
                    _gotoNext = 5100434i64;
                } else if (__value__ == (5100535i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L700"
                    _r._advance((2 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5100563i64)) {
                    _c_234 = _r._operand((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L707"
                    if ((_c_234 > _r._forwardchars() : Bool)) {
                        _gotoNext = 5100634i64;
                    } else {
                        _gotoNext = 5100670i64;
                    };
                } else if (__value__ == (5100634i64)) {
                    _c_234 = _r._forwardchars();
                    _gotoNext = 5100670i64;
                } else if (__value__ == (5100670i64)) {
                    _ch_235 = (_r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32);
                    _i_236 = _c_234;
                    0i64;
                    _gotoNext = 5100709i64;
                } else if (__value__ == (5100709i64)) {
                    //"file://#L0"
                    if ((_i_236 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5100726i64;
                    } else {
                        _gotoNext = 5100811i64;
                    };
                } else if (__value__ == (5100722i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L714"
                    _i_236--;
                    _gotoNext = 5100709i64;
                } else if (__value__ == (5100726i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L715"
                    if (_r._forwardcharnext() != (_ch_235)) {
                        _gotoNext = 5100761i64;
                    } else {
                        _gotoNext = 5100722i64;
                    };
                } else if (__value__ == (5100761i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L716"
                    _r._backwardnext();
                    _gotoNext = 5100811i64;
                } else if (__value__ == (5100811i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L721"
                    if ((_c_234 > _i_236 : Bool)) {
                        _gotoNext = 5100820i64;
                    } else {
                        _gotoNext = 5100877i64;
                    };
                } else if (__value__ == (5100820i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L722"
                    _r._trackPush2(((_c_234 - _i_236 : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt), (_r._textPos() - _r._bump() : stdgo.GoInt));
                    _gotoNext = 5100877i64;
                } else if (__value__ == (5100877i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L725"
                    _r._advance((2 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5100905i64)) {
                    _c_237 = _r._operand((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L732"
                    if ((_c_237 > _r._forwardchars() : Bool)) {
                        _gotoNext = 5100979i64;
                    } else {
                        _gotoNext = 5101015i64;
                    };
                } else if (__value__ == (5100979i64)) {
                    _c_237 = _r._forwardchars();
                    _gotoNext = 5101015i64;
                } else if (__value__ == (5101015i64)) {
                    _ch_238 = (_r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32);
                    _i_239 = _c_237;
                    0i64;
                    _gotoNext = 5101054i64;
                } else if (__value__ == (5101054i64)) {
                    //"file://#L0"
                    if ((_i_239 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5101071i64;
                    } else {
                        _gotoNext = 5101156i64;
                    };
                } else if (__value__ == (5101067i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L739"
                    _i_239--;
                    _gotoNext = 5101054i64;
                } else if (__value__ == (5101071i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L740"
                    if (_r._forwardcharnext() == (_ch_238)) {
                        _gotoNext = 5101106i64;
                    } else {
                        _gotoNext = 5101067i64;
                    };
                } else if (__value__ == (5101106i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L741"
                    _r._backwardnext();
                    _gotoNext = 5101156i64;
                } else if (__value__ == (5101156i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L746"
                    if ((_c_237 > _i_239 : Bool)) {
                        _gotoNext = 5101165i64;
                    } else {
                        _gotoNext = 5101222i64;
                    };
                } else if (__value__ == (5101165i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L747"
                    _r._trackPush2(((_c_237 - _i_239 : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt), (_r._textPos() - _r._bump() : stdgo.GoInt));
                    _gotoNext = 5101222i64;
                } else if (__value__ == (5101222i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L750"
                    _r._advance((2 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5101250i64)) {
                    _c_240 = _r._operand((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L757"
                    if ((_c_240 > _r._forwardchars() : Bool)) {
                        _gotoNext = 5101321i64;
                    } else {
                        _gotoNext = 5101357i64;
                    };
                } else if (__value__ == (5101321i64)) {
                    _c_240 = _r._forwardchars();
                    _gotoNext = 5101357i64;
                } else if (__value__ == (5101357i64)) {
                    _set_282 = (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sets[(_r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)];
                    _i_283 = _c_240;
                    0i64;
                    _gotoNext = 5101404i64;
                } else if (__value__ == (5101404i64)) {
                    //"file://#L0"
                    if ((_i_283 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5101421i64;
                    } else {
                        _gotoNext = 5101513i64;
                    };
                } else if (__value__ == (5101417i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L764"
                    _i_283--;
                    _gotoNext = 5101404i64;
                } else if (__value__ == (5101421i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L765"
                    if (!(@:checkr _set_282 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).charIn(_r._forwardcharnext())) {
                        _gotoNext = 5101463i64;
                    } else {
                        _gotoNext = 5101417i64;
                    };
                } else if (__value__ == (5101463i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L766"
                    _r._backwardnext();
                    _gotoNext = 5101513i64;
                } else if (__value__ == (5101513i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L771"
                    if ((_c_240 > _i_283 : Bool)) {
                        _gotoNext = 5101522i64;
                    } else {
                        _gotoNext = 5101579i64;
                    };
                } else if (__value__ == (5101522i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L772"
                    _r._trackPush2(((_c_240 - _i_283 : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt), (_r._textPos() - _r._bump() : stdgo.GoInt));
                    _gotoNext = 5101579i64;
                } else if (__value__ == (5101579i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L775"
                    _r._advance((2 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5101607i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L780"
                    _r._trackPopN((2 : stdgo.GoInt));
                    _i_284 = _r._trackPeek();
                    _pos_285 = _r._trackPeekN((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L784"
                    _r._textto(_pos_285);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L786"
                    if ((_i_284 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5101773i64;
                    } else {
                        _gotoNext = 5101820i64;
                    };
                } else if (__value__ == (5101773i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L787"
                    _r._trackPush2((_i_284 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_285 - _r._bump() : stdgo.GoInt));
                    _gotoNext = 5101820i64;
                } else if (__value__ == (5101820i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L790"
                    _r._advance((2 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5101848i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L795"
                    _r._trackPopN((2 : stdgo.GoInt));
                    _i_286 = _r._trackPeek();
                    _pos_287 = _r._trackPeekN((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L799"
                    _r._textto(_pos_287);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L801"
                    if ((_i_286 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5101981i64;
                    } else {
                        _gotoNext = 5102028i64;
                    };
                } else if (__value__ == (5101981i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L802"
                    _r._trackPush2((_i_286 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_287 - _r._bump() : stdgo.GoInt));
                    _gotoNext = 5102028i64;
                } else if (__value__ == (5102028i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L805"
                    _r._advance((2 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5102056i64)) {
                    _c_288 = _r._operand((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L812"
                    if ((_c_288 > _r._forwardchars() : Bool)) {
                        _gotoNext = 5102146i64;
                    } else {
                        _gotoNext = 5102182i64;
                    };
                } else if (__value__ == (5102146i64)) {
                    _c_288 = _r._forwardchars();
                    _gotoNext = 5102182i64;
                } else if (__value__ == (5102182i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L816"
                    if ((_c_288 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5102191i64;
                    } else {
                        _gotoNext = 5102237i64;
                    };
                } else if (__value__ == (5102191i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L817"
                    _r._trackPush2((_c_288 - (1 : stdgo.GoInt) : stdgo.GoInt), _r._textPos());
                    _gotoNext = 5102237i64;
                } else if (__value__ == (5102237i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L820"
                    _r._advance((2 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5102265i64)) {
                    _c_289 = _r._operand((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L827"
                    if ((_c_289 > _r._forwardchars() : Bool)) {
                        _gotoNext = 5102336i64;
                    } else {
                        _gotoNext = 5102372i64;
                    };
                } else if (__value__ == (5102336i64)) {
                    _c_289 = _r._forwardchars();
                    _gotoNext = 5102372i64;
                } else if (__value__ == (5102372i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L831"
                    if ((_c_289 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5102381i64;
                    } else {
                        _gotoNext = 5102427i64;
                    };
                } else if (__value__ == (5102381i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L832"
                    _r._trackPush2((_c_289 - (1 : stdgo.GoInt) : stdgo.GoInt), _r._textPos());
                    _gotoNext = 5102427i64;
                } else if (__value__ == (5102427i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L835"
                    _r._advance((2 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5102455i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L840"
                    _r._trackPopN((2 : stdgo.GoInt));
                    _pos_290 = _r._trackPeekN((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L842"
                    _r._textto(_pos_290);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L844"
                    if (_r._forwardcharnext() != ((_r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32))) {
                        _gotoNext = 5102601i64;
                    } else {
                        _gotoNext = 5102622i64;
                    };
                } else if (__value__ == (5102601i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5102622i64)) {
                    _i_291 = _r._trackPeek();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L850"
                    if ((_i_291 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5102654i64;
                    } else {
                        _gotoNext = 5102701i64;
                    };
                } else if (__value__ == (5102654i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L851"
                    _r._trackPush2((_i_291 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_290 + _r._bump() : stdgo.GoInt));
                    _gotoNext = 5102701i64;
                } else if (__value__ == (5102701i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L854"
                    _r._advance((2 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5102729i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L859"
                    _r._trackPopN((2 : stdgo.GoInt));
                    _pos_292 = _r._trackPeekN((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L861"
                    _r._textto(_pos_292);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L863"
                    if (_r._forwardcharnext() == ((_r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32))) {
                        _gotoNext = 5102878i64;
                    } else {
                        _gotoNext = 5102899i64;
                    };
                } else if (__value__ == (5102878i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5102899i64)) {
                    _i_293 = _r._trackPeek();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L869"
                    if ((_i_293 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5102931i64;
                    } else {
                        _gotoNext = 5102978i64;
                    };
                } else if (__value__ == (5102931i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L870"
                    _r._trackPush2((_i_293 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_292 + _r._bump() : stdgo.GoInt));
                    _gotoNext = 5102978i64;
                } else if (__value__ == (5102978i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L873"
                    _r._advance((2 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5103006i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L878"
                    _r._trackPopN((2 : stdgo.GoInt));
                    _pos_294 = _r._trackPeekN((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L880"
                    _r._textto(_pos_294);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L882"
                    if (!(@:checkr (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sets[(_r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).charIn(_r._forwardcharnext())) {
                        _gotoNext = 5103165i64;
                    } else {
                        _gotoNext = 5103186i64;
                    };
                } else if (__value__ == (5103165i64)) {
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5103186i64)) {
                    _i_295 = _r._trackPeek();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L888"
                    if ((_i_295 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5103218i64;
                    } else {
                        _gotoNext = 5103265i64;
                    };
                } else if (__value__ == (5103218i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L889"
                    _r._trackPush2((_i_295 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_294 + _r._bump() : stdgo.GoInt));
                    _gotoNext = 5103265i64;
                } else if (__value__ == (5103265i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L892"
                    _r._advance((2 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5103293i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L896"
                    return stdgo._internal.errors.Errors_new_.new_(("unknown state in regex runner" : stdgo.GoString));
                    _gotoNext = 5103362i64;
                } else if (__value__ == (5103362i64)) {
                    _gotoNext = 5103362i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L900"
                    {};
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L903"
                    _r._backtrack();
                    _gotoNext = 5088848i64;
                } else if (__value__ == (5103435i64)) {
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
    @:keep
    @:tdfield
    static public function _scan( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>, _rt:stdgo.Slice<stdgo.GoInt32>, _textstart:stdgo.GoInt, _quick:Bool, _timeout:stdgo._internal.time.Time_duration.Duration):{ var _0 : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._timeout = _timeout;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ignoreTimeout = (((9223372036854775807i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration) == _timeout);
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextstart = _textstart;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtext = _rt;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextend = (_rt.length);
        var _stoppos = @:assignType ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextend : stdgo.GoInt);
        var _bump = @:assignType (1 : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L113"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._re.rightToLeft()) {
            _bump = (-1 : stdgo.GoInt);
            _stoppos = (0 : stdgo.GoInt);
        };
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos = _textstart;
        var _initted = @:assignType (false : Bool);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L121"
        _r._startTimeoutWatch();
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L122"
        while (true) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L123"
            if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._re.debug()) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L125"
                stdgo._internal.fmt.Fmt_printf.printf(("\nSearch range: from 0 to %v\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextend, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L126"
                stdgo._internal.fmt.Fmt_printf.printf(("Firstchar search starting at %v stopping at %v\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_stoppos, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L129"
            if (_r._findFirstChar()) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L130"
                {
                    var _err = @:assignType (_r._checkTimeout() : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L131"
                        return { _0 : null, _1 : _err };
                    };
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L134"
                if (!_initted) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L135"
                    _r._initMatch();
                    _initted = true;
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L139"
                if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._re.debug()) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L140"
                    stdgo._internal.fmt.Fmt_printf.printf(("Executing engine starting at %v\n\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L143"
                {
                    var _err = @:assignType (_r._execute() : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L144"
                        return { _0 : null, _1 : _err };
                    };
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L147"
                if (((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runmatch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcount[(0 : stdgo.GoInt)] > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L149"
                    return { _0 : _r._tidyMatch(_quick), _1 : (null : stdgo.Error) };
                };
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrackpos = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtrack.length);
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstackpos = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runstack.length);
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runcrawlpos = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runcrawl.length);
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L160"
            if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos == (_stoppos)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L161"
                _r._tidyMatch(true);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L162"
                return { _0 : null, _1 : (null : stdgo.Error) };
            };
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtextpos + (_bump) : stdgo.GoInt);
        };
    }
}
