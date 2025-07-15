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
var _unicodeCategories : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>> = ({
        var a = function():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>> {
            var _retVal = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L68"
            if (stdgo._internal.unicode.Unicode_scripts.scripts != null) for (_k => _v in stdgo._internal.unicode.Unicode_scripts.scripts) {
                _retVal[_k] = _v;
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L71"
            if (stdgo._internal.unicode.Unicode_categories.categories != null) for (_k => _v in stdgo._internal.unicode.Unicode_categories.categories) {
                _retVal[_k] = _v;
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L74"
            if (stdgo._internal.unicode.Unicode_properties.properties != null) for (_k => _v in stdgo._internal.unicode.Unicode_properties.properties) {
                _retVal[_k] = _v;
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L77"
            return _retVal;
        };
        a();
    });
