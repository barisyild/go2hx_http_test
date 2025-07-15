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
@:keep @:allow(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax.T_category_asInterface) class T_category_static_extension {
    @:keep
    @:tdfield
    static public function string( _c:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category):stdgo.GoString {
        @:recv var _c:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category = _c?.__copy__();
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L296"
        {
            final __value__ = _c._cat;
            if (__value__ == ((" " : stdgo.GoString))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L298"
                if (_c._negate) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L299"
                    return ("\\S" : stdgo.GoString);
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L301"
                return ("\\s" : stdgo.GoString);
            } else if (__value__ == (("W" : stdgo.GoString))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L303"
                if (_c._negate) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L304"
                    return ("\\W" : stdgo.GoString);
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L306"
                return ("\\w" : stdgo.GoString);
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L308"
        {
            var __tmp__ = (_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__unicodecategories._unicodeCategories != null && _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__unicodecategories._unicodeCategories.__exists__(_c._cat?.__copy__()) ? { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__unicodecategories._unicodeCategories[_c._cat?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>), _1 : false }), __0:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L310"
                if (_c._negate) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L311"
                    return ((("\\P{" : stdgo.GoString) + _c._cat?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L313"
                return ((("\\p{" : stdgo.GoString) + _c._cat?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L315"
        return (("Unknown category: " : stdgo.GoString) + _c._cat?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
