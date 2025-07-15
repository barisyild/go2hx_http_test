package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_t__static_extension.T__static_extension) @:using(stdgo._internal.testing.Testing_t__static_extension.T__static_extension) class T_ {
    @:embedded
    public var _common : stdgo._internal.testing.Testing_t_common.T_common = ({} : stdgo._internal.testing.Testing_t_common.T_common);
    public var _isEnvSet : Bool = false;
    public var _context : stdgo.Ref<stdgo._internal.testing.Testing_t_testcontext.T_testContext> = (null : stdgo.Ref<stdgo._internal.testing.Testing_t_testcontext.T_testContext>);
    @:local
    var output : StringBuf = null;
    public function new(?_common:stdgo._internal.testing.Testing_t_common.T_common, ?_isEnvSet:Bool, ?_context:stdgo.Ref<stdgo._internal.testing.Testing_t_testcontext.T_testContext>, ?output:StringBuf) {
        if (_common != null) this._common = _common;
        if (_isEnvSet != null) this._isEnvSet = _isEnvSet;
        if (_context != null) this._context = _context;
        if (output != null) this.output = output;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_common", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdottesting_t_commondott_common.__type__stdgodot_internaldottestingdotTesting_t_commondotT_common }, optional : false }, { name : "_isEnvSet", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_context", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdottesting_t_testcontextdott_testcontext.__type__stdgodot_internaldottestingdotTesting_t_testcontextdotT_testContext }) }, optional : false }])));
    public var cleanup(get, never) : (() -> Void) -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_cleanup():(() -> Void) -> Void return @:check32 this._common.cleanup;
    public var error(get, never) : haxe.Rest<stdgo.AnyInterface> -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_error():haxe.Rest<stdgo.AnyInterface> -> Void return @:check32 this._common.error;
    public var errorf(get, never) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_errorf():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void return @:check32 this._common.errorf;
    public var fail(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_fail():() -> Void return @:check32 this._common.fail;
    public var failNow(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_failNow():() -> Void return @:check32 this._common.failNow;
    public var failed(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_failed():() -> Bool return @:check32 this._common.failed;
    public var fatal(get, never) : haxe.Rest<stdgo.AnyInterface> -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_fatal():haxe.Rest<stdgo.AnyInterface> -> Void return @:check32 this._common.fatal;
    public var fatalf(get, never) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_fatalf():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void return @:check32 this._common.fatalf;
    public var helper(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_helper():() -> Void return @:check32 this._common.helper;
    public var log(get, never) : haxe.Rest<stdgo.AnyInterface> -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_log():haxe.Rest<stdgo.AnyInterface> -> Void return @:check32 this._common.log;
    public var logf(get, never) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_logf():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void return @:check32 this._common.logf;
    public var name(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_name():() -> stdgo.GoString return @:check32 this._common.name;
    public var skip(get, never) : haxe.Rest<stdgo.AnyInterface> -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_skip():haxe.Rest<stdgo.AnyInterface> -> Void return @:check32 this._common.skip;
    public var skipNow(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_skipNow():() -> Void return @:check32 this._common.skipNow;
    public var skipf(get, never) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_skipf():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void return @:check32 this._common.skipf;
    public var skipped(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_skipped():() -> Bool return @:check32 this._common.skipped;
    public var tempDir(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_tempDir():() -> stdgo.GoString return @:check32 this._common.tempDir;
    public var _checkFuzzFn(get, never) : stdgo.GoString -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__checkFuzzFn():stdgo.GoString -> Void return @:check32 this._common._checkFuzzFn;
    public var _decorate(get, never) : (stdgo.GoString, stdgo.GoInt) -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__decorate():(stdgo.GoString, stdgo.GoInt) -> stdgo.GoString return @:check32 this._common._decorate;
    public var _flushToParent(get, never) : (stdgo.GoString, stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__flushToParent():(stdgo.GoString, stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void return @:check32 this._common._flushToParent;
    public var _frameSkip(get, never) : stdgo.GoInt -> stdgo._internal.runtime.Runtime_frame.Frame;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__frameSkip():stdgo.GoInt -> stdgo._internal.runtime.Runtime_frame.Frame return @:check32 this._common._frameSkip;
    public var _log(get, never) : stdgo.GoString -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__log():stdgo.GoString -> Void return @:check32 this._common._log;
    public var _logDepth(get, never) : (stdgo.GoString, stdgo.GoInt) -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__logDepth():(stdgo.GoString, stdgo.GoInt) -> Void return @:check32 this._common._logDepth;
    public var _private(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__private():() -> Void return @:check32 this._common._private;
    public var _runCleanup(get, never) : stdgo._internal.testing.Testing_t_panichandling.T_panicHandling -> stdgo.AnyInterface;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__runCleanup():stdgo._internal.testing.Testing_t_panichandling.T_panicHandling -> stdgo.AnyInterface return @:check32 this._common._runCleanup;
    public var _setRan(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__setRan():() -> Void return @:check32 this._common._setRan;
    public function __copy__() {
        return new T_(_common, _isEnvSet, _context, output);
    }
}
