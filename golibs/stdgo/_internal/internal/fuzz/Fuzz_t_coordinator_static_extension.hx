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
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_coordinator_asInterface) class T_coordinator_static_extension {
    @:keep
    @:tdfield
    static public function _debugLogf( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        var _t = @:assignType (stdgo._internal.time.Time_now.now().format(("2006-01-02 15:04:05.999999999" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1101"
        stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.log, (((_t + (" DEBUG " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _format?.__copy__() : stdgo.GoString) + ("\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function _readCache( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L938"
        {
            var __tmp__ = _c._addCorpusEntries(false, ...((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.seed : Array<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>)), __0:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L939"
                return _err;
            };
        };
        var __tmp__ = stdgo._internal.internal.fuzz.Fuzz_readcorpus.readCorpus((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.cacheDir?.__copy__(), (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.types), _entries:stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L942"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L943"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_malformedcorpuserrordotmalformedcorpuserror.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_malformedcorpuserrordotMalformedCorpusError })) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_malformedcorpuserror.MalformedCorpusError>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_malformedcorpuserror.MalformedCorpusError>), _1 : false };
                }, __1 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L946"
                    return _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L952"
        {
            var __tmp__ = _c._addCorpusEntries(false, ...(_entries : Array<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>)), __1:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L953"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L955"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _elapsed( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>):stdgo._internal.time.Time_duration.Duration {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L929"
        return stdgo._internal.time.Time_since.since((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._startTime?.__copy__()).round((1000000000i64 : stdgo._internal.time.Time_duration.Duration));
    }
    @:keep
    @:tdfield
    static public function _canMinimize( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L924"
        return ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._minimizationAllowed && ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.limit == (0i64 : stdgo.GoInt64)) || (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count + (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._countWaiting : stdgo.GoInt64) < (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.limit : Bool) : Bool)) : Bool);
    }
    @:keep
    @:tdfield
    static public function _updateCoverage( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>, _newCoverage:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L909"
        if ((_newCoverage.length) != (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._coverageMask.length))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L910"
            throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("number of coverage counters changed at runtime: %d, expected %d" : stdgo.GoString), new stdgo.AnyInterface((_newCoverage.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._coverageMask.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _newBitCount = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L913"
        if (_newCoverage != null) for (_i => _ in _newCoverage) {
            var _diff = @:assignType (_newCoverage[(_i : stdgo.GoInt)] & (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._coverageMask[(_i : stdgo.GoInt)] ^ (-1i64 : stdgo.GoInt32) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            _newBitCount = (_newBitCount + (stdgo._internal.math.bits.Bits_onescount8.onesCount8(_diff)) : stdgo.GoInt);
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._coverageMask[(_i : stdgo.GoInt)] = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._coverageMask[(_i : stdgo.GoInt)] | (_newCoverage[(_i : stdgo.GoInt)]) : stdgo.GoUInt8);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L918"
        return _newBitCount;
    }
    @:keep
    @:tdfield
    static public function _warmupRun( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L902"
        return ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._warmupInputLeft > (0 : stdgo.GoInt) : Bool);
    }
    @:keep
    @:tdfield
    static public function _sentMinimizeInput( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>, _input:stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L884"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._minimizeQueue._dequeue();
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._countWaiting = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._countWaiting + (_input._limit) : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function _peekMinimizeInput( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>):{ var _0 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L846"
        if (!_c._canMinimize()) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L849"
            return { _0 : (new stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput() : stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput), _1 : false };
        };
        var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._minimizeQueue._peek(), _v:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L852"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L853"
            return { _0 : (new stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput() : stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput), _1 : false };
        };
        var _input = @:assignType ((stdgo.Go.typeAssert(_v, _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_fuzzminimizeinputdott_fuzzminimizeinput.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_fuzzminimizeinputdotT_fuzzMinimizeInput) : stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput)?.__copy__() : stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L857"
        if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.minimizeTimeout > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            _input._timeout = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.minimizeTimeout;
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L860"
        if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.minimizeLimit > (0i64 : stdgo.GoInt64) : Bool)) {
            _input._limit = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.minimizeLimit;
        } else if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.limit > (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L863"
            if (_input._crasherMsg != ((stdgo.Go.str() : stdgo.GoString))) {
                _input._limit = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.limit;
            } else {
                _input._limit = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.limit / ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.parallel : stdgo.GoInt64) : stdgo.GoInt64);
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L867"
                if ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.limit % ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.parallel : stdgo.GoInt64) : stdgo.GoInt64) > (0i64 : stdgo.GoInt64) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L868"
                    _input._limit++;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L872"
        if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.limit > (0i64 : stdgo.GoInt64) : Bool)) {
            var _remaining = @:assignType (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.limit - (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count : stdgo.GoInt64) - (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._countWaiting : stdgo.GoInt64);
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L874"
            if ((_input._limit > _remaining : Bool)) {
                _input._limit = _remaining;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L878"
        return { _0 : _input?.__copy__(), _1 : true };
    }
    @:keep
    @:tdfield
    static public function _queueForMinimization( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>, _result:stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult, _keepCoverage:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L822"
        if (stdgo._internal.internal.fuzz.Fuzz__shouldprintdebuginfo._shouldPrintDebugInfo()) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L823"
            _c._debugLogf(("queueing input for minimization, id: %s, parent: %s, keepCoverage: %t, crasher: %t" : stdgo.GoString), new stdgo.AnyInterface(_result._entry.path, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_result._entry.parent, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_keepCoverage != null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_result._crasherMsg != ((stdgo.Go.str() : stdgo.GoString)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L831"
        if (_result._crasherMsg != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L832"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._minimizeQueue._clear();
        };
        var _input = @:assignType ({ _entry : {
            final x = _result._entry;
            { parent : x.parent?.__copy__(), path : x.path?.__copy__(), data : x.data, values : x.values, generation : x.generation, isSeed : x.isSeed };
        }, _crasherMsg : _result._crasherMsg?.__copy__(), _keepCoverage : _keepCoverage } : stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L840"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._minimizeQueue._enqueue(new stdgo.AnyInterface(stdgo.Go.asInterface(_input, _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_fuzzminimizeinputdott_fuzzminimizeinput.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_fuzzminimizeinputdotT_fuzzMinimizeInput), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_fuzzminimizeinputdott_fuzzminimizeinput.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_fuzzminimizeinputdotT_fuzzMinimizeInput)));
    }
    @:keep
    @:tdfield
    static public function _refillInputQueue( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L814"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._corpus._entries != null) for (__0 => _e in (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._corpus._entries) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L815"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inputQueue._enqueue(new stdgo.AnyInterface(_e, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "parent", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "values", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }) }, optional : false }, { name : "generation", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "isSeed", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }]))));
        };
    }
    @:keep
    @:tdfield
    static public function _sentInput( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>, _input:stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L807"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inputQueue._dequeue();
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._countWaiting = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._countWaiting + (_input._limit) : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function _peekInput( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>):{ var _0 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L759"
        if ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.limit > (0i64 : stdgo.GoInt64) : Bool) && (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count + (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._countWaiting : stdgo.GoInt64) >= (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.limit : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L762"
            return { _0 : (new stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput() : stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput), _1 : false };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L764"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inputQueue._len == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L765"
            if (_c._warmupRun()) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L768"
                return { _0 : (new stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput() : stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput), _1 : false };
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L770"
            _c._refillInputQueue();
        };
        var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inputQueue._peek(), _entry:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L774"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L775"
            throw new stdgo.AnyInterface(("input queue empty after refill" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _input = @:assignType ({ _entry : {
            final x = (stdgo.Go.typeAssert(_entry, stdgo._internal.internal.reflect.GoType.structType([{ name : "parent", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "values", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }) }, optional : false }, { name : "generation", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "isSeed", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])) : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; });
            { parent : x.parent?.__copy__(), path : x.path?.__copy__(), data : x.data, values : x.values, generation : x.generation, isSeed : x.isSeed };
        }, _timeout : (100000000i64 : stdgo._internal.time.Time_duration.Duration), _warmup : _c._warmupRun() } : stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L782"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._coverageMask != null) {
            _input._coverageData = stdgo._internal.bytes.Bytes_clone.clone((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._coverageMask);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L785"
        if (_input._warmup) {
            _input._limit = (1i64 : stdgo.GoInt64);
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L789"
            return { _0 : _input?.__copy__(), _1 : true };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L792"
        if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.limit > (0i64 : stdgo.GoInt64) : Bool)) {
            _input._limit = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.limit / ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.parallel : stdgo.GoInt64) : stdgo.GoInt64);
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L794"
            if ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.limit % ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.parallel : stdgo.GoInt64) : stdgo.GoInt64) > (0i64 : stdgo.GoInt64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L795"
                _input._limit++;
            };
            var _remaining = @:assignType (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.limit - (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count : stdgo.GoInt64) - (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._countWaiting : stdgo.GoInt64);
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L798"
            if ((_input._limit > _remaining : Bool)) {
                _input._limit = _remaining;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L802"
        return { _0 : _input?.__copy__(), _1 : true };
    }
    @:keep
    @:tdfield
    static public function _logStats( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        var _now = @:assignType (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_time.Time);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L726"
        if (_c._warmupRun()) {
            var _runSoFar = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._warmupInputCount - (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._warmupInputLeft : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L728"
            if (stdgo._internal.internal.fuzz.Fuzz__coverageenabled._coverageEnabled) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L729"
                stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.log, ("fuzz: elapsed: %s, gathering baseline coverage: %d/%d completed\n" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_c._elapsed(), _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)), new stdgo.AnyInterface(_runSoFar, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._warmupInputCount, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            } else {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L731"
                stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.log, ("fuzz: elapsed: %s, testing seed corpus: %d/%d completed\n" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_c._elapsed(), _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)), new stdgo.AnyInterface(_runSoFar, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._warmupInputCount, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        } else if (({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._crashMinimizing;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L734"
            stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.log, ("fuzz: elapsed: %s, minimizing\n" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_c._elapsed(), _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)));
        } else {
            var _rate = @:assignType ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count - (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._countLastLog : stdgo.GoInt64) : stdgo.GoFloat64) / _now.sub((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._timeLastLog?.__copy__()).seconds() : stdgo.GoFloat64);
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L737"
            if (stdgo._internal.internal.fuzz.Fuzz__coverageenabled._coverageEnabled) {
                var _total = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._warmupInputCount + (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._interestingCount : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L739"
                stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.log, ("fuzz: elapsed: %s, execs: %d (%.0f/sec), new interesting: %d (total: %d)\n" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_c._elapsed(), _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface(_rate, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._interestingCount, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_total, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            } else {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L741"
                stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.log, ("fuzz: elapsed: %s, execs: %d (%.0f/sec)\n" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_c._elapsed(), _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface(_rate, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))));
            };
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._countLastLog = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._timeLastLog = _now?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _updateStats( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>, _result:stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count + (_result._count) : stdgo.GoInt64);
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._countWaiting = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._countWaiting - (_result._limit) : stdgo.GoInt64);
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._duration = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._duration + (_result._totalDuration) : stdgo._internal.time.Time_duration.Duration);
    }
    @:keep
    @:tdfield
    static public function _addCorpusEntries( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>, _addToCache:Bool, _entries:haxe.Rest<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _entries = new stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>(_entries.length, 0, ..._entries);
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        var _noDupes = @:assignType (true : Bool);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L432"
        if (_entries != null) for (__0 => _e in _entries) {
            var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__corpusentrydata._corpusEntryData({
                final x = _e;
                { parent : x.parent?.__copy__(), path : x.path?.__copy__(), data : x.data, values : x.values, generation : x.generation, isSeed : x.isSeed };
            }), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L434"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L435"
                return { _0 : false, _1 : _err };
            };
            var _h = stdgo._internal.crypto.sha256.Sha256_sum256.sum256(_data)?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L438"
            if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._corpus._hashes[_h] ?? false)) {
                _noDupes = false;
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L440"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L442"
            if (_addToCache) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L443"
                {
                    var _err = @:assignType (stdgo._internal.internal.fuzz.Fuzz__writetocorpus._writeToCorpus((stdgo.Go.setRef(_e, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.structType([{ name : "parent", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "values", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }) }, optional : false }, { name : "generation", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "isSeed", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }]) })) : stdgo.Ref<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>), (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.cacheDir?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L444"
                        return { _0 : false, _1 : _err };
                    };
                };
                _e.data = (null : stdgo.Slice<stdgo.GoUInt8>);
            };
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._corpus._hashes[_h] = true;
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._corpus._entries = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._corpus._entries.__append__({
                final x = _e;
                { parent : x.parent?.__copy__(), path : x.path?.__copy__(), data : x.data, values : x.values, generation : x.generation, isSeed : x.isSeed };
            }) : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L454"
        return { _0 : _noDupes, _1 : (null : stdgo.Error) };
    }
}
