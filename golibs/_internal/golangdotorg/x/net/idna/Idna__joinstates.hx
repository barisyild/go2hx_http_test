package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
var _joinStates : stdgo.Slice<stdgo.GoArray<_internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState>> = {
        var s = new stdgo.Slice<stdgo.GoArray<_internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState>>(6, 0, ...[for (i in 0 ... (6 > 0 ? 6 : 0 : stdgo.GoInt).toBasic()) new stdgo.GoArray<_internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState>(8, 8).__setNumber32__()]);
        s[0] = {
            var s:stdgo.GoArray<_internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState> = new stdgo.GoArray<_internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState>(8, 8, ...[for (i in 0 ... 8) ((0 : stdgo.GoInt8) : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState)]);
            s[1] = (2 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[2] = (2 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[6] = (5 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[5] = (5 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[7] = (1 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s;
        };
        s[1] = {
            var s:stdgo.GoArray<_internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState> = new stdgo.GoArray<_internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState>(8, 8, ...[for (i in 0 ... 8) ((0 : stdgo.GoInt8) : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState)]);
            s[1] = (2 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[2] = (2 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s;
        };
        s[2] = {
            var s:stdgo.GoArray<_internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState> = new stdgo.GoArray<_internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState>(8, 8, ...[for (i in 0 ... 8) ((0 : stdgo.GoInt8) : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState)]);
            s[1] = (2 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[2] = (2 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[3] = (2 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[6] = (4 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[5] = (5 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[7] = (3 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s;
        };
        s[3] = {
            var s:stdgo.GoArray<_internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState> = new stdgo.GoArray<_internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState>(8, 8, ...[for (i in 0 ... 8) ((0 : stdgo.GoInt8) : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState)]);
            s[1] = (2 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[2] = (2 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[3] = (2 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s;
        };
        s[4] = {
            var s:stdgo.GoArray<_internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState> = new stdgo.GoArray<_internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState>(8, 8, ...[for (i in 0 ... 8) ((0 : stdgo.GoInt8) : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState)]);
            s[1] = (5 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[2] = (2 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[3] = (4 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[4] = (0 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[6] = (5 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[5] = (5 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[7] = (4 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s;
        };
        s[5] = {
            var s:stdgo.GoArray<_internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState> = new stdgo.GoArray<_internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState>(8, 8, ...[for (i in 0 ... 8) ((0 : stdgo.GoInt8) : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState)]);
            s[0] = (5 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[1] = (5 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[2] = (5 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[3] = (5 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[4] = (5 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[6] = (5 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[5] = (5 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s[7] = (5 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
            s;
        };
        s;
    };
