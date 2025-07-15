package _internal.fmt_test;
function testSprintf(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1094"
        if (_internal.fmt_test.Fmt_test__fmttests._fmtTests != null) for (__2 => _tt in _internal.fmt_test.Fmt_test__fmttests._fmtTests) {
            var _s = @:assignType (stdgo._internal.fmt.Fmt_sprintf.sprintf(_tt._fmt?.__copy__(), _tt._val)?.__copy__() : stdgo.GoString);
            var _i = @:assignType (stdgo._internal.strings.Strings_index.index(_tt._out?.__copy__(), ("PTR" : stdgo.GoString)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1097"
            if (((_i >= (0 : stdgo.GoInt) : Bool) && (_i < (_s.length) : Bool) : Bool)) {
                var _pattern:stdgo.GoString = ("" : stdgo.GoString), _chars:stdgo.GoString = ("" : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1099"
                if (stdgo._internal.strings.Strings_hasprefix.hasPrefix((_tt._out.__slice__(_i) : stdgo.GoString)?.__copy__(), ("PTR_b" : stdgo.GoString))) {
                    _pattern = ("PTR_b" : stdgo.GoString);
                    _chars = ("01" : stdgo.GoString);
                } else if (stdgo._internal.strings.Strings_hasprefix.hasPrefix((_tt._out.__slice__(_i) : stdgo.GoString)?.__copy__(), ("PTR_o" : stdgo.GoString))) {
                    _pattern = ("PTR_o" : stdgo.GoString);
                    _chars = ("01234567" : stdgo.GoString);
                } else if (stdgo._internal.strings.Strings_hasprefix.hasPrefix((_tt._out.__slice__(_i) : stdgo.GoString)?.__copy__(), ("PTR_d" : stdgo.GoString))) {
                    _pattern = ("PTR_d" : stdgo.GoString);
                    _chars = ("0123456789" : stdgo.GoString);
                } else if (stdgo._internal.strings.Strings_hasprefix.hasPrefix((_tt._out.__slice__(_i) : stdgo.GoString)?.__copy__(), ("PTR_x" : stdgo.GoString))) {
                    _pattern = ("PTR_x" : stdgo.GoString);
                    _chars = ("0123456789abcdef" : stdgo.GoString);
                } else if (stdgo._internal.strings.Strings_hasprefix.hasPrefix((_tt._out.__slice__(_i) : stdgo.GoString)?.__copy__(), ("PTR_X" : stdgo.GoString))) {
                    _pattern = ("PTR_X" : stdgo.GoString);
                    _chars = ("0123456789ABCDEF" : stdgo.GoString);
                } else {
                    _pattern = ("PTR" : stdgo.GoString);
                    _chars = ("0123456789abcdefABCDEF" : stdgo.GoString);
                };
                var _p = @:assignType (((_s.__slice__(0, _i) : stdgo.GoString) + _pattern?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1120"
                {
                    var _j = @:assignType (_i : stdgo.GoInt);
                    while ((_j < (_s.length) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1121"
                        if (!stdgo._internal.strings.Strings_containsrune.containsRune(_chars.__copy__(), (_s[(_j : stdgo.GoInt)] : stdgo.GoInt32))) {
                            _p = (_p + ((_s.__slice__(_j) : stdgo.GoString)).__copy__() : stdgo.GoString);
                            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1123"
                            break;
                        };
                        _j++;
                    };
                };
                _s = _p?.__copy__();
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1128"
            if (_s != (_tt._out)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1129"
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(_tt._val, stdgo._internal.internal.reflect.GoType.basic(string_kind)) : stdgo.GoString), _1 : true };
                    } catch(__exception__) {
                        { _0 : ("" : stdgo.GoString), _1 : false };
                    }, __3 = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1132"
                        _t.errorf(("Sprintf(%q, %q) = <%s> want <%s>" : stdgo.GoString), new stdgo.AnyInterface(_tt._fmt, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), _tt._val, new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1134"
                        _t.errorf(("Sprintf(%q, %v) = %q want %q" : stdgo.GoString), new stdgo.AnyInterface(_tt._fmt, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), _tt._val, new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    };
                };
            };
        };
    }
