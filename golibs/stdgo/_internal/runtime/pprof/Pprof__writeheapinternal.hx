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
function _writeHeapInternal(_w:stdgo._internal.io.Io_writer.Writer, _debug:stdgo.GoInt, _defaultSampleType:stdgo.GoString):stdgo.Error {
        var _memStats:stdgo.Ref<stdgo._internal.runtime.Runtime_memstats.MemStats> = (null : stdgo.Ref<stdgo._internal.runtime.Runtime_memstats.MemStats>);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L543"
        if (_debug != ((0 : stdgo.GoInt))) {
            _memStats = (stdgo.Go.setRef(({} : stdgo._internal.runtime.Runtime_memstats.MemStats), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotruntime_memstatsdotmemstats.__type__stdgodot_internaldotruntimedotRuntime_memstatsdotMemStats })) : stdgo.Ref<stdgo._internal.runtime.Runtime_memstats.MemStats>);
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L547"
            stdgo._internal.runtime.Runtime_readmemstats.readMemStats(_memStats);
        };
        var _p:stdgo.Slice<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord> = (null : stdgo.Slice<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>);
        var __tmp__ = stdgo._internal.runtime.Runtime_memprofile.memProfile((null : stdgo.Slice<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>), true), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L558"
        while (true) {
            _p = (new stdgo.Slice<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>((_n + (50 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n + (50 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (_n + (50 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord)]) : stdgo.Slice<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>);
            {
                var __tmp__ = stdgo._internal.runtime.Runtime_memprofile.memProfile(_p, true);
                _n = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L564"
            if (_ok) {
                _p = (_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>);
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L566"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L571"
        if (_debug == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L572"
            return stdgo._internal.runtime.pprof.Pprof__writeheapproto._writeHeapProto(_w, _p, (stdgo._internal.runtime.Runtime_memprofilerate.memProfileRate : stdgo.GoInt64), _defaultSampleType?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L575"
        stdgo._internal.sort.Sort_slice.slice(new stdgo.AnyInterface(_p, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotruntime_memprofilerecorddotmemprofilerecord.__type__stdgodot_internaldotruntimedotRuntime_memprofilerecorddotMemProfileRecord }))), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L575"
            return (_p[(_i : stdgo.GoInt)].inUseBytes() > _p[(_j : stdgo.GoInt)].inUseBytes() : Bool);
        });
        var _b = stdgo._internal.bufio.Bufio_newwriter.newWriter(_w);
        var _tw = stdgo._internal.text.tabwriter.Tabwriter_newwriter.newWriter(stdgo.Go.asInterface(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter })), (1 : stdgo.GoInt), (8 : stdgo.GoInt), (1 : stdgo.GoInt), (9 : stdgo.GoUInt8), (0u32 : stdgo.GoUInt));
        _w = stdgo.Go.asInterface(_tw, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottextdottabwriterdottabwriter_writerdotwriter.__type__stdgodot_internaldottextdottabwriterdotTabwriter_writerdotWriter }));
        var _total:stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord = ({} : stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L582"
        if (_p != null) for (_i => _ in _p) {
            var _r = (stdgo.Go.setRef(_p[(_i : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotruntime_memprofilerecorddotmemprofilerecord.__type__stdgodot_internaldotruntimedotRuntime_memprofilerecorddotMemProfileRecord })) : stdgo.Ref<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>);
            _total.allocBytes = (_total.allocBytes + ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).allocBytes) : stdgo.GoInt64);
            _total.allocObjects = (_total.allocObjects + ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).allocObjects) : stdgo.GoInt64);
            _total.freeBytes = (_total.freeBytes + ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).freeBytes) : stdgo.GoInt64);
            _total.freeObjects = (_total.freeObjects + ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).freeObjects) : stdgo.GoInt64);
        };
        var _rate = @:assignType ((2 : stdgo.GoInt) * stdgo._internal.runtime.Runtime_memprofilerate.memProfileRate : stdgo.GoInt);
        var _inUseBytes = @:assignType (_total.inUseBytes() : stdgo.GoInt64);
        var _allocBytes = @:assignType (_total.allocBytes : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L603"
        if (_inUseBytes == (_allocBytes)) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L604"
            _allocBytes++;
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L607"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("heap profile: %d: %d [%d: %d] @ heap/%d\n" : stdgo.GoString), new stdgo.AnyInterface(_total.inUseObjects(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface(_inUseBytes, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface(_total.allocObjects, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface(_allocBytes, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface(_rate, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L612"
        if (_p != null) for (_i => _ in _p) {
            var _r = (stdgo.Go.setRef(_p[(_i : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotruntime_memprofilerecorddotmemprofilerecord.__type__stdgodot_internaldotruntimedotRuntime_memprofilerecorddotMemProfileRecord })) : stdgo.Ref<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>);
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L614"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%d: %d [%d: %d] @" : stdgo.GoString), new stdgo.AnyInterface(_r.inUseObjects(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface(_r.inUseBytes(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).allocObjects, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).allocBytes, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L617"
            if (_r.stack() != null) for (__0 => _pc in _r.stack()) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L618"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, (" %#x" : stdgo.GoString), new stdgo.AnyInterface(_pc, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L620"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("\n" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L621"
            stdgo._internal.runtime.pprof.Pprof__printstackrecord._printStackRecord(_w, _r.stack(), false);
        };
        var _s = _memStats;
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L627"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("\n# runtime.MemStats\n" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L628"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# Alloc = %d\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).alloc, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L629"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# TotalAlloc = %d\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).totalAlloc, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L630"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# Sys = %d\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sys, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L631"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# Lookups = %d\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lookups, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L632"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# Mallocs = %d\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).mallocs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L633"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# Frees = %d\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).frees, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L635"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# HeapAlloc = %d\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).heapAlloc, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L636"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# HeapSys = %d\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).heapSys, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L637"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# HeapIdle = %d\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).heapIdle, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L638"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# HeapInuse = %d\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).heapInuse, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L639"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# HeapReleased = %d\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).heapReleased, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L640"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# HeapObjects = %d\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).heapObjects, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L642"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# Stack = %d / %d\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).stackInuse, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).stackSys, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L643"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# MSpan = %d / %d\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).mSpanInuse, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).mSpanSys, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L644"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# MCache = %d / %d\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).mCacheInuse, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).mCacheSys, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L645"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# BuckHashSys = %d\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).buckHashSys, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L646"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# GCSys = %d\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).gCSys, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L647"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# OtherSys = %d\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).otherSys, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L649"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# NextGC = %d\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextGC, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L650"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# LastGC = %d\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lastGC, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L651"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# PauseNs = %d\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).pauseNs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, 256))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L652"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# PauseEnd = %d\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).pauseEnd, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, 256))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L653"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# NumGC = %d\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).numGC, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L654"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# NumForcedGC = %d\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).numForcedGC, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L655"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# GCCPUFraction = %v\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).gCCPUFraction, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L656"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("# DebugGC = %v\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).debugGC, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L659"
        stdgo._internal.runtime.pprof.Pprof__addmaxrss._addMaxRSS(_w);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L661"
        _tw.flush();
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L662"
        return _b.flush();
    }
