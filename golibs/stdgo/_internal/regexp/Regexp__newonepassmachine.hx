package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
function _newOnePassMachine():stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine> {
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(stdgo._internal.regexp.Regexp__onepasspool._onePassPool.get(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_onepassmachinedott_onepassmachine.__type__stdgodot_internaldotregexpdotRegexp_t_onepassmachinedotT_onePassMachine })) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine>), _1 : false };
        }, _m = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L385"
        if (!_ok) {
            _m = (stdgo.Go.setRef(({} : stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_onepassmachinedott_onepassmachine.__type__stdgodot_internaldotregexpdotRegexp_t_onepassmachinedotT_onePassMachine })) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine>);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L388"
        return _m;
    }
