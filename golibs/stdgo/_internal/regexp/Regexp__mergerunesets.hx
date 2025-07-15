package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
function _mergeRuneSets(_leftRunes:stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>, _rightRunes:stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>, _leftPC:stdgo.GoUInt32, _rightPC:stdgo.GoUInt32):{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.Slice<stdgo.GoUInt32>; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _leftLen = @:assignType ((_leftRunes : stdgo.Slice<stdgo.GoInt32>).length : stdgo.GoInt);
            var _rightLen = @:assignType ((_rightRunes : stdgo.Slice<stdgo.GoInt32>).length : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L161"
            if ((((_leftLen & (1 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) || ((_rightLen & (1 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L162"
                throw new stdgo.AnyInterface(("mergeRuneSets odd length []rune" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            var _lx:stdgo.GoInt = (0 : stdgo.GoInt), _rx:stdgo.GoInt = (0 : stdgo.GoInt), _rx__pointer__ = stdgo.Go.pointer(_rx), _lx__pointer__ = stdgo.Go.pointer(_lx);
            var _merged = (new stdgo.Slice<stdgo.GoInt32>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _next = (new stdgo.Slice<stdgo.GoUInt32>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
            var _ok = @:assignType (true : Bool);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L171"
                        if (!_ok) {
                            _merged = (null : stdgo.Slice<stdgo.GoInt32>);
                            _next = (null : stdgo.Slice<stdgo.GoUInt32>);
                        };
                    };
                    a();
                }) });
            };
            var _ix = @:assignType (-1 : stdgo.GoInt);
            var _extend = function(_newLow:stdgo.Pointer<stdgo.GoInt>, _newArray:stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>, _pc:stdgo.GoUInt32):Bool {
                //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L179"
                if (((_ix > (0 : stdgo.GoInt) : Bool) && (((_newArray : stdgo.Slice<stdgo.GoInt32>))[(_newLow.value : stdgo.GoInt)] <= _merged[(_ix : stdgo.GoInt)] : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L180"
                    return false;
                };
                _merged = (_merged.__append__(((_newArray : stdgo.Slice<stdgo.GoInt32>))[(_newLow.value : stdgo.GoInt)], ((_newArray : stdgo.Slice<stdgo.GoInt32>))[(_newLow.value + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoInt32>);
                _newLow.value = (_newLow.value + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                _ix = (_ix + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                _next = (_next.__append__(_pc) : stdgo.Slice<stdgo.GoUInt32>);
                //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L186"
                return true;
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L189"
            while (((_lx < _leftLen : Bool) || (_rx < _rightLen : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L190"
                if ((_rx >= _rightLen : Bool)) {
                    _ok = _extend(_lx__pointer__, _leftRunes, _leftPC);
                } else if ((_lx >= _leftLen : Bool)) {
                    _ok = _extend(_rx__pointer__, _rightRunes, _rightPC);
                } else if ((((_rightRunes : stdgo.Slice<stdgo.GoInt32>))[(_rx : stdgo.GoInt)] < ((_leftRunes : stdgo.Slice<stdgo.GoInt32>))[(_lx : stdgo.GoInt)] : Bool)) {
                    _ok = _extend(_rx__pointer__, _rightRunes, _rightPC);
                } else {
                    _ok = _extend(_lx__pointer__, _leftRunes, _leftPC);
                };
                //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L200"
                if (!_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L201"
                    {
                        final __ret__:{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.Slice<stdgo.GoUInt32>; } = { _0 : stdgo._internal.regexp.Regexp__norune._noRune, _1 : stdgo._internal.regexp.Regexp__nonext._noNext };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L204"
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.Slice<stdgo.GoUInt32>; } = { _0 : _merged, _1 : _next };
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
                return { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : (null : stdgo.Slice<stdgo.GoUInt32>) };
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
                return { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : (null : stdgo.Slice<stdgo.GoUInt32>) };
            };
        };
    }
