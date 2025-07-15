package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.log.Log;
function halfReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L32"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.testing.iotest.Iotest_t_halfreader.T_halfReader(_r) : stdgo._internal.testing.iotest.Iotest_t_halfreader.T_halfReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotiotestdotiotest_t_halfreaderdott_halfreader.__type__stdgodot_internaldottestingdotiotestdotIotest_t_halfreaderdotT_halfReader })) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_halfreader.T_halfReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotiotestdotiotest_t_halfreaderdott_halfreader.__type__stdgodot_internaldottestingdotiotestdotIotest_t_halfreaderdotT_halfReader }));
    }
