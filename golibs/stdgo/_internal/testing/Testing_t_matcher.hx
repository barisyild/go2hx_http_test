package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_t_matcher_static_extension.T_matcher_static_extension) @:using(stdgo._internal.testing.Testing_t_matcher_static_extension.T_matcher_static_extension) class T_matcher {
    public var _filter : stdgo._internal.testing.Testing_t_filtermatch.T_filterMatch = (null : stdgo._internal.testing.Testing_t_filtermatch.T_filterMatch);
    public var _skip : stdgo._internal.testing.Testing_t_filtermatch.T_filterMatch = (null : stdgo._internal.testing.Testing_t_filtermatch.T_filterMatch);
    public var _matchFunc : (stdgo.GoString, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.Error; } = null;
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _subNames : stdgo.GoMap<stdgo.GoString, stdgo.GoInt32> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt32>);
    public function new(?_filter:stdgo._internal.testing.Testing_t_filtermatch.T_filterMatch, ?_skip:stdgo._internal.testing.Testing_t_filtermatch.T_filterMatch, ?_matchFunc:(stdgo.GoString, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.Error; }, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_subNames:stdgo.GoMap<stdgo.GoString, stdgo.GoInt32>) {
        if (_filter != null) this._filter = _filter;
        if (_skip != null) this._skip = _skip;
        if (_matchFunc != null) this._matchFunc = _matchFunc;
        if (_mu != null) this._mu = _mu;
        if (_subNames != null) this._subNames = _subNames;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_filter", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdottesting_t_filtermatchdott_filtermatch.__type__stdgodot_internaldottestingdotTesting_t_filtermatchdotT_filterMatch }, optional : false }, { name : "_skip", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdottesting_t_filtermatchdott_filtermatch.__type__stdgodot_internaldottestingdotTesting_t_filtermatchdotT_filterMatch }, optional : false }, { name : "_matchFunc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(bool_kind), _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }, { name : "_mu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false }, { name : "_subNames", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_matcher(_filter, _skip, _matchFunc, _mu, _subNames);
    }
}
