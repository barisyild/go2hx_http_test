package crypto.internal.alias;
/**
    * Package alias implements memory aliasing tests.
**/
class Alias {
    /**
        * AnyOverlap reports whether x and y share memory at any (not necessarily
        * corresponding) index. The memory beyond the slice length is ignored.
    **/
    static public inline function anyOverlap(_x:stdgo.Slice<stdgo.GoUInt8>, _y:stdgo.Slice<stdgo.GoUInt8>):Bool return _internal.golangdotorg.x.crypto.internal.alias.Alias_anyoverlap.anyOverlap(_x, _y);
    /**
        * InexactOverlap reports whether x and y share memory at any non-corresponding
        * index. The memory beyond the slice length is ignored. Note that x and y can
        * have different lengths and still not have any inexact overlap.
        * 
        * InexactOverlap can be used to implement the requirements of the crypto/cipher
        * AEAD, Block, BlockMode and Stream interfaces.
    **/
    static public inline function inexactOverlap(_x:stdgo.Slice<stdgo.GoUInt8>, _y:stdgo.Slice<stdgo.GoUInt8>):Bool return _internal.golangdotorg.x.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap(_x, _y);
}
