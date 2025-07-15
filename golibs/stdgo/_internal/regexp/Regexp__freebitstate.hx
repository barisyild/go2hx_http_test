package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
function _freeBitState(_b:stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>):Void {
        //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L58"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inputs._clear();
        //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L59"
        stdgo._internal.regexp.Regexp__bitstatepool._bitStatePool.put(new stdgo.AnyInterface(stdgo.Go.asInterface(_b, _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_bitstatedott_bitstate.__type__stdgodot_internaldotregexpdotRegexp_t_bitstatedotT_bitState), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_bitstatedott_bitstate.__type__stdgodot_internaldotregexpdotRegexp_t_bitstatedotT_bitState }))));
    }
