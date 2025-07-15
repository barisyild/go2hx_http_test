package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_t_poollocalinternal_static_extension.T_poolLocalInternal_static_extension) @:using(stdgo._internal.sync.Sync_t_poollocalinternal_static_extension.T_poolLocalInternal_static_extension) class T_poolLocalInternal {
    public var _private : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _shared : stdgo._internal.sync.Sync_t_poolchain.T_poolChain = ({} : stdgo._internal.sync.Sync_t_poolchain.T_poolChain);
    public function new(?_private:stdgo.AnyInterface, ?_shared:stdgo._internal.sync.Sync_t_poolchain.T_poolChain) {
        if (_private != null) this._private = _private;
        if (_shared != null) this._shared = _shared;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_private", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "_shared", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_t_poolchaindott_poolchain.__type__stdgodot_internaldotsyncdotSync_t_poolchaindotT_poolChain }, optional : false }])));
    public function __copy__() {
        return new T_poolLocalInternal(_private, _shared);
    }
}
