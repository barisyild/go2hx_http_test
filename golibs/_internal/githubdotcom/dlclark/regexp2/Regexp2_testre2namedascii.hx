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
function testRE2NamedAscii(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _table = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_49.T__struct_49>(14, 14, ...[
({ _nm : ("alnum" : stdgo.GoString), _pos : ("1" : stdgo.GoString), _neg : ("!" : stdgo.GoString) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_49.T__struct_49),
({ _nm : ("alpha" : stdgo.GoString), _pos : ("g" : stdgo.GoString), _neg : ("0" : stdgo.GoString) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_49.T__struct_49),
({ _nm : ("blank" : stdgo.GoString), _pos : (" " : stdgo.GoString), _neg : ("_" : stdgo.GoString) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_49.T__struct_49),
({ _nm : ("ascii" : stdgo.GoString), _pos : ("*" : stdgo.GoString), _neg : (stdgo.Go.str(143) : stdgo.GoString)?.__copy__() } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_49.T__struct_49),
({ _nm : ("cntrl" : stdgo.GoString), _pos : ("\t" : stdgo.GoString), _neg : ("A" : stdgo.GoString) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_49.T__struct_49),
({ _nm : ("graph" : stdgo.GoString), _pos : ("!" : stdgo.GoString), _neg : (" " : stdgo.GoString) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_49.T__struct_49),
({ _nm : ("lower" : stdgo.GoString), _pos : ("a" : stdgo.GoString), _neg : ("A" : stdgo.GoString) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_49.T__struct_49),
({ _nm : ("print" : stdgo.GoString), _pos : (" " : stdgo.GoString), _neg : ("\r" : stdgo.GoString) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_49.T__struct_49),
({ _nm : ("punct" : stdgo.GoString), _pos : ("@" : stdgo.GoString), _neg : ("A" : stdgo.GoString) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_49.T__struct_49),
({ _nm : ("space" : stdgo.GoString), _pos : (" " : stdgo.GoString), _neg : ("A" : stdgo.GoString) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_49.T__struct_49),
({ _nm : ("digit" : stdgo.GoString), _pos : ("1" : stdgo.GoString), _neg : ("A" : stdgo.GoString) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_49.T__struct_49),
({ _nm : ("upper" : stdgo.GoString), _pos : ("A" : stdgo.GoString), _neg : ("a" : stdgo.GoString) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_49.T__struct_49),
({ _nm : ("word" : stdgo.GoString), _pos : ("_" : stdgo.GoString), _neg : ("-" : stdgo.GoString) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_49.T__struct_49),
({ _nm : ("xdigit" : stdgo.GoString), _pos : ("A" : stdgo.GoString), _neg : ("G" : stdgo.GoString) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_49.T__struct_49)].concat([for (i in 14 ... (14 > 14 ? 14 : 14 : stdgo.GoInt).toBasic()) ({ _nm : ("" : stdgo.GoString), _pos : ("" : stdgo.GoString), _neg : ("" : stdgo.GoString) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_49.T__struct_49)])) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_49.T__struct_49>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L64"
        if (_table != null) for (__0 => _row in _table) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L65"
            _t.run(_row._nm?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                var _r = _internal.githubdotcom.dlclark.regexp2.Regexp2_mustcompile.mustCompile(((("[[:" : stdgo.GoString) + _row._nm?.__copy__() : stdgo.GoString) + (":]]" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (512 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L67"
                {
                    var __tmp__ = _r.matchString(_row._pos?.__copy__()), _m:Bool = __tmp__._0, __1:stdgo.Error = __tmp__._1;
                    if (!_m) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L68"
                        _t.fatal(new stdgo.AnyInterface(("Expected match" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    };
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L70"
                {
                    var __tmp__ = _r.matchString(_row._neg?.__copy__()), _m:Bool = __tmp__._0, __2:stdgo.Error = __tmp__._1;
                    if (_m) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L71"
                        _t.fatal(new stdgo.AnyInterface(("Expected no match" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    };
                };
            });
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L74"
            _t.run((_row._nm + (" negate" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                var _r = _internal.githubdotcom.dlclark.regexp2.Regexp2_mustcompile.mustCompile(((("[[:^" : stdgo.GoString) + _row._nm?.__copy__() : stdgo.GoString) + (":]]" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (512 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L76"
                {
                    var __tmp__ = _r.matchString(_row._neg?.__copy__()), _m:Bool = __tmp__._0, __1:stdgo.Error = __tmp__._1;
                    if (!_m) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L77"
                        _t.fatal(new stdgo.AnyInterface(("Expected match" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    };
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L79"
                {
                    var __tmp__ = _r.matchString(_row._pos?.__copy__()), _m:Bool = __tmp__._0, __2:stdgo.Error = __tmp__._1;
                    if (_m) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L80"
                        _t.fatal(new stdgo.AnyInterface(("Expected no match" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    };
                };
            });
        };
    }
