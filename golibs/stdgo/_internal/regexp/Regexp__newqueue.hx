package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
function _newQueue(_size:stdgo.GoInt):stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass> {
        var _q = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L140"
        return _q = (stdgo.Go.setRef(({ _sparse : (new stdgo.Slice<stdgo.GoUInt32>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), _dense : (new stdgo.Slice<stdgo.GoUInt32>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>) } : stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_queueonepassdott_queueonepass.__type__stdgodot_internaldotregexpdotRegexp_t_queueonepassdotT_queueOnePass })) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>);
    }
