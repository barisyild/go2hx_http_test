package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
function _newBitState():stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState> {
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(stdgo._internal.regexp.Regexp__bitstatepool._bitStatePool.get(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_bitstatedott_bitstate.__type__stdgodot_internaldotregexpdotRegexp_t_bitstatedotT_bitState })) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>), _1 : false };
        }, _b = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L51"
        if (!_ok) {
            _b = (stdgo.Go.setRef(({} : stdgo._internal.regexp.Regexp_t_bitstate.T_bitState), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_bitstatedott_bitstate.__type__stdgodot_internaldotregexpdotRegexp_t_bitstatedotT_bitState })) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L54"
        return _b;
    }
