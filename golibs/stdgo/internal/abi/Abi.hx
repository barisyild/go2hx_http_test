package stdgo.internal.abi;
var intArgRegs : stdgo.GoUInt64 = 0i64;
var floatArgRegs : stdgo.GoUInt64 = 0i64;
var effectiveFloatRegSize : stdgo.GoUInt64 = 0i64;
var mapBucketCountBits : stdgo.GoUInt64 = 3i64;
var mapBucketCount : stdgo.GoUInt64 = 8i64;
var mapMaxKeyBytes : stdgo.GoUInt64 = 128i64;
var mapMaxElemBytes : stdgo.GoUInt64 = 128i64;
var stackNosplitBase : stdgo.GoUInt64 = 800i64;
var stackSmall : stdgo.GoUInt64 = 128i64;
var stackBig : stdgo.GoUInt64 = 4096i64;
var funcFlagTopFrame : FuncFlag = 1i64;
var funcFlagSPWrite : FuncFlag = 2i64;
var funcFlagAsm : FuncFlag = 4i64;
var funcIDNormal : FuncID = 0i64;
var funcID_abort : FuncID = 1i64;
var funcID_asmcgocall : FuncID = 2i64;
var funcID_asyncPreempt : FuncID = 3i64;
var funcID_cgocallback : FuncID = 4i64;
var funcID_debugCallV2 : FuncID = 5i64;
var funcID_gcBgMarkWorker : FuncID = 6i64;
var funcID_goexit : FuncID = 7i64;
var funcID_gogo : FuncID = 8i64;
var funcID_gopanic : FuncID = 9i64;
var funcID_handleAsyncEvent : FuncID = 10i64;
var funcID_mcall : FuncID = 11i64;
var funcID_morestack : FuncID = 12i64;
var funcID_mstart : FuncID = 13i64;
var funcID_panicwrap : FuncID = 14i64;
var funcID_rt0_go : FuncID = 15i64;
var funcID_runfinq : FuncID = 16i64;
var funcID_runtime_main : FuncID = 17i64;
var funcID_sigpanic : FuncID = 18i64;
var funcID_systemstack : FuncID = 19i64;
var funcID_systemstack_switch : FuncID = 20i64;
var funcIDWrapper : FuncID = 21i64;
var argsSizeUnknown : stdgo.GoUInt64 = -2147483648i64;
var pCDATA_UnsafePoint : stdgo.GoUInt64 = 0i64;
var pCDATA_StackMapIndex : stdgo.GoUInt64 = 1i64;
var pCDATA_InlTreeIndex : stdgo.GoUInt64 = 2i64;
var pCDATA_ArgLiveIndex : stdgo.GoUInt64 = 3i64;
var fUNCDATA_ArgsPointerMaps : stdgo.GoUInt64 = 0i64;
var fUNCDATA_LocalsPointerMaps : stdgo.GoUInt64 = 1i64;
var fUNCDATA_StackObjects : stdgo.GoUInt64 = 2i64;
var fUNCDATA_InlTree : stdgo.GoUInt64 = 3i64;
var fUNCDATA_OpenCodedDeferInfo : stdgo.GoUInt64 = 4i64;
var fUNCDATA_ArgInfo : stdgo.GoUInt64 = 5i64;
var fUNCDATA_ArgLiveInfo : stdgo.GoUInt64 = 6i64;
var fUNCDATA_WrapInfo : stdgo.GoUInt64 = 7i64;
var unsafePointSafe : stdgo.GoUInt64 = -1i64;
var unsafePointUnsafe : stdgo.GoUInt64 = -2i64;
var unsafePointRestart1 : stdgo.GoUInt64 = -3i64;
var unsafePointRestart2 : stdgo.GoUInt64 = -4i64;
var unsafePointRestartAtEntry : stdgo.GoUInt64 = -5i64;
var invalid : Kind = 0i64;
var bool_ : Kind = 1i64;
var int_ : Kind = 2i64;
var int8 : Kind = 3i64;
var int16 : Kind = 4i64;
var int32 : Kind = 5i64;
var int64 : Kind = 6i64;
var uint : Kind = 7i64;
var uint8 : Kind = 8i64;
var uint16 : Kind = 9i64;
var uint32 : Kind = 10i64;
var uint64 : Kind = 11i64;
var uintptr : Kind = 12i64;
var float32 : Kind = 13i64;
var float64 : Kind = 14i64;
var complex64 : Kind = 15i64;
var complex128 : Kind = 16i64;
var array : Kind = 17i64;
var chan : Kind = 18i64;
var func : Kind = 19i64;
var interface_ : Kind = 20i64;
var map_ : Kind = 21i64;
var pointer : Kind = 22i64;
var slice : Kind = 23i64;
var string : Kind = 24i64;
var struct_ : Kind = 25i64;
var unsafePointer : Kind = 26i64;
var kindDirectIface : stdgo.GoUInt64 = 32i64;
var kindGCProg : stdgo.GoUInt64 = 64i64;
var kindMask : stdgo.GoUInt64 = 31i64;
var tFlagUncommon : TFlag = 1i64;
var tFlagExtraStar : TFlag = 2i64;
var tFlagNamed : TFlag = 4i64;
var tFlagRegularMemory : TFlag = 8i64;
var recvDir : ChanDir = 1i64;
var sendDir : ChanDir = 2i64;
var bothDir : ChanDir = 3i64;
var invalidDir : ChanDir = 0i64;
typedef RegArgs = stdgo._internal.internal.abi.Abi_regargs.RegArgs;
typedef Offset = stdgo._internal.internal.abi.Abi_offset.Offset;
typedef Type_ = stdgo._internal.internal.abi.Abi_type_.Type_;
typedef Method = stdgo._internal.internal.abi.Abi_method.Method;
typedef UncommonType = stdgo._internal.internal.abi.Abi_uncommontype.UncommonType;
typedef Imethod = stdgo._internal.internal.abi.Abi_imethod.Imethod;
typedef ArrayType = stdgo._internal.internal.abi.Abi_arraytype.ArrayType;
typedef ChanType = stdgo._internal.internal.abi.Abi_chantype.ChanType;
typedef InterfaceType = stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType;
typedef MapType = stdgo._internal.internal.abi.Abi_maptype.MapType;
typedef SliceType = stdgo._internal.internal.abi.Abi_slicetype.SliceType;
typedef FuncType = stdgo._internal.internal.abi.Abi_functype.FuncType;
typedef PtrType = stdgo._internal.internal.abi.Abi_ptrtype.PtrType;
typedef StructField = stdgo._internal.internal.abi.Abi_structfield.StructField;
typedef StructType = stdgo._internal.internal.abi.Abi_structtype.StructType;
typedef Name = stdgo._internal.internal.abi.Abi_name.Name;
typedef IntArgRegBitmap = stdgo._internal.internal.abi.Abi_intargregbitmap.IntArgRegBitmap;
typedef FuncFlag = stdgo._internal.internal.abi.Abi_funcflag.FuncFlag;
typedef FuncID = stdgo._internal.internal.abi.Abi_funcid.FuncID;
typedef Kind = stdgo._internal.internal.abi.Abi_kind.Kind;
typedef TFlag = stdgo._internal.internal.abi.Abi_tflag.TFlag;
typedef NameOff = stdgo._internal.internal.abi.Abi_nameoff.NameOff;
typedef TypeOff = stdgo._internal.internal.abi.Abi_typeoff.TypeOff;
typedef TextOff = stdgo._internal.internal.abi.Abi_textoff.TextOff;
typedef ChanDir = stdgo._internal.internal.abi.Abi_chandir.ChanDir;
typedef RegArgsPointer = stdgo._internal.internal.abi.Abi_regargspointer.RegArgsPointer;
typedef OffsetPointer = stdgo._internal.internal.abi.Abi_offsetpointer.OffsetPointer;
typedef Type_Pointer = stdgo._internal.internal.abi.Abi_type_pointer.Type_Pointer;
typedef MethodPointer = stdgo._internal.internal.abi.Abi_methodpointer.MethodPointer;
typedef UncommonTypePointer = stdgo._internal.internal.abi.Abi_uncommontypepointer.UncommonTypePointer;
typedef ImethodPointer = stdgo._internal.internal.abi.Abi_imethodpointer.ImethodPointer;
typedef ArrayTypePointer = stdgo._internal.internal.abi.Abi_arraytypepointer.ArrayTypePointer;
typedef ChanTypePointer = stdgo._internal.internal.abi.Abi_chantypepointer.ChanTypePointer;
typedef InterfaceTypePointer = stdgo._internal.internal.abi.Abi_interfacetypepointer.InterfaceTypePointer;
typedef MapTypePointer = stdgo._internal.internal.abi.Abi_maptypepointer.MapTypePointer;
typedef SliceTypePointer = stdgo._internal.internal.abi.Abi_slicetypepointer.SliceTypePointer;
typedef FuncTypePointer = stdgo._internal.internal.abi.Abi_functypepointer.FuncTypePointer;
typedef PtrTypePointer = stdgo._internal.internal.abi.Abi_ptrtypepointer.PtrTypePointer;
typedef StructFieldPointer = stdgo._internal.internal.abi.Abi_structfieldpointer.StructFieldPointer;
typedef StructTypePointer = stdgo._internal.internal.abi.Abi_structtypepointer.StructTypePointer;
typedef NamePointer = stdgo._internal.internal.abi.Abi_namepointer.NamePointer;
typedef IntArgRegBitmapPointer = stdgo._internal.internal.abi.Abi_intargregbitmappointer.IntArgRegBitmapPointer;
typedef FuncFlagPointer = stdgo._internal.internal.abi.Abi_funcflagpointer.FuncFlagPointer;
typedef FuncIDPointer = stdgo._internal.internal.abi.Abi_funcidpointer.FuncIDPointer;
typedef KindPointer = stdgo._internal.internal.abi.Abi_kindpointer.KindPointer;
typedef TFlagPointer = stdgo._internal.internal.abi.Abi_tflagpointer.TFlagPointer;
typedef NameOffPointer = stdgo._internal.internal.abi.Abi_nameoffpointer.NameOffPointer;
typedef TypeOffPointer = stdgo._internal.internal.abi.Abi_typeoffpointer.TypeOffPointer;
typedef TextOffPointer = stdgo._internal.internal.abi.Abi_textoffpointer.TextOffPointer;
typedef ChanDirPointer = stdgo._internal.internal.abi.Abi_chandirpointer.ChanDirPointer;
typedef RegArgsPointerPointer = stdgo._internal.internal.abi.Abi_regargspointerpointer.RegArgsPointerPointer;
typedef OffsetPointerPointer = stdgo._internal.internal.abi.Abi_offsetpointerpointer.OffsetPointerPointer;
typedef Type_PointerPointer = stdgo._internal.internal.abi.Abi_type_pointerpointer.Type_PointerPointer;
typedef MethodPointerPointer = stdgo._internal.internal.abi.Abi_methodpointerpointer.MethodPointerPointer;
typedef UncommonTypePointerPointer = stdgo._internal.internal.abi.Abi_uncommontypepointerpointer.UncommonTypePointerPointer;
typedef ImethodPointerPointer = stdgo._internal.internal.abi.Abi_imethodpointerpointer.ImethodPointerPointer;
typedef ArrayTypePointerPointer = stdgo._internal.internal.abi.Abi_arraytypepointerpointer.ArrayTypePointerPointer;
typedef ChanTypePointerPointer = stdgo._internal.internal.abi.Abi_chantypepointerpointer.ChanTypePointerPointer;
typedef InterfaceTypePointerPointer = stdgo._internal.internal.abi.Abi_interfacetypepointerpointer.InterfaceTypePointerPointer;
typedef MapTypePointerPointer = stdgo._internal.internal.abi.Abi_maptypepointerpointer.MapTypePointerPointer;
typedef SliceTypePointerPointer = stdgo._internal.internal.abi.Abi_slicetypepointerpointer.SliceTypePointerPointer;
typedef FuncTypePointerPointer = stdgo._internal.internal.abi.Abi_functypepointerpointer.FuncTypePointerPointer;
typedef PtrTypePointerPointer = stdgo._internal.internal.abi.Abi_ptrtypepointerpointer.PtrTypePointerPointer;
typedef StructFieldPointerPointer = stdgo._internal.internal.abi.Abi_structfieldpointerpointer.StructFieldPointerPointer;
typedef StructTypePointerPointer = stdgo._internal.internal.abi.Abi_structtypepointerpointer.StructTypePointerPointer;
typedef NamePointerPointer = stdgo._internal.internal.abi.Abi_namepointerpointer.NamePointerPointer;
typedef IntArgRegBitmapPointerPointer = stdgo._internal.internal.abi.Abi_intargregbitmappointerpointer.IntArgRegBitmapPointerPointer;
typedef FuncFlagPointerPointer = stdgo._internal.internal.abi.Abi_funcflagpointerpointer.FuncFlagPointerPointer;
typedef FuncIDPointerPointer = stdgo._internal.internal.abi.Abi_funcidpointerpointer.FuncIDPointerPointer;
typedef KindPointerPointer = stdgo._internal.internal.abi.Abi_kindpointerpointer.KindPointerPointer;
typedef TFlagPointerPointer = stdgo._internal.internal.abi.Abi_tflagpointerpointer.TFlagPointerPointer;
typedef NameOffPointerPointer = stdgo._internal.internal.abi.Abi_nameoffpointerpointer.NameOffPointerPointer;
typedef TypeOffPointerPointer = stdgo._internal.internal.abi.Abi_typeoffpointerpointer.TypeOffPointerPointer;
typedef TextOffPointerPointer = stdgo._internal.internal.abi.Abi_textoffpointerpointer.TextOffPointerPointer;
typedef ChanDirPointerPointer = stdgo._internal.internal.abi.Abi_chandirpointerpointer.ChanDirPointerPointer;
class Abi {
    /**
        * CommonSize returns sizeof(Type) for a compilation target with a given ptrSize
    **/
    static public inline function commonSize(_ptrSize:stdgo.GoInt):stdgo.GoInt return stdgo._internal.internal.abi.Abi_commonsize.commonSize(_ptrSize);
    /**
        * StructFieldSize returns sizeof(StructField) for a compilation target with a given ptrSize
    **/
    static public inline function structFieldSize(_ptrSize:stdgo.GoInt):stdgo.GoInt return stdgo._internal.internal.abi.Abi_structfieldsize.structFieldSize(_ptrSize);
    /**
        * UncommonSize returns sizeof(UncommonType).  This currently does not depend on ptrSize.
        * This exported function is in an internal package, so it may change to depend on ptrSize in the future.
    **/
    static public inline function uncommonSize():stdgo.GoUInt64 return stdgo._internal.internal.abi.Abi_uncommonsize.uncommonSize();
    /**
        * IMethodSize returns sizeof(IMethod) for a compilation target with a given ptrSize
    **/
    static public inline function iMethodSize(_ptrSize:stdgo.GoInt):stdgo.GoInt return stdgo._internal.internal.abi.Abi_imethodsize.iMethodSize(_ptrSize);
    /**
        * KindOff returns the offset of Type.Kind_ for a compilation target with a given ptrSize
    **/
    static public inline function kindOff(_ptrSize:stdgo.GoInt):stdgo.GoInt return stdgo._internal.internal.abi.Abi_kindoff.kindOff(_ptrSize);
    /**
        * SizeOff returns the offset of Type.Size_ for a compilation target with a given ptrSize
    **/
    static public inline function sizeOff(_ptrSize:stdgo.GoInt):stdgo.GoInt return stdgo._internal.internal.abi.Abi_sizeoff.sizeOff(_ptrSize);
    /**
        * PtrBytes returns the offset of Type.PtrBytes for a compilation target with a given ptrSize
    **/
    static public inline function ptrBytesOff(_ptrSize:stdgo.GoInt):stdgo.GoInt return stdgo._internal.internal.abi.Abi_ptrbytesoff.ptrBytesOff(_ptrSize);
    /**
        * TFlagOff returns the offset of Type.TFlag for a compilation target with a given ptrSize
    **/
    static public inline function tFlagOff(_ptrSize:stdgo.GoInt):stdgo.GoInt return stdgo._internal.internal.abi.Abi_tflagoff.tFlagOff(_ptrSize);
    /**
        * NewOffset returns a new Offset with offset 0 and alignment 1.
    **/
    static public inline function newOffset(_ptrSize:stdgo.GoUInt8, _twoWordAlignSlices:Bool):stdgo._internal.internal.abi.Abi_offset.Offset return stdgo._internal.internal.abi.Abi_newoffset.newOffset(_ptrSize, _twoWordAlignSlices);
    /**
        * InitializedOffset returns a new Offset with specified offset, alignment, pointer size, and slice alignment.
    **/
    static public inline function initializedOffset(_off:stdgo.GoInt, _align:stdgo.GoUInt8, _ptrSize:stdgo.GoUInt8, _twoWordAlignSlices:Bool):stdgo._internal.internal.abi.Abi_offset.Offset return stdgo._internal.internal.abi.Abi_initializedoffset.initializedOffset(_off, _align, _ptrSize, _twoWordAlignSlices);
    /**
        * CommonOffset returns the Offset to the data after the common portion of type data structures.
    **/
    static public inline function commonOffset(_ptrSize:stdgo.GoInt, _twoWordAlignSlices:Bool):stdgo._internal.internal.abi.Abi_offset.Offset return stdgo._internal.internal.abi.Abi_commonoffset.commonOffset(_ptrSize, _twoWordAlignSlices);
    /**
        * FuncPCABI0 returns the entry PC of the function f, which must be a
        * direct reference of a function defined as ABI0. Otherwise it is a
        * compile-time error.
        * 
        * Implemented as a compile intrinsic.
    **/
    static public inline function funcPCABI0(_f:stdgo.AnyInterface):stdgo.GoUIntptr return stdgo._internal.internal.abi.Abi_funcpcabi0.funcPCABI0(_f);
    /**
        * FuncPCABIInternal returns the entry PC of the function f. If f is a
        * direct reference of a function, it must be defined as ABIInternal.
        * Otherwise it is a compile-time error. If f is not a direct reference
        * of a defined function, it assumes that f is a func value. Otherwise
        * the behavior is undefined.
        * 
        * Implemented as a compile intrinsic.
    **/
    static public inline function funcPCABIInternal(_f:stdgo.AnyInterface):stdgo.GoUIntptr return stdgo._internal.internal.abi.Abi_funcpcabiinternal.funcPCABIInternal(_f);
    static public inline function newName(_n:stdgo.GoString, _tag:stdgo.GoString, _exported:Bool, _embedded:Bool):stdgo._internal.internal.abi.Abi_name.Name return stdgo._internal.internal.abi.Abi_newname.newName(_n, _tag, _exported, _embedded);
}
