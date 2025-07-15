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
function _matchAfterPrefix(_buf:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.Slice<stdgo.GoUInt8>, _readErr:stdgo.Error):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L296"
        if ((_buf.length) == ((_prefix.length))) {
            //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L297"
            if (_readErr != null) {
                //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L298"
                return (1 : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L300"
            return (0 : stdgo.GoInt);
        };
        var _c = @:assignType (_buf[(_prefix.length : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L304"
        if ((((_c == ((32 : stdgo.GoUInt8)) || _c == ((9 : stdgo.GoUInt8)) : Bool) || _c == ((13 : stdgo.GoUInt8)) : Bool) || (_c == (10 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L305"
            return (1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L309"
        if (_c == ((45 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L310"
            if ((_buf.length) == (((_prefix.length) + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L311"
                if (_readErr != null) {
                    //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L313"
                    return (-1 : stdgo.GoInt);
                };
                //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L315"
                return (0 : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L317"
            if (_buf[((_prefix.length) + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L318"
                return (1 : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L322"
        return (-1 : stdgo.GoInt);
    }
