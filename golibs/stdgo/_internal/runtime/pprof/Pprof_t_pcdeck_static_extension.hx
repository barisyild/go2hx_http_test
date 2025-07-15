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
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_pcDeck_asInterface) class T_pcDeck_static_extension {
    @:keep
    @:tdfield
    static public function _tryAdd( _d:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_pcdeck.T_pcDeck>, _pc:stdgo.GoUIntptr, _frames:stdgo.Slice<stdgo._internal.runtime.Runtime_frame.Frame>, _symbolizeResult:stdgo._internal.runtime.pprof.Pprof_t_symbolizeflag.T_symbolizeFlag):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_pcdeck.T_pcDeck> = _d;
        var _success = false;
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L549"
        {
            var _existing = @:assignType ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._frames.length : stdgo.GoInt);
            if ((_existing > (0 : stdgo.GoInt) : Bool)) {
                var _newFrame = @:assignType (_frames[(0 : stdgo.GoInt)] : stdgo._internal.runtime.Runtime_frame.Frame);
                var _last = @:assignType ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._frames[(_existing - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo._internal.runtime.Runtime_frame.Frame);
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L554"
                if (({
                    final value = _last.func;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L555"
                    return _success = false;
                };
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L557"
                if (((_last.entry == (new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) || (_newFrame.entry == (new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L558"
                    return _success = false;
                };
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L561"
                if (_last.entry != (_newFrame.entry)) {
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L562"
                    return _success = false;
                };
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L564"
                if (_last.function_ == (_newFrame.function_)) {
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L565"
                    return _success = false;
                };
            };
        };
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pcs = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pcs.__append__(_pc) : stdgo.Slice<stdgo.GoUIntptr>);
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._frames = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._frames.__append__(...(_frames : Array<stdgo._internal.runtime.Runtime_frame.Frame>)) : stdgo.Slice<stdgo._internal.runtime.Runtime_frame.Frame>);
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._symbolizeResult = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._symbolizeResult | (_symbolizeResult) : stdgo._internal.runtime.pprof.Pprof_t_symbolizeflag.T_symbolizeFlag);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L571"
        if (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pcs.length) == ((1 : stdgo.GoInt))) {
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._firstPCFrames = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._frames.length);
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._firstPCSymbolizeResult = _symbolizeResult;
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L575"
        return _success = true;
    }
    @:keep
    @:tdfield
    static public function _reset( _d:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_pcdeck.T_pcDeck>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_pcdeck.T_pcDeck> = _d;
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pcs = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pcs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUIntptr>);
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._frames = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._frames.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.Runtime_frame.Frame>);
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._symbolizeResult = (0 : stdgo._internal.runtime.pprof.Pprof_t_symbolizeflag.T_symbolizeFlag);
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._firstPCFrames = (0 : stdgo.GoInt);
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._firstPCSymbolizeResult = (0 : stdgo._internal.runtime.pprof.Pprof_t_symbolizeflag.T_symbolizeFlag);
    }
}
