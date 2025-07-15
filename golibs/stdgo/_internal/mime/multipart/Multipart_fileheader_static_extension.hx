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
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.FileHeader_asInterface) class FileHeader_static_extension {
    @:keep
    @:tdfield
    static public function open( _fh:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>):{ var _0 : stdgo._internal.mime.multipart.Multipart_file.File; var _1 : stdgo.Error; } {
        @:recv var _fh:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader> = _fh;
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/formdata.go#L269"
        {
            var _b = (@:checkr _fh ?? throw stdgo.Error._nullPointerDereference.__underlying__())._content;
            if (_b != null) {
                var _r = stdgo._internal.io.Io_newsectionreader.newSectionReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_b), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_readerdotreader.__type__stdgodot_internaldotbytesdotBytes_readerdotReader })), (0i64 : stdgo.GoInt64), (_b.length : stdgo.GoInt64));
                //"file:///Users/o/.go/go1.21.3/src/mime/multipart/formdata.go#L271"
                return { _0 : stdgo.Go.asInterface((new stdgo._internal.mime.multipart.Multipart_t_sectionreadcloser.T_sectionReadCloser(_r, (null : stdgo._internal.io.Io_closer.Closer)) : stdgo._internal.mime.multipart.Multipart_t_sectionreadcloser.T_sectionReadCloser), _internal.gotype.Gotype___type__stdgodot_internaldotmimedotmultipartdotmultipart_t_sectionreadcloserdott_sectionreadcloser.__type__stdgodot_internaldotmimedotmultipartdotMultipart_t_sectionreadcloserdotT_sectionReadCloser), _1 : (null : stdgo.Error) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/formdata.go#L273"
        if ((@:checkr _fh ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tmpshared) {
            var __tmp__ = stdgo._internal.os.Os_open.open((@:checkr _fh ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tmpfile?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/mime/multipart/formdata.go#L275"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/mime/multipart/formdata.go#L276"
                return { _0 : (null : stdgo._internal.mime.multipart.Multipart_file.File), _1 : _err };
            };
            var _r = stdgo._internal.io.Io_newsectionreader.newSectionReader(stdgo.Go.asInterface(_f, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_filedotfile.__type__stdgodot_internaldotosdotOs_filedotFile })), (@:checkr _fh ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tmpoff, (@:checkr _fh ?? throw stdgo.Error._nullPointerDereference.__underlying__()).size);
            //"file:///Users/o/.go/go1.21.3/src/mime/multipart/formdata.go#L279"
            return { _0 : stdgo.Go.asInterface((new stdgo._internal.mime.multipart.Multipart_t_sectionreadcloser.T_sectionReadCloser(_r, stdgo.Go.asInterface(_f, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_filedotfile.__type__stdgodot_internaldotosdotOs_filedotFile }))) : stdgo._internal.mime.multipart.Multipart_t_sectionreadcloser.T_sectionReadCloser), _internal.gotype.Gotype___type__stdgodot_internaldotmimedotmultipartdotmultipart_t_sectionreadcloserdott_sectionreadcloser.__type__stdgodot_internaldotmimedotmultipartdotMultipart_t_sectionreadcloserdotT_sectionReadCloser), _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/formdata.go#L281"
        return ({
            @:explicitConversion final __tmp__ = stdgo._internal.os.Os_open.open((@:checkr _fh ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tmpfile?.__copy__());
            { _0 : stdgo.Go.asInterface(__tmp__._0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_filedotfile.__type__stdgodot_internaldotosdotOs_filedotFile })), _1 : __tmp__._1 };
        });
    }
}
