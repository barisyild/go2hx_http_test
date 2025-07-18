package stdgo.log;
var ldate : stdgo.GoUInt64 = 1i64;
var ltime : stdgo.GoUInt64 = 2i64;
var lmicroseconds : stdgo.GoUInt64 = 4i64;
var llongfile : stdgo.GoUInt64 = 8i64;
var lshortfile : stdgo.GoUInt64 = 16i64;
var lUTC : stdgo.GoUInt64 = 32i64;
var lmsgprefix : stdgo.GoUInt64 = 64i64;
var lstdFlags : stdgo.GoUInt64 = 3i64;
typedef Logger = stdgo._internal.log.Log_logger.Logger;
typedef LoggerPointer = stdgo._internal.log.Log_loggerpointer.LoggerPointer;
typedef LoggerPointerPointer = stdgo._internal.log.Log_loggerpointerpointer.LoggerPointerPointer;
/**
    * Package log implements a simple logging package. It defines a type, Logger,
    * with methods for formatting output. It also has a predefined 'standard'
    * Logger accessible through helper functions Print[f|ln], Fatal[f|ln], and
    * Panic[f|ln], which are easier to use than creating a Logger manually.
    * That logger writes to standard error and prints the date and time
    * of each logged message.
    * Every log message is output on a separate line: if the message being
    * printed does not end in a newline, the logger will add one.
    * The Fatal functions call os.Exit(1) after writing the log message.
    * The Panic functions call panic after writing the log message.
**/
class Log {
    /**
        * New creates a new Logger. The out variable sets the
        * destination to which log data will be written.
        * The prefix appears at the beginning of each generated log line, or
        * after the log header if the Lmsgprefix flag is provided.
        * The flag argument defines the logging properties.
    **/
    static public inline function new_(_out:stdgo._internal.io.Io_writer.Writer, _prefix:stdgo.GoString, _flag:stdgo.GoInt):stdgo.Ref<stdgo._internal.log.Log_logger.Logger> return stdgo._internal.log.Log_new_.new_(_out, _prefix, _flag);
    /**
        * Default returns the standard logger used by the package-level output functions.
    **/
    static public inline function default_():stdgo.Ref<stdgo._internal.log.Log_logger.Logger> return stdgo._internal.log.Log_default_.default_();
    /**
        * SetOutput sets the output destination for the standard logger.
    **/
    static public inline function setOutput(_w:stdgo._internal.io.Io_writer.Writer):Void stdgo._internal.log.Log_setoutput.setOutput(_w);
    /**
        * Flags returns the output flags for the standard logger.
        * The flag bits are Ldate, Ltime, and so on.
    **/
    static public inline function flags():stdgo.GoInt return stdgo._internal.log.Log_flags.flags();
    /**
        * SetFlags sets the output flags for the standard logger.
        * The flag bits are Ldate, Ltime, and so on.
    **/
    static public inline function setFlags(_flag:stdgo.GoInt):Void stdgo._internal.log.Log_setflags.setFlags(_flag);
    /**
        * Prefix returns the output prefix for the standard logger.
    **/
    static public inline function prefix():stdgo.GoString return stdgo._internal.log.Log_prefix.prefix();
    /**
        * SetPrefix sets the output prefix for the standard logger.
    **/
    static public inline function setPrefix(_prefix:stdgo.GoString):Void stdgo._internal.log.Log_setprefix.setPrefix(_prefix);
    /**
        * Writer returns the output destination for the standard logger.
    **/
    static public inline function writer():stdgo._internal.io.Io_writer.Writer return stdgo._internal.log.Log_writer.writer();
    /**
        * Print calls Output to print to the standard logger.
        * Arguments are handled in the manner of fmt.Print.
    **/
    static public inline function print(_v:haxe.Rest<stdgo.AnyInterface>):Void stdgo._internal.log.Log_print.print(...[for (i in _v) i]);
    /**
        * Printf calls Output to print to the standard logger.
        * Arguments are handled in the manner of fmt.Printf.
    **/
    static public inline function printf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void stdgo._internal.log.Log_printf.printf(_format, ...[for (i in _v) i]);
    /**
        * Println calls Output to print to the standard logger.
        * Arguments are handled in the manner of fmt.Println.
    **/
    static public inline function println(_v:haxe.Rest<stdgo.AnyInterface>):Void stdgo._internal.log.Log_println.println(...[for (i in _v) i]);
    /**
        * Fatal is equivalent to Print() followed by a call to os.Exit(1).
    **/
    static public inline function fatal(_v:haxe.Rest<stdgo.AnyInterface>):Void stdgo._internal.log.Log_fatal.fatal(...[for (i in _v) i]);
    /**
        * Fatalf is equivalent to Printf() followed by a call to os.Exit(1).
    **/
    static public inline function fatalf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void stdgo._internal.log.Log_fatalf.fatalf(_format, ...[for (i in _v) i]);
    /**
        * Fatalln is equivalent to Println() followed by a call to os.Exit(1).
    **/
    static public inline function fatalln(_v:haxe.Rest<stdgo.AnyInterface>):Void stdgo._internal.log.Log_fatalln.fatalln(...[for (i in _v) i]);
    /**
        * Panic is equivalent to Print() followed by a call to panic().
    **/
    static public inline function panic(_v:haxe.Rest<stdgo.AnyInterface>):Void stdgo._internal.log.Log_panic.panic(...[for (i in _v) i]);
    /**
        * Panicf is equivalent to Printf() followed by a call to panic().
    **/
    static public inline function panicf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void stdgo._internal.log.Log_panicf.panicf(_format, ...[for (i in _v) i]);
    /**
        * Panicln is equivalent to Println() followed by a call to panic().
    **/
    static public inline function panicln(_v:haxe.Rest<stdgo.AnyInterface>):Void stdgo._internal.log.Log_panicln.panicln(...[for (i in _v) i]);
    /**
        * Output writes the output for a logging event. The string s contains
        * the text to print after the prefix specified by the flags of the
        * Logger. A newline is appended if the last character of s is not
        * already a newline. Calldepth is the count of the number of
        * frames to skip when computing the file name and line number
        * if Llongfile or Lshortfile is set; a value of 1 will print the details
        * for the caller of Output.
    **/
    static public inline function output(_calldepth:stdgo.GoInt, _s:stdgo.GoString):stdgo.Error return stdgo._internal.log.Log_output.output(_calldepth, _s);
}
