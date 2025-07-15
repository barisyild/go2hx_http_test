package stdgo._internal.encoding.base64;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
var rawURLEncoding : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> = (@:checkr stdgo._internal.encoding.base64.Base64_urlencoding.uRLEncoding ?? throw stdgo.Error._nullPointerDereference.__underlying__()).withPadding((-1 : stdgo.GoInt32));
