package _internal.githubdotcom.go2hx.go4hx.tests.interop;
@:structInit @:using(_internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_structkey_static_extension.StructKey_static_extension) @:using(_internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_structkey_static_extension.StructKey_static_extension) class StructKey {
    public var _i : stdgo.GoInt = 0;
    public function new(?_i:stdgo.GoInt) {
        if (_i != null) this._i = _i;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StructKey(_i);
    }
}
