package stdgo._internal.compress.gzip;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.time.Time;
import stdgo._internal.compress.flate.Flate;
@:keep @:follow @:using(stdgo._internal.compress.gzip.Gzip_reader_static_extension.Reader_static_extension) @:using(stdgo._internal.compress.gzip.Gzip_readerpointer_static_extension.ReaderPointer_static_extension) typedef ReaderPointer = stdgo.Pointer<stdgo._internal.compress.gzip.Gzip_reader.Reader>;
