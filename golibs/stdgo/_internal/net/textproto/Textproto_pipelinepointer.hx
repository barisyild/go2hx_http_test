package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
@:keep @:follow @:using(stdgo._internal.net.textproto.Textproto_pipeline_static_extension.Pipeline_static_extension) @:using(stdgo._internal.net.textproto.Textproto_pipelinepointer_static_extension.PipelinePointer_static_extension) typedef PipelinePointer = stdgo.Pointer<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline>;
