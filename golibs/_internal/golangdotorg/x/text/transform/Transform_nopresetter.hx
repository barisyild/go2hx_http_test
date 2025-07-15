package _internal.golangdotorg.x.text.transform;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
@:structInit @:using(_internal.golangdotorg.x.text.transform.Transform_nopresetter_static_extension.NopResetter_static_extension) @:using(_internal.golangdotorg.x.text.transform.Transform_nopresetter_static_extension.NopResetter_static_extension) class NopResetter {
    public function new() {}
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([])));
    public function __copy__() {
        return new NopResetter();
    }
}
