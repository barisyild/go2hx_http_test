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
@:structInit @:using(stdgo._internal.mime.multipart.Multipart_part_static_extension.Part_static_extension) @:using(stdgo._internal.mime.multipart.Multipart_part_static_extension.Part_static_extension) class Part {
    public var header : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = (null : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader);
    public var _mr : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader> = (null : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>);
    public var _disposition : stdgo.GoString = "";
    public var _dispositionParams : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var _r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var _n : stdgo.GoInt = 0;
    public var _total : stdgo.GoInt64 = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _readErr : stdgo.Error = (null : stdgo.Error);
    public function new(?header:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader, ?_mr:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>, ?_disposition:stdgo.GoString, ?_dispositionParams:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_r:stdgo._internal.io.Io_reader.Reader, ?_n:stdgo.GoInt, ?_total:stdgo.GoInt64, ?_err:stdgo.Error, ?_readErr:stdgo.Error) {
        if (header != null) this.header = header;
        if (_mr != null) this._mr = _mr;
        if (_disposition != null) this._disposition = _disposition;
        if (_dispositionParams != null) this._dispositionParams = _dispositionParams;
        if (_r != null) this._r = _r;
        if (_n != null) this._n = _n;
        if (_total != null) this._total = _total;
        if (_err != null) this._err = _err;
        if (_readErr != null) this._readErr = _readErr;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "header", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader }, optional : false }, { name : "_mr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmimedotmultipartdotmultipart_readerdotreader.__type__stdgodot_internaldotmimedotmultipartdotMultipart_readerdotReader }) }, optional : false }, { name : "_disposition", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_dispositionParams", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false }, { name : "_r", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader }, optional : false }, { name : "_n", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_total", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }, { name : "_readErr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }])));
    public function __copy__() {
        return new Part(header, _mr, _disposition, _dispositionParams, _r, _n, _total, _err, _readErr);
    }
}
