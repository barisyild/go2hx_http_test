package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.log.Log;
function oneByteReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L17"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.testing.iotest.Iotest_t_onebytereader.T_oneByteReader(_r) : stdgo._internal.testing.iotest.Iotest_t_onebytereader.T_oneByteReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotiotestdotiotest_t_onebytereaderdott_onebytereader.__type__stdgodot_internaldottestingdotiotestdotIotest_t_onebytereaderdotT_oneByteReader })) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_onebytereader.T_oneByteReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotiotestdotiotest_t_onebytereaderdott_onebytereader.__type__stdgodot_internaldottestingdotiotestdotIotest_t_onebytereaderdotT_oneByteReader }));
    }
