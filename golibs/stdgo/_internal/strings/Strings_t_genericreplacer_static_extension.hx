package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
@:keep @:allow(stdgo._internal.strings.Strings.T_genericReplacer_asInterface) class T_genericReplacer_static_extension {
    @:keep
    @:tdfield
    static public function writeString( _r:stdgo.Ref<stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer>, _w:stdgo._internal.io.Io_writer.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _sw = @:assignType (stdgo._internal.strings.Strings__getstringwriter._getStringWriter(_w) : stdgo._internal.io.Io_stringwriter.StringWriter);
        var _last:stdgo.GoInt = (0 : stdgo.GoInt), _wn:stdgo.GoInt = (0 : stdgo.GoInt);
        var _prevMatchEmpty:Bool = false;
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L340"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i <= (_s.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L342"
                if (((_i != (_s.length)) && ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._root._priority == (0 : stdgo.GoInt)) : Bool)) {
                    var _index = @:assignType ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mapping[(_s[(_i : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L344"
                    if (((_index == (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tableSize) || ({
                        final value = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._root._table[(_index : stdgo.GoInt)];
                        (value == null || (value : Dynamic).__nil__);
                    }) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L345"
                        _i++;
                        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L346"
                        continue;
                    };
                };
                var __tmp__ = _r._lookup((_s.__slice__(_i) : stdgo.GoString)?.__copy__(), _prevMatchEmpty), _val:stdgo.GoString = __tmp__._0, _keylen:stdgo.GoInt = __tmp__._1, _match:Bool = __tmp__._2;
                _prevMatchEmpty = (_match && (_keylen == (0 : stdgo.GoInt)) : Bool);
                //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L353"
                if (_match) {
                    {
                        var __tmp__ = _sw.writeString((_s.__slice__(_last, _i) : stdgo.GoString)?.__copy__());
                        _wn = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    _n = (_n + (_wn) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L356"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L357"
                        return { _0 : _n, _1 : _err };
                    };
                    {
                        var __tmp__ = _sw.writeString(_val?.__copy__());
                        _wn = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    _n = (_n + (_wn) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L361"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L362"
                        return { _0 : _n, _1 : _err };
                    };
                    _i = (_i + (_keylen) : stdgo.GoInt);
                    _last = _i;
                    //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L366"
                    continue;
                };
                //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L368"
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L370"
        if (_last != ((_s.length))) {
            {
                var __tmp__ = _sw.writeString((_s.__slice__(_last) : stdgo.GoString)?.__copy__());
                _wn = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            _n = (_n + (_wn) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L374"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function replace( _r:stdgo.Ref<stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer> = _r;
        var _buf = @:assignType (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (_s.length)).__setNumber32__() : stdgo._internal.strings.Strings_t_appendslicewriter.T_appendSliceWriter);
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L332"
        _r.writeString(stdgo.Go.asInterface((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_t_appendslicewriterdott_appendslicewriter.__type__stdgodot_internaldotstringsdotStrings_t_appendslicewriterdotT_appendSliceWriter })) : stdgo.Ref<stdgo._internal.strings.Strings_t_appendslicewriter.T_appendSliceWriter>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_t_appendslicewriterdott_appendslicewriter.__type__stdgodot_internaldotstringsdotStrings_t_appendslicewriterdotT_appendSliceWriter })), _s?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L333"
        return (_buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _lookup( _r:stdgo.Ref<stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer>, _s:stdgo.GoString, _ignoreRoot:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : Bool; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer> = _r;
        var _val = ("" : stdgo.GoString), _keylen = (0 : stdgo.GoInt), _found = false;
        var _bestPriority = @:assignType (0 : stdgo.GoInt);
        var _node = (stdgo.Go.setRef((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._root, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_t_trienodedott_trienode.__type__stdgodot_internaldotstringsdotStrings_t_trienodedotT_trieNode })) : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>);
        var _n = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L227"
        while (({
            final value = _node;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L228"
            if ((((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._priority > _bestPriority : Bool) && !((_ignoreRoot && (_node == (stdgo.Go.setRef((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._root, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_t_trienodedott_trienode.__type__stdgodot_internaldotstringsdotStrings_t_trienodedotT_trieNode })) : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>)) : Bool)) : Bool)) {
                _bestPriority = (@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._priority;
                _val = (@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value?.__copy__();
                _keylen = _n;
                _found = true;
            };
            //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L235"
            if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L236"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L238"
            if ((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table != null) {
                var _index = @:assignType ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mapping[(_s[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt8);
                //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L240"
                if ((_index : stdgo.GoInt) == ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tableSize)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L241"
                    break;
                };
                _node = (@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table[(_index : stdgo.GoInt)];
                _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L245"
                _n++;
            } else if ((((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix != (stdgo.Go.str() : stdgo.GoString)) && stdgo._internal.strings.Strings_hasprefix.hasPrefix(_s?.__copy__(), (@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix?.__copy__()) : Bool)) {
                _n = (_n + (((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix.length)) : stdgo.GoInt);
                _s = (_s.__slice__(((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix.length)) : stdgo.GoString)?.__copy__();
                _node = (@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next;
            } else {
                //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L251"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L254"
        return { _0 : _val, _1 : _keylen, _2 : _found };
    }
}
