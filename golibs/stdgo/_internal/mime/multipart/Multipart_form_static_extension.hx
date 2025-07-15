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
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.Form_asInterface) class Form_static_extension {
    @:keep
    @:tdfield
    static public function removeAll( _f:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form> = _f;
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/formdata.go#L242"
        if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).file != null) for (__0 => _fhs in (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).file) {
            //"file:///Users/o/.go/go1.21.3/src/mime/multipart/formdata.go#L243"
            if (_fhs != null) for (__1 => _fh in _fhs) {
                //"file:///Users/o/.go/go1.21.3/src/mime/multipart/formdata.go#L244"
                if ((@:checkr _fh ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tmpfile != ((stdgo.Go.str() : stdgo.GoString))) {
                    var _e = @:assignType (stdgo._internal.os.Os_remove.remove((@:checkr _fh ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tmpfile?.__copy__()) : stdgo.Error);
                    //"file:///Users/o/.go/go1.21.3/src/mime/multipart/formdata.go#L246"
                    if (((_e != null && !stdgo._internal.errors.Errors_is_.is_(_e, stdgo._internal.os.Os_errnotexist.errNotExist) : Bool) && (_err == null) : Bool)) {
                        _err = _e;
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/formdata.go#L252"
        return _err;
    }
}
