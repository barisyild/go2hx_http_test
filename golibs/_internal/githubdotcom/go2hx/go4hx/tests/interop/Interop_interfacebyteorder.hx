package _internal.githubdotcom.go2hx.go4hx.tests.interop;
function interfaceByteOrder(_i:_internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_t_byteorder.T_byteOrder):_internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_t_byteorder.T_byteOrder {
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/interop/interop.go#L45"
        _i.appendUint16((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (3 : stdgo.GoUInt16));
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/interop/interop.go#L46"
        return _i;
    }
