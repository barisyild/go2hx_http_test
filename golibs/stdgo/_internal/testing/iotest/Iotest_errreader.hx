package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.log.Log;
function errReader(_err:stdgo.Error):stdgo._internal.io.Io_reader.Reader {
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L95"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _err : _err } : stdgo._internal.testing.iotest.Iotest_t_errreader.T_errReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotiotestdotiotest_t_errreaderdott_errreader.__type__stdgodot_internaldottestingdotiotestdotIotest_t_errreaderdotT_errReader })) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_errreader.T_errReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotiotestdotiotest_t_errreaderdott_errreader.__type__stdgodot_internaldottestingdotiotestdotIotest_t_errreaderdotT_errReader }));
    }
