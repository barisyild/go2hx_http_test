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
function _maxMIMEHeaders():stdgo.GoInt64 {
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L356"
        {
            var _s = @:assignType (stdgo._internal.mime.multipart.Multipart__multipartmaxheaders._multipartMaxHeaders.value()?.__copy__() : stdgo.GoString);
            if (_s != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L357"
                {
                    var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_s?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _v:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_err == null) && (_v >= (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L358"
                        stdgo._internal.mime.multipart.Multipart__multipartmaxheaders._multipartMaxHeaders.incNonDefault();
                        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L359"
                        return _v;
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L362"
        return (10000i64 : stdgo.GoInt64);
    }
