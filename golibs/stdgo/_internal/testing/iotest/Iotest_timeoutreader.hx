package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.log.Log;
function timeoutReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L78"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.testing.iotest.Iotest_t_timeoutreader.T_timeoutReader(_r, (0 : stdgo.GoInt)) : stdgo._internal.testing.iotest.Iotest_t_timeoutreader.T_timeoutReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotiotestdotiotest_t_timeoutreaderdott_timeoutreader.__type__stdgodot_internaldottestingdotiotestdotIotest_t_timeoutreaderdotT_timeoutReader })) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_timeoutreader.T_timeoutReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotiotestdotiotest_t_timeoutreaderdott_timeoutreader.__type__stdgodot_internaldottestingdotiotestdotIotest_t_timeoutreaderdotT_timeoutReader }));
    }
