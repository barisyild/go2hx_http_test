package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_t_poollocal_static_extension.T_poolLocal_static_extension) @:using(stdgo._internal.sync.Sync_t_poollocal_static_extension.T_poolLocal_static_extension) class T_poolLocal {
    @:embedded
    public var _poolLocalInternal : stdgo._internal.sync.Sync_t_poollocalinternal.T_poolLocalInternal = ({} : stdgo._internal.sync.Sync_t_poollocalinternal.T_poolLocalInternal);
    public var _pad : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(112, 112).__setNumber32__();
    public function new(?_poolLocalInternal:stdgo._internal.sync.Sync_t_poollocalinternal.T_poolLocalInternal, ?_pad:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_poolLocalInternal != null) this._poolLocalInternal = _poolLocalInternal;
        if (_pad != null) this._pad = _pad;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_poolLocalInternal", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_t_poollocalinternaldott_poollocalinternal.__type__stdgodot_internaldotsyncdotSync_t_poollocalinternaldotT_poolLocalInternal }, optional : false }, { name : "_pad", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 112) }, optional : false }])));
    public function __copy__() {
        return new T_poolLocal(_poolLocalInternal, _pad);
    }
}
