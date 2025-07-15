package stdgo._internal.internal.fuzz;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.Math;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.go.parser.Parser;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.time.Time;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.json.Json;
function readCorpus(_dir:stdgo.GoString, _types:stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>):{ var _0 : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_readdir.readDir(_dir?.__copy__()), _files:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L979"
        if (stdgo._internal.os.Os_isnotexist.isNotExist(_err)) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L980"
            return { _0 : (null : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>), _1 : (null : stdgo.Error) };
        } else if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L982"
            return { _0 : (null : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("reading seed corpus from testdata: %v" : stdgo.GoString), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })) };
        };
        var _corpus:stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }> = (null : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>);
        var _errs:stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L986"
        if (_files != null) for (__0 => _file in _files) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L992"
            if (_file.isDir()) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L993"
                continue;
            };
            var _filename = @:assignType (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), _file.name()?.__copy__())?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.os.Os_readfile.readFile(_filename?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L997"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L998"
                return { _0 : (null : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("failed to read corpus file: %v" : stdgo.GoString), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                })) };
            };
            var _vals:stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
            {
                var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__readcorpusdata._readCorpusData(_data, _types);
                _vals = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1002"
            if (_err != null) {
                _errs = (_errs.__append__(stdgo._internal.fmt.Fmt_errorf.errorf(("%q: %v" : stdgo.GoString), new stdgo.AnyInterface(_filename, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))) : stdgo.Slice<stdgo.Error>);
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1004"
                continue;
            };
            _corpus = (_corpus.__append__(({ path : _filename?.__copy__(), values : _vals, parent : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), generation : (0 : stdgo.GoInt), isSeed : false } : { var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; })) : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1008"
        if (((_errs.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1009"
            return { _0 : _corpus, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ _errs : _errs } : stdgo._internal.internal.fuzz.Fuzz_malformedcorpuserror.MalformedCorpusError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_malformedcorpuserrordotmalformedcorpuserror.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_malformedcorpuserrordotMalformedCorpusError })) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_malformedcorpuserror.MalformedCorpusError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_malformedcorpuserrordotmalformedcorpuserror.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_malformedcorpuserrordotMalformedCorpusError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1011"
        return { _0 : _corpus, _1 : (null : stdgo.Error) };
    }
