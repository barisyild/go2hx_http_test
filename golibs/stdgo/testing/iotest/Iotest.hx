package stdgo.testing.iotest;
var errTimeout(get, set) : stdgo.Error;
private function get_errTimeout():stdgo.Error return stdgo._internal.testing.iotest.Iotest_errtimeout.errTimeout;
private function set_errTimeout(v:stdgo.Error):stdgo.Error {
    stdgo._internal.testing.iotest.Iotest_errtimeout.errTimeout = v;
    return v;
}
/**
    * Package iotest implements Readers and Writers useful mainly for testing.
**/
class Iotest {
    /**
        * NewWriteLogger returns a writer that behaves like w except
        * that it logs (using log.Printf) each write to standard error,
        * printing the prefix and the hexadecimal data written.
    **/
    static public inline function newWriteLogger(_prefix:stdgo.GoString, _w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer return stdgo._internal.testing.iotest.Iotest_newwritelogger.newWriteLogger(_prefix, _w);
    /**
        * NewReadLogger returns a reader that behaves like r except
        * that it logs (using log.Printf) each read to standard error,
        * printing the prefix and the hexadecimal data read.
    **/
    static public inline function newReadLogger(_prefix:stdgo.GoString, _r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader return stdgo._internal.testing.iotest.Iotest_newreadlogger.newReadLogger(_prefix, _r);
    /**
        * OneByteReader returns a Reader that implements
        * each non-empty Read by reading one byte from r.
    **/
    static public inline function oneByteReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader return stdgo._internal.testing.iotest.Iotest_onebytereader.oneByteReader(_r);
    /**
        * HalfReader returns a Reader that implements Read
        * by reading half as many requested bytes from r.
    **/
    static public inline function halfReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader return stdgo._internal.testing.iotest.Iotest_halfreader.halfReader(_r);
    /**
        * DataErrReader changes the way errors are handled by a Reader. Normally, a
        * Reader returns an error (typically EOF) from the first Read call after the
        * last piece of data is read. DataErrReader wraps a Reader and changes its
        * behavior so the final error is returned along with the final data, instead
        * of in the first call after the final data.
    **/
    static public inline function dataErrReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader return stdgo._internal.testing.iotest.Iotest_dataerrreader.dataErrReader(_r);
    /**
        * TimeoutReader returns ErrTimeout on the second read
        * with no data. Subsequent calls to read succeed.
    **/
    static public inline function timeoutReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader return stdgo._internal.testing.iotest.Iotest_timeoutreader.timeoutReader(_r);
    /**
        * ErrReader returns an io.Reader that returns 0, err from all Read calls.
    **/
    static public inline function errReader(_err:stdgo.Error):stdgo._internal.io.Io_reader.Reader return stdgo._internal.testing.iotest.Iotest_errreader.errReader(_err);
    /**
        * TestReader tests that reading from r returns the expected file content.
        * It does reads of different sizes, until EOF.
        * If r implements io.ReaderAt or io.Seeker, TestReader also checks
        * that those operations behave as they should.
        * 
        * If TestReader finds any misbehaviors, it returns an error reporting them.
        * The error text may span multiple lines.
    **/
    static public inline function testReader(_r:stdgo._internal.io.Io_reader.Reader, _content:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return stdgo._internal.testing.iotest.Iotest_testreader.testReader(_r, _content);
    /**
        * TruncateWriter returns a Writer that writes to w
        * but stops silently after n bytes.
    **/
    static public inline function truncateWriter(_w:stdgo._internal.io.Io_writer.Writer, _n:stdgo.GoInt64):stdgo._internal.io.Io_writer.Writer return stdgo._internal.testing.iotest.Iotest_truncatewriter.truncateWriter(_w, _n);
}
