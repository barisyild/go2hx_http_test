package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function _makeSingleStringReplacer(_pattern:stdgo.GoString, _value:stdgo.GoString):stdgo.Ref<stdgo._internal.strings.Strings_t_singlestringreplacer.T_singleStringReplacer> {
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L386"
        return (stdgo.Go.setRef(({ _finder : stdgo._internal.strings.Strings__makestringfinder._makeStringFinder(_pattern?.__copy__()), _value : _value?.__copy__() } : stdgo._internal.strings.Strings_t_singlestringreplacer.T_singleStringReplacer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_t_singlestringreplacerdott_singlestringreplacer.__type__stdgodot_internaldotstringsdotStrings_t_singlestringreplacerdotT_singleStringReplacer })) : stdgo.Ref<stdgo._internal.strings.Strings_t_singlestringreplacer.T_singleStringReplacer>);
    }
