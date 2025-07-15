package stdgo._internal.runtime.pprof;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.context.Context;
import stdgo._internal.sort.Sort;
import stdgo._internal.text.tabwriter.Tabwriter;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.internal.abi.Abi;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profileBuilder_asInterface) class T_profileBuilder_static_extension {
    @:keep
    @:tdfield
    static public function _readMapping( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder> = _b;
        var __tmp__ = stdgo._internal.os.Os_readfile.readFile(("/proc/self/maps" : stdgo.GoString)), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto_other.go#L19"
        stdgo._internal.runtime.pprof.Pprof__parseprocselfmaps._parseProcSelfMaps(_data, _b._addMapping);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto_other.go#L20"
        if (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mem.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto_other.go#L21"
            _b._addMappingEntry((0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), true);
        };
    }
    @:keep
    @:tdfield
    static public function _addMappingEntry( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>, _lo:stdgo.GoUInt64, _hi:stdgo.GoUInt64, _offset:stdgo.GoUInt64, _file:stdgo.GoString, _buildID:stdgo.GoString, _fake:Bool):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder> = _b;
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mem = ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mem.__append__(({ _start : (new stdgo.GoUIntptr(_lo) : stdgo.GoUIntptr), _end : (new stdgo.GoUIntptr(_hi) : stdgo.GoUIntptr), _offset : _offset, _file : _file?.__copy__(), _buildID : _buildID?.__copy__(), _fake : _fake } : stdgo._internal.runtime.pprof.Pprof_t_memmap.T_memMap)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_memmap.T_memMap>);
    }
    @:keep
    @:tdfield
    static public function _addMapping( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>, _lo:stdgo.GoUInt64, _hi:stdgo.GoUInt64, _offset:stdgo.GoUInt64, _file:stdgo.GoString, _buildID:stdgo.GoString):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L749"
        _b._addMappingEntry(_lo, _hi, _offset, _file?.__copy__(), _buildID?.__copy__(), false);
    }
    @:keep
    @:tdfield
    static public function _emitLocation( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>):stdgo.GoUInt64 {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder> = _b;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L583"
            if (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._deck._pcs.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L584"
                return (0i64 : stdgo.GoUInt64);
            };
            {
                final __f__ = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._deck._reset;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _addr = @:assignType ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._deck._pcs[(0 : stdgo.GoInt)] : stdgo.GoUIntptr);
            var _firstFrame = @:assignType ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._deck._frames[(0 : stdgo.GoInt)] : stdgo._internal.runtime.Runtime_frame.Frame);
            {};
            var _newFuncs = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t__emitlocation___localname___newfunc_20332.T__emitLocation___localname___newFunc_20332>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > (8 : stdgo.GoInt) ? (0 : stdgo.GoInt).toBasic() : (8 : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_t__emitlocation___localname___newfunc_20332.T__emitLocation___localname___newFunc_20332)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t__emitlocation___localname___newfunc_20332.T__emitLocation___localname___newFunc_20332>);
            var _id = @:assignType (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._locs.length : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._locs[_addr] = ({ _id : _id, _pcs : ((new stdgo.Slice<stdgo.GoUIntptr>(0, 0, ...[]) : stdgo.Slice<stdgo.GoUIntptr>).__append__(...((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._deck._pcs : Array<stdgo.GoUIntptr>)) : stdgo.Slice<stdgo.GoUIntptr>), _firstPCSymbolizeResult : (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._deck._firstPCSymbolizeResult, _firstPCFrames : ((new stdgo.Slice<stdgo._internal.runtime.Runtime_frame.Frame>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_frame.Frame)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_frame.Frame>).__append__(...(((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._deck._frames.__slice__(0, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._deck._firstPCFrames) : stdgo.Slice<stdgo._internal.runtime.Runtime_frame.Frame>) : Array<stdgo._internal.runtime.Runtime_frame.Frame>)) : stdgo.Slice<stdgo._internal.runtime.Runtime_frame.Frame>) } : stdgo._internal.runtime.pprof.Pprof_t_locinfo.T_locInfo);
            var _start = @:assignType ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._startMessage() : stdgo._internal.runtime.pprof.Pprof_t_msgoffset.T_msgOffset);
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L610"
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._uint64Opt((1 : stdgo.GoInt), _id);
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L611"
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._uint64Opt((3 : stdgo.GoInt), (_firstFrame.pC : stdgo.GoUInt64));
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L612"
            if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._deck._frames != null) for (__0 => _frame in (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._deck._frames) {
                var _funcID = @:assignType ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._funcs[_frame.function_] ?? (0 : stdgo.GoInt) : stdgo.GoUInt64);
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L615"
                if (_funcID == ((0i64 : stdgo.GoUInt64))) {
                    _funcID = (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._funcs.length : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._funcs[_frame.function_] = (_funcID : stdgo.GoInt);
                    _newFuncs = (_newFuncs.__append__(({ _id : _funcID, _name : stdgo._internal.runtime.pprof.Pprof__runtime_framesymbolname._runtime_FrameSymbolName((stdgo.Go.setRef(_frame, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotruntime_framedotframe.__type__stdgodot_internaldotruntimedotRuntime_framedotFrame })) : stdgo.Ref<stdgo._internal.runtime.Runtime_frame.Frame>))?.__copy__(), _file : _frame.file?.__copy__(), _startLine : (stdgo._internal.runtime.pprof.Pprof__runtime_framestartline._runtime_FrameStartLine((stdgo.Go.setRef(_frame, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotruntime_framedotframe.__type__stdgodot_internaldotruntimedotRuntime_framedotFrame })) : stdgo.Ref<stdgo._internal.runtime.Runtime_frame.Frame>)) : stdgo.GoInt64) } : stdgo._internal.runtime.pprof.Pprof_t__emitlocation___localname___newfunc_20332.T__emitLocation___localname___newFunc_20332)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t__emitlocation___localname___newfunc_20332.T__emitLocation___localname___newFunc_20332>);
                };
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L625"
                _b._pbLine((4 : stdgo.GoInt), _funcID, (_frame.line : stdgo.GoInt64));
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L627"
            if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mem != null) for (_i => _ in (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mem) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L628"
                if (((((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mem[(_i : stdgo.GoInt)]._start <= _addr : Bool) && (_addr < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mem[(_i : stdgo.GoInt)]._end : Bool) : Bool) || (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mem[(_i : stdgo.GoInt)]._fake : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L629"
                    (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._uint64Opt((2 : stdgo.GoInt), ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64));
                    var _m = @:assignType ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mem[(_i : stdgo.GoInt)] : stdgo._internal.runtime.pprof.Pprof_t_memmap.T_memMap);
                    _m._funcs = (_m._funcs | ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._deck._symbolizeResult) : stdgo._internal.runtime.pprof.Pprof_t_symbolizeflag.T_symbolizeFlag);
                    (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mem[(_i : stdgo.GoInt)] = _m?.__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L634"
                    break;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L637"
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._endMessage((4 : stdgo.GoInt), _start);
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L640"
            if (_newFuncs != null) for (__1 => _fn in _newFuncs) {
                var _start = @:assignType ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._startMessage() : stdgo._internal.runtime.pprof.Pprof_t_msgoffset.T_msgOffset);
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L642"
                (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._uint64Opt((1 : stdgo.GoInt), _fn._id);
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L643"
                (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._int64Opt((2 : stdgo.GoInt), _b._stringIndex(_fn._name?.__copy__()));
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L644"
                (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._int64Opt((3 : stdgo.GoInt), _b._stringIndex(_fn._name?.__copy__()));
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L645"
                (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._int64Opt((4 : stdgo.GoInt), _b._stringIndex(_fn._file?.__copy__()));
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L646"
                (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._int64Opt((5 : stdgo.GoInt), _fn._startLine);
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L647"
                (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._endMessage((5 : stdgo.GoInt), _start);
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L650"
            _b._flush();
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L651"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _id;
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
                return (0 : stdgo.GoUInt64);
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
                return (0 : stdgo.GoUInt64);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _appendLocsForStack( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>, _locs:stdgo.Slice<stdgo.GoUInt64>, _stk:stdgo.Slice<stdgo.GoUIntptr>):stdgo.Slice<stdgo.GoUInt64> {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder> = _b;
        var _newLocs = (null : stdgo.Slice<stdgo.GoUInt64>);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L404"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._deck._reset();
        _stk = stdgo._internal.runtime.pprof.Pprof__runtime_expandfinalinlineframe._runtime_expandFinalInlineFrame(_stk);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L409"
        while (((_stk.length) > (0 : stdgo.GoInt) : Bool)) {
            var _addr = @:assignType (_stk[(0 : stdgo.GoInt)] : stdgo.GoUIntptr);
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L411"
            {
                var __tmp__ = ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._locs != null && (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._locs.__exists__(_addr) ? { _0 : (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._locs[_addr], _1 : true } : { _0 : ({} : stdgo._internal.runtime.pprof.Pprof_t_locinfo.T_locInfo), _1 : false }), _l:stdgo._internal.runtime.pprof.Pprof_t_locinfo.T_locInfo = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L423"
                    if ((((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._deck._pcs.length) > (0 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L424"
                        {
                            var _added = @:assignType ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._deck._tryAdd(_addr, _l._firstPCFrames, _l._firstPCSymbolizeResult) : Bool);
                            if (_added) {
                                _stk = (_stk.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUIntptr>);
                                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L426"
                                continue;
                            };
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L431"
                    {
                        var _id = @:assignType (_b._emitLocation() : stdgo.GoUInt64);
                        if ((_id > (0i64 : stdgo.GoUInt64) : Bool)) {
                            _locs = (_locs.__append__(_id) : stdgo.Slice<stdgo.GoUInt64>);
                        };
                    };
                    _locs = (_locs.__append__(_l._id) : stdgo.Slice<stdgo.GoUInt64>);
                    _stk = (_stk.__slice__((_l._pcs.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L444"
                    continue;
                };
            };
            var __tmp__ = stdgo._internal.runtime.pprof.Pprof__allframes._allFrames(_addr), _frames:stdgo.Slice<stdgo._internal.runtime.Runtime_frame.Frame> = __tmp__._0, _symbolizeResult:stdgo._internal.runtime.pprof.Pprof_t_symbolizeflag.T_symbolizeFlag = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L448"
            if ((_frames.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L449"
                {
                    var _id = @:assignType (_b._emitLocation() : stdgo.GoUInt64);
                    if ((_id > (0i64 : stdgo.GoUInt64) : Bool)) {
                        _locs = (_locs.__append__(_id) : stdgo.Slice<stdgo.GoUInt64>);
                    };
                };
                _stk = (_stk.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUIntptr>);
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L453"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L456"
            {
                var _added = @:assignType ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._deck._tryAdd(_addr, _frames, _symbolizeResult) : Bool);
                if (_added) {
                    _stk = (_stk.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUIntptr>);
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L458"
                    continue;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L463"
            {
                var _id = @:assignType (_b._emitLocation() : stdgo.GoUInt64);
                if ((_id > (0i64 : stdgo.GoUInt64) : Bool)) {
                    _locs = (_locs.__append__(_id) : stdgo.Slice<stdgo.GoUInt64>);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L468"
            {
                var __tmp__ = ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._locs != null && (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._locs.__exists__(_addr) ? { _0 : (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._locs[_addr], _1 : true } : { _0 : ({} : stdgo._internal.runtime.pprof.Pprof_t_locinfo.T_locInfo), _1 : false }), _l:stdgo._internal.runtime.pprof.Pprof_t_locinfo.T_locInfo = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _locs = (_locs.__append__(_l._id) : stdgo.Slice<stdgo.GoUInt64>);
                    _stk = (_stk.__slice__((_l._pcs.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L472"
                    (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._deck._tryAdd(_addr, _frames, _symbolizeResult);
                    _stk = (_stk.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUIntptr>);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L476"
        {
            var _id = @:assignType (_b._emitLocation() : stdgo.GoUInt64);
            if ((_id > (0i64 : stdgo.GoUInt64) : Bool)) {
                _locs = (_locs.__append__(_id) : stdgo.Slice<stdgo.GoUInt64>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L479"
        return _newLocs = _locs;
    }
    @:keep
    @:tdfield
    static public function _build( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder> = _b;
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._end = stdgo._internal.time.Time_now.now()?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L351"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._int64Opt((9 : stdgo.GoInt), (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start.unixNano());
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L352"
        if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._havePeriod) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L353"
            _b._pbValueType((1 : stdgo.GoInt), ("samples" : stdgo.GoString), ("count" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L354"
            _b._pbValueType((1 : stdgo.GoInt), ("cpu" : stdgo.GoString), ("nanoseconds" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L355"
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._int64Opt((10 : stdgo.GoInt), (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._end.sub((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start?.__copy__()).nanoseconds());
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L356"
            _b._pbValueType((11 : stdgo.GoInt), ("cpu" : stdgo.GoString), ("nanoseconds" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L357"
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._int64Opt((12 : stdgo.GoInt), (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._period);
        };
        var _values = (new stdgo.Slice<stdgo.GoInt64>(2, 2, ...[(0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        var _locs:stdgo.Slice<stdgo.GoUInt64> = (null : stdgo.Slice<stdgo.GoUInt64>);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L363"
        {
            var _e = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m._all;
            while (({
                final value = _e;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                _values[(0 : stdgo.GoInt)] = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count;
_values[(1 : stdgo.GoInt)] = ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count * (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._period : stdgo.GoInt64);
var _labels:() -> Void = null;
//"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L368"
                if ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tag != null) {
                    _labels = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L370"
                        if ((((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tag.__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap>) : stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap) != null) for (_k => _v in (((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tag.__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap>) : stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap)) {
                            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L371"
                            _b._pbLabel((3 : stdgo.GoInt), _k?.__copy__(), _v?.__copy__(), (0i64 : stdgo.GoInt64));
                        };
                    };
                };
_locs = _b._appendLocsForStack((_locs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt64>), (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stk);
//"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L378"
                _b._pbSample(_values, _locs, _labels);
                _e = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextAll;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L381"
        if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mem != null) for (_i => _m in (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mem) {
            var _hasFunctions = @:assignType (_m._funcs == ((1 : stdgo._internal.runtime.pprof.Pprof_t_symbolizeflag.T_symbolizeFlag)) : Bool);
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L383"
            _b._pbMapping((3 : stdgo.GoInt), ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64), (_m._start : stdgo.GoUInt64), (_m._end : stdgo.GoUInt64), _m._offset, _m._file?.__copy__(), _m._buildID?.__copy__(), _hasFunctions);
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L389"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._strings((6 : stdgo.GoInt), (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._strings);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L390"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zw.write((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._data);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L391"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zw.close();
    }
    @:keep
    @:tdfield
    static public function _addCPUData( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>, _data:stdgo.Slice<stdgo.GoUInt64>, _tags:stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L279"
        if (!(@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._havePeriod) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L281"
            if (((_data.length) < (3 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L282"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("truncated profile" : stdgo.GoString));
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L284"
            if (((_data[(0 : stdgo.GoInt)] != (3i64 : stdgo.GoUInt64)) || (_data[(2 : stdgo.GoInt)] == (0i64 : stdgo.GoUInt64)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L285"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("malformed profile" : stdgo.GoString));
            };
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._period = ((1000000000i64 : stdgo.GoInt64) / (_data[(2 : stdgo.GoInt)] : stdgo.GoInt64) : stdgo.GoInt64);
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._havePeriod = true;
            _data = (_data.__slice__((3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt64>);
            _tags = (_tags.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>);
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L312"
        while (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L313"
            if ((((_data.length) < (3 : stdgo.GoInt) : Bool) || (_data[(0 : stdgo.GoInt)] > (_data.length : stdgo.GoUInt64) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L314"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("truncated profile" : stdgo.GoString));
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L316"
            if (((_data[(0 : stdgo.GoInt)] < (3i64 : stdgo.GoUInt64) : Bool) || (_tags != null && ((_tags.length) < (1 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L317"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("malformed profile" : stdgo.GoString));
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L319"
            if (((_tags.length) < (1 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L320"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("mismatched profile records and tags" : stdgo.GoString));
            };
            var _count = @:assignType (_data[(2 : stdgo.GoInt)] : stdgo.GoUInt64);
            var _stk = (_data.__slice__((3 : stdgo.GoInt), _data[(0 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt64>);
            _data = (_data.__slice__(_data[(0 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt64>);
            var _tag = @:assignType (_tags[(0 : stdgo.GoInt)] : stdgo._internal.unsafe.Unsafe.UnsafePointer);
            _tags = (_tags.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>);
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L328"
            if (((_count == (0i64 : stdgo.GoUInt64)) && (_stk.length == (1 : stdgo.GoInt)) : Bool)) {
                _count = (_stk[(0 : stdgo.GoInt)] : stdgo.GoUInt64);
                _stk = (new stdgo.Slice<stdgo.GoUInt64>(1, 1, ...[((stdgo._internal.internal.abi.Abi_funcpcabiinternal.funcPCABIInternal(new stdgo.AnyInterface(stdgo._internal.runtime.pprof.Pprof__lostprofileevent._lostProfileEvent, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))) + (new stdgo.GoUIntptr(1) : stdgo.GoUIntptr) : stdgo.GoUIntptr) : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
            };
            {
                final __t__ = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m._lookup(_stk, _tag);
                __t__._count = __t__._count + ((_count : stdgo.GoInt64));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L341"
        if ((_tags.length) != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L342"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("mismatched profile records and tags" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L344"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _pbMapping( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>, _tag:stdgo.GoInt, _id:stdgo.GoUInt64, _base:stdgo.GoUInt64, _limit:stdgo.GoUInt64, _offset:stdgo.GoUInt64, _file:stdgo.GoString, _buildID:stdgo.GoString, _hasFuncs:Bool):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder> = _b;
        var _start = @:assignType ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._startMessage() : stdgo._internal.runtime.pprof.Pprof_t_msgoffset.T_msgOffset);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L191"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._uint64Opt((1 : stdgo.GoInt), _id);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L192"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._uint64Opt((2 : stdgo.GoInt), _base);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L193"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._uint64Opt((3 : stdgo.GoInt), _limit);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L194"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._uint64Opt((4 : stdgo.GoInt), _offset);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L195"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._int64Opt((5 : stdgo.GoInt), _b._stringIndex(_file?.__copy__()));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L196"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._int64Opt((6 : stdgo.GoInt), _b._stringIndex(_buildID?.__copy__()));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L203"
        if (_hasFuncs) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L204"
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._bool((7 : stdgo.GoInt), true);
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L206"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._endMessage(_tag, _start);
    }
    @:keep
    @:tdfield
    static public function _pbLine( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>, _tag:stdgo.GoInt, _funcID:stdgo.GoUInt64, _line:stdgo.GoInt64):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder> = _b;
        var _start = @:assignType ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._startMessage() : stdgo._internal.runtime.pprof.Pprof_t_msgoffset.T_msgOffset);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L183"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._uint64Opt((1 : stdgo.GoInt), _funcID);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L184"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._int64Opt((2 : stdgo.GoInt), _line);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L185"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._endMessage(_tag, _start);
    }
    @:keep
    @:tdfield
    static public function _pbLabel( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>, _tag:stdgo.GoInt, _key:stdgo.GoString, _str:stdgo.GoString, _num:stdgo.GoInt64):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder> = _b;
        var _start = @:assignType ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._startMessage() : stdgo._internal.runtime.pprof.Pprof_t_msgoffset.T_msgOffset);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L174"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._int64Opt((1 : stdgo.GoInt), _b._stringIndex(_key?.__copy__()));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L175"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._int64Opt((2 : stdgo.GoInt), _b._stringIndex(_str?.__copy__()));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L176"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._int64Opt((3 : stdgo.GoInt), _num);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L177"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._endMessage(_tag, _start);
    }
    @:keep
    @:tdfield
    static public function _pbSample( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>, _values:stdgo.Slice<stdgo.GoInt64>, _locs:stdgo.Slice<stdgo.GoUInt64>, _labels:() -> Void):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder> = _b;
        var _start = @:assignType ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._startMessage() : stdgo._internal.runtime.pprof.Pprof_t_msgoffset.T_msgOffset);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L162"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._int64s((2 : stdgo.GoInt), _values);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L163"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._uint64s((1 : stdgo.GoInt), _locs);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L164"
        if (_labels != null) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L165"
            _labels();
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L167"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._endMessage((2 : stdgo.GoInt), _start);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L168"
        _b._flush();
    }
    @:keep
    @:tdfield
    static public function _pbValueType( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>, _tag:stdgo.GoInt, _typ:stdgo.GoString, _unit:stdgo.GoString):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder> = _b;
        var _start = @:assignType ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._startMessage() : stdgo._internal.runtime.pprof.Pprof_t_msgoffset.T_msgOffset);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L154"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._int64((1 : stdgo.GoInt), _b._stringIndex(_typ?.__copy__()));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L155"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._int64((2 : stdgo.GoInt), _b._stringIndex(_unit?.__copy__()));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L156"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._endMessage(_tag, _start);
    }
    @:keep
    @:tdfield
    static public function _flush( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder> = _b;
        {};
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L145"
        if ((((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._nest == (0 : stdgo.GoInt)) && (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._data.length) > (4096 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L146"
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zw.write((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._data);
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._data = ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._data.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
    }
    @:keep
    @:tdfield
    static public function _stringIndex( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>, _s:stdgo.GoString):stdgo.GoInt64 {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder> = _b;
        var __tmp__ = ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stringMap != null && (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stringMap.__exists__(_s?.__copy__()) ? { _0 : (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stringMap[_s?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _id:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L135"
        if (!_ok) {
            _id = ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._strings.length);
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._strings = ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._strings.__append__(_s?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stringMap[_s] = _id;
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L140"
        return (_id : stdgo.GoInt64);
    }
}
