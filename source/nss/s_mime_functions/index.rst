.. _Mozilla_Projects_NSS_S_MIME_functions:

================
S/MIME functions
================
The public functions listed here perform S/MIME operations using the
`S/MIME
Toolkit <http://www-archive.mozilla.org/projects/security/pki/nss/smime/>`__.

The `Mozilla Cross Reference <http://mxr.mozilla.org/>`__ (MXR) link for
each function provides access to the function definition, prototype
definition, and source code references. The NSS version column indicates
which versions of NSS support the function.

+------------------------------------+-------------+-----------------+
| Function name/documentation        | Source code | NSS versions    |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSContentInfo_GetBulkKey``  | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``N                                | MXR         | 3.2 and later   |
| SS_CMSContentInfo_GetBulkKeySize`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSContentInfo_GetContent``  | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CM                           | MXR         | 3.2 and later   |
| SContentInfo_GetContentEncAlgTag`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_                             | MXR         | 3.2 and later   |
| CMSContentInfo_GetContentTypeTag`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSContentInfo_SetBulkKey``  | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSContentInfo_SetContent``  | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NS                               | MXR         | 3.2 and later   |
| S_CMSContentInfo_SetContent_Data`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS                              | MXR         | 3.2 and later   |
| _CMSContentInfo_SetContentEncAlg`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSCon                       | MXR         | 3.2 and later   |
| tentInfo_SetContent_DigestedData`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSCont                      | MXR         | 3.2 and later   |
| entInfo_SetContent_EncryptedData`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSCont                      | MXR         | 3.2 and later   |
| entInfo_SetContent_EnvelopedData`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSC                         | MXR         | 3.2 and later   |
| ontentInfo_SetContent_SignedData`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSDecoder_Cancel``          | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSDecoder_Finish``          | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSDecoder_Start``           | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSDecoder_Update``          | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSDigestContext_Cancel``    | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS                              | MXR         | 3.2 and later   |
| _CMSDigestContext_FinishMultiple`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``N                                | MXR         | 3.2 and later   |
| SS_CMSDigestContext_FinishSingle`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NS                               | MXR         | 3.2 and later   |
| S_CMSDigestContext_StartMultiple`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``                                 | MXR         | 3.2 and later   |
| NSS_CMSDigestContext_StartSingle`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSDigestContext_Update``    | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSDigestedData_Create``     | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSDigestedData_Destroy``    | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NS                               | MXR         | 3.2 and later   |
| S_CMSDigestedData_GetContentInfo`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSDEREncode``               | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSEncoder_Cancel``          | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSEncoder_Finish``          | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSEncoder_Start``           | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSEncoder_Update``          | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSEncryptedData_Create``    | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSEncryptedData_Destroy``   | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS                              | MXR         | 3.2 and later   |
| _CMSEncryptedData_GetContentInfo`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``N                                | MXR         | 3.2 and later   |
| SS_CMSEnvelopedData_AddRecipient`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSEnvelopedData_Create``    | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSEnvelopedData_Destroy``   | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS                              | MXR         | 3.2 and later   |
| _CMSEnvelopedData_GetContentInfo`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSMessage_ContentLevel``    | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``                                 | MXR         | 3.2 and later   |
| NSS_CMSMessage_ContentLevelCount`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSMessage_Copy``            | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSMessage_Create``          | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSMessage_CreateFromDER``   | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSMessage_Destroy``         | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSMessage_GetContent``      | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSMessage_GetContentInfo``  | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSMessage_IsEncrypted``     | MXR         | 3.4.1 and later |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSMessage_IsSigned``        | MXR         | 3.4 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSRecipientInfo_Create``    | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NS                               | MXR         | 3.8 and later   |
| S_CMSRecipientInfo_CreateFromDER`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSRecipientInfo_CreateNew`` | MXR         | 3.8 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSR                         | MXR         | 3.7 and later   |
| ecipientInfo_CreateWithSubjKeyID`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSRecipient                 | MXR         | 3.7 and later   |
| Info_CreateWithSubjKeyIDFromCert`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSRecipientInfo_Destroy``   | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSRecipientInfo_Encode``    | MXR         | 3.8 and later   |
+------------------------------------+-------------+-----------------+
| ``NS                               | MXR         | 3.8 and later   |
| S_CMSRecipientInfo_GetCertAndKey`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NS                               | MXR         | 3.7.2 and later |
| S_CMSRecipientInfo_UnwrapBulkKey`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``                                 | MXR         | 3.7.2 and later |
| NSS_CMSRecipientInfo_WrapBulkKey`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSSignedData_AddCertChain`` | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSSignedData_AddCertList``  | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``                                 | MXR         | 3.2 and later   |
| NSS_CMSSignedData_AddCertificate`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSSignedData_AddDigest``    | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| `                                  | MXR         | 3.2 and later   |
| `NSS_CMSSignedData_AddSignerInfo`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSSignedData_Create``       | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``N                                | MXR         | 3.2 and later   |
| SS_CMSSignedData_CreateCertsOnly`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSSignedData_Destroy``      | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``                                 | MXR         | 3.2 and later   |
| NSS_CMSSignedData_GetContentInfo`` |             |                 |
+------------------------------------+-------------+-----------------+
| `                                  | MXR         | 3.2 and later   |
| `NSS_CMSSignedData_GetDigestAlgs`` |             |                 |
+------------------------------------+-------------+-----------------+
| `                                  | MXR         | 3.2 and later   |
| `NSS_CMSSignedData_GetSignerInfo`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSSignedData_HasDigests``   | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSSignedData_ImportCerts``  | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSSignedData_SetDigests``   | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``                                 | MXR         | 3.4 and later   |
| NSS_CMSSignedData_SetDigestValue`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``N                                | MXR         | 3.2 and later   |
| SS_CMSSignedData_SignerInfoCount`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``N                                | MXR         | 3.2 and later   |
| SS_CMSSignedData_VerifyCertsOnly`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NS                               | MXR         | 3.2 and later   |
| S_CMSSignedData_VerifySignerInfo`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMS                          | MXR         | 3.6 and later   |
| SignerInfo_AddMSSMIMEEncKeyPrefs`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSSignerInfo_AddSMIMECaps`` | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_C                            | MXR         | 3.2 and later   |
| MSSignerInfo_AddSMIMEEncKeyPrefs`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``                                 | MXR         | 3.2 and later   |
| NSS_CMSSignerInfo_AddSigningTime`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSSignerInfo_Create``       | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_C                            | MXR         | 3.6 and later   |
| MSSignerInfo_CreateWithSubjKeyID`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSSignerInfo_Destroy``      | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSSignerInfo_GetCertList``  | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_C                            | MXR         | 3.2 and later   |
| MSSignerInfo_GetSignerCommonName`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMS                          | MXR         | 3.2 and later   |
| SignerInfo_GetSignerEmailAddress`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMS                          | MXR         | 3.2 and later   |
| SignerInfo_GetSigningCertificate`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``                                 | MXR         | 3.2 and later   |
| NSS_CMSSignerInfo_GetSigningTime`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMS                          | MXR         | 3.2 and later   |
| SignerInfo_GetVerificationStatus`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSSignerInfo_GetVersion``   | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CMSSignerInfo_IncludeCerts`` | MXR         | 3.2 and later   |
+------------------------------------+-------------+-----------------+
| ``NSS_CM                           | MXR         | 3.2 and later   |
| SUtil_VerificationStatusToString`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_                             | MXR         | 3.4 and later   |
| SMIMESignerInfo_SaveSMIMEProfile`` |             |                 |
+------------------------------------+-------------+-----------------+
| ``NSS_SM                           | MXR         | 3.2 and later   |
| IMEUtil_FindBulkAlgForRecipients`` |             |                 |
+------------------------------------+-------------+-----------------+