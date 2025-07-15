package stdgo.go.scanner;
var scanComments : Mode = 1i64;
typedef Error = stdgo._internal.go.scanner.Scanner_error.Error;
typedef Scanner_ = stdgo._internal.go.scanner.Scanner_scanner.Scanner;
typedef ErrorList = stdgo._internal.go.scanner.Scanner_errorlist.ErrorList;
typedef ErrorHandler = stdgo._internal.go.scanner.Scanner_errorhandler.ErrorHandler;
typedef Mode = stdgo._internal.go.scanner.Scanner_mode.Mode;
typedef ErrorPointer = stdgo._internal.go.scanner.Scanner_errorpointer.ErrorPointer;
typedef ScannerPointer = stdgo._internal.go.scanner.Scanner_scannerpointer.ScannerPointer;
typedef ErrorListPointer = stdgo._internal.go.scanner.Scanner_errorlistpointer.ErrorListPointer;
typedef ErrorHandlerPointer = stdgo._internal.go.scanner.Scanner_errorhandlerpointer.ErrorHandlerPointer;
typedef ModePointer = stdgo._internal.go.scanner.Scanner_modepointer.ModePointer;
typedef ErrorPointerPointer = stdgo._internal.go.scanner.Scanner_errorpointerpointer.ErrorPointerPointer;
typedef ScannerPointerPointer = stdgo._internal.go.scanner.Scanner_scannerpointerpointer.ScannerPointerPointer;
typedef ErrorListPointerPointer = stdgo._internal.go.scanner.Scanner_errorlistpointerpointer.ErrorListPointerPointer;
typedef ErrorHandlerPointerPointer = stdgo._internal.go.scanner.Scanner_errorhandlerpointerpointer.ErrorHandlerPointerPointer;
typedef ModePointerPointer = stdgo._internal.go.scanner.Scanner_modepointerpointer.ModePointerPointer;
/**
    * Package scanner implements a scanner for Go source text.
    * It takes a []byte as source which can then be tokenized
    * through repeated calls to the Scan method.
**/
class Scanner {
    /**
        * PrintError is a utility function that prints a list of errors to w,
        * one error per line, if the err parameter is an ErrorList. Otherwise
        * it prints the err string.
    **/
    static public inline function printError(_w:stdgo._internal.io.Io_writer.Writer, _err:stdgo.Error):Void stdgo._internal.go.scanner.Scanner_printerror.printError(_w, _err);
}
