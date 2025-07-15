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
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.flag.Flag_errhelp.errHelp, __tmp__1 = stdgo._internal.flag.Flag__errparse._errParse, __tmp__2 = stdgo._internal.flag.Flag__errrange._errRange, __tmp__3 = stdgo._internal.flag.Flag_commandline.commandLine, __tmp__4 = stdgo._internal.flag.Flag_usage.usage;
            (@:checkr stdgo._internal.flag.Flag_commandline.commandLine ?? throw stdgo.Error._nullPointerDereference.__underlying__()).usage = stdgo._internal.flag.Flag__commandlineusage._commandLineUsage;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
