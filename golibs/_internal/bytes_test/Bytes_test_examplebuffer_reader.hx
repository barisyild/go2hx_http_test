package _internal.bytes_test;
function exampleBuffer_reader():Void {
        var _buf = stdgo._internal.bytes.Bytes_newbufferstring.newBufferString(("R29waGVycyBydWxlIQ==" : stdgo.GoString));
        var _dec = @:assignType (stdgo._internal.encoding.base64.Base64_newdecoder.newDecoder(stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding, stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }))) : stdgo._internal.io.Io_reader.Reader);
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L30"
        stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_filedotfile.__type__stdgodot_internaldotosdotOs_filedotFile })), _dec);
    }
