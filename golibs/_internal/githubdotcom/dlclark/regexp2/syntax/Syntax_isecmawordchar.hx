package _internal.githubdotcom.dlclark.regexp2.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.sort.Sort;
function isECMAWordChar(_r:stdgo.GoInt32):Bool {
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L350"
        return stdgo._internal.unicode.Unicode_in_.in_(_r, (stdgo._internal.unicode.Unicode_categories.categories[("L" : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>)), (stdgo._internal.unicode.Unicode_categories.categories[("Mn" : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>)), (stdgo._internal.unicode.Unicode_categories.categories[("Nd" : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>)), (stdgo._internal.unicode.Unicode_categories.categories[("Pc" : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>)));
    }
