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
function _isValidUnicodeCat(_catName:stdgo.GoString):Bool {
        var __tmp__ = (_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__unicodecategories._unicodeCategories != null && _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__unicodecategories._unicodeCategories.__exists__(_catName?.__copy__()) ? { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__unicodecategories._unicodeCategories[_catName?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>), _1 : false }), __0:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L523"
        return _ok;
    }
