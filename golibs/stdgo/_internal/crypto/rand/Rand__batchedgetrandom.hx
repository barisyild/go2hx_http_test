package stdgo._internal.crypto.rand;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.internal.randutil.Randutil;
var _batchedGetRandom : stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error = null;
