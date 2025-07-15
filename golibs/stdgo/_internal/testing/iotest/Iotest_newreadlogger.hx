package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.log.Log;
function newReadLogger(_prefix:stdgo.GoString, _r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/logger.go#L53"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.testing.iotest.Iotest_t_readlogger.T_readLogger(_prefix?.__copy__(), _r) : stdgo._internal.testing.iotest.Iotest_t_readlogger.T_readLogger), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotiotestdotiotest_t_readloggerdott_readlogger.__type__stdgodot_internaldottestingdotiotestdotIotest_t_readloggerdotT_readLogger })) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_readlogger.T_readLogger>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotiotestdotiotest_t_readloggerdott_readlogger.__type__stdgodot_internaldottestingdotiotestdotIotest_t_readloggerdotT_readLogger }));
    }
