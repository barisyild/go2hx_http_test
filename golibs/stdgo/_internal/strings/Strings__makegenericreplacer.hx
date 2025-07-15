package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function _makeGenericReplacer(_oldnew:stdgo.Slice<stdgo.GoString>):stdgo.Ref<stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer> {
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_t_genericreplacerdott_genericreplacer.__type__stdgodot_internaldotstringsdotStrings_t_genericreplacerdotT_genericReplacer })) : stdgo.Ref<stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer>);
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L271"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_oldnew.length) : Bool)) {
                var _key = @:assignType (_oldnew[(_i : stdgo.GoInt)].__copy__() : stdgo.GoString);
//"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L273"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while ((_j < (_key.length) : Bool)) {
                        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mapping[(_key[(_j : stdgo.GoInt)] : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                        _j++;
                    };
                };
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L278"
        for (__0 => _b in (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mapping.__copy__()) {
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tableSize = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tableSize + ((_b : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _index:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L283"
        for (_i => _b in (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mapping.__copy__()) {
            //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L284"
            if (_b == ((0 : stdgo.GoUInt8))) {
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mapping[(_i : stdgo.GoInt)] = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tableSize : stdgo.GoUInt8);
            } else {
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mapping[(_i : stdgo.GoInt)] = _index;
                //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L288"
                _index++;
            };
        };
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._root._table = (new stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>>(((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tableSize : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>>);
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L294"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_oldnew.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L295"
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._root._add(_oldnew[(_i : stdgo.GoInt)].__copy__(), _oldnew[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].__copy__(), ((_oldnew.length) - _i : stdgo.GoInt), _r);
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L297"
        return _r;
    }
