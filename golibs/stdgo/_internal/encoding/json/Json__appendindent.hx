package stdgo._internal.encoding.json;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
function _appendIndent(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.GoString, _indent:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _origLen = @:assignType (_dst.length : stdgo.GoInt);
            var _scan = stdgo._internal.encoding.json.Json__newscanner._newScanner();
            {
                var _a0 = _scan;
                final __f__ = stdgo._internal.encoding.json.Json__freescanner._freeScanner;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            var _needIndent = @:assignType (false : Bool);
            var _depth = @:assignType (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/indent.go#L124"
            if (_src != null) for (__2 => _c in _src) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/indent.go#L125"
                (@:checkr _scan ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes++;
                var _v = @:assignType ((@:checkr _scan ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step(_scan, _c) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/indent.go#L127"
                if (_v == ((9 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/indent.go#L128"
                    continue;
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/indent.go#L130"
                if (_v == ((11 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/indent.go#L131"
                    break;
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/indent.go#L133"
                if (((_needIndent && _v != ((5 : stdgo.GoInt)) : Bool) && (_v != (8 : stdgo.GoInt)) : Bool)) {
                    _needIndent = false;
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/indent.go#L135"
                    _depth++;
                    _dst = stdgo._internal.encoding.json.Json__appendnewline._appendNewline(_dst, _prefix?.__copy__(), _indent?.__copy__(), _depth);
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/indent.go#L141"
                if (_v == ((0 : stdgo.GoInt))) {
                    _dst = (_dst.__append__(_c) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/indent.go#L143"
                    continue;
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/indent.go#L147"
                {
                    final __value__ = _c;
                    if (__value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((91 : stdgo.GoUInt8))) {
                        _needIndent = true;
                        _dst = (_dst.__append__(_c) : stdgo.Slice<stdgo.GoUInt8>);
                    } else if (__value__ == ((44 : stdgo.GoUInt8))) {
                        _dst = (_dst.__append__(_c) : stdgo.Slice<stdgo.GoUInt8>);
                        _dst = stdgo._internal.encoding.json.Json__appendnewline._appendNewline(_dst, _prefix?.__copy__(), _indent?.__copy__(), _depth);
                    } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                        _dst = (_dst.__append__(_c, (32 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                    } else if (__value__ == ((125 : stdgo.GoUInt8)) || __value__ == ((93 : stdgo.GoUInt8))) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/indent.go#L158"
                        if (_needIndent) {
                            _needIndent = false;
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/indent.go#L162"
                            _depth--;
                            _dst = stdgo._internal.encoding.json.Json__appendnewline._appendNewline(_dst, _prefix?.__copy__(), _indent?.__copy__(), _depth);
                        };
                        _dst = (_dst.__append__(_c) : stdgo.Slice<stdgo.GoUInt8>);
                    } else {
                        _dst = (_dst.__append__(_c) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/indent.go#L170"
            if (_scan._eof() == ((11 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/indent.go#L171"
                {
                    final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (_dst.__slice__(0, _origLen) : stdgo.Slice<stdgo.GoUInt8>), _1 : (@:checkr _scan ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/indent.go#L173"
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _dst, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
            };
        };
    }
