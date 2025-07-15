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
function _printStackRecord(_w:stdgo._internal.io.Io_writer.Writer, _stk:stdgo.Slice<stdgo.GoUIntptr>, _allFrames:Bool):Void {
        var _show = @:assignType (_allFrames : Bool);
        var _frames = stdgo._internal.runtime.Runtime_callersframes.callersFrames(_stk);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L491"
        while (true) {
            var __tmp__ = _frames.next(), _frame:stdgo._internal.runtime.Runtime_frame.Frame = __tmp__._0, _more:Bool = __tmp__._1;
            var _name = @:assignType (_frame.function_?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L494"
            if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
                _show = true;
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L496"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("#\t%#x\n" : stdgo.GoString), new stdgo.AnyInterface(_frame.pC, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))));
            } else if (((_name != ("runtime.goexit" : stdgo.GoString)) && ((_show || !stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), ("runtime." : stdgo.GoString)) : Bool)) : Bool)) {
                _show = true;
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L501"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("#\t%#x\t%s+%#x\t%s:%d\n" : stdgo.GoString), new stdgo.AnyInterface(_frame.pC, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_frame.pC - _frame.entry : stdgo.GoUIntptr), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))), new stdgo.AnyInterface(_frame.file, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_frame.line, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L503"
            if (!_more) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L504"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L507"
        if (!_show) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L510"
            stdgo._internal.runtime.pprof.Pprof__printstackrecord._printStackRecord(_w, _stk, true);
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L511"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L513"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("\n" : stdgo.GoString));
    }
