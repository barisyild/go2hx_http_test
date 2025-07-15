package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.log.Log;
function dataErrReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L47"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.testing.iotest.Iotest_t_dataerrreader.T_dataErrReader(_r, (null : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.testing.iotest.Iotest_t_dataerrreader.T_dataErrReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotiotestdotiotest_t_dataerrreaderdott_dataerrreader.__type__stdgodot_internaldottestingdotiotestdotIotest_t_dataerrreaderdotT_dataErrReader })) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_dataerrreader.T_dataErrReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotiotestdotiotest_t_dataerrreaderdott_dataerrreader.__type__stdgodot_internaldottestingdotiotestdotIotest_t_dataerrreaderdotT_dataErrReader }));
    }
