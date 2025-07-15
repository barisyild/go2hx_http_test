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
function goToolPath(_t:stdgo._internal.testing.Testing_tb.TB):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L165"
        stdgo._internal.internal.testenv.Testenv_musthavegobuild.mustHaveGoBuild(_t);
        var __tmp__ = stdgo._internal.internal.testenv.Testenv_gotool.goTool(), _path:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L167"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L168"
            _t.fatal(({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L173"
        if (stdgo._internal.strings.Strings_fields.fields(("\n\tAR\n\tCC\n\tCGO_CFLAGS\n\tCGO_CFLAGS_ALLOW\n\tCGO_CFLAGS_DISALLOW\n\tCGO_CPPFLAGS\n\tCGO_CPPFLAGS_ALLOW\n\tCGO_CPPFLAGS_DISALLOW\n\tCGO_CXXFLAGS\n\tCGO_CXXFLAGS_ALLOW\n\tCGO_CXXFLAGS_DISALLOW\n\tCGO_ENABLED\n\tCGO_FFLAGS\n\tCGO_FFLAGS_ALLOW\n\tCGO_FFLAGS_DISALLOW\n\tCGO_LDFLAGS\n\tCGO_LDFLAGS_ALLOW\n\tCGO_LDFLAGS_DISALLOW\n\tCXX\n\tFC\n\tGCCGO\n\tGO111MODULE\n\tGO386\n\tGOAMD64\n\tGOARCH\n\tGOARM\n\tGOBIN\n\tGOCACHE\n\tGOCACHEPROG\n\tGOENV\n\tGOEXE\n\tGOEXPERIMENT\n\tGOFLAGS\n\tGOGCCFLAGS\n\tGOHOSTARCH\n\tGOHOSTOS\n\tGOINSECURE\n\tGOMIPS\n\tGOMIPS64\n\tGOMODCACHE\n\tGONOPROXY\n\tGONOSUMDB\n\tGOOS\n\tGOPATH\n\tGOPPC64\n\tGOPRIVATE\n\tGOPROXY\n\tGOROOT\n\tGOSUMDB\n\tGOTMPDIR\n\tGOTOOLCHAIN\n\tGOTOOLDIR\n\tGOVCS\n\tGOWASM\n\tGOWORK\n\tGO_EXTLINK_ENABLED\n\tPKG_CONFIG\n" : stdgo.GoString)) != null) for (__0 => _envVar in stdgo._internal.strings.Strings_fields.fields(("\n\tAR\n\tCC\n\tCGO_CFLAGS\n\tCGO_CFLAGS_ALLOW\n\tCGO_CFLAGS_DISALLOW\n\tCGO_CPPFLAGS\n\tCGO_CPPFLAGS_ALLOW\n\tCGO_CPPFLAGS_DISALLOW\n\tCGO_CXXFLAGS\n\tCGO_CXXFLAGS_ALLOW\n\tCGO_CXXFLAGS_DISALLOW\n\tCGO_ENABLED\n\tCGO_FFLAGS\n\tCGO_FFLAGS_ALLOW\n\tCGO_FFLAGS_DISALLOW\n\tCGO_LDFLAGS\n\tCGO_LDFLAGS_ALLOW\n\tCGO_LDFLAGS_DISALLOW\n\tCXX\n\tFC\n\tGCCGO\n\tGO111MODULE\n\tGO386\n\tGOAMD64\n\tGOARCH\n\tGOARM\n\tGOBIN\n\tGOCACHE\n\tGOCACHEPROG\n\tGOENV\n\tGOEXE\n\tGOEXPERIMENT\n\tGOFLAGS\n\tGOGCCFLAGS\n\tGOHOSTARCH\n\tGOHOSTOS\n\tGOINSECURE\n\tGOMIPS\n\tGOMIPS64\n\tGOMODCACHE\n\tGONOPROXY\n\tGONOSUMDB\n\tGOOS\n\tGOPATH\n\tGOPPC64\n\tGOPRIVATE\n\tGOPROXY\n\tGOROOT\n\tGOSUMDB\n\tGOTMPDIR\n\tGOTOOLCHAIN\n\tGOTOOLDIR\n\tGOVCS\n\tGOWASM\n\tGOWORK\n\tGO_EXTLINK_ENABLED\n\tPKG_CONFIG\n" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L174"
            stdgo._internal.os.Os_getenv.getenv(_envVar?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L176"
        return _path?.__copy__();
    }
