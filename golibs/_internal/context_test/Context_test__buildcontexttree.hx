package _internal.context_test;
function _buildContextTree(_root:stdgo._internal.context.Context_context.Context, _depth:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L119"
        {
            var _d = @:assignType (0 : stdgo.GoInt);
            while ((_d < _depth : Bool)) {
                {
                    var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_root);
                    _root = @:tmpset0 __tmp__._0;
                };
                _d++;
            };
        };
    }
