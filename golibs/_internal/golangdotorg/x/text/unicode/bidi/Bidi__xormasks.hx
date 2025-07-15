package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
var _xorMasks : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(8, 8, ...[(0 : stdgo.GoInt32), (1 : stdgo.GoInt32), (6 : stdgo.GoInt32), (7 : stdgo.GoInt32), (3 : stdgo.GoInt32), (15 : stdgo.GoInt32), (29 : stdgo.GoInt32), (63 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
