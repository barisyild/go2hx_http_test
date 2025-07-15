package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
class Builder_asInterface {
    @:keep
    public dynamic function finish():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.finish();
    @:keep
    public dynamic function unknownResource(_h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader, _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_unknownresource.UnknownResource):stdgo.Error return @:_0 __self__.value.unknownResource(_h, _r);
    @:keep
    public dynamic function oPTResource(_h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader, _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource):stdgo.Error return @:_0 __self__.value.oPTResource(_h, _r);
    @:keep
    public dynamic function aAAAResource(_h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader, _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource.AAAAResource):stdgo.Error return @:_0 __self__.value.aAAAResource(_h, _r);
    @:keep
    public dynamic function aResource(_h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader, _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aresource.AResource):stdgo.Error return @:_0 __self__.value.aResource(_h, _r);
    @:keep
    public dynamic function sRVResource(_h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader, _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_srvresource.SRVResource):stdgo.Error return @:_0 __self__.value.sRVResource(_h, _r);
    @:keep
    public dynamic function tXTResource(_h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader, _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource):stdgo.Error return @:_0 __self__.value.tXTResource(_h, _r);
    @:keep
    public dynamic function sOAResource(_h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader, _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_soaresource.SOAResource):stdgo.Error return @:_0 __self__.value.sOAResource(_h, _r);
    @:keep
    public dynamic function pTRResource(_h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader, _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_ptrresource.PTRResource):stdgo.Error return @:_0 __self__.value.pTRResource(_h, _r);
    @:keep
    public dynamic function nSResource(_h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader, _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_nsresource.NSResource):stdgo.Error return @:_0 __self__.value.nSResource(_h, _r);
    @:keep
    public dynamic function mXResource(_h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader, _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mxresource.MXResource):stdgo.Error return @:_0 __self__.value.mXResource(_h, _r);
    @:keep
    public dynamic function cNAMEResource(_h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader, _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_cnameresource.CNAMEResource):stdgo.Error return @:_0 __self__.value.cNAMEResource(_h, _r);
    @:keep
    public dynamic function _checkResourceSection():stdgo.Error return @:_0 __self__.value._checkResourceSection();
    @:keep
    public dynamic function question(_q:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question):stdgo.Error return @:_0 __self__.value.question(_q);
    @:keep
    public dynamic function _incrementSectionCount():stdgo.Error return @:_0 __self__.value._incrementSectionCount();
    @:keep
    public dynamic function startAdditionals():stdgo.Error return @:_0 __self__.value.startAdditionals();
    @:keep
    public dynamic function startAuthorities():stdgo.Error return @:_0 __self__.value.startAuthorities();
    @:keep
    public dynamic function startAnswers():stdgo.Error return @:_0 __self__.value.startAnswers();
    @:keep
    public dynamic function startQuestions():stdgo.Error return @:_0 __self__.value.startQuestions();
    @:keep
    public dynamic function _startCheck(_s:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section):stdgo.Error return @:_0 __self__.value._startCheck(_s);
    @:keep
    public dynamic function enableCompression():Void @:_0 __self__.value.enableCompression();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builderpointer.BuilderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
