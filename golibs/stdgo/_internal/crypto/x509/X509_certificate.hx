package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.des.Des;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.net.url.Url;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.ed25519.Ed25519;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.rsa.Rsa;
import stdgo._internal.crypto.ecdsa.Ecdsa;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.encoding.pem.Pem;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
@:structInit @:using(stdgo._internal.crypto.x509.X509_certificate_static_extension.Certificate_static_extension) @:using(stdgo._internal.crypto.x509.X509_certificate_static_extension.Certificate_static_extension) class Certificate {
    public var raw : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var rawTBSCertificate : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var rawSubjectPublicKeyInfo : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var rawSubject : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var rawIssuer : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var signature : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var signatureAlgorithm : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm);
    public var publicKeyAlgorithm : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
    public var publicKey : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var version : stdgo.GoInt = 0;
    public var serialNumber : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public var issuer : stdgo._internal.crypto.x509.pkix.Pkix_name.Name = ({} : stdgo._internal.crypto.x509.pkix.Pkix_name.Name);
    public var subject : stdgo._internal.crypto.x509.pkix.Pkix_name.Name = ({} : stdgo._internal.crypto.x509.pkix.Pkix_name.Name);
    public var notBefore : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var notAfter : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var keyUsage : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage);
    public var extensions : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
    public var extraExtensions : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
    public var unhandledCriticalExtensions : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier> = (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>);
    public var extKeyUsage : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
    public var unknownExtKeyUsage : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier> = (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>);
    public var basicConstraintsValid : Bool = false;
    public var isCA : Bool = false;
    public var maxPathLen : stdgo.GoInt = 0;
    public var maxPathLenZero : Bool = false;
    public var subjectKeyId : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var authorityKeyId : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var oCSPServer : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var issuingCertificateURL : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var dNSNames : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var emailAddresses : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var iPAddresses : stdgo.Slice<stdgo._internal.net.Net_ip.IP> = (null : stdgo.Slice<stdgo._internal.net.Net_ip.IP>);
    public var uRIs : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_url.URL>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_url.URL>>);
    public var permittedDNSDomainsCritical : Bool = false;
    public var permittedDNSDomains : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var excludedDNSDomains : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var permittedIPRanges : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>);
    public var excludedIPRanges : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>);
    public var permittedEmailAddresses : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var excludedEmailAddresses : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var permittedURIDomains : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var excludedURIDomains : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var cRLDistributionPoints : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var policyIdentifiers : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier> = (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>);
    public function new(?raw:stdgo.Slice<stdgo.GoUInt8>, ?rawTBSCertificate:stdgo.Slice<stdgo.GoUInt8>, ?rawSubjectPublicKeyInfo:stdgo.Slice<stdgo.GoUInt8>, ?rawSubject:stdgo.Slice<stdgo.GoUInt8>, ?rawIssuer:stdgo.Slice<stdgo.GoUInt8>, ?signature:stdgo.Slice<stdgo.GoUInt8>, ?signatureAlgorithm:stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm, ?publicKeyAlgorithm:stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm, ?publicKey:stdgo.AnyInterface, ?version:stdgo.GoInt, ?serialNumber:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?issuer:stdgo._internal.crypto.x509.pkix.Pkix_name.Name, ?subject:stdgo._internal.crypto.x509.pkix.Pkix_name.Name, ?notBefore:stdgo._internal.time.Time_time.Time, ?notAfter:stdgo._internal.time.Time_time.Time, ?keyUsage:stdgo._internal.crypto.x509.X509_keyusage.KeyUsage, ?extensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>, ?extraExtensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>, ?unhandledCriticalExtensions:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>, ?extKeyUsage:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>, ?unknownExtKeyUsage:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>, ?basicConstraintsValid:Bool, ?isCA:Bool, ?maxPathLen:stdgo.GoInt, ?maxPathLenZero:Bool, ?subjectKeyId:stdgo.Slice<stdgo.GoUInt8>, ?authorityKeyId:stdgo.Slice<stdgo.GoUInt8>, ?oCSPServer:stdgo.Slice<stdgo.GoString>, ?issuingCertificateURL:stdgo.Slice<stdgo.GoString>, ?dNSNames:stdgo.Slice<stdgo.GoString>, ?emailAddresses:stdgo.Slice<stdgo.GoString>, ?iPAddresses:stdgo.Slice<stdgo._internal.net.Net_ip.IP>, ?uRIs:stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_url.URL>>, ?permittedDNSDomainsCritical:Bool, ?permittedDNSDomains:stdgo.Slice<stdgo.GoString>, ?excludedDNSDomains:stdgo.Slice<stdgo.GoString>, ?permittedIPRanges:stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>, ?excludedIPRanges:stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>, ?permittedEmailAddresses:stdgo.Slice<stdgo.GoString>, ?excludedEmailAddresses:stdgo.Slice<stdgo.GoString>, ?permittedURIDomains:stdgo.Slice<stdgo.GoString>, ?excludedURIDomains:stdgo.Slice<stdgo.GoString>, ?cRLDistributionPoints:stdgo.Slice<stdgo.GoString>, ?policyIdentifiers:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>) {
        if (raw != null) this.raw = raw;
        if (rawTBSCertificate != null) this.rawTBSCertificate = rawTBSCertificate;
        if (rawSubjectPublicKeyInfo != null) this.rawSubjectPublicKeyInfo = rawSubjectPublicKeyInfo;
        if (rawSubject != null) this.rawSubject = rawSubject;
        if (rawIssuer != null) this.rawIssuer = rawIssuer;
        if (signature != null) this.signature = signature;
        if (signatureAlgorithm != null) this.signatureAlgorithm = signatureAlgorithm;
        if (publicKeyAlgorithm != null) this.publicKeyAlgorithm = publicKeyAlgorithm;
        if (publicKey != null) this.publicKey = publicKey;
        if (version != null) this.version = version;
        if (serialNumber != null) this.serialNumber = serialNumber;
        if (issuer != null) this.issuer = issuer;
        if (subject != null) this.subject = subject;
        if (notBefore != null) this.notBefore = notBefore;
        if (notAfter != null) this.notAfter = notAfter;
        if (keyUsage != null) this.keyUsage = keyUsage;
        if (extensions != null) this.extensions = extensions;
        if (extraExtensions != null) this.extraExtensions = extraExtensions;
        if (unhandledCriticalExtensions != null) this.unhandledCriticalExtensions = unhandledCriticalExtensions;
        if (extKeyUsage != null) this.extKeyUsage = extKeyUsage;
        if (unknownExtKeyUsage != null) this.unknownExtKeyUsage = unknownExtKeyUsage;
        if (basicConstraintsValid != null) this.basicConstraintsValid = basicConstraintsValid;
        if (isCA != null) this.isCA = isCA;
        if (maxPathLen != null) this.maxPathLen = maxPathLen;
        if (maxPathLenZero != null) this.maxPathLenZero = maxPathLenZero;
        if (subjectKeyId != null) this.subjectKeyId = subjectKeyId;
        if (authorityKeyId != null) this.authorityKeyId = authorityKeyId;
        if (oCSPServer != null) this.oCSPServer = oCSPServer;
        if (issuingCertificateURL != null) this.issuingCertificateURL = issuingCertificateURL;
        if (dNSNames != null) this.dNSNames = dNSNames;
        if (emailAddresses != null) this.emailAddresses = emailAddresses;
        if (iPAddresses != null) this.iPAddresses = iPAddresses;
        if (uRIs != null) this.uRIs = uRIs;
        if (permittedDNSDomainsCritical != null) this.permittedDNSDomainsCritical = permittedDNSDomainsCritical;
        if (permittedDNSDomains != null) this.permittedDNSDomains = permittedDNSDomains;
        if (excludedDNSDomains != null) this.excludedDNSDomains = excludedDNSDomains;
        if (permittedIPRanges != null) this.permittedIPRanges = permittedIPRanges;
        if (excludedIPRanges != null) this.excludedIPRanges = excludedIPRanges;
        if (permittedEmailAddresses != null) this.permittedEmailAddresses = permittedEmailAddresses;
        if (excludedEmailAddresses != null) this.excludedEmailAddresses = excludedEmailAddresses;
        if (permittedURIDomains != null) this.permittedURIDomains = permittedURIDomains;
        if (excludedURIDomains != null) this.excludedURIDomains = excludedURIDomains;
        if (cRLDistributionPoints != null) this.cRLDistributionPoints = cRLDistributionPoints;
        if (policyIdentifiers != null) this.policyIdentifiers = policyIdentifiers;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "raw", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "rawTBSCertificate", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "rawSubjectPublicKeyInfo", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "rawSubject", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "rawIssuer", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "signature", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "signatureAlgorithm", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_signaturealgorithmdotsignaturealgorithm.__type__stdgodot_internaldotcryptodotx509dotX509_signaturealgorithmdotSignatureAlgorithm }, optional : false },
{ name : "publicKeyAlgorithm", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_publickeyalgorithmdotpublickeyalgorithm.__type__stdgodot_internaldotcryptodotx509dotX509_publickeyalgorithmdotPublicKeyAlgorithm }, optional : false },
{ name : "publicKey", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false },
{ name : "version", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "serialNumber", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }) }, optional : false },
{ name : "issuer", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_namedotname.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_namedotName }, optional : false },
{ name : "subject", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_namedotname.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_namedotName }, optional : false },
{ name : "notBefore", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime }, optional : false },
{ name : "notAfter", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime }, optional : false },
{ name : "keyUsage", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_keyusagedotkeyusage.__type__stdgodot_internaldotcryptodotx509dotX509_keyusagedotKeyUsage }, optional : false },
{ name : "extensions", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_extensiondotextension.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_extensiondotExtension }) }, optional : false },
{ name : "extraExtensions", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_extensiondotextension.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_extensiondotExtension }) }, optional : false },
{ name : "unhandledCriticalExtensions", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier }) }, optional : false },
{ name : "extKeyUsage", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_extkeyusagedotextkeyusage.__type__stdgodot_internaldotcryptodotx509dotX509_extkeyusagedotExtKeyUsage }) }, optional : false },
{ name : "unknownExtKeyUsage", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier }) }, optional : false },
{ name : "basicConstraintsValid", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "isCA", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "maxPathLen", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "maxPathLenZero", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "subjectKeyId", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "authorityKeyId", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "oCSPServer", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "issuingCertificateURL", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "dNSNames", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "emailAddresses", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "iPAddresses", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipdotip.__type__stdgodot_internaldotnetdotNet_ipdotIP }) }, optional : false },
{ name : "uRIs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_urldoturl.__type__stdgodot_internaldotnetdoturldotUrl_urldotURL }) }) }, optional : false },
{ name : "permittedDNSDomainsCritical", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "permittedDNSDomains", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "excludedDNSDomains", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "permittedIPRanges", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipnetdotipnet.__type__stdgodot_internaldotnetdotNet_ipnetdotIPNet }) }) }, optional : false },
{ name : "excludedIPRanges", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipnetdotipnet.__type__stdgodot_internaldotnetdotNet_ipnetdotIPNet }) }) }, optional : false },
{ name : "permittedEmailAddresses", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "excludedEmailAddresses", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "permittedURIDomains", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "excludedURIDomains", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "cRLDistributionPoints", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "policyIdentifiers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier }) }, optional : false }])));
    public function __copy__() {
        return new Certificate(
raw,
rawTBSCertificate,
rawSubjectPublicKeyInfo,
rawSubject,
rawIssuer,
signature,
signatureAlgorithm,
publicKeyAlgorithm,
publicKey,
version,
serialNumber,
issuer,
subject,
notBefore,
notAfter,
keyUsage,
extensions,
extraExtensions,
unhandledCriticalExtensions,
extKeyUsage,
unknownExtKeyUsage,
basicConstraintsValid,
isCA,
maxPathLen,
maxPathLenZero,
subjectKeyId,
authorityKeyId,
oCSPServer,
issuingCertificateURL,
dNSNames,
emailAddresses,
iPAddresses,
uRIs,
permittedDNSDomainsCritical,
permittedDNSDomains,
excludedDNSDomains,
permittedIPRanges,
excludedIPRanges,
permittedEmailAddresses,
excludedEmailAddresses,
permittedURIDomains,
excludedURIDomains,
cRLDistributionPoints,
policyIdentifiers);
    }
}
