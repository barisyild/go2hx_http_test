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
function testPcre_Basics(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L21"
                        if ((_internal.githubdotcom.dlclark.regexp2.Regexp2__failcount._failCount > (0 : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L22"
                            _t.logf(("%v of %v patterns failed" : stdgo.GoString), new stdgo.AnyInterface(_internal.githubdotcom.dlclark.regexp2.Regexp2__failcount._failCount, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_internal.githubdotcom.dlclark.regexp2.Regexp2__totalcount._totalCount, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                        };
                    };
                    a();
                }) });
            };
            var __tmp__ = stdgo._internal.os.Os_open.open(("testoutput1" : stdgo.GoString)), _file:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L28"
            if (_err != null) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L29"
                stdgo._internal.log.Log_fatal.fatal(({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
            {
                final __f__ = _file.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _scanner = stdgo._internal.bufio.Bufio_newscanner.newScanner(stdgo.Go.asInterface(_file, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_filedotfile.__type__stdgodot_internaldotosdotOs_filedotFile })));
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L46"
            while (_scanner.scan()) {
                var _line = @:assignType (_scanner.text()?.__copy__() : stdgo.GoString);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L50"
                {
                    var _trim = @:assignType (stdgo._internal.strings.Strings_trimspace.trimSpace(_line?.__copy__())?.__copy__() : stdgo.GoString);
                    if (((_trim == (stdgo.Go.str() : stdgo.GoString)) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_trim?.__copy__(), ("#" : stdgo.GoString)) : Bool)) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L52"
                        continue;
                    };
                };
                var _patternStart = @:assignType (_line[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L56"
                if (((_patternStart != (47 : stdgo.GoUInt8)) && (_patternStart != (34 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L58"
                    _t.fatalf(("Unknown file format, expected line to start with \'/\' or \'\"\', line in: %v" : stdgo.GoString), new stdgo.AnyInterface(_line, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
                var _pattern = @:assignType (_line?.__copy__() : stdgo.GoString);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L63"
                _internal.githubdotcom.dlclark.regexp2.Regexp2__totalcount._totalCount++;
                var _allowFirst = @:assignType (false : Bool);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L69"
                while (!_internal.githubdotcom.dlclark.regexp2.Regexp2__containsender._containsEnder(_line?.__copy__(), _patternStart, _allowFirst)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L70"
                    if (!_scanner.scan()) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L72"
                        _t.fatalf(("Unknown file format, expected more pattern text, but got EOF, pattern so far: %v" : stdgo.GoString), new stdgo.AnyInterface(_pattern, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    };
                    _line = _scanner.text()?.__copy__();
                    _pattern = (_pattern + (stdgo._internal.fmt.Fmt_sprintf.sprintf((("\n%s" : stdgo.GoString) : stdgo.GoString), new stdgo.AnyInterface(_line, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))))?.__copy__() : stdgo.GoString);
                    _allowFirst = true;
                };
                var _re = _internal.githubdotcom.dlclark.regexp2.Regexp2__compilerawpattern._compileRawPattern(_t, _pattern?.__copy__());
                var _capsIdx:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>), _toMatch:stdgo.GoString = ("" : stdgo.GoString);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L90"
                while (_scanner.scan()) {
                    _line = _scanner.text()?.__copy__();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L94"
                    if (stdgo._internal.strings.Strings_trimspace.trimSpace(_line?.__copy__()) == ((stdgo.Go.str() : stdgo.GoString))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L95"
                        break;
                    };
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L99"
                    if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_line?.__copy__(), ("\\= Expect" : stdgo.GoString))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L100"
                        continue;
                    } else if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_line?.__copy__(), ("    " : stdgo.GoString))) {
                        _toMatch = (_line.__slice__((4 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _toMatch = stdgo._internal.strings.Strings_trimright.trimRight(_toMatch?.__copy__(), (" " : stdgo.GoString))?.__copy__();
                        _m = _internal.githubdotcom.dlclark.regexp2.Regexp2__matchstring._matchString(_t, _re, _toMatch?.__copy__());
                        _capsIdx = (({
                            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
                            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                            {};
                            x;
                        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L110"
                        continue;
                    } else if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_line?.__copy__(), ("No match" : stdgo.GoString))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L113"
                        _internal.githubdotcom.dlclark.regexp2.Regexp2__validatenomatch._validateNoMatch(_t, _re, _m);
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L115"
                        continue;
                    } else {
                        var _subs = _internal.githubdotcom.dlclark.regexp2.Regexp2__matchgroup._matchGroup.findStringSubmatch(_line?.__copy__());
                        if ((_subs.length) == ((3 : stdgo.GoInt))) {
                            var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_subs[(1 : stdgo.GoInt)]?.__copy__()), _gIdx:stdgo.GoInt = __tmp__._0, __0:stdgo.Error = __tmp__._1;
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L118"
                            {
                                var __tmp__ = (_capsIdx != null && _capsIdx.__exists__(_gIdx) ? { _0 : _capsIdx[_gIdx], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), __1:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                                if (!_ok) {
                                    _capsIdx[_gIdx] = (0 : stdgo.GoInt);
                                };
                            };
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L121"
                            _internal.githubdotcom.dlclark.regexp2.Regexp2__validatematch._validateMatch(_t, _re, _m, _toMatch?.__copy__(), _subs[(2 : stdgo.GoInt)]?.__copy__(), _gIdx, (_capsIdx[_gIdx] ?? (0 : stdgo.GoInt)));
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L122"
                            (@:typeIncDecStmt_escapeParens _capsIdx[_gIdx] != null ? _capsIdx[_gIdx]++ : (0 : stdgo.GoInt));
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L123"
                            continue;
                        } else {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L126"
                            _t.fatalf(("Unknown file format, expected match or match group but got \'%v\'" : stdgo.GoString), new stdgo.AnyInterface(_line, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                        };
                    };
                };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L132"
            {
                var _err = @:assignType (_scanner.err() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L133"
                    stdgo._internal.log.Log_fatal.fatal(({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
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
                return;
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
                return;
            };
        };
    }
