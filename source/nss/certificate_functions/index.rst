.. _Mozilla_Projects_NSS_Certificate_functions:

=====================
Certificate functions
=====================
The public functions listed here are used to interact with certificate
databases.

If documentation is available for a function listed below, the function
name is linked to either its MDC wiki page or its entry in the `old SSL
Reference </NSS/SSL_functions/OLD_SSL_Reference>`__. The `Mozilla Cross
Reference <http://mxr.mozilla.org/>`__ (MXR) link for each function
provides access to the function definition, prototype definition, and
source code references. The NSS version column indicates which versions
of NSS support the function.

+--------------------------+-------------+--------------------------+
| Function                 | Source code | NSS versions             |
| name/documentation       |             |                          |
+--------------------------+-------------+--------------------------+
| ``                       | MXR         | 3.2 and later            |
| CERT_AddCertToListTail`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_AddExtension``    | MXR         | 3.5 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_AddO              | MXR         | 3.6 and later            |
| CSPAcceptableResponses`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_AddOKDomainName`` | MXR         | 3.4 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_AddRDN``          | MXR         | 3.2.1 and later          |
+--------------------------+-------------+--------------------------+
| ``CERT_AsciiToName``     | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_CacheCRL``        | MXR         | 3.10 and later           |
+--------------------------+-------------+--------------------------+
| ``CERT_ClearOCSPCache``  | MXR         | 3.11.7 and later         |
+--------------------------+-------------+--------------------------+
| ``                       | MXR         | 3.2 and later            |
| CERT_CertChainFromCert`` |             |                          |
+--------------------------+-------------+--------------------------+
| `                        | MXR         | 3.2 and later            |
| `CERT_CertListFromCert`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_CertTimesValid``  | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_ChangeCertTrust`` | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| `                        | MXR         | 3.2 and later            |
| ``CERT_CheckCertValidTim |             |                          |
| es`` </NSS/SSL_functions |             |                          |
| /sslcrt.html#1056662>`__ |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_CheckNameSpace``  | MXR         | 3.12 and later           |
+--------------------------+-------------+--------------------------+
| ``CERT_CheckCertUsage``  | MXR         | 3.3 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_CompareName``     | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``CER                    | MXR         | 3.11 and later           |
| T_CompareValidityTimes`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_Co                | MXR         | 3.6 and later            |
| mpleteCRLDecodeEntries`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_Conve             | MXR         | 3.9.3 and later          |
| rtAndDecodeCertificate`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_CopyName``        | MXR         | 3.4 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_CopyRDN``         | MXR         | 3.5 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_CreateAVA``       | MXR         | 3.2.1 and later          |
+--------------------------+-------------+--------------------------+
| ``                       | MXR         | 3.5 and later            |
| CERT_CreateCertificate`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_Cr                | MXR         | 3.2 and later            |
| eateCertificateRequest`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_CreateName``      | MXR         | 3.2.1 and later          |
+--------------------------+-------------+--------------------------+
| `                        | MXR         | 3.6 and later            |
| `CERT_CreateOCSPCertID`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``                       | MXR         | 3.6 and later            |
| CERT_CreateOCSPRequest`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_CreateRDN``       | MXR         | 3.2.1 and later          |
+--------------------------+-------------+--------------------------+
| ``CERT                   | MXR         | 3.4 and later            |
| _CreateSubjectCertList`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_CreateValidity``  | MXR         | 3.5 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT                   | MXR         | 3.7 and later            |
| _CRLCacheRefreshIssuer`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_                  | MXR         | 3.10 and later           |
| DecodeAltNameExtension`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_DecodeA           | MXR         | 3.10 and later           |
| uthInfoAccessExtension`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_DecodeAuthKeyID`` | MXR         | 3.10 and later           |
+--------------------------+-------------+--------------------------+
| ``CERT_DecodeAVAValue``  | MXR         | 3.4 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_Deco              | MXR         | 3.2 and later            |
| deBasicConstraintValue`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT                   | MXR         | 3.4 and later            |
| _DecodeCertFromPackage`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_DecodeCertif      | MXR         | 3.2 and later            |
| icatePoliciesExtension`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``                       | MXR         | 3.2 and later            |
| CERT_DecodeCertPackage`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_Decod             | MXR         | 3.10 and later           |
| eCRLDistributionPoints`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_DecodeDERCrl``    | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT                   | MXR         | 3.6 and later            |
| _DecodeDERCrlWithFlags`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``                       | MXR         | 3.4 and later            |
| CERT_DecodeGeneralName`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_DecodeNa          | MXR         | 3.10 and later           |
| meConstraintsExtension`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``C                      | MXR         | 3.6 and later            |
| ERT_DecodeOCSPResponse`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``                       | MXR         | 3.2 and later            |
| CERT_DecodeOidSequence`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_DecodePrivK       | MXR         | 3.10 and later           |
| eyUsagePeriodExtension`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``                       | MXR         | 3.4 and later            |
| CERT_DecodeTrustString`` |             |                          |
+--------------------------+-------------+--------------------------+
| `                        | MXR         | 3.2 and later            |
| `CERT_DecodeUserNotice`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_DerNameToAscii``  | MXR         | 3.4 and later            |
+--------------------------+-------------+--------------------------+
| `                        | MXR         | 3.2 and later            |
| `CERT_DestroyCertArray`` |             |                          |
+--------------------------+-------------+--------------------------+
| ```CERT_DestroyCertifica | MXR         | 3.2 and later            |
| te`` </NSS/SSL_functions |             |                          |
| /sslcrt.html#1050532>`__ |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_                  | MXR         | 3.2 and later            |
| DestroyCertificateList`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_DestroyCertif     | MXR         | 3.2 and later            |
| icatePoliciesExtension`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_Des               | MXR         | 3.2 and later            |
| troyCertificateRequest`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_DestroyCertList`` | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_DestroyName``     | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``                       | MXR         | 3.6 and later            |
| CERT_DestroyOCSPCertID`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``C                      | MXR         | 3.6 and later            |
| ERT_DestroyOCSPRequest`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CE                     | MXR         | 3.7 and later            |
| RT_DestroyOCSPResponse`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``C                      | MXR         | 3.9 and later            |
| ERT_DestroyOidSequence`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``                       | MXR         | 3.10 and later           |
| CERT_DestroyUserNotice`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_DestroyValidity`` | MXR         | 3.5 and later            |
+--------------------------+-------------+--------------------------+
| ```CERT_DupCertifica     | MXR         | 3.2 and later            |
| te`` </NSS/SSL_functions |             |                          |
| /sslcrt.html#1058344>`__ |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_DupCertList``     | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``C                      | MXR         | 3.2 and later            |
| ERT_EnableOCSPChecking`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_                  | MXR         | 3.7 and later            |
| EncodeAltNameExtension`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_Encod             | MXR         | 3.5 and later            |
| eAndAddBitStrExtension`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_EncodeAuthKeyID`` | MXR         | 3.5 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_Enco              | MXR         | 3.5 and later            |
| deBasicConstraintValue`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_Encod             | MXR         | 3.12 and later           |
| eCertPoliciesExtension`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_Encod             | MXR         | 3.5 and later            |
| eCRLDistributionPoints`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``                       | MXR         | 3.4 and later            |
| CERT_EncodeGeneralName`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_Enc               | MXR         | 3.12 and later           |
| odeInfoAccessExtension`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_Enc               | MXR         | 3.12 and later           |
| odeInhibitAnyExtension`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT                   | MXR         | 3.12 and later           |
| _EncodeNoticeReference`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``                       | MXR         | 3.6 and later            |
| CERT_EncodeOCSPRequest`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_EncodePoli        | MXR         | 3.12 and later           |
| cyConstraintsExtension`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_Encode            | MXR         | 3.12 and later           |
| PolicyMappingExtension`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``C                      | MXR         | 3.12 and later           |
| ERT_EncodeSubjectKeyID`` |             |                          |
+--------------------------+-------------+--------------------------+
| `                        | MXR         | 3.12 and later           |
| `CERT_EncodeUserNotice`` |             |                          |
+--------------------------+-------------+--------------------------+
| `                        | MXR         | 3.2 and later            |
| `CERT_ExtractPublicKey`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_FindCertByName``  | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_F                 | MXR         | 3.12 and later           |
| indCRLEntryReasonExten`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``C                      | MXR         | 3.12 and later           |
| ERT_FindCRLNumberExten`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_Fi                | MXR         | 3.12 and later           |
| ndNameConstraintsExten`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_F                 | MXR         | 3.4 and later            |
| ilterCertListByCANames`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT                   | MXR         | 3.4 and later            |
| _FilterCertListByUsage`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_Filt              | MXR         | 3.6 and later            |
| erCertListForUserCerts`` |             |                          |
+--------------------------+-------------+--------------------------+
| ```CERT_FindCertBy       | MXR         | 3.2 and later            |
| DERCert`` </en-US/NSS/CE |             |                          |
| RT_FindCertByDERCert>`__ |             |                          |
+--------------------------+-------------+--------------------------+
| ``                       | MXR         | 3.2 and later            |
| `CERT_FindCertByIssuerAn |             |                          |
| dSN`` </en-US/NSS/CERT_F |             |                          |
| indCertByIssuerAndSN>`__ |             |                          |
+--------------------------+-------------+--------------------------+
| ``C                      | MXR         | 3.2 and later            |
| ERT_FindCertByNickname`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_FindCer           | MXR         | 3.2 and later            |
| tByNicknameOrEmailAddr`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_                  | MXR         | 3.7 and later            |
| FindCertBySubjectKeyID`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``                       | MXR         | 3.4 and later            |
| CERT_FindCertExtension`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_FindCertIssuer``  | MXR         | 3.3 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT                   | MXR         | 3.4 and later            |
| _FindKeyUsageExtension`` |             |                          |
+--------------------------+-------------+--------------------------+
| `                        | MXR         | 3.2 and later            |
| `CERT_FindSMimeProfile`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_Fin               | MXR         | 3.7 and later            |
| dSubjectKeyIDExtension`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CE                     | MXR         | 3.4 and later            |
| RT_FindUserCertByUsage`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CER                    | MXR         | 3.4 and later            |
| T_FindUserCertsByUsage`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_FinishCertif      | MXR         | 3.10 and later           |
| icateRequestAttributes`` |             |                          |
+--------------------------+-------------+--------------------------+
| `                        | MXR         | 3.5 and later            |
| `CERT_FinishExtensions`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_FormatName``      | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_FreeDistNames``   | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ```CERT_FreeNicknam      | MXR         | 3.2 and later            |
| es`` </NSS/SSL_functions |             |                          |
| /sslcrt.html#1050349>`__ |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_GetAVATag``       | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``CER                    | MXR         | 3.4 and later            |
| T_GetCertChainFromCert`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CE                     | MXR         | 3.2 and later            |
| RT_GetCertEmailAddress`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CE                     | MXR         | 3.10 and later           |
| RT_GetCertificateNames`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_GetCertif         | MXR         | 3.10 and later           |
| icateRequestExtensions`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``C                      | MXR         | 3.2 and later            |
| ERT_GetCertIssuerAndSN`` |             |                          |
+--------------------------+-------------+--------------------------+
| ```CERT_GetCertNicknam   | MXR         | 3.2 and later            |
| es`` </NSS/SSL_functions |             |                          |
| /sslcrt.html#1050346>`__ |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_GetCertTrust``    | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_GetCertUid``      | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_GetCla            | MXR         | 3.12 and later           |
| ssicOCSPDisabledPolicy`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_GetClassicOCSPEn  | MXR         | 3.12 and later           |
| abledHardFailurePolicy`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_GetClassicOCSPEn  | MXR         | 3.12 and later           |
| abledSoftFailurePolicy`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_GetCommonName``   | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_GetCountryName``  | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``CE                     | MXR         | 3.2 and later            |
| RT_GetDBContentVersion`` |             |                          |
+--------------------------+-------------+--------------------------+
| ```CERT_GetDefaultCert   | MXR         | 3.2 and later            |
| DB`` </NSS/SSL_functions |             |                          |
| /sslcrt.html#1052308>`__ |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_                  | MXR         | 3.2 and later            |
| GetDomainComponentName`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CER                    | MXR         | 3.7 and later            |
| T_GetFirstEmailAddress`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_GetLocalityName`` | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``CE                     | MXR         | 3.7 and later            |
| RT_GetNextEmailAddress`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``C                      | MXR         | 3.10 and later           |
| ERT_GetNextGeneralName`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT                   | MXR         | 3.10 and later           |
| _GetNextNameConstraint`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT                   | MXR         | 3.6 and later            |
| _GetOCSPResponseStatus`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_                  | MXR         | 3.6 and later            |
| GetOCSPStatusForCertID`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_GetOidString``    | MXR         | 3.9 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_GetOrgName``      | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_GetOrgUnitName``  | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_GetOCSPAutho      | MXR         | 3.4 and later            |
| rityInfoAccessLocation`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_GetPKIXVeri       | MXR         | 3.12 and later           |
| fyNistRevocationPolicy`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``C                      | MXR         | 3.10 and later           |
| ERT_GetPrevGeneralName`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT                   | MXR         | 3.10 and later           |
| _GetPrevNameConstraint`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_GetSlopTime``     | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_GetSSLCACerts``   | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_GetStateName``    | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_G                 | MXR         | 3.12 and later           |
| etUsePKIXForValidation`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_GetVa             | MXR         | 3.12 and later           |
| lidDNSPatternsFromCert`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_                  | MXR         | 3.2 and later            |
| GenTime2FormattedAscii`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_Hexify``          | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_ImportCAChain``   | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_ImportCerts``     | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_IsRootDERCert``   | MXR         | 3.8 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_IsUserCert``      | MXR         | 3.6 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_KeyFromDERCrl``   | MXR         | 3.4 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_MakeCANickname``  | MXR         | 3.4 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_MergeExtensions`` | MXR         | 3.10 and later           |
+--------------------------+-------------+--------------------------+
| ``CERT_NameToAscii``     | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``CERT_NewCertList``     | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``C                      | MXR         | 3.12 and later           |
| ERT_NewTempCertificate`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_Nickn             | MXR         | 3.4 and later            |
| ameStringsFromCertList`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``C                      | MXR         | 3.2 and later            |
| ERT_OpenCertDBFilename`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``                       | MXR         | 3.11.7 and later         |
| CERT_OCSPCacheSettings`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_PKIXVerifyCert``  | MXR         | 3.12 and later           |
+--------------------------+-------------+--------------------------+
| ``C                      | MXR         | 3.6 and later            |
| ERT_RemoveCertListNode`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_                  | MXR         | 3.2 and later            |
| RFC1485_EscapeAndQuote`` |             |                          |
+--------------------------+-------------+--------------------------+
| `                        | MXR         | 3.2 and later            |
| `CERT_SaveSMimeProfile`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_SetSlopTime``     | MXR         | 3.2 and later            |
+--------------------------+-------------+--------------------------+
| ``C                      | MXR         | 3.11.7 and later         |
| ERT_SetOCSPFailureMode`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_SetOCSPTimeout``  | MXR         | 3.12 and later           |
+--------------------------+-------------+--------------------------+
| ``CERT_S                 | MXR         | 3.12 and later           |
| etUsePKIXForValidation`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CE                     | MXR         | 3.5 and later            |
| RT_StartCertExtensions`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_StartCertif       | MXR         | 3.10 and later           |
| icateRequestAttributes`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_S                 | MXR         | 3.10 and later           |
| tartCRLEntryExtensions`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``C                      | MXR         | 3.10 and later           |
| ERT_StartCRLExtensions`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_UncacheCRL``      | MXR         | 3.10 and later           |
+--------------------------+-------------+--------------------------+
| ```CERT_VerifyCertNa     | MXR         | 3.2 and later            |
| me`` </NSS/SSL_functions |             |                          |
| /sslcrt.html#1050342>`__ |             |                          |
+--------------------------+-------------+--------------------------+
| ``CER                    | MXR         | 3.6 and later            |
| T_VerifyCACertForUsage`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_VerifyCert``      | MXR         | 3.2 and later. If you    |
|                          |             | need to verify for       |
|                          |             | multiple usages use      |
|                          |             | CERT_VerifyCertificate   |
+--------------------------+-------------+--------------------------+
| ``                       | MXR         | 3.6 and later            |
| CERT_VerifyCertificate`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CER                    | MXR         | 3.6 and later            |
| T_VerifyCertificateNow`` |             |                          |
+--------------------------+-------------+--------------------------+
| ```CERT_VerifyCertN      | MXR         | 3.2 and later. If you    |
| ow`` </NSS/SSL_functions |             | need to verify for       |
| /sslcrt.html#1058011>`__ |             | multiple usages use      |
|                          |             | C                        |
|                          |             | ERT_VerifyCertificateNow |
+--------------------------+-------------+--------------------------+
| ``CERT_Verif             | MXR         | 3.6 and later            |
| yOCSPResponseSignature`` |             |                          |
+--------------------------+-------------+--------------------------+
| `                        | MXR         | 3.4 and later            |
| `CERT_VerifySignedData`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_VerifyS           | MXR         | 3.7 and later            |
| ignedDataWithPublicKey`` |             |                          |
+--------------------------+-------------+--------------------------+
| ``CERT_VerifySigne       | MXR         | 3.7 and later            |
| dDataWithPublicKeyInfo`` |             |                          |
+--------------------------+-------------+--------------------------+
| `                        | MXR         | 3.2 and later            |
| ``NSS_CmpCertChainWCANam |             |                          |
| es`` </NSS/SSL_functions |             |                          |
| /sslcrt.html#1056760>`__ |             |                          |
+--------------------------+-------------+--------------------------+
| ```NSS_FindCertKEATy     | MXR         | 3.2 and later            |
| pe`` </NSS/SSL_functions |             |                          |
| /sslcrt.html#1056950>`__ |             |                          |
+--------------------------+-------------+--------------------------+