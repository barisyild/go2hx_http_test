package stdgo._internal.log;
import stdgo._internal.os.Os;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.runtime.Runtime;
function fatal(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        //"file:///Users/o/.go/go1.21.3/src/log/log.go#L412"
        stdgo._internal.log.Log__std._std.output((2 : stdgo.GoInt), stdgo._internal.fmt.Fmt_sprint.sprint(...(_v : Array<stdgo.AnyInterface>))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/log/log.go#L413"
        #if (sys || hxnodejs) Sys.exit((1 : stdgo.GoInt)) #else null #end;
    }
