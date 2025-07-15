package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.log.Log;
function newWriteLogger(_prefix:stdgo.GoString, _w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/logger.go#L31"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.testing.iotest.Iotest_t_writelogger.T_writeLogger(_prefix?.__copy__(), _w) : stdgo._internal.testing.iotest.Iotest_t_writelogger.T_writeLogger), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotiotestdotiotest_t_writeloggerdott_writelogger.__type__stdgodot_internaldottestingdotiotestdotIotest_t_writeloggerdotT_writeLogger })) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_writelogger.T_writeLogger>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotiotestdotiotest_t_writeloggerdott_writelogger.__type__stdgodot_internaldottestingdotiotestdotIotest_t_writeloggerdotT_writeLogger }));
    }
