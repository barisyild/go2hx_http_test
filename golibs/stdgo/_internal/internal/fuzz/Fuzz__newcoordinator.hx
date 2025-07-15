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
function _newCoordinator(_opts:stdgo._internal.internal.fuzz.Fuzz_coordinatefuzzingopts.CoordinateFuzzingOpts):{ var _0 : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L657"
        if (_opts.seed != null) for (_i => _ in _opts.seed) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L658"
            if (((_opts.seed[(_i : stdgo.GoInt)].data == null) && (_opts.seed[(_i : stdgo.GoInt)].values != null) : Bool)) {
                _opts.seed[(_i : stdgo.GoInt)].data = stdgo._internal.internal.fuzz.Fuzz__marshalcorpusfile._marshalCorpusFile(...(_opts.seed[(_i : stdgo.GoInt)].values : Array<stdgo.AnyInterface>));
            };
        };
        var _c = (stdgo.Go.setRef(({ _opts : _opts?.__copy__(), _startTime : stdgo._internal.time.Time_now.now()?.__copy__(), _inputC : (new stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput>(0, () -> ({} : stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput)) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput>), _minimizeC : (new stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput>(0, () -> ({} : stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput)) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput>), _resultC : (new stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult>(0, () -> ({} : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult)) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult>), _timeLastLog : stdgo._internal.time.Time_now.now()?.__copy__(), _corpus : ({ _hashes : (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.GoArray<stdgo.GoUInt8>, Bool>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 32));
            x.__defaultValue__ = () -> false;
            {};
            cast x;
        } : stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, Bool>) : stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, Bool>) } : stdgo._internal.internal.fuzz.Fuzz_t_corpus.T_corpus) } : stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_coordinatordott_coordinator.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_coordinatordotT_coordinator })) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L671"
        {
            var _err = @:assignType (_c._readCache() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L672"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L674"
        if (((_opts.minimizeLimit > (0i64 : stdgo.GoInt64) : Bool) || (_opts.minimizeTimeout > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L675"
            if (_opts.types != null) for (__0 => _t in _opts.types) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L676"
                if (stdgo._internal.internal.fuzz.Fuzz__isminimizable._isMinimizable(_t)) {
                    (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._minimizationAllowed = true;
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L678"
                    break;
                };
            };
        };
        var _covSize = @:assignType (stdgo._internal.internal.fuzz.Fuzz__coverage._coverage().length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L684"
        if (_covSize == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L685"
            stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.log, ("warning: the test binary was not built with coverage instrumentation, so fuzzing will run without coverage guidance and may be inefficient\n" : stdgo.GoString));
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._warmupInputCount = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.seed.length);
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L690"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.seed != null) for (__0 => _e in (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.seed) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L691"
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inputQueue._enqueue(new stdgo.AnyInterface(_e, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "parent", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "values", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }) }, optional : false }, { name : "generation", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "isSeed", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }]))));
            };
        } else {
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._warmupInputCount = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._corpus._entries.length);
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L695"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._corpus._entries != null) for (__0 => _e in (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._corpus._entries) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L696"
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inputQueue._enqueue(new stdgo.AnyInterface(_e, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "parent", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "values", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }) }, optional : false }, { name : "generation", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "isSeed", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }]))));
            };
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._coverageMask = (new stdgo.Slice<stdgo.GoUInt8>((_covSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._warmupInputLeft = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._warmupInputCount;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L703"
        if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._corpus._entries.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L704"
            stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.log, ("warning: starting with empty corpus\n" : stdgo.GoString));
            var _vals:stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L706"
            if (_opts.types != null) for (__0 => _t in _opts.types) {
                _vals = (_vals.__append__(stdgo._internal.internal.fuzz.Fuzz__zerovalue._zeroValue(_t)) : stdgo.Slice<stdgo.AnyInterface>);
            };
            var _data = stdgo._internal.internal.fuzz.Fuzz__marshalcorpusfile._marshalCorpusFile(...(_vals : Array<stdgo.AnyInterface>));
            var _h = stdgo._internal.crypto.sha256.Sha256_sum256.sum256(_data)?.__copy__();
            var _name = @:assignType (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), new stdgo.AnyInterface((_h.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))))?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L712"
            _c._addCorpusEntries(false, ({ path : _name?.__copy__(), data : _data, parent : ("" : stdgo.GoString), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }));
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L715"
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
