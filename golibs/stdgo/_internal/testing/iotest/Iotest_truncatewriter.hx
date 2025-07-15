package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.log.Log;
function truncateWriter(_w:stdgo._internal.io.Io_writer.Writer, _n:stdgo.GoInt64):stdgo._internal.io.Io_writer.Writer {
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/writer.go#L12"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.testing.iotest.Iotest_t_truncatewriter.T_truncateWriter(_w, _n) : stdgo._internal.testing.iotest.Iotest_t_truncatewriter.T_truncateWriter), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotiotestdotiotest_t_truncatewriterdott_truncatewriter.__type__stdgodot_internaldottestingdotiotestdotIotest_t_truncatewriterdotT_truncateWriter })) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_truncatewriter.T_truncateWriter>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotiotestdotiotest_t_truncatewriterdott_truncatewriter.__type__stdgodot_internaldottestingdotiotestdotIotest_t_truncatewriterdotT_truncateWriter }));
    }
