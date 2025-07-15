package _internal.unicode_test;
function testLatinOffset(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _maps = (new stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>>(5, 5, ...[stdgo._internal.unicode.Unicode_categories.categories, stdgo._internal.unicode.Unicode_foldcategory.foldCategory, stdgo._internal.unicode.Unicode_foldscript.foldScript, stdgo._internal.unicode.Unicode_properties.properties, stdgo._internal.unicode.Unicode_scripts.scripts]) : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>>);
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L543"
        if (_maps != null) for (__0 => _m in _maps) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L544"
            if (_m != null) for (_name => _tab in _m) {
                var _i = (0 : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L546"
                while (((_i < ((@:checkr _tab ?? throw "null pointer dereference").r16.length) : Bool) && ((@:checkr _tab ?? throw "null pointer dereference").r16[(_i : stdgo.GoInt)].hi <= (255 : stdgo.GoUInt16) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L547"
                    _i++;
                };
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L549"
                if ((@:checkr _tab ?? throw "null pointer dereference").latinOffset != (_i)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L550"
                    _t.errorf(("%s: LatinOffset=%d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface((@:checkr _tab ?? throw "null pointer dereference").latinOffset), stdgo.Go.toInterface(_i));
                };
            };
        };
    }
