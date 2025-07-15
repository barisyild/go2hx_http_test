package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.T__struct_48_asInterface) class T__struct_48_static_extension {
    @:embedded
    @:localembedfields
    public static function read( __self__:_internal.fmt_test.Fmt_test_t__struct_48.T__struct_48, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (__self__.reader ?? throw stdgo.Error._nullPointerDereference.__underlying__()).read(_0);
}
