package stdgo._internal.text.tabwriter;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
function newWriter(_output:stdgo._internal.io.Io_writer.Writer, _minwidth:stdgo.GoInt, _tabwidth:stdgo.GoInt, _padding:stdgo.GoInt, _padchar:stdgo.GoUInt8, _flags:stdgo.GoUInt):stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> {
        //"file:///Users/o/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L599"
        return (stdgo.Go.setRef(({} : stdgo._internal.text.tabwriter.Tabwriter_writer.Writer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottextdottabwriterdottabwriter_writerdotwriter.__type__stdgodot_internaldottextdottabwriterdotTabwriter_writerdotWriter })) : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>).init(_output, _minwidth, _tabwidth, _padding, _padchar, _flags);
    }
