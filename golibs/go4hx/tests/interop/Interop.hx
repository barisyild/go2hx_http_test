package go4hx.tests.interop;
typedef InterfaceType = _internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_interfacetype.InterfaceType;
typedef AppendByteOrder = _internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_appendbyteorder.AppendByteOrder;
typedef StructKey = _internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_structkey.StructKey;
typedef StructKeyPointer = _internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_structkeypointer.StructKeyPointer;
typedef StructKeyPointerPointer = _internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_structkeypointerpointer.StructKeyPointerPointer;
class Interop {
    static public inline function map_(_m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>):stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> return _internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_map_.map_(_m);
    static public inline function returnMapStructKey():stdgo.GoMap<_internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_structkey.StructKey, stdgo.GoInt> return _internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_returnmapstructkey.returnMapStructKey();
    static public inline function float32(_f:stdgo.GoFloat32):stdgo.GoFloat32 return _internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_float32.float32(_f);
    static public inline function any(_i:stdgo.AnyInterface):stdgo.AnyInterface return _internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_any.any(_i);
    /**
        * This is an interface function
    **/
    static public inline function interface_(_i:InterfaceType):_internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_interfacetype.InterfaceType return _internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_interface_.interface_(_i);
    /**
        * This is an error function
    **/
    static public inline function error(_err:stdgo.Error):stdgo.Error return _internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_error.error(_err);
    static public inline function interfaceByteOrder(_i:_internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_t_byteorder.T_byteOrder):_internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_t_byteorder.T_byteOrder return _internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_interfacebyteorder.interfaceByteOrder(_i);
}
