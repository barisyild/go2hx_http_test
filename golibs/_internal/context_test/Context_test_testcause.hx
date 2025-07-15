package _internal.context_test;
function testCause(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _forever = (1000000000000000i64 : stdgo._internal.time.Time_duration.Duration), _parentCause = stdgo._internal.fmt.Fmt_errorf.errorf(("parentCause" : stdgo.GoString)), _childCause = stdgo._internal.fmt.Fmt_errorf.errorf(("childCause" : stdgo.GoString)), _tooSlow = stdgo._internal.fmt.Fmt_errorf.errorf(("tooSlow" : stdgo.GoString)), _finishedEarly = stdgo._internal.fmt.Fmt_errorf.errorf(("finishedEarly" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L574"
        if ((new stdgo.Slice<_internal.context_test.Context_test_t__struct_19.T__struct_19>(20, 20, ...[
({ _name : ("Background" : stdgo.GoString), _ctx : stdgo._internal.context.Context_background.background, _err : (null : stdgo.Error), _cause : (null : stdgo.Error) } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("TODO" : stdgo.GoString), _ctx : stdgo._internal.context.Context_todo.tODO, _err : (null : stdgo.Error), _cause : (null : stdgo.Error) } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithCancel" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L596"
            _cancel();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L597"
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : stdgo._internal.context.Context_canceled.canceled } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithCancelCause" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L606"
            _cancel(_parentCause);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L607"
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : _parentCause } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithCancelCause nil" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L616"
            _cancel((null : stdgo.Error));
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L617"
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : stdgo._internal.context.Context_canceled.canceled } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithCancelCause: parent cause before child" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelParent:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(_ctx), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelChild:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L627"
            _cancelParent(_parentCause);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L628"
            _cancelChild(_childCause);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L629"
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : _parentCause } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithCancelCause: parent cause after child" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelParent:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(_ctx), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelChild:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L639"
            _cancelChild(_childCause);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L640"
            _cancelParent(_parentCause);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L641"
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : _childCause } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithCancelCause: parent cause before nil" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelParent:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_ctx), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelChild:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L651"
            _cancelParent(_parentCause);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L652"
            _cancelChild();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L653"
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : _parentCause } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithCancelCause: parent cause after nil" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelParent:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_ctx), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelChild:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L663"
            _cancelChild();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L664"
            _cancelParent(_parentCause);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L665"
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : stdgo._internal.context.Context_canceled.canceled } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithCancelCause: child cause after nil" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelParent:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(_ctx), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelChild:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L675"
            _cancelParent();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L676"
            _cancelChild(_childCause);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L677"
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : stdgo._internal.context.Context_canceled.canceled } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithCancelCause: child cause before nil" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelParent:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(_ctx), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelChild:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L687"
            _cancelChild(_childCause);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L688"
            _cancelParent();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L689"
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : _childCause } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithTimeout" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(stdgo._internal.context.Context_background.background(), (0i64 : stdgo._internal.time.Time_duration.Duration)), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L698"
            _cancel();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L699"
            return _ctx;
        }, _err : stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded, _cause : stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithTimeout canceled" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(stdgo._internal.context.Context_background.background(), _forever), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L708"
            _cancel();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L709"
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : stdgo._internal.context.Context_canceled.canceled } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithTimeoutCause" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withtimeoutcause.withTimeoutCause(stdgo._internal.context.Context_background.background(), (0i64 : stdgo._internal.time.Time_duration.Duration), _tooSlow), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L718"
            _cancel();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L719"
            return _ctx;
        }, _err : stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded, _cause : _tooSlow } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithTimeoutCause canceled" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withtimeoutcause.withTimeoutCause(stdgo._internal.context.Context_background.background(), _forever, _tooSlow), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L728"
            _cancel();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L729"
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : stdgo._internal.context.Context_canceled.canceled } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithTimeoutCause stacked" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            {
                var __tmp__ = stdgo._internal.context.Context_withtimeoutcause.withTimeoutCause(_ctx, (0i64 : stdgo._internal.time.Time_duration.Duration), _tooSlow);
                _ctx = @:tmpset0 __tmp__._0;
            };
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L739"
            _cancel(_finishedEarly);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L740"
            return _ctx;
        }, _err : stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded, _cause : _tooSlow } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithTimeoutCause stacked canceled" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            {
                var __tmp__ = stdgo._internal.context.Context_withtimeoutcause.withTimeoutCause(_ctx, _forever, _tooSlow);
                _ctx = @:tmpset0 __tmp__._0;
            };
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L750"
            _cancel(_finishedEarly);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L751"
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : _finishedEarly } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithoutCancel" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L759"
            return stdgo._internal.context.Context_withoutcancel.withoutCancel(stdgo._internal.context.Context_background.background());
        }, _err : (null : stdgo.Error), _cause : (null : stdgo.Error) } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithoutCancel canceled" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            _ctx = stdgo._internal.context.Context_withoutcancel.withoutCancel(_ctx);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L769"
            _cancel(_finishedEarly);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L770"
            return _ctx;
        }, _err : (null : stdgo.Error), _cause : (null : stdgo.Error) } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithoutCancel timeout" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withtimeoutcause.withTimeoutCause(stdgo._internal.context.Context_background.background(), (0i64 : stdgo._internal.time.Time_duration.Duration), _tooSlow), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            _ctx = stdgo._internal.context.Context_withoutcancel.withoutCancel(_ctx);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L780"
            _cancel();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L781"
            return _ctx;
        }, _err : (null : stdgo.Error), _cause : (null : stdgo.Error) } : _internal.context_test.Context_test_t__struct_19.T__struct_19)].concat([for (i in 20 ... (20 > 20 ? 20 : 20 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _ctx : null, _err : (null : stdgo.Error), _cause : (null : stdgo.Error) } : _internal.context_test.Context_test_t__struct_19.T__struct_19)])) : stdgo.Slice<_internal.context_test.Context_test_t__struct_19.T__struct_19>) != null) for (__0 => _test in (new stdgo.Slice<_internal.context_test.Context_test_t__struct_19.T__struct_19>(20, 20, ...[
({ _name : ("Background" : stdgo.GoString), _ctx : stdgo._internal.context.Context_background.background, _err : (null : stdgo.Error), _cause : (null : stdgo.Error) } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("TODO" : stdgo.GoString), _ctx : stdgo._internal.context.Context_todo.tODO, _err : (null : stdgo.Error), _cause : (null : stdgo.Error) } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithCancel" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L596"
            _cancel();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L597"
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : stdgo._internal.context.Context_canceled.canceled } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithCancelCause" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L606"
            _cancel(_parentCause);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L607"
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : _parentCause } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithCancelCause nil" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L616"
            _cancel((null : stdgo.Error));
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L617"
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : stdgo._internal.context.Context_canceled.canceled } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithCancelCause: parent cause before child" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelParent:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(_ctx), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelChild:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L627"
            _cancelParent(_parentCause);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L628"
            _cancelChild(_childCause);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L629"
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : _parentCause } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithCancelCause: parent cause after child" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelParent:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(_ctx), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelChild:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L639"
            _cancelChild(_childCause);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L640"
            _cancelParent(_parentCause);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L641"
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : _childCause } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithCancelCause: parent cause before nil" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelParent:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_ctx), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelChild:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L651"
            _cancelParent(_parentCause);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L652"
            _cancelChild();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L653"
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : _parentCause } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithCancelCause: parent cause after nil" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelParent:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_ctx), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelChild:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L663"
            _cancelChild();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L664"
            _cancelParent(_parentCause);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L665"
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : stdgo._internal.context.Context_canceled.canceled } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithCancelCause: child cause after nil" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelParent:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(_ctx), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelChild:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L675"
            _cancelParent();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L676"
            _cancelChild(_childCause);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L677"
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : stdgo._internal.context.Context_canceled.canceled } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithCancelCause: child cause before nil" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelParent:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(_ctx), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelChild:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L687"
            _cancelChild(_childCause);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L688"
            _cancelParent();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L689"
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : _childCause } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithTimeout" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(stdgo._internal.context.Context_background.background(), (0i64 : stdgo._internal.time.Time_duration.Duration)), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L698"
            _cancel();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L699"
            return _ctx;
        }, _err : stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded, _cause : stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithTimeout canceled" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(stdgo._internal.context.Context_background.background(), _forever), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L708"
            _cancel();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L709"
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : stdgo._internal.context.Context_canceled.canceled } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithTimeoutCause" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withtimeoutcause.withTimeoutCause(stdgo._internal.context.Context_background.background(), (0i64 : stdgo._internal.time.Time_duration.Duration), _tooSlow), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L718"
            _cancel();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L719"
            return _ctx;
        }, _err : stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded, _cause : _tooSlow } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithTimeoutCause canceled" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withtimeoutcause.withTimeoutCause(stdgo._internal.context.Context_background.background(), _forever, _tooSlow), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L728"
            _cancel();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L729"
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : stdgo._internal.context.Context_canceled.canceled } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithTimeoutCause stacked" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            {
                var __tmp__ = stdgo._internal.context.Context_withtimeoutcause.withTimeoutCause(_ctx, (0i64 : stdgo._internal.time.Time_duration.Duration), _tooSlow);
                _ctx = @:tmpset0 __tmp__._0;
            };
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L739"
            _cancel(_finishedEarly);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L740"
            return _ctx;
        }, _err : stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded, _cause : _tooSlow } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithTimeoutCause stacked canceled" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            {
                var __tmp__ = stdgo._internal.context.Context_withtimeoutcause.withTimeoutCause(_ctx, _forever, _tooSlow);
                _ctx = @:tmpset0 __tmp__._0;
            };
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L750"
            _cancel(_finishedEarly);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L751"
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : _finishedEarly } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithoutCancel" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L759"
            return stdgo._internal.context.Context_withoutcancel.withoutCancel(stdgo._internal.context.Context_background.background());
        }, _err : (null : stdgo.Error), _cause : (null : stdgo.Error) } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithoutCancel canceled" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            _ctx = stdgo._internal.context.Context_withoutcancel.withoutCancel(_ctx);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L769"
            _cancel(_finishedEarly);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L770"
            return _ctx;
        }, _err : (null : stdgo.Error), _cause : (null : stdgo.Error) } : _internal.context_test.Context_test_t__struct_19.T__struct_19),
({ _name : ("WithoutCancel timeout" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_context.Context {
            var __tmp__ = stdgo._internal.context.Context_withtimeoutcause.withTimeoutCause(stdgo._internal.context.Context_background.background(), (0i64 : stdgo._internal.time.Time_duration.Duration), _tooSlow), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            _ctx = stdgo._internal.context.Context_withoutcancel.withoutCancel(_ctx);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L780"
            _cancel();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L781"
            return _ctx;
        }, _err : (null : stdgo.Error), _cause : (null : stdgo.Error) } : _internal.context_test.Context_test_t__struct_19.T__struct_19)].concat([for (i in 20 ... (20 > 20 ? 20 : 20 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _ctx : null, _err : (null : stdgo.Error), _cause : (null : stdgo.Error) } : _internal.context_test.Context_test_t__struct_19.T__struct_19)])) : stdgo.Slice<_internal.context_test.Context_test_t__struct_19.T__struct_19>)) {
            var _test = @:assignType ({
                final x = _test;
                ({ _name : x._name?.__copy__(), _ctx : x._ctx, _err : x._err, _cause : x._cause } : _internal.context_test.Context_test_t__struct_19.T__struct_19);
            } : _internal.context_test.Context_test_t__struct_19.T__struct_19);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L788"
            _t.run(_test._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L789"
                _t.parallel();
                var _ctx = @:assignType (_test._ctx() : stdgo._internal.context.Context_context.Context);
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L791"
                {
                    var __0 = @:assignType (_ctx.err() : stdgo.Error), __1 = @:assignType (_test._err : stdgo.Error);
var _want = __1, _got = __0;
                    if (({
                        final __t__ = _want;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }) != (({
                        final __t__ = _got;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }))) {
                        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L792"
                        _t.errorf(("ctx.Err() = %v want %v" : stdgo.GoString), ({
                            final __t__ = _got;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), ({
                            final __t__ = _want;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }));
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L794"
                {
                    var __0 = @:assignType (stdgo._internal.context.Context_cause.cause(_ctx) : stdgo.Error), __1 = @:assignType (_test._cause : stdgo.Error);
var _want = __1, _got = __0;
                    if (({
                        final __t__ = _want;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }) != (({
                        final __t__ = _got;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }))) {
                        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L795"
                        _t.errorf(("Cause(ctx) = %v want %v" : stdgo.GoString), ({
                            final __t__ = _got;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), ({
                            final __t__ = _want;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }));
                    };
                };
            });
        };
    }
