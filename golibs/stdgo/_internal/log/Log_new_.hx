package stdgo._internal.log;
import stdgo._internal.os.Os;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.runtime.Runtime;
function new_(_out:stdgo._internal.io.Io_writer.Writer, _prefix:stdgo.GoString, _flag:stdgo.GoInt):stdgo.Ref<stdgo._internal.log.Log_logger.Logger> {
        var _l = (stdgo.Go.setRef(({} : stdgo._internal.log.Log_logger.Logger), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotlogdotlog_loggerdotlogger.__type__stdgodot_internaldotlogdotLog_loggerdotLogger })) : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>);
        //"file:///Users/o/.go/go1.21.3/src/log/log.go#L73"
        _l.setOutput(_out);
        //"file:///Users/o/.go/go1.21.3/src/log/log.go#L74"
        _l.setPrefix(_prefix?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/log/log.go#L75"
        _l.setFlags(_flag);
        //"file:///Users/o/.go/go1.21.3/src/log/log.go#L76"
        return _l;
    }
