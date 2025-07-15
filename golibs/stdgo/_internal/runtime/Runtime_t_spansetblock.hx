package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_spansetblock_static_extension.T_spanSetBlock_static_extension) @:using(stdgo._internal.runtime.Runtime_t_spansetblock_static_extension.T_spanSetBlock_static_extension) class T_spanSetBlock {
    @:embedded
    public var _lfnode : stdgo._internal.runtime.Runtime_t_lfnode.T_lfnode = ({} : stdgo._internal.runtime.Runtime_t_lfnode.T_lfnode);
    public function new(?_lfnode:stdgo._internal.runtime.Runtime_t_lfnode.T_lfnode) {
        if (_lfnode != null) this._lfnode = _lfnode;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_lfnode", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotruntime_t_lfnodedott_lfnode.__type__stdgodot_internaldotruntimedotRuntime_t_lfnodedotT_lfnode }, optional : false }])));
    public function __copy__() {
        return new T_spanSetBlock(_lfnode);
    }
}
