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
@:structInit @:using(stdgo._internal.mime.multipart.Multipart_fileheader_static_extension.FileHeader_static_extension) @:using(stdgo._internal.mime.multipart.Multipart_fileheader_static_extension.FileHeader_static_extension) class FileHeader {
    public var filename : stdgo.GoString = "";
    public var header : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = (null : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader);
    public var size : stdgo.GoInt64 = 0;
    public var _content : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _tmpfile : stdgo.GoString = "";
    public var _tmpoff : stdgo.GoInt64 = 0;
    public var _tmpshared : Bool = false;
    public function new(?filename:stdgo.GoString, ?header:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader, ?size:stdgo.GoInt64, ?_content:stdgo.Slice<stdgo.GoUInt8>, ?_tmpfile:stdgo.GoString, ?_tmpoff:stdgo.GoInt64, ?_tmpshared:Bool) {
        if (filename != null) this.filename = filename;
        if (header != null) this.header = header;
        if (size != null) this.size = size;
        if (_content != null) this._content = _content;
        if (_tmpfile != null) this._tmpfile = _tmpfile;
        if (_tmpoff != null) this._tmpoff = _tmpoff;
        if (_tmpshared != null) this._tmpshared = _tmpshared;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "filename", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "header", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader }, optional : false }, { name : "size", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_content", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_tmpfile", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_tmpoff", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_tmpshared", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new FileHeader(filename, header, size, _content, _tmpfile, _tmpoff, _tmpshared);
    }
}
