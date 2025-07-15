package stdgo._internal.internal.testenv;
import stdgo._internal.os.Os;
import stdgo._internal.flag.Flag;
import stdgo._internal.testing.Testing;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.time.Time;
import stdgo._internal.context.Context;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.internal.platform.Platform;
import stdgo._internal.io.fs.Fs;
function writeImportcfg(_t:stdgo._internal.testing.Testing_tb.TB, _dstPath:stdgo.GoString, _packageFiles:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _pkgs:haxe.Rest<stdgo.GoString>):Void {
        var _pkgs = new stdgo.Slice<stdgo.GoString>(_pkgs.length, 0, ..._pkgs);
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L465"
        _t.helper();
        var _icfg = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L468"
        _icfg.writeString(("# import config\n" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L469"
        if (_packageFiles != null) for (_k => _v in _packageFiles) {
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L470"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_icfg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("packagefile %s=%s\n" : stdgo.GoString), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L473"
        if (((_pkgs.length) > (0 : stdgo.GoInt) : Bool)) {
            var _cmd = stdgo._internal.internal.testenv.Testenv_command.command(_t, stdgo._internal.internal.testenv.Testenv_gotoolpath.goToolPath(_t)?.__copy__(), ("list" : stdgo.GoString), ("-export" : stdgo.GoString), ("-deps" : stdgo.GoString), ("-f" : stdgo.GoString), ("{{if ne .ImportPath \"command-line-arguments\"}}{{if .Export}}{{.ImportPath}}={{.Export}}{{end}}{{end}}" : stdgo.GoString));
            (@:checkr _cmd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).args = ((@:checkr _cmd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).args.__append__(...(_pkgs : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
            (@:checkr _cmd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).stderr = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_builder.Builder), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder }));
            var __tmp__ = _cmd.output(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L479"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L480"
                _t.fatalf(("%v: %v\n%s" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_cmd, _internal.gotype.Gotype___type__stdgodot_internaldotosdotexecdotexec_cmddotcmd.__type__stdgodot_internaldotosdotexecdotExec_cmddotCmd), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotexecdotexec_cmddotcmd.__type__stdgodot_internaldotosdotexecdotExec_cmddotCmd }))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), ({
                    final __t__ = (@:checkr _cmd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).stderr;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L483"
            if (stdgo._internal.strings.Strings_split.split((_out : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString)) != null) for (__0 => _line in stdgo._internal.strings.Strings_split.split((_out : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L484"
                if (_line == ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L485"
                    continue;
                };
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_line?.__copy__(), ("=" : stdgo.GoString)), _importPath:stdgo.GoString = __tmp__._0, _export:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L488"
                if (!_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L489"
                    _t.fatalf(("invalid line in output from %v:\n%s" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_cmd, _internal.gotype.Gotype___type__stdgodot_internaldotosdotexecdotexec_cmddotcmd.__type__stdgodot_internaldotosdotexecdotExec_cmddotCmd), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotexecdotexec_cmddotcmd.__type__stdgodot_internaldotosdotexecdotExec_cmddotCmd }))), new stdgo.AnyInterface(_line, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
                //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L491"
                if ((_packageFiles[_importPath] ?? ("" : stdgo.GoString)) == ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L492"
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_icfg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("packagefile %s=%s\n" : stdgo.GoString), new stdgo.AnyInterface(_importPath, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_export, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L497"
        {
            var _err = @:assignType (stdgo._internal.os.Os_writefile.writeFile(_dstPath?.__copy__(), _icfg.bytes(), (438u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L498"
                _t.fatal(({
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
