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
@:keep @:allow(_internal.githubdotcom.dlclark.regexp2.Regexp2.Regexp_asInterface) class Regexp_static_extension {
    @:keep
    @:tdfield
    static public function _putRunner( _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>, _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void {
        @:recv var _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1606"
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._muRun.lock();
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runtext = (null : stdgo.Slice<stdgo.GoInt32>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1608"
        if (({
            final value = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runmatch;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runmatch ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture._text = (null : stdgo.Slice<stdgo.GoInt32>);
        };
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runner = ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runner.__append__(_r) : stdgo.Slice<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1612"
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._muRun.unlock();
    }
    @:keep
    @:tdfield
    static public function _getRunner( _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner> {
        @:recv var _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1586"
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._muRun.lock();
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1587"
        {
            var _n = @:assignType ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runner.length : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                var _z = (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runner[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
                (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runner = ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runner.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>>);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1590"
                (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._muRun.unlock();
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1591"
                return _z;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1593"
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._muRun.unlock();
        var _z = (stdgo.Go.setRef(({ _re : _re, _code : (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_t_runnerdott_runner.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_t_runnerdotT_runner })) : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L1598"
        return _z;
    }
    @:keep
    @:tdfield
    static public function _run( _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>, _quick:Bool, _textstart:stdgo.GoInt, _input:stdgo.Slice<stdgo.GoInt32>):{ var _0 : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _runner = _re._getRunner();
            {
                var _a0 = _runner;
                final __f__ = _re._putRunner;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L82"
            if ((_textstart < (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L83"
                if (_re.rightToLeft()) {
                    _textstart = (_input.length);
                } else {
                    _textstart = (0 : stdgo.GoInt);
                };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/runner.go#L90"
            {
                final __ret__:{ var _0 : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>; var _1 : stdgo.Error; } = _runner._scan(_input, _textstart, _quick, (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).matchTimeout);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return { _0 : (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return { _0 : (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function unmarshalText( _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        var __tmp__ = _internal.githubdotcom.dlclark.regexp2.Regexp2_compile.compile((_text : stdgo.GoString)?.__copy__(), _internal.githubdotcom.dlclark.regexp2.Regexp2_defaultunmarshaloptions.defaultUnmarshalOptions), _newRE:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L390"
        if (_err != null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L391"
            return _err;
        };
        {
            var __tmp__ = (_newRE : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp)?.__copy__();
            var x = (_re : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp);
            x.matchTimeout = __tmp__?.matchTimeout;
            x._pattern = __tmp__?._pattern;
            x._options = __tmp__?._options;
            x._caps = __tmp__?._caps;
            x._capnames = __tmp__?._capnames;
            x._capslist = __tmp__?._capslist;
            x._capsize = __tmp__?._capsize;
            x._code = __tmp__?._code;
            x._muRun = __tmp__?._muRun;
            x._runner = __tmp__?._runner;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L394"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalText( _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L383"
        return { _0 : ((_re.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function groupNumberFromName( _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>, _name:stdgo.GoString):stdgo.GoInt {
        @:recv var _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L351"
        if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames != null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L352"
            {
                var __tmp__ = ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames != null && (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames.__exists__(_name?.__copy__()) ? { _0 : (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames[_name?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _k:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L353"
                    return _k;
                };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L356"
            return (-1 : stdgo.GoInt);
        };
        var _result = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L361"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_name.length) : Bool)) {
                var _ch = @:assignType (_name[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L364"
                if (((_ch > (57 : stdgo.GoUInt8) : Bool) || (_ch < (48 : stdgo.GoUInt8) : Bool) : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L365"
                    return (-1 : stdgo.GoInt);
                };
_result = (_result * ((10 : stdgo.GoInt)) : stdgo.GoInt);
_result = (_result + (((_ch - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)) : stdgo.GoInt);
                _i++;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L373"
        if (((_result >= (0 : stdgo.GoInt) : Bool) && (_result < (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capsize : Bool) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L374"
            return _result;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L377"
        return (-1 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function groupNameFromNumber( _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>, _i:stdgo.GoInt):stdgo.GoString {
        @:recv var _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L324"
        if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capslist == null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L325"
            if (((_i >= (0 : stdgo.GoInt) : Bool) && (_i < (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capsize : Bool) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L326"
                return stdgo._internal.strconv.Strconv_itoa.itoa(_i)?.__copy__();
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L329"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L332"
        if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps != null) {
            var _ok:Bool = false;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L334"
            {
                {
                    var __tmp__ = ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps != null && (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps.__exists__(_i) ? { _0 : (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps[_i], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false });
                    _i = @:tmpset0 __tmp__._0;
                    _ok = @:tmpset0 __tmp__._1;
                };
                if (!_ok) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L335"
                    return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L339"
        if (((_i >= (0 : stdgo.GoInt) : Bool) && (_i < ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capslist.length) : Bool) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L340"
            return (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capslist[(_i : stdgo.GoInt)]?.__copy__();
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L343"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function getGroupNumbers( _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        var _result:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L303"
        if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps == null) {
            _result = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capsize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L306"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (_result.length) : Bool)) {
                    _result[(_i : stdgo.GoInt)] = _i;
                    _i++;
                };
            };
        } else {
            _result = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L312"
            if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps != null) for (_k => _v in (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps) {
                _result[(_v : stdgo.GoInt)] = _k;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L317"
        return _result;
    }
    @:keep
    @:tdfield
    static public function getGroupNames( _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        var _result:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L285"
        if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capslist == null) {
            _result = (new stdgo.Slice<stdgo.GoString>(((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capsize : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L288"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (_result.length) : Bool)) {
                    _result[(_i : stdgo.GoInt)] = stdgo._internal.strconv.Strconv_itoa.itoa(_i).__copy__();
                    _i++;
                };
            };
        } else {
            _result = (new stdgo.Slice<stdgo.GoString>(((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capslist.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L293"
            _result.__copyTo__((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capslist);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L296"
        return _result;
    }
    @:keep
    @:tdfield
    static public function matchRunes( _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>, _r:stdgo.Slice<stdgo.GoInt32>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        var __tmp__ = _re._run(true, (-1 : stdgo.GoInt), _r), _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L275"
        if (_err != null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L276"
            return { _0 : false, _1 : _err };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L278"
        return { _0 : ({
            final value = _m;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _getRunesAndStart( _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>, _s:stdgo.GoString, _startAt:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoInt; } {
        @:recv var _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L244"
        if ((_startAt < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L245"
            if (_re.rightToLeft()) {
                var _r = _internal.githubdotcom.dlclark.regexp2.Regexp2__getrunes._getRunes(_s?.__copy__());
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L247"
                return { _0 : _r, _1 : (_r.length) };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L249"
            return { _0 : _internal.githubdotcom.dlclark.regexp2.Regexp2__getrunes._getRunes(_s?.__copy__()), _1 : (0 : stdgo.GoInt) };
        };
        var _ret = (new stdgo.Slice<stdgo.GoInt32>((_s.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i = @:assignType (0 : stdgo.GoInt);
        var _runeIdx = @:assignType (-1 : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L254"
        if (_s != null) for (_strIdx => _r in _s) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L255"
            if (_strIdx == (_startAt)) {
                _runeIdx = _i;
            };
            _ret[(_i : stdgo.GoInt)] = _r;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L259"
            _i++;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L261"
        if (_startAt == ((_s.length))) {
            _runeIdx = _i;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L264"
        return { _0 : (_ret.__slice__(0, _i) : stdgo.Slice<stdgo.GoInt32>), _1 : _runeIdx };
    }
    @:keep
    @:tdfield
    static public function matchString( _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>, _s:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        var __tmp__ = _re._run(true, (-1 : stdgo.GoInt), _internal.githubdotcom.dlclark.regexp2.Regexp2__getrunes._getRunes(_s?.__copy__())), _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L237"
        if (_err != null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L238"
            return { _0 : false, _1 : _err };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L240"
        return { _0 : ({
            final value = _m;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function findNextMatch( _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>, _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>):{ var _0 : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L212"
        if (({
            final value = _m;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L213"
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        var _startAt = @:assignType ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._textpos : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L219"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture.length_ == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L220"
            if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._textpos == (((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture._text.length))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L221"
                return { _0 : null, _1 : (null : stdgo.Error) };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L224"
            if (_re.rightToLeft()) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L225"
                _startAt--;
            } else {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L227"
                _startAt++;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L230"
        return _re._run(false, _startAt, (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture._text);
    }
    @:keep
    @:tdfield
    static public function findRunesMatchStartingAt( _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>, _r:stdgo.Slice<stdgo.GoInt32>, _startAt:stdgo.GoInt):{ var _0 : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L206"
        return _re._run(false, _startAt, _r);
    }
    @:keep
    @:tdfield
    static public function findStringMatchStartingAt( _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>, _s:stdgo.GoString, _startAt:stdgo.GoInt):{ var _0 : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L192"
        if ((_startAt > (_s.length) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L193"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("startAt must be less than the length of the input string" : stdgo.GoString)) };
        };
        var __tmp__ = _re._getRunesAndStart(_s?.__copy__(), _startAt), _r:stdgo.Slice<stdgo.GoInt32> = __tmp__._0, _startAt:stdgo.GoInt = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L196"
        if (_startAt == ((-1 : stdgo.GoInt))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L198"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("startAt must align to the start of a valid rune in the input string" : stdgo.GoString)) };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L201"
        return _re._run(false, _startAt, _r);
    }
    @:keep
    @:tdfield
    static public function findRunesMatch( _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>, _r:stdgo.Slice<stdgo.GoInt32>):{ var _0 : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L187"
        return _re._run(false, (-1 : stdgo.GoInt), _r);
    }
    @:keep
    @:tdfield
    static public function findStringMatch( _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>, _s:stdgo.GoString):{ var _0 : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L182"
        return _re._run(false, (-1 : stdgo.GoInt), _internal.githubdotcom.dlclark.regexp2.Regexp2__getrunes._getRunes(_s?.__copy__()));
    }
    @:keep
    @:tdfield
    static public function replaceFunc( _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>, _input:stdgo.GoString, _evaluator:_internal.githubdotcom.dlclark.regexp2.Regexp2_matchevaluator.MatchEvaluator, _startAt:stdgo.GoInt, _count:stdgo.GoInt):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L176"
        return _internal.githubdotcom.dlclark.regexp2.Regexp2__replace._replace(_re, null, _evaluator, _input?.__copy__(), _startAt, _count);
    }
    @:keep
    @:tdfield
    static public function replace( _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>, _input:stdgo.GoString, _replacement:stdgo.GoString, _startAt:stdgo.GoInt, _count:stdgo.GoInt):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        var __tmp__ = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_newreplacerdata.newReplacerData(_replacement?.__copy__(), (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps, (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capsize, (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames, ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)), _data:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_replacerdata.ReplacerData> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L163"
        if (_err != null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L164"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L168"
        return _internal.githubdotcom.dlclark.regexp2.Regexp2__replace._replace(_re, _data, null, _input?.__copy__(), _startAt, _count);
    }
    @:keep
    @:tdfield
    static public function debug( _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>):Bool {
        @:recv var _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L154"
        return ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (128 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions) != ((0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
    }
    @:keep
    @:tdfield
    static public function rightToLeft( _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>):Bool {
        @:recv var _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L150"
        return ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions) != ((0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
    }
    @:keep
    @:tdfield
    static public function string( _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>):stdgo.GoString {
        @:recv var _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L119"
        return (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern?.__copy__();
    }
}
