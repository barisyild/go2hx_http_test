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
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.Part_asInterface) class Part_static_extension {
    @:keep
    @:tdfield
    static public function close( _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part> = _p;
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L326"
        stdgo._internal.io.Io_copy.copy(stdgo._internal.io.Io_discard.discard, stdgo.Go.asInterface(_p, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmimedotmultipartdotmultipart_partdotpart.__type__stdgodot_internaldotmimedotmultipartdotMultipart_partdotPart })));
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L327"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function read( _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>, _d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L185"
        return (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.read(_d);
    }
    @:keep
    @:tdfield
    static public function _populateHeaders( _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>, _maxMIMEHeaderSize:stdgo.GoInt64, _maxMIMEHeaders:stdgo.GoInt64):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part> = _p;
        var _r = stdgo._internal.net.textproto.Textproto_newreader.newReader((@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufReader);
        var __tmp__ = stdgo._internal.mime.multipart.Multipart__readmimeheader._readMIMEHeader(_r, _maxMIMEHeaderSize, _maxMIMEHeaders), _header:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L172"
        if (_err == null) {
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header = _header;
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L176"
        if (((_err != null) && (_err.error() == ("message too large" : stdgo.GoString)) : Bool)) {
            _err = stdgo._internal.mime.multipart.Multipart_errmessagetoolarge.errMessageTooLarge;
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L179"
        return _err;
    }
    @:keep
    @:tdfield
    static public function _parseContentDisposition( _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part> = _p;
        var _v = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.get(("Content-Disposition" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.mime.Mime_parsemediatype.parseMediaType(_v?.__copy__());
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._disposition = @:tmpset0 __tmp__._0?.__copy__();
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dispositionParams = @:tmpset0 __tmp__._1;
            _err = @:tmpset0 __tmp__._2;
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L108"
        if (_err != null) {
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dispositionParams = stdgo._internal.mime.multipart.Multipart__emptyparams._emptyParams;
        };
    }
    @:keep
    @:tdfield
    static public function fileName( _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part> = _p;
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L92"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dispositionParams == null) {
            //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L93"
            _p._parseContentDisposition();
        };
        var _filename = @:assignType (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dispositionParams[("filename" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L96"
        if (_filename == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L97"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L101"
        return stdgo._internal.path.filepath.Filepath_base.base(_filename?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function formName( _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part> = _p;
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L79"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dispositionParams == null) {
            //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L80"
            _p._parseContentDisposition();
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L82"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._disposition != (("form-data" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L83"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L85"
        return ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dispositionParams[("name" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__();
    }
}
