package _internal.golangdotorg.x.text.transform;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
@:keep @:allow(_internal.golangdotorg.x.text.transform.Transform.T_link_asInterface) class T_link_static_extension {
    @:keep
    @:tdfield
    static public function _dst( _l:stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_t_link.T_link>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _l:stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_t_link.T_link> = _l;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L374"
        return ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b.__slice__((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _src( _l:stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_t_link.T_link>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _l:stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_t_link.T_link> = _l;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L370"
        return ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b.__slice__((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p, (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n) : stdgo.Slice<stdgo.GoUInt8>);
    }
}
