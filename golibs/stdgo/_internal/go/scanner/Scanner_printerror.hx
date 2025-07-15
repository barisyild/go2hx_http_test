package stdgo._internal.go.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
function printError(_w:stdgo._internal.io.Io_writer.Writer, _err:stdgo.Error):Void {
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/errors.go#L113"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotgodotscannerdotscanner_errorlistdoterrorlist.__type__stdgodot_internaldotgodotscannerdotScanner_errorlistdotErrorList) : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList), _1 : true };
            } catch(__exception__) {
                { _0 : (new stdgo._internal.go.scanner.Scanner_errorlist.ErrorList(0, 0) : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList), _1 : false };
            }, _list = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/errors.go#L114"
                if (_list != null) for (__0 => _e in _list) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/errors.go#L115"
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%s\n" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_e, _internal.gotype.Gotype___type__stdgodot_internaldotgodotscannerdotscanner_errordoterror.__type__stdgodot_internaldotgodotscannerdotScanner_errordotError), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotscannerdotscanner_errordoterror.__type__stdgodot_internaldotgodotscannerdotScanner_errordotError }))));
                };
            } else if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/errors.go#L118"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%s\n" : stdgo.GoString), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
    }
