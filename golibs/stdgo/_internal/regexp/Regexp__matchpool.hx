package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
var _matchPool : stdgo.GoArray<stdgo._internal.sync.Sync_pool.Pool> = new stdgo.GoArray<stdgo._internal.sync.Sync_pool.Pool>(5, 5, ...[for (i in 0 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.sync.Sync_pool.Pool)]);
