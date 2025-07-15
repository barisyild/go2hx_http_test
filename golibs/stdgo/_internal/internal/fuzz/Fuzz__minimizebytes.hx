package stdgo._internal.internal.fuzz;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.Math;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.go.parser.Parser;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.time.Time;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.json.Json;
function _minimizeBytes(_v:stdgo.Slice<stdgo.GoUInt8>, _try:stdgo.Slice<stdgo.GoUInt8> -> Bool, _shouldStop:() -> Bool):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _tmp = (new stdgo.Slice<stdgo.GoUInt8>((_v.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _a0 = _tmp;
                var _a1 = _v;
                final __f__ = _a0.__copyTo__;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a1) });
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L25"
            {
                var _n = @:assignType (1024 : stdgo.GoInt);
                while (_n != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L26"
                    while (((_v.length) > _n : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L27"
                        if (_shouldStop()) {
                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L28"
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return;
                            };
                        };
                        var _candidate = (_v.__slice__(0, ((_v.length) - _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L31"
                        if (!_try(_candidate)) {
                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L32"
                            break;
                        };
                        _v = _candidate;
                    };
                    _n = (_n / ((2 : stdgo.GoInt)) : stdgo.GoInt);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L40"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < ((_v.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L41"
                    if (_shouldStop()) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L42"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return;
                        };
                    };
var _candidate = (_tmp.__slice__(0, ((_v.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
//"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L45"
                    (_candidate.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_v.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>));
//"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L46"
                    (_candidate.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_v.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
//"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L47"
                    if (!_try(_candidate)) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L48"
                        {
                            _i++;
                            continue;
                        };
                    };
//"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L51"
                    (_v.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_v.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
_v = (_v.__slice__(0, (_candidate.length)) : stdgo.Slice<stdgo.GoUInt8>);
//"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L55"
                    _i--;
                    _i++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L59"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < ((_v.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L60"
                    _tmp.__copyTo__((_v.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>));
//"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L61"
                    {
                        var _j = @:assignType (_v.length : stdgo.GoInt);
                        while ((_j > (_i + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L62"
                            if (_shouldStop()) {
                                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L63"
                                {
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return;
                                };
                            };
var _candidate = (_tmp.__slice__(0, (((_v.length) - _j : stdgo.GoInt) + _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
//"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L66"
                            (_candidate.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_v.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>));
//"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L67"
                            if (!_try(_candidate)) {
                                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L68"
                                {
                                    _j--;
                                    continue;
                                };
                            };
//"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L71"
                            (_v.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_v.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>));
_v = (_v.__slice__(0, (_candidate.length)) : stdgo.Slice<stdgo.GoUInt8>);
_j = (_v.length);
                            _j--;
                        };
                    };
                    _i++;
                };
            };
            var _printableChars = ((("012789ABCXYZabcxyz !\"#$%&\'()*+,." : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L80"
            if (_v != null) for (_i => _b in _v) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L81"
                if (_shouldStop()) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L82"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L85"
                if (_printableChars != null) for (__0 => _pc in _printableChars) {
                    _v[(_i : stdgo.GoInt)] = _pc;
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L87"
                    if (_try(_v)) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/minimize.go#L89"
                        break;
                    };
                    _v[(_i : stdgo.GoInt)] = _b;
                };
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
                return;
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
                return;
            };
        };
    }
