package stdgo._internal.flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
var usage : () -> Void = function():Void {
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L707"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo._internal.flag.Flag_commandline.commandLine.output(), ("Usage of %s:\n" : stdgo.GoString), new stdgo.AnyInterface(stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L708"
        stdgo._internal.flag.Flag_printdefaults.printDefaults();
    };
