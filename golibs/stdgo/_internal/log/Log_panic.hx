package stdgo._internal.log;
import stdgo._internal.os.Os;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.runtime.Runtime;
function panic(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        var _s = @:assignType (stdgo._internal.fmt.Fmt_sprint.sprint(...(_v : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/log/log.go#L431"
        stdgo._internal.log.Log__std._std.output((2 : stdgo.GoInt), _s?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/log/log.go#L432"
        throw new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
    }
