package ;
typedef Task = _internal.runtime.trace_.Trace__task.Task;
typedef Region = _internal.runtime.trace_.Trace__region.Region;
typedef TaskPointer = _internal.runtime.trace_.Trace__taskpointer.TaskPointer;
typedef RegionPointer = _internal.runtime.trace_.Trace__regionpointer.RegionPointer;
typedef TaskPointerPointer = _internal.runtime.trace_.Trace__taskpointerpointer.TaskPointerPointer;
typedef RegionPointerPointer = _internal.runtime.trace_.Trace__regionpointerpointer.RegionPointerPointer;
/**
    * Package trace contains facilities for programs to generate traces
    * for the Go execution tracer.
    * 
    * # Tracing runtime activities
    * 
    * The execution trace captures a wide range of execution events such as
    * goroutine creation/blocking/unblocking, syscall enter/exit/block,
    * GC-related events, changes of heap size, processor start/stop, etc.
    * When CPU profiling is active, the execution tracer makes an effort to
    * include those samples as well.
    * A precise nanosecond-precision timestamp and a stack trace is
    * captured for most events. The generated trace can be interpreted
    * using `go tool trace`.
    * 
    * Support for tracing tests and benchmarks built with the standard
    * testing package is built into `go test`. For example, the following
    * command runs the test in the current directory and writes the trace
    * file (trace.out).
    * 
    * 	go test -trace=trace.out
    * 
    * This runtime/trace package provides APIs to add equivalent tracing
    * support to a standalone program. See the Example that demonstrates
    * how to use this API to enable tracing.
    * 
    * There is also a standard HTTP interface to trace data. Adding the
    * following line will install a handler under the /debug/pprof/trace URL
    * to download a live trace:
    * 
    * 	import _ "net/http/pprof"
    * 
    * See the [net/http/pprof] package for more details about all of the
    * debug endpoints installed by this import.
    * 
    * # User annotation
    * 
    * Package trace provides user annotation APIs that can be used to
    * log interesting events during execution.
    * 
    * There are three types of user annotations: log messages, regions,
    * and tasks.
    * 
    * [Log] emits a timestamped message to the execution trace along with
    * additional information such as the category of the message and
    * which goroutine called [Log]. The execution tracer provides UIs to filter
    * and group goroutines using the log category and the message supplied
    * in [Log].
    * 
    * A region is for logging a time interval during a goroutine's execution.
    * By definition, a region starts and ends in the same goroutine.
    * Regions can be nested to represent subintervals.
    * For example, the following code records four regions in the execution
    * trace to trace the durations of sequential steps in a cappuccino making
    * operation.
    * 
    * 	trace.WithRegion(ctx, "makeCappuccino", func() {
    * 
    * 	   // orderID allows to identify a specific order
    * 	   // among many cappuccino order region records.
    * 	   trace.Log(ctx, "orderID", orderID)
    * 
    * 	   trace.WithRegion(ctx, "steamMilk", steamMilk)
    * 	   trace.WithRegion(ctx, "extractCoffee", extractCoffee)
    * 	   trace.WithRegion(ctx, "mixMilkCoffee", mixMilkCoffee)
    * 	})
    * 
    * A task is a higher-level component that aids tracing of logical
    * operations such as an RPC request, an HTTP request, or an
    * interesting local operation which may require multiple goroutines
    * working together. Since tasks can involve multiple goroutines,
    * they are tracked via a [context.Context] object. [NewTask] creates
    * a new task and embeds it in the returned [context.Context] object.
    * Log messages and regions are attached to the task, if any, in the
    * Context passed to [Log] and [WithRegion].
    * 
    * For example, assume that we decided to froth milk, extract coffee,
    * and mix milk and coffee in separate goroutines. With a task,
    * the trace tool can identify the goroutines involved in a specific
    * cappuccino order.
    * 
    * 	ctx, task := trace.NewTask(ctx, "makeCappuccino")
    * 	trace.Log(ctx, "orderID", orderID)
    * 
    * 	milk := make(chan bool)
    * 	espresso := make(chan bool)
    * 
    * 	go func() {
    * 	        trace.WithRegion(ctx, "steamMilk", steamMilk)
    * 	        milk <- true
    * 	}()
    * 	go func() {
    * 	        trace.WithRegion(ctx, "extractCoffee", extractCoffee)
    * 	        espresso <- true
    * 	}()
    * 	go func() {
    * 	        defer task.End() // When assemble is done, the order is complete.
    * 	        <-espresso
    * 	        <-milk
    * 	        trace.WithRegion(ctx, "mixMilkCoffee", mixMilkCoffee)
    * 	}()
    * 
    * The trace tool computes the latency of a task by measuring the
    * time between the task creation and the task end and provides
    * latency distributions for each task type found in the trace.
**/
class Trace_ {
    /**
        * NewTask creates a task instance with the type taskType and returns
        * it along with a Context that carries the task.
        * If the input context contains a task, the new task is its subtask.
        * 
        * The taskType is used to classify task instances. Analysis tools
        * like the Go execution tracer may assume there are only a bounded
        * number of unique task types in the system.
        * 
        * The returned Task's [Task.End] method is used to mark the task's end.
        * The trace tool measures task latency as the time between task creation
        * and when the End method is called, and provides the latency
        * distribution per task type.
        * If the End method is called multiple times, only the first
        * call is used in the latency measurement.
        * 
        * 	ctx, task := trace.NewTask(ctx, "awesomeTask")
        * 	trace.WithRegion(ctx, "preparation", prepWork)
        * 	// preparation of the task
        * 	go func() {  // continue processing the task in a separate goroutine.
        * 	    defer task.End()
        * 	    trace.WithRegion(ctx, "remainingWork", remainingWork)
        * 	}()
    **/
    static public inline function newTask(_pctx:stdgo._internal.context.Context_context.Context, _taskType:stdgo.GoString):{ var _0 : stdgo._internal.context.Context_context.Context; var _1 : stdgo.Ref<_internal.runtime.trace_.Trace_task.Task>; } return _internal.runtime.trace_.Trace__newtask.newTask(_pctx, _taskType);
    /**
        * Log emits a one-off event with the given category and message.
        * Category can be empty and the API assumes there are only a handful of
        * unique categories in the system.
    **/
    static public inline function log(_ctx:stdgo._internal.context.Context_context.Context, _category:stdgo.GoString, _message:stdgo.GoString):Void _internal.runtime.trace_.Trace__log.log(_ctx, _category, _message);
    /**
        * Logf is like [Log], but the value is formatted using the specified format spec.
    **/
    static public inline function logf(_ctx:stdgo._internal.context.Context_context.Context, _category:stdgo.GoString, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void _internal.runtime.trace_.Trace__logf.logf(_ctx, _category, _format, ...[for (i in _args) i]);
    /**
        * WithRegion starts a region associated with its calling goroutine, runs fn,
        * and then ends the region. If the context carries a task, the region is
        * associated with the task. Otherwise, the region is attached to the background
        * task.
        * 
        * The regionType is used to classify regions, so there should be only a
        * handful of unique region types.
    **/
    static public inline function withRegion(_ctx:stdgo._internal.context.Context_context.Context, _regionType:stdgo.GoString, _fn:() -> Void):Void _internal.runtime.trace_.Trace__withregion.withRegion(_ctx, _regionType, _fn);
    /**
        * StartRegion starts a region and returns it.
        * The returned Region's [Region.End] method must be called
        * from the same goroutine where the region was started.
        * Within each goroutine, regions must nest. That is, regions started
        * after this region must be ended before this region can be ended.
        * Recommended usage is
        * 
        * 	defer trace.StartRegion(ctx, "myTracedRegion").End()
    **/
    static public inline function startRegion(_ctx:stdgo._internal.context.Context_context.Context, _regionType:stdgo.GoString):stdgo.Ref<_internal.runtime.trace_.Trace_region.Region> return _internal.runtime.trace_.Trace__startregion.startRegion(_ctx, _regionType);
    /**
        * IsEnabled reports whether tracing is enabled.
        * The information is advisory only. The tracing status
        * may have changed by the time this function returns.
    **/
    static public inline function isEnabled():Bool return _internal.runtime.trace_.Trace__isenabled.isEnabled();
    /**
        * Start enables tracing for the current program.
        * While tracing, the trace will be buffered and written to w.
        * Start returns an error if tracing is already enabled.
    **/
    static public inline function start(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error return _internal.runtime.trace_.Trace__start.start(_w);
    /**
        * Stop stops the current tracing, if any.
        * Stop only returns after all the writes for the trace have completed.
    **/
    static public inline function stop():Void _internal.runtime.trace_.Trace__stop.stop();
}
