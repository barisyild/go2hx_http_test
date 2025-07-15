package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
@:keep @:allow(stdgo._internal.strings.Strings.T_trieNode_asInterface) class T_trieNode_static_extension {
    @:keep
    @:tdfield
    static public function _add( _t:stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>, _key:stdgo.GoString, _val:stdgo.GoString, _priority:stdgo.GoInt, _r:stdgo.Ref<stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode> = _t;
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L159"
        if (_key == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L160"
            if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._priority == ((0 : stdgo.GoInt))) {
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value = _val?.__copy__();
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._priority = _priority;
            };
            //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L164"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L167"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix != ((stdgo.Go.str() : stdgo.GoString))) {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L170"
            while (((_n < ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix.length) : Bool) && (_n < (_key.length) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L171"
                if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix[(_n : stdgo.GoInt)] != (_key[(_n : stdgo.GoInt)])) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L172"
                    break;
                };
                _n++;
            };
            //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L175"
            if (_n == (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix.length))) {
                //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L176"
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next._add((_key.__slice__(_n) : stdgo.GoString)?.__copy__(), _val?.__copy__(), _priority, _r);
            } else if (_n == ((0 : stdgo.GoInt))) {
                var _prefixNode:stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode> = (null : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>);
                //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L182"
                if (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix.length) == ((1 : stdgo.GoInt))) {
                    _prefixNode = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next;
                } else {
                    _prefixNode = (stdgo.Go.setRef(({ _prefix : ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _next : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next } : stdgo._internal.strings.Strings_t_trienode.T_trieNode), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_t_trienodedott_trienode.__type__stdgodot_internaldotstringsdotStrings_t_trienodedotT_trieNode })) : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>);
                };
                var _keyNode = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_t_trienode.T_trieNode), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_t_trienodedott_trienode.__type__stdgodot_internaldotstringsdotStrings_t_trienodedotT_trieNode })) : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>);
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table = (new stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>>(((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tableSize : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>>);
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mapping[((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoInt)] = _prefixNode;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mapping[(_key[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoInt)] = _keyNode;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = null;
                //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L196"
                _keyNode._add((_key.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _val?.__copy__(), _priority, _r);
            } else {
                var _next = (stdgo.Go.setRef(({ _prefix : ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix.__slice__(_n) : stdgo.GoString)?.__copy__(), _next : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next } : stdgo._internal.strings.Strings_t_trienode.T_trieNode), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_t_trienodedott_trienode.__type__stdgodot_internaldotstringsdotStrings_t_trienodedotT_trieNode })) : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>);
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix = ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix.__slice__(0, _n) : stdgo.GoString)?.__copy__();
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = _next;
                //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L205"
                _next._add((_key.__slice__(_n) : stdgo.GoString)?.__copy__(), _val?.__copy__(), _priority, _r);
            };
        } else if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table != null) {
            var _m = @:assignType ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mapping[(_key[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L210"
            if (({
                final value = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table[(_m : stdgo.GoInt)];
                (value == null || (value : Dynamic).__nil__);
            })) {
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table[(_m : stdgo.GoInt)] = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_t_trienode.T_trieNode), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_t_trienodedott_trienode.__type__stdgodot_internaldotstringsdotStrings_t_trienodedotT_trieNode })) : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>);
            };
            //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L213"
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table[(_m : stdgo.GoInt)]._add((_key.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _val?.__copy__(), _priority, _r);
        } else {
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix = _key?.__copy__();
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_t_trienode.T_trieNode), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_t_trienodedott_trienode.__type__stdgodot_internaldotstringsdotStrings_t_trienodedotT_trieNode })) : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>);
            //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L217"
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next._add((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _val?.__copy__(), _priority, _r);
        };
    }
}
