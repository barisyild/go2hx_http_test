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
@:structInit @:using(stdgo._internal.mime.multipart.Multipart_reader_static_extension.Reader_static_extension) @:using(stdgo._internal.mime.multipart.Multipart_reader_static_extension.Reader_static_extension) class Reader {
    public var _bufReader : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
    public var _tempDir : stdgo.GoString = "";
    public var _currentPart : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part> = (null : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>);
    public var _partsRead : stdgo.GoInt = 0;
    public var _nl : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _nlDashBoundary : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _dashBoundaryDash : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _dashBoundary : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_bufReader:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, ?_tempDir:stdgo.GoString, ?_currentPart:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>, ?_partsRead:stdgo.GoInt, ?_nl:stdgo.Slice<stdgo.GoUInt8>, ?_nlDashBoundary:stdgo.Slice<stdgo.GoUInt8>, ?_dashBoundaryDash:stdgo.Slice<stdgo.GoUInt8>, ?_dashBoundary:stdgo.Slice<stdgo.GoUInt8>) {
        if (_bufReader != null) this._bufReader = _bufReader;
        if (_tempDir != null) this._tempDir = _tempDir;
        if (_currentPart != null) this._currentPart = _currentPart;
        if (_partsRead != null) this._partsRead = _partsRead;
        if (_nl != null) this._nl = _nl;
        if (_nlDashBoundary != null) this._nlDashBoundary = _nlDashBoundary;
        if (_dashBoundaryDash != null) this._dashBoundaryDash = _dashBoundaryDash;
        if (_dashBoundary != null) this._dashBoundary = _dashBoundary;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_bufReader", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_readerdotreader.__type__stdgodot_internaldotbufiodotBufio_readerdotReader }) }, optional : false }, { name : "_tempDir", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_currentPart", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmimedotmultipartdotmultipart_partdotpart.__type__stdgodot_internaldotmimedotmultipartdotMultipart_partdotPart }) }, optional : false }, { name : "_partsRead", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_nl", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_nlDashBoundary", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_dashBoundaryDash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_dashBoundary", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }])));
    public function __copy__() {
        return new Reader(_bufReader, _tempDir, _currentPart, _partsRead, _nl, _nlDashBoundary, _dashBoundaryDash, _dashBoundary);
    }
}
