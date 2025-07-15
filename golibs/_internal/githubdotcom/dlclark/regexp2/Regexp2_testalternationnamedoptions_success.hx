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
function testAlternationNamedOptions_Success(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _data = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_51.T__struct_51>(9, 9, ...[({ _pattern : ("(?(cat)|dog)" : stdgo.GoString), _input : ("cat" : stdgo.GoString), _expectSuccess : true, _matchVal : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_51.T__struct_51), ({ _pattern : ("(?(cat)|dog)" : stdgo.GoString), _input : ("catdog" : stdgo.GoString), _expectSuccess : true, _matchVal : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_51.T__struct_51), ({ _pattern : ("(?(cat)dog1|dog2)" : stdgo.GoString), _input : ("catdog1" : stdgo.GoString), _expectSuccess : false, _matchVal : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_51.T__struct_51), ({ _pattern : ("(?(cat)dog1|dog2)" : stdgo.GoString), _input : ("catdog2" : stdgo.GoString), _expectSuccess : true, _matchVal : ("dog2" : stdgo.GoString) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_51.T__struct_51), ({ _pattern : ("(?(cat)dog1|dog2)" : stdgo.GoString), _input : ("catdog1dog2" : stdgo.GoString), _expectSuccess : true, _matchVal : ("dog2" : stdgo.GoString) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_51.T__struct_51), ({ _pattern : ("(?(dog2))" : stdgo.GoString), _input : ("dog2" : stdgo.GoString), _expectSuccess : true, _matchVal : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_51.T__struct_51), ({ _pattern : ("(?(cat)|dog)" : stdgo.GoString), _input : ("oof" : stdgo.GoString), _expectSuccess : false, _matchVal : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_51.T__struct_51), ({ _pattern : ("(?(a:b))" : stdgo.GoString), _input : ("a" : stdgo.GoString), _expectSuccess : true, _matchVal : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_51.T__struct_51), ({ _pattern : ("(?(a:))" : stdgo.GoString), _input : ("a" : stdgo.GoString), _expectSuccess : true, _matchVal : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_51.T__struct_51)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _pattern : ("" : stdgo.GoString), _input : ("" : stdgo.GoString), _expectSuccess : false, _matchVal : ("" : stdgo.GoString) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_51.T__struct_51)])) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_51.T__struct_51>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1010"
        if (_data != null) for (__0 => _p in _data) {
            var _re = _internal.githubdotcom.dlclark.regexp2.Regexp2_mustcompile.mustCompile(_p._pattern?.__copy__(), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
            var __tmp__ = _re.findStringMatch(_p._input?.__copy__()), _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1014"
            if (_err != null) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1015"
                _t.fatalf(("Unexpected error during match: %v" : stdgo.GoString), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1017"
            {
                var __0 = @:assignType (_p._expectSuccess : Bool), __1 = @:assignType ({
                    final value = _m;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                } : Bool);
var _got = __1, _want = __0;
                if (_want != (_got)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1018"
                    _t.fatalf(("Success mismatch for %v, wanted %v, got %v" : stdgo.GoString), new stdgo.AnyInterface(_p._pattern, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1020"
            if (({
                final value = _m;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1021"
                {
                    var __0 = @:assignType (_p._matchVal?.__copy__() : stdgo.GoString), __1 = @:assignType ((_m.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
                    if (_want != (_got)) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1022"
                        _t.fatalf(("Match val mismatch for %v, wanted %v, got %v" : stdgo.GoString), new stdgo.AnyInterface(_p._pattern, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    };
                };
            };
        };
    }
