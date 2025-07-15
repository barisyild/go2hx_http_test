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
function _newPart(_mr:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>, _rawPart:Bool, _maxMIMEHeaderSize:stdgo.GoInt64, _maxMIMEHeaders:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>; var _1 : stdgo.Error; } {
        var _bp = (stdgo.Go.setRef(({ header : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>), _mr : _mr } : stdgo._internal.mime.multipart.Multipart_part.Part), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmimedotmultipartdotmultipart_partdotpart.__type__stdgodot_internaldotmimedotmultipartdotMultipart_partdotPart })) : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>);
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L153"
        {
            var _err = @:assignType (_bp._populateHeaders(_maxMIMEHeaderSize, _maxMIMEHeaders) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L154"
                return { _0 : null, _1 : _err };
            };
        };
        (@:checkr _bp ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r = stdgo.Go.asInterface((new stdgo._internal.mime.multipart.Multipart_t_partreader.T_partReader(_bp) : stdgo._internal.mime.multipart.Multipart_t_partreader.T_partReader), _internal.gotype.Gotype___type__stdgodot_internaldotmimedotmultipartdotmultipart_t_partreaderdott_partreader.__type__stdgodot_internaldotmimedotmultipartdotMultipart_t_partreaderdotT_partReader);
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L159"
        if (!_rawPart) {
            {};
            //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L161"
            if (stdgo._internal.strings.Strings_equalfold.equalFold((@:checkr _bp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.get(("Content-Transfer-Encoding" : stdgo.GoString))?.__copy__(), ("quoted-printable" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L162"
                (@:checkr _bp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.del(("Content-Transfer-Encoding" : stdgo.GoString));
                (@:checkr _bp ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r = stdgo.Go.asInterface(stdgo._internal.mime.quotedprintable.Quotedprintable_newreader.newReader((@:checkr _bp ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmimedotquotedprintabledotquotedprintable_readerdotreader.__type__stdgodot_internaldotmimedotquotedprintabledotQuotedprintable_readerdotReader }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L166"
        return { _0 : _bp, _1 : (null : stdgo.Error) };
    }
