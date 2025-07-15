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
var _byteSliceMutators : stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_t_byteslicemutator.T_byteSliceMutator> = (new stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_t_byteslicemutator.T_byteSliceMutator>(18, 18, ...[
stdgo._internal.internal.fuzz.Fuzz__bytesliceremovebytes._byteSliceRemoveBytes,
stdgo._internal.internal.fuzz.Fuzz__bytesliceinsertrandombytes._byteSliceInsertRandomBytes,
stdgo._internal.internal.fuzz.Fuzz__bytesliceduplicatebytes._byteSliceDuplicateBytes,
stdgo._internal.internal.fuzz.Fuzz__bytesliceoverwritebytes._byteSliceOverwriteBytes,
stdgo._internal.internal.fuzz.Fuzz__byteslicebitflip._byteSliceBitFlip,
stdgo._internal.internal.fuzz.Fuzz__byteslicexorbyte._byteSliceXORByte,
stdgo._internal.internal.fuzz.Fuzz__bytesliceswapbyte._byteSliceSwapByte,
stdgo._internal.internal.fuzz.Fuzz__byteslicearithmeticuint8._byteSliceArithmeticUint8,
stdgo._internal.internal.fuzz.Fuzz__byteslicearithmeticuint16._byteSliceArithmeticUint16,
stdgo._internal.internal.fuzz.Fuzz__byteslicearithmeticuint32._byteSliceArithmeticUint32,
stdgo._internal.internal.fuzz.Fuzz__byteslicearithmeticuint64._byteSliceArithmeticUint64,
stdgo._internal.internal.fuzz.Fuzz__bytesliceoverwriteinterestinguint8._byteSliceOverwriteInterestingUint8,
stdgo._internal.internal.fuzz.Fuzz__bytesliceoverwriteinterestinguint16._byteSliceOverwriteInterestingUint16,
stdgo._internal.internal.fuzz.Fuzz__bytesliceoverwriteinterestinguint32._byteSliceOverwriteInterestingUint32,
stdgo._internal.internal.fuzz.Fuzz__bytesliceinsertconstantbytes._byteSliceInsertConstantBytes,
stdgo._internal.internal.fuzz.Fuzz__bytesliceoverwriteconstantbytes._byteSliceOverwriteConstantBytes,
stdgo._internal.internal.fuzz.Fuzz__bytesliceshufflebytes._byteSliceShuffleBytes,
stdgo._internal.internal.fuzz.Fuzz__bytesliceswapbytes._byteSliceSwapBytes]) : stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_t_byteslicemutator.T_byteSliceMutator>);
