package stdgo._internal.mime;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
function _clearSyncMap(_m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L26"
        _m.range(function(_k:stdgo.AnyInterface, __0:stdgo.AnyInterface):Bool {
            //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L27"
            _m.delete(_k);
            //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L28"
            return true;
        });
    }
