package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
@:structInit @:using(_internal.golangdotorg.x.text.unicode.norm.Norm_t_nfctrie_static_extension.T_nfcTrie_static_extension) @:using(_internal.golangdotorg.x.text.unicode.norm.Norm_t_nfctrie_static_extension.T_nfcTrie_static_extension) class T_nfcTrie {
    public function new() {}
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([])));
    public function __copy__() {
        return new T_nfcTrie();
    }
}
