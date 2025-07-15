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
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_workerClient_asInterface) class T_workerClient_static_extension {
    @:keep
    @:tdfield
    static public function _callLocked( _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient>, _ctx:stdgo._internal.context.Context_context.Context, _c:stdgo._internal.internal.fuzz.Fuzz_t_call.T_call, _resp:stdgo.AnyInterface):stdgo.Error {
        @:recv var _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient> = _wc;
        var _err = (null : stdgo.Error);
        var _enc = stdgo._internal.encoding.json.Json_newencoder.newEncoder(stdgo.Go.asInterface((@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._workerComm._fuzzIn, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_filedotfile.__type__stdgodot_internaldotosdotOs_filedotFile })));
        var _dec = stdgo._internal.encoding.json.Json_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(({ _ctx : _ctx, _r : stdgo.Go.asInterface((@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._workerComm._fuzzOut, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_filedotfile.__type__stdgodot_internaldotosdotOs_filedotFile })) } : stdgo._internal.internal.fuzz.Fuzz_t_contextreader.T_contextReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_contextreaderdott_contextreader.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_contextreaderdotT_contextReader })) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_contextreader.T_contextReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_contextreaderdott_contextreader.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_contextreaderdotT_contextReader })));
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1155"
        {
            var _err = @:assignType (_enc.encode(new stdgo.AnyInterface(stdgo.Go.asInterface(_c, _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_calldott_call.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_calldotT_call), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_calldott_call.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_calldotT_call))) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1156"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1158"
        return _err = _dec.decode(_resp);
    }
    @:keep
    @:tdfield
    static public function _ping( _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        @:recv var _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient> = _wc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1143"
            (@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _c = @:assignType ({ ping : (stdgo.Go.setRef((new stdgo._internal.internal.fuzz.Fuzz_t_pingargs.T_pingArgs() : stdgo._internal.internal.fuzz.Fuzz_t_pingargs.T_pingArgs), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_pingargsdott_pingargs.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_pingargsdotT_pingArgs })) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pingargs.T_pingArgs>) } : stdgo._internal.internal.fuzz.Fuzz_t_call.T_call);
            var _resp:stdgo._internal.internal.fuzz.Fuzz_t_pingresponse.T_pingResponse = ({} : stdgo._internal.internal.fuzz.Fuzz_t_pingresponse.T_pingResponse);
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1147"
            {
                final __ret__:stdgo.Error = _wc._callLocked(_ctx, _c?.__copy__(), new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_resp, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_pingresponsedott_pingresponse.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_pingresponsedotT_pingResponse })) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pingresponse.T_pingResponse>), _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_pingresponsedott_pingresponse.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_pingresponsedotT_pingResponse), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_pingresponsedott_pingresponse.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_pingresponsedotT_pingResponse }))));
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fuzz( _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient>, _ctx:stdgo._internal.context.Context_context.Context, _entryIn:{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }, _args:stdgo._internal.internal.fuzz.Fuzz_t_fuzzargs.T_fuzzArgs):{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } {
        @:recv var _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient> = _wc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _entryOut = { parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false }, _resp = ({} : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse), _isInternalError = false, _err = (null : stdgo.Error);
        try {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1075"
            (@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = (@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._workerComm._memMu.__smartGet__(), _mem = __tmp__._0, _ok = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1079"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1080"
                {
                    final __ret__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }), _1 : (new stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse() : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse), _2 : true, _3 : stdgo._internal.internal.fuzz.Fuzz__errsharedmemclosed._errSharedMemClosed };
                        _entryOut = __tmp__._0;
                        _resp = __tmp__._1;
                        _isInternalError = __tmp__._2;
                        _err = __tmp__._3;
                        __tmp__;
                    };
                    _entryOut = __ret__._0;
                    _resp = __ret__._1;
                    _isInternalError = __ret__._2;
                    _err = __ret__._3;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            _mem._header()._count = (0i64 : stdgo.GoInt64);
            var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__corpusentrydata._corpusEntryData({
                final x = _entryIn;
                { parent : x.parent?.__copy__(), path : x.path?.__copy__(), data : x.data, values : x.values, generation : x.generation, isSeed : x.isSeed };
            }), _inp:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1084"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1085"
                (@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._workerComm._memMu.__send__(_mem);
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1086"
                {
                    final __ret__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }), _1 : (new stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse() : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse), _2 : true, _3 : _err };
                        _entryOut = __tmp__._0;
                        _resp = __tmp__._1;
                        _isInternalError = __tmp__._2;
                        _err = __tmp__._3;
                        __tmp__;
                    };
                    _entryOut = __ret__._0;
                    _resp = __ret__._1;
                    _isInternalError = __ret__._2;
                    _err = __ret__._3;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1088"
            _mem._setValue(_inp);
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1089"
            (@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._workerComm._memMu.__send__(_mem);
            var _c = @:assignType ({ fuzz : (stdgo.Go.setRef(_args, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_fuzzargsdott_fuzzargs.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_fuzzargsdotT_fuzzArgs })) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_fuzzargs.T_fuzzArgs>) } : stdgo._internal.internal.fuzz.Fuzz_t_call.T_call);
            var _callErr = @:assignType (_wc._callLocked(_ctx, _c?.__copy__(), new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_resp, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_fuzzresponsedott_fuzzresponse.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_fuzzresponsedotT_fuzzResponse })) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse>), _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_fuzzresponsedott_fuzzresponse.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_fuzzresponsedotT_fuzzResponse), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_fuzzresponsedott_fuzzresponse.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_fuzzresponsedotT_fuzzResponse })))) : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1093"
            if (_resp.internalErr != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1094"
                {
                    final __ret__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }), _1 : (new stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse() : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse), _2 : true, _3 : stdgo._internal.errors.Errors_new_.new_(_resp.internalErr?.__copy__()) };
                        _entryOut = __tmp__._0;
                        _resp = __tmp__._1;
                        _isInternalError = __tmp__._2;
                        _err = __tmp__._3;
                        __tmp__;
                    };
                    _entryOut = __ret__._0;
                    _resp = __ret__._1;
                    _isInternalError = __ret__._2;
                    _err = __ret__._3;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                var __tmp__ = (@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._workerComm._memMu.__smartGet__();
                _mem = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1097"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1098"
                {
                    final __ret__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }), _1 : (new stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse() : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse), _2 : true, _3 : stdgo._internal.internal.fuzz.Fuzz__errsharedmemclosed._errSharedMemClosed };
                        _entryOut = __tmp__._0;
                        _resp = __tmp__._1;
                        _isInternalError = __tmp__._2;
                        _err = __tmp__._3;
                        __tmp__;
                    };
                    _entryOut = __ret__._0;
                    _resp = __ret__._1;
                    _isInternalError = __ret__._2;
                    _err = __ret__._3;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1100"
                        (@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._workerComm._memMu.__send__(_mem);
                    };
                    a();
                }) });
            };
            _resp.count = _mem._header()._count;
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1103"
            if (!stdgo._internal.bytes.Bytes_equal.equal(_inp, _mem._valueRef())) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1104"
                {
                    final __ret__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }), _1 : (new stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse() : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse), _2 : true, _3 : stdgo._internal.errors.Errors_new_.new_(("workerServer.fuzz modified input" : stdgo.GoString)) };
                        _entryOut = __tmp__._0;
                        _resp = __tmp__._1;
                        _isInternalError = __tmp__._2;
                        _err = __tmp__._3;
                        __tmp__;
                    };
                    _entryOut = __ret__._0;
                    _resp = __ret__._1;
                    _isInternalError = __ret__._2;
                    _err = __ret__._3;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _needEntryOut = @:assignType ((_callErr != null || _resp.err != ((stdgo.Go.str() : stdgo.GoString)) : Bool) || ((!_args.warmup && (_resp.coverageData != null) : Bool)) : Bool);
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1108"
            if (_needEntryOut) {
                var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__unmarshalcorpusfile._unmarshalCorpusFile(_inp), _valuesOut:stdgo.Slice<stdgo.AnyInterface> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1110"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1111"
                    {
                        final __ret__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }), _1 : (new stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse() : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse), _2 : true, _3 : stdgo._internal.fmt.Fmt_errorf.errorf(("unmarshaling fuzz input value after call: %v" : stdgo.GoString), ({
                                final __t__ = _err;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            })) };
                            _entryOut = __tmp__._0;
                            _resp = __tmp__._1;
                            _isInternalError = __tmp__._2;
                            _err = __tmp__._3;
                            __tmp__;
                        };
                        _entryOut = __ret__._0;
                        _resp = __ret__._1;
                        _isInternalError = __ret__._2;
                        _err = __ret__._3;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1113"
                (@:checkr (@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r._restore(_mem._header()._randState, _mem._header()._randInc);
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1114"
                if (!_args.warmup) {
                    var _numMutations = @:assignType (((((_resp.count - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) % (5i64 : stdgo.GoInt64) : stdgo.GoInt64)) + (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1117"
                    {
                        var _i = @:assignType ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
                        while ((_i < _numMutations : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1118"
                            (@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m._mutate(_valuesOut, _mem._valueRef().capacity);
                            _i++;
                        };
                    };
                };
                var _dataOut = stdgo._internal.internal.fuzz.Fuzz__marshalcorpusfile._marshalCorpusFile(...(_valuesOut : Array<stdgo.AnyInterface>));
                var _h = stdgo._internal.crypto.sha256.Sha256_sum256.sum256(_dataOut)?.__copy__();
                var _name = @:assignType (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), new stdgo.AnyInterface((_h.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))))?.__copy__() : stdgo.GoString);
                _entryOut = ({ parent : _entryIn.path?.__copy__(), path : _name?.__copy__(), data : _dataOut, generation : (_entryIn.generation + (1 : stdgo.GoInt) : stdgo.GoInt), values : (null : stdgo.Slice<stdgo.AnyInterface>), isSeed : false } : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; });
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1131"
                if (_args.warmup) {
                    _entryOut.isSeed = _entryIn.isSeed;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1138"
            {
                final __ret__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : {
                        final x = _entryOut;
                        { parent : x.parent?.__copy__(), path : x.path?.__copy__(), data : x.data, values : x.values, generation : x.generation, isSeed : x.isSeed };
                    }, _1 : _resp?.__copy__(), _2 : false, _3 : _callErr };
                    _entryOut = __tmp__._0;
                    _resp = __tmp__._1;
                    _isInternalError = __tmp__._2;
                    _err = __tmp__._3;
                    __tmp__;
                };
                _entryOut = __ret__._0;
                _resp = __ret__._1;
                _isInternalError = __ret__._2;
                _err = __ret__._3;
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
                return { _0 : _entryOut, _1 : _resp, _2 : _isInternalError, _3 : _err };
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
                return { _0 : _entryOut, _1 : _resp, _2 : _isInternalError, _3 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _minimize( _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient>, _ctx:stdgo._internal.context.Context_context.Context, _entryIn:{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }, _args:stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs.T_minimizeArgs):{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } {
        @:recv var _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient> = _wc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _entryOut = { parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false }, _resp = ({} : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse), _retErr = (null : stdgo.Error);
        try {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L989"
            (@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = (@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._workerComm._memMu.__smartGet__(), _mem = __tmp__._0, _ok = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L993"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L994"
                {
                    final __ret__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }), _1 : (new stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse() : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse), _2 : stdgo._internal.internal.fuzz.Fuzz__errsharedmemclosed._errSharedMemClosed };
                        _entryOut = __tmp__._0;
                        _resp = __tmp__._1;
                        _retErr = __tmp__._2;
                        __tmp__;
                    };
                    _entryOut = __ret__._0;
                    _resp = __ret__._1;
                    _retErr = __ret__._2;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L996"
                        (@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._workerComm._memMu.__send__(_mem);
                    };
                    a();
                }) });
            };
            _mem._header()._count = (0i64 : stdgo.GoInt64);
            var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__corpusentrydata._corpusEntryData({
                final x = _entryIn;
                { parent : x.parent?.__copy__(), path : x.path?.__copy__(), data : x.data, values : x.values, generation : x.generation, isSeed : x.isSeed };
            }), _inp:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L999"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1000"
                {
                    final __ret__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }), _1 : (new stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse() : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse), _2 : _err };
                        _entryOut = __tmp__._0;
                        _resp = __tmp__._1;
                        _retErr = __tmp__._2;
                        __tmp__;
                    };
                    _entryOut = __ret__._0;
                    _resp = __ret__._1;
                    _retErr = __ret__._2;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1002"
            _mem._setValue(_inp);
            _entryOut = {
                final x = _entryIn;
                { parent : x.parent?.__copy__(), path : x.path?.__copy__(), data : x.data, values : x.values, generation : x.generation, isSeed : x.isSeed };
            };
            {
                var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__unmarshalcorpusfile._unmarshalCorpusFile(_inp);
                _entryOut.values = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1005"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1006"
                {
                    final __ret__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }), _1 : (new stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse() : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("workerClient.minimize unmarshaling provided value: %v" : stdgo.GoString), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        })) };
                        _entryOut = __tmp__._0;
                        _resp = __tmp__._1;
                        _retErr = __tmp__._2;
                        __tmp__;
                    };
                    _entryOut = __ret__._0;
                    _resp = __ret__._1;
                    _retErr = __ret__._2;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1008"
            if (_entryOut.values != null) for (_i => _v in _entryOut.values) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1009"
                if (!stdgo._internal.internal.fuzz.Fuzz__isminimizable._isMinimizable(stdgo._internal.reflect.Reflect_typeof.typeOf(_v))) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1010"
                    continue;
                };
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1013"
                (@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._workerComm._memMu.__send__(_mem);
                _args.index = _i;
                var _c = @:assignType ({ minimize : (stdgo.Go.setRef(_args, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_minimizeargsdott_minimizeargs.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_minimizeargsdotT_minimizeArgs })) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs.T_minimizeArgs>) } : stdgo._internal.internal.fuzz.Fuzz_t_call.T_call);
                var _callErr = @:assignType (_wc._callLocked(_ctx, _c?.__copy__(), new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_resp, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_minimizeresponsedott_minimizeresponse.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_minimizeresponsedotT_minimizeResponse })) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse>), _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_minimizeresponsedott_minimizeresponse.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_minimizeresponsedotT_minimizeResponse), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_minimizeresponsedott_minimizeresponse.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_minimizeresponsedotT_minimizeResponse })))) : stdgo.Error);
                {
                    var __tmp__ = (@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._workerComm._memMu.__smartGet__();
                    _mem = @:tmpset0 __tmp__._0;
                    _ok = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1018"
                if (!_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1019"
                    {
                        final __ret__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }), _1 : (new stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse() : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse), _2 : stdgo._internal.internal.fuzz.Fuzz__errsharedmemclosed._errSharedMemClosed };
                            _entryOut = __tmp__._0;
                            _resp = __tmp__._1;
                            _retErr = __tmp__._2;
                            __tmp__;
                        };
                        _entryOut = __ret__._0;
                        _resp = __ret__._1;
                        _retErr = __ret__._2;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1022"
                if (_callErr != null) {
                    _retErr = _callErr;
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1024"
                    if (!_mem._header()._rawInMem) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1026"
                        {
                            final __ret__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : {
                                    final x = _entryIn;
                                    { parent : x.parent?.__copy__(), path : x.path?.__copy__(), data : x.data, values : x.values, generation : x.generation, isSeed : x.isSeed };
                                }, _1 : (new stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse() : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse), _2 : _retErr };
                                _entryOut = __tmp__._0;
                                _resp = __tmp__._1;
                                _retErr = __tmp__._2;
                                __tmp__;
                            };
                            _entryOut = __ret__._0;
                            _resp = __ret__._1;
                            _retErr = __ret__._2;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1031"
                    {
                        final __type__ = _entryOut.values[(_i : stdgo.GoInt)];
                        if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(string_kind))) {
                            _entryOut.values[(_i : stdgo.GoInt)] = new stdgo.AnyInterface((_mem._valueCopy() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                        } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))) {
                            _entryOut.values[(_i : stdgo.GoInt)] = new stdgo.AnyInterface(_mem._valueCopy(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) })));
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1037"
                            throw new stdgo.AnyInterface(("impossible" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                        };
                    };
                    _entryOut.data = stdgo._internal.internal.fuzz.Fuzz__marshalcorpusfile._marshalCorpusFile(...(_entryOut.values : Array<stdgo.AnyInterface>));
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1041"
                    break;
                };
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1044"
                if (_resp.wroteToMem) {
                    _entryOut.data = _mem._valueCopy();
                    {
                        var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__unmarshalcorpusfile._unmarshalCorpusFile(_entryOut.data);
                        _entryOut.values = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1048"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1049"
                        {
                            final __ret__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }), _1 : (new stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse() : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("workerClient.minimize unmarshaling minimized value: %v" : stdgo.GoString), ({
                                    final __t__ = _err;
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                })) };
                                _entryOut = __tmp__._0;
                                _resp = __tmp__._1;
                                _retErr = __tmp__._2;
                                __tmp__;
                            };
                            _entryOut = __ret__._0;
                            _resp = __ret__._1;
                            _retErr = __ret__._2;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1054"
                if (_args.timeout != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                    _args.timeout = (_args.timeout - (_resp.duration) : stdgo._internal.time.Time_duration.Duration);
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1056"
                    if ((_args.timeout <= (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1057"
                        break;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1060"
                if (_args.limit != ((0i64 : stdgo.GoInt64))) {
                    _args.limit = (_args.limit - (_mem._header()._count) : stdgo.GoInt64);
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1062"
                    if ((_args.limit <= (0i64 : stdgo.GoInt64) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1063"
                        break;
                    };
                };
            };
            _resp.count = _mem._header()._count;
            var _h = stdgo._internal.crypto.sha256.Sha256_sum256.sum256(_entryOut.data)?.__copy__();
            _entryOut.path = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), new stdgo.AnyInterface((_h.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))))?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1070"
            {
                final __ret__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : {
                        final x = _entryOut;
                        { parent : x.parent?.__copy__(), path : x.path?.__copy__(), data : x.data, values : x.values, generation : x.generation, isSeed : x.isSeed };
                    }, _1 : _resp?.__copy__(), _2 : _retErr };
                    _entryOut = __tmp__._0;
                    _resp = __tmp__._1;
                    _retErr = __tmp__._2;
                    __tmp__;
                };
                _entryOut = __ret__._0;
                _resp = __ret__._1;
                _retErr = __ret__._2;
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
                return { _0 : _entryOut, _1 : _resp, _2 : _retErr };
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
                return { _0 : _entryOut, _1 : _resp, _2 : _retErr };
            };
        };
    }
    @:keep
    @:tdfield
    static public function close( _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient>):stdgo.Error {
        @:recv var _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient> = _wc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L958"
            (@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L963"
            {
                var _err = @:assignType ((@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._workerComm._fuzzIn.close() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L964"
                    (@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._workerComm._fuzzOut.close();
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L965"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L970"
            {
                var __tmp__ = stdgo._internal.io.Io_copy.copy(stdgo._internal.io.Io_discard.discard, stdgo.Go.asInterface((@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._workerComm._fuzzOut, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_filedotfile.__type__stdgodot_internaldotosdotOs_filedotFile }))), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L971"
                    (@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._workerComm._fuzzOut.close();
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L972"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L974"
            {
                final __ret__:stdgo.Error = (@:checkr _wc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._workerComm._fuzzOut.close();
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
}
