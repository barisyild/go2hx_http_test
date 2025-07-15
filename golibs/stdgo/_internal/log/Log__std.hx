package stdgo._internal.log;
import stdgo._internal.os.Os;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.runtime.Runtime;
var _std : stdgo.Ref<stdgo._internal.log.Log_logger.Logger> = stdgo._internal.log.Log_new_.new_(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_filedotfile.__type__stdgodot_internaldotosdotOs_filedotFile })), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (3 : stdgo.GoInt));
