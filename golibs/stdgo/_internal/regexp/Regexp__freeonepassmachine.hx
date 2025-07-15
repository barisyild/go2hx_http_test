package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
function _freeOnePassMachine(_m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine>):Void {
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L392"
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inputs._clear();
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L393"
        stdgo._internal.regexp.Regexp__onepasspool._onePassPool.put(new stdgo.AnyInterface(stdgo.Go.asInterface(_m, _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_onepassmachinedott_onepassmachine.__type__stdgodot_internaldotregexpdotRegexp_t_onepassmachinedotT_onePassMachine), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_onepassmachinedott_onepassmachine.__type__stdgodot_internaldotregexpdotRegexp_t_onepassmachinedotT_onePassMachine }))));
    }
