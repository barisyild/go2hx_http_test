package stdgo._internal.crypto.aes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
var _td1 : stdgo.GoArray<stdgo.GoUInt32> = (new stdgo.GoArray<stdgo.GoUInt32>(256, 256, ...[
(1347548327u32 : stdgo.GoUInt32),
(1400783205u32 : stdgo.GoUInt32),
(-1021700188u32 : stdgo.GoUInt32),
(-1774573730u32 : stdgo.GoUInt32),
(-885281941u32 : stdgo.GoUInt32),
(-249586363u32 : stdgo.GoUInt32),
(-1414727080u32 : stdgo.GoUInt32),
(-1823743229u32 : stdgo.GoUInt32),
(1428173050u32 : stdgo.GoUInt32),
(-156404115u32 : stdgo.GoUInt32),
(-1853305738u32 : stdgo.GoUInt32),
(636813900u32 : stdgo.GoUInt32),
(-61872681u32 : stdgo.GoUInt32),
(-674944309u32 : stdgo.GoUInt32),
(-2144979644u32 : stdgo.GoUInt32),
(-1883938141u32 : stdgo.GoUInt32),
(1239331162u32 : stdgo.GoUInt32),
(1730525723u32 : stdgo.GoUInt32),
(-1740248562u32 : stdgo.GoUInt32),
(-513933632u32 : stdgo.GoUInt32),
(46346101u32 : stdgo.GoUInt32),
(310463728u32 : stdgo.GoUInt32),
(-1551022441u32 : stdgo.GoUInt32),
(-966011911u32 : stdgo.GoUInt32),
(-419197089u32 : stdgo.GoUInt32),
(-1793748324u32 : stdgo.GoUInt32),
(-339776134u32 : stdgo.GoUInt32),
(-627748263u32 : stdgo.GoUInt32),
(768917123u32 : stdgo.GoUInt32),
(-749177823u32 : stdgo.GoUInt32),
(692707433u32 : stdgo.GoUInt32),
(1150208456u32 : stdgo.GoUInt32),
(1786102409u32 : stdgo.GoUInt32),
(2029293177u32 : stdgo.GoUInt32),
(1805211710u32 : stdgo.GoUInt32),
(-584599183u32 : stdgo.GoUInt32),
(-1229004465u32 : stdgo.GoUInt32),
(401639597u32 : stdgo.GoUInt32),
(1724457132u32 : stdgo.GoUInt32),
(-1266823622u32 : stdgo.GoUInt32),
(409198410u32 : stdgo.GoUInt32),
(-2098914767u32 : stdgo.GoUInt32),
(1620529459u32 : stdgo.GoUInt32),
(1164071807u32 : stdgo.GoUInt32),
(-525245321u32 : stdgo.GoUInt32),
(-2068091986u32 : stdgo.GoUInt32),
(486441376u32 : stdgo.GoUInt32),
(-1795618773u32 : stdgo.GoUInt32),
(1483753576u32 : stdgo.GoUInt32),
(428819965u32 : stdgo.GoUInt32),
(-2020286868u32 : stdgo.GoUInt32),
(-1219331080u32 : stdgo.GoUInt32),
(598438867u32 : stdgo.GoUInt32),
(-495826174u32 : stdgo.GoUInt32),
(1474502543u32 : stdgo.GoUInt32),
(711349675u32 : stdgo.GoUInt32),
(129166120u32 : stdgo.GoUInt32),
(53458370u32 : stdgo.GoUInt32),
(-1702443653u32 : stdgo.GoUInt32),
(-1512884472u32 : stdgo.GoUInt32),
(-231724921u32 : stdgo.GoUInt32),
(-1306280027u32 : stdgo.GoUInt32),
(-1174273174u32 : stdgo.GoUInt32),
(1559041666u32 : stdgo.GoUInt32),
(730517276u32 : stdgo.GoUInt32),
(-1834518092u32 : stdgo.GoUInt32),
(-252508174u32 : stdgo.GoUInt32),
(-1588696606u32 : stdgo.GoUInt32),
(-848962828u32 : stdgo.GoUInt32),
(-721025602u32 : stdgo.GoUInt32),
(533804130u32 : stdgo.GoUInt32),
(-1966823682u32 : stdgo.GoUInt32),
(-1657524653u32 : stdgo.GoUInt32),
(-1599933611u32 : stdgo.GoUInt32),
(839224033u32 : stdgo.GoUInt32),
(1973745387u32 : stdgo.GoUInt32),
(957055980u32 : stdgo.GoUInt32),
(-1438621457u32 : stdgo.GoUInt32),
(106852767u32 : stdgo.GoUInt32),
(1371368976u32 : stdgo.GoUInt32),
(-113368694u32 : stdgo.GoUInt32),
(1033297158u32 : stdgo.GoUInt32),
(-1361232379u32 : stdgo.GoUInt32),
(1179510461u32 : stdgo.GoUInt32),
(-1248766835u32 : stdgo.GoUInt32),
(91341917u32 : stdgo.GoUInt32),
(1862534868u32 : stdgo.GoUInt32),
(-10465259u32 : stdgo.GoUInt32),
(605657339u32 : stdgo.GoUInt32),
(-1747534359u32 : stdgo.GoUInt32),
(-863420349u32 : stdgo.GoUInt32),
(2003294622u32 : stdgo.GoUInt32),
(-1112479678u32 : stdgo.GoUInt32),
(-2012771957u32 : stdgo.GoUInt32),
(954669403u32 : stdgo.GoUInt32),
(-612775698u32 : stdgo.GoUInt32),
(1201765386u32 : stdgo.GoUInt32),
(-377732593u32 : stdgo.GoUInt32),
(-906460130u32 : stdgo.GoUInt32),
(0u32 : stdgo.GoUInt32),
(-2096529274u32 : stdgo.GoUInt32),
(1211247597u32 : stdgo.GoUInt32),
(-1407315600u32 : stdgo.GoUInt32),
(1315723890u32 : stdgo.GoUInt32),
(-67301633u32 : stdgo.GoUInt32),
(1443857720u32 : stdgo.GoUInt32),
(507358933u32 : stdgo.GoUInt32),
(657861945u32 : stdgo.GoUInt32),
(1678381017u32 : stdgo.GoUInt32),
(560487590u32 : stdgo.GoUInt32),
(-778347692u32 : stdgo.GoUInt32),
(975451694u32 : stdgo.GoUInt32),
(-1324610969u32 : stdgo.GoUInt32),
(261314535u32 : stdgo.GoUInt32),
(-759894378u32 : stdgo.GoUInt32),
(-1642357871u32 : stdgo.GoUInt32),
(1333838021u32 : stdgo.GoUInt32),
(-1570644960u32 : stdgo.GoUInt32),
(1767536459u32 : stdgo.GoUInt32),
(370938394u32 : stdgo.GoUInt32),
(182621114u32 : stdgo.GoUInt32),
(-440360918u32 : stdgo.GoUInt32),
(1128014560u32 : stdgo.GoUInt32),
(487725847u32 : stdgo.GoUInt32),
(185469197u32 : stdgo.GoUInt32),
(-1376613433u32 : stdgo.GoUInt32),
(-1188186456u32 : stdgo.GoUInt32),
(-938205527u32 : stdgo.GoUInt32),
(-2057834215u32 : stdgo.GoUInt32),
(1286567175u32 : stdgo.GoUInt32),
(-1141990947u32 : stdgo.GoUInt32),
(-39616672u32 : stdgo.GoUInt32),
(-1611202266u32 : stdgo.GoUInt32),
(-1134791947u32 : stdgo.GoUInt32),
(-985373125u32 : stdgo.GoUInt32),
(878443390u32 : stdgo.GoUInt32),
(1988838185u32 : stdgo.GoUInt32),
(-590666810u32 : stdgo.GoUInt32),
(1756818940u32 : stdgo.GoUInt32),
(1673061617u32 : stdgo.GoUInt32),
(-891866660u32 : stdgo.GoUInt32),
(272786309u32 : stdgo.GoUInt32),
(1075025698u32 : stdgo.GoUInt32),
(545572369u32 : stdgo.GoUInt32),
(2105887268u32 : stdgo.GoUInt32),
(-120407235u32 : stdgo.GoUInt32),
(296679730u32 : stdgo.GoUInt32),
(1841768865u32 : stdgo.GoUInt32),
(1260232239u32 : stdgo.GoUInt32),
(-203640272u32 : stdgo.GoUInt32),
(-334657966u32 : stdgo.GoUInt32),
(-797457949u32 : stdgo.GoUInt32),
(1814803222u32 : stdgo.GoUInt32),
(-1716948807u32 : stdgo.GoUInt32),
(-99511224u32 : stdgo.GoUInt32),
(575138148u32 : stdgo.GoUInt32),
(-995558260u32 : stdgo.GoUInt32),
(446754879u32 : stdgo.GoUInt32),
(-665420500u32 : stdgo.GoUInt32),
(-282971248u32 : stdgo.GoUInt32),
(-947435186u32 : stdgo.GoUInt32),
(-1042728751u32 : stdgo.GoUInt32),
(-24327518u32 : stdgo.GoUInt32),
(915985419u32 : stdgo.GoUInt32),
(-811141759u32 : stdgo.GoUInt32),
(681933534u32 : stdgo.GoUInt32),
(651868046u32 : stdgo.GoUInt32),
(-1539330625u32 : stdgo.GoUInt32),
(-466863459u32 : stdgo.GoUInt32),
(223377554u32 : stdgo.GoUInt32),
(-1687527476u32 : stdgo.GoUInt32),
(1649704518u32 : stdgo.GoUInt32),
(-1024029421u32 : stdgo.GoUInt32),
(-393160520u32 : stdgo.GoUInt32),
(1580087799u32 : stdgo.GoUInt32),
(-175979601u32 : stdgo.GoUInt32),
(-1096852096u32 : stdgo.GoUInt32),
(2087309459u32 : stdgo.GoUInt32),
(-1452288723u32 : stdgo.GoUInt32),
(-1278270190u32 : stdgo.GoUInt32),
(1003007129u32 : stdgo.GoUInt32),
(-1492117379u32 : stdgo.GoUInt32),
(1860738147u32 : stdgo.GoUInt32),
(2077965243u32 : stdgo.GoUInt32),
(164439672u32 : stdgo.GoUInt32),
(-194094824u32 : stdgo.GoUInt32),
(32283319u32 : stdgo.GoUInt32),
(-1467789414u32 : stdgo.GoUInt32),
(1709610350u32 : stdgo.GoUInt32),
(2125135846u32 : stdgo.GoUInt32),
(136428751u32 : stdgo.GoUInt32),
(-420538904u32 : stdgo.GoUInt32),
(-642062437u32 : stdgo.GoUInt32),
(-833982666u32 : stdgo.GoUInt32),
(-722821367u32 : stdgo.GoUInt32),
(-701910916u32 : stdgo.GoUInt32),
(-1355701070u32 : stdgo.GoUInt32),
(824852259u32 : stdgo.GoUInt32),
(818324884u32 : stdgo.GoUInt32),
(-1070226842u32 : stdgo.GoUInt32),
(930369212u32 : stdgo.GoUInt32),
(-1493400886u32 : stdgo.GoUInt32),
(-1327460144u32 : stdgo.GoUInt32),
(355706840u32 : stdgo.GoUInt32),
(1257309336u32 : stdgo.GoUInt32),
(-146674470u32 : stdgo.GoUInt32),
(243256656u32 : stdgo.GoUInt32),
(790073846u32 : stdgo.GoUInt32),
(-1921626666u32 : stdgo.GoUInt32),
(1296297904u32 : stdgo.GoUInt32),
(1422699085u32 : stdgo.GoUInt32),
(-538667516u32 : stdgo.GoUInt32),
(-476130891u32 : stdgo.GoUInt32),
(457992840u32 : stdgo.GoUInt32),
(-1195299809u32 : stdgo.GoUInt32),
(2135319889u32 : stdgo.GoUInt32),
(77422314u32 : stdgo.GoUInt32),
(1560382517u32 : stdgo.GoUInt32),
(1945798516u32 : stdgo.GoUInt32),
(788204353u32 : stdgo.GoUInt32),
(1521706781u32 : stdgo.GoUInt32),
(1385356242u32 : stdgo.GoUInt32),
(870912086u32 : stdgo.GoUInt32),
(325965383u32 : stdgo.GoUInt32),
(-1936009375u32 : stdgo.GoUInt32),
(2050466060u32 : stdgo.GoUInt32),
(-1906706412u32 : stdgo.GoUInt32),
(-1981082820u32 : stdgo.GoUInt32),
(-288446169u32 : stdgo.GoUInt32),
(901210569u32 : stdgo.GoUInt32),
(-304014107u32 : stdgo.GoUInt32),
(1014646705u32 : stdgo.GoUInt32),
(1503449823u32 : stdgo.GoUInt32),
(1062597235u32 : stdgo.GoUInt32),
(2031621326u32 : stdgo.GoUInt32),
(-1082931401u32 : stdgo.GoUInt32),
(-363595827u32 : stdgo.GoUInt32),
(1533017514u32 : stdgo.GoUInt32),
(350174575u32 : stdgo.GoUInt32),
(-2038938405u32 : stdgo.GoUInt32),
(-2117423117u32 : stdgo.GoUInt32),
(1052338372u32 : stdgo.GoUInt32),
(741876788u32 : stdgo.GoUInt32),
(1606591296u32 : stdgo.GoUInt32),
(1914052035u32 : stdgo.GoUInt32),
(213705253u32 : stdgo.GoUInt32),
(-1960297399u32 : stdgo.GoUInt32),
(1107234197u32 : stdgo.GoUInt32),
(1899603969u32 : stdgo.GoUInt32),
(-569897805u32 : stdgo.GoUInt32),
(-1663519516u32 : stdgo.GoUInt32),
(-1872472383u32 : stdgo.GoUInt32),
(1635502980u32 : stdgo.GoUInt32),
(1893020342u32 : stdgo.GoUInt32),
(1950903388u32 : stdgo.GoUInt32),
(1120974935u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt32>);
