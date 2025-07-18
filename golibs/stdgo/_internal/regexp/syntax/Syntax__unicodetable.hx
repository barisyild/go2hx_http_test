package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _unicodeTable(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>; var _1 : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>; } {
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1643"
        if (_name == (("Any" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1644"
            return { _0 : stdgo._internal.regexp.syntax.Syntax__anytable._anyTable, _1 : stdgo._internal.regexp.syntax.Syntax__anytable._anyTable };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1646"
        {
            var _t = (stdgo._internal.unicode.Unicode_categories.categories[_name] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>));
            if (({
                final value = _t;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1647"
                return { _0 : _t, _1 : (stdgo._internal.unicode.Unicode_foldcategory.foldCategory[_name] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>)) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1649"
        {
            var _t = (stdgo._internal.unicode.Unicode_scripts.scripts[_name] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>));
            if (({
                final value = _t;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1650"
                return { _0 : _t, _1 : (stdgo._internal.unicode.Unicode_foldscript.foldScript[_name] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>)) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1652"
        return { _0 : null, _1 : null };
    }
