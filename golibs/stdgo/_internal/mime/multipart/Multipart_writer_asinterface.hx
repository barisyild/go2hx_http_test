package stdgo._internal.mime.multipart;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.strings.Strings;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.mime.quotedprintable.Quotedprintable;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.mime.Mime;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.sort.Sort;
class Writer_asInterface {
    @:keep
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    public dynamic function writeField(_fieldname:stdgo.GoString, _value:stdgo.GoString):stdgo.Error return @:_0 __self__.value.writeField(_fieldname, _value);
    @:keep
    public dynamic function createFormField(_fieldname:stdgo.GoString):{ var _0 : stdgo._internal.io.Io_writer.Writer; var _1 : stdgo.Error; } return @:_0 __self__.value.createFormField(_fieldname);
    @:keep
    public dynamic function createFormFile(_fieldname:stdgo.GoString, _filename:stdgo.GoString):{ var _0 : stdgo._internal.io.Io_writer.Writer; var _1 : stdgo.Error; } return @:_0 __self__.value.createFormFile(_fieldname, _filename);
    @:keep
    public dynamic function createPart(_header:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader):{ var _0 : stdgo._internal.io.Io_writer.Writer; var _1 : stdgo.Error; } return @:_0 __self__.value.createPart(_header);
    @:keep
    public dynamic function formDataContentType():stdgo.GoString return @:_0 __self__.value.formDataContentType();
    @:keep
    public dynamic function setBoundary(_boundary:stdgo.GoString):stdgo.Error return @:_0 __self__.value.setBoundary(_boundary);
    @:keep
    public dynamic function boundary():stdgo.GoString return @:_0 __self__.value.boundary();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.mime.multipart.Multipart_writerpointer.WriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
