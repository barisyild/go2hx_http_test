package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
@:keep class T_canceler_static_extension {
    @:interfacetypeffun
    static public function done(t:stdgo._internal.context.Context_t_canceler.T_canceler):stdgo.Chan<{ }> return t.done();
    @:interfacetypeffun
    static public function _cancel(t:stdgo._internal.context.Context_t_canceler.T_canceler, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void t._cancel(_removeFromParent, _err, _cause);
}
