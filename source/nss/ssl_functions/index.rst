=============
SSL functions
=============
The public functions listed here are used to configure sockets for
communication via the SSL and TLS protocols. In addition to the
functions listed here, applications that support SSL use some of the
Certificate functions, Crypto functions, and Utility functions described
below on this page.

Other sources of information:

-  The `NSS_reference </en-US/docs/NSS_reference>`__ documents the
   functions most commonly used by applications to support SSL.
-  The `NSS </en-US/docs/NSS>`__ home page links to additional SSL
   documentation.

If documentation is available for a function listed below, the function
name is linked to either its MDC wiki page or its entry in the `old SSL
Reference </en-US/docs/Mozilla/Projects/NSS/SSL_functions/OLD_SSL_Reference>`__.
The `Mozilla Cross Reference <https://dxr.mozilla.org/>`__ (DXR) link
for each function provides access to the function definition, prototype
definition, and source code references. The NSS version column indicates
which versions of NSS support the function.

+-----------------------------------+-------------+------------------+
| Function name/documentation       | Source code | NSS versions     |
+-----------------------------------+-------------+------------------+
| ```NSS_GetClientAuthData`` </en-  | MXR         | 3.2 and later    |
| US/docs/Mozilla/Projects/NSS/SSL_ |             |                  |
| functions/sslfnc.html#1106762>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ```N                              | MXR         | 3.2 and later    |
| SS_SetDomesticPolicy`` </NSS/SSL_ |             |                  |
| functions/sslfnc.html#1228530>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ``                                | MXR         | 3.2 and later    |
| `NSS_SetExportPolicy`` </NSS/SSL_ |             |                  |
| functions/sslfnc.html#1100285>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ``NSS_SetFrancePolicy``           | MXR         | 3.2 and later    |
+-----------------------------------+-------------+------------------+
| ``NSSSSL_VersionCheck``           | MXR         | 3.2.1 and later  |
+-----------------------------------+-------------+------------------+
| ``                                | MXR         | 3.2 and later    |
| `SSL_AuthCertificate`` </NSS/SSL_ |             |                  |
| functions/sslfnc.html#1088888>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ```SSL                            | MXR         | 3.2 and later    |
| _AuthCertificateHook`` </NSS/SSL_ |             |                  |
| functions/sslfnc.html#1088805>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ```SSL_BadCertHook`` </NSS/SSL_   | MXR         | 3.2 and later    |
| functions/sslfnc.html#1088928>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ``SSL_CertDBHandleSet``           | MXR         | 3.2 and later    |
+-----------------------------------+-------------+------------------+
| ``SSL_Canbypass``                 | MXR         | 3.11.7 and later |
+-----------------------------------+-------------+------------------+
| ``                                | MXR         | 3.2 and later    |
| `SSL_CipherPolicyGet`` </NSS/SSL_ |             |                  |
| functions/sslfnc.html#1210463>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ``                                | MXR         | 3.2 and later    |
| `SSL_CipherPolicySet`` </NSS/SSL_ |             |                  |
| functions/sslfnc.html#1104647>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ```SSL_CipherPrefGet`` </NSS/SSL_ | MXR         | 3.2 and later    |
| functions/sslfnc.html#1214800>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ```SSL_                           | MXR         | 3.2 and later    |
| CipherPrefGetDefault`` </NSS/SSL_ |             |                  |
| functions/sslfnc.html#1208119>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ```SSL_CipherPrefSet`` </NSS/SSL_ | MXR         | 3.2 and later    |
| functions/sslfnc.html#1214758>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ```SSL_                           | MXR         | 3.2 and later    |
| CipherPrefSetDefault`` </NSS/SSL_ |             |                  |
| functions/sslfnc.html#1084747>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ```S                              | MXR         | 3.2 and later    |
| SL_ClearSessionCache`` </NSS/SSL_ |             |                  |
| functions/sslfnc.html#1138601>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ```SSL_Co                         | MXR         | 3.2 and later    |
| nfigMPServerSIDCache`` </NSS/SSL_ |             |                  |
| functions/sslfnc.html#1142625>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ```SS                             | MXR         | 3.2 and later    |
| L_ConfigSecureServer`` </NSS/SSL_ |             |                  |
| functions/sslfnc.html#1217647>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ```SSL_Config                     | MXR         | 3.2 and later    |
| ServerSessionIDCache`` </NSS/SSL_ |             |                  |
| functions/sslfnc.html#1143851>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ```SSL_DataPending`` </NSS/SSL_   | MXR         | 3.2 and later    |
| functions/sslfnc.html#1142625>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| `                                 | MXR         | 3.2 and later    |
| ``SSL_ForceHandshake`` </NSS/SSL_ |             |                  |
| functions/sslfnc.html#1133431>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ``SSL_ForceHandshakeWithTimeout`` | MXR         | 3.11.4 and later |
+-----------------------------------+-------------+------------------+
| ``SSL_GetChannelInfo``            | MXR         | 3.4 and later    |
+-----------------------------------+-------------+------------------+
| ``SSL_GetCipherSuiteInfo``        | MXR         | 3.4 and later    |
+-----------------------------------+-------------+------------------+
| ```SSL_G                          | MXR         | 3.2 and later    |
| etClientAuthDataHook`` </NSS/SSL_ |             |                  |
| functions/sslfnc.html#1126622>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ``SSL_GetMaxServerCacheLocks``    | MXR         | 3.4 and later    |
+-----------------------------------+-------------+------------------+
| ```SSL_GetSessionID`` </NSS/SSL_  | MXR         | 3.2 and later    |
| functions/sslfnc.html#1092869>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ``SSL_GetStatistics``             | MXR         | 3.2 and later    |
+-----------------------------------+-------------+------------------+
| ```S                              | MXR         | 3.2 and later    |
| SL_HandshakeCallback`` </NSS/SSL_ |             |                  |
| functions/sslfnc.html#1112702>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ```SSL_ImportFD`` </NSS/SSL_      | MXR         | 3.2 and later    |
| functions/sslfnc.html#1085950>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ```SSL_Inh                        | MXR         | 3.2 and later    |
| eritMPServerSIDCache`` </NSS/SSL_ |             |                  |
| functions/sslfnc.html#1162055>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ```S                              | MXR         | 3.2 and later    |
| SL_InvalidateSession`` </NSS/SSL_ |             |                  |
| functions/sslfnc.html#1089420>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ``SSL_LocalCertificate``          | MXR         | 3.4 and later    |
+-----------------------------------+-------------+------------------+
| ```SSL_OptionGet`` </NSS/SSL_     | MXR         | 3.2 and later    |
| functions/sslfnc.html#1194921>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ```                               | MXR         | 3.2 and later    |
| SSL_OptionGetDefault`` </NSS/SSL_ |             |                  |
| functions/sslfnc.html#1204897>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ```SSL_OptionSet`` </NSS/SSL_     | MXR         | 3.2 and later    |
| functions/sslfnc.html#1086543>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ```                               | MXR         | 3.2 and later    |
| SSL_OptionSetDefault`` </NSS/SSL_ |             |                  |
| functions/sslfnc.html#1068466>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ``                                | MXR         | 3.2 and later    |
| `SSL_PeerCertificate`` </NSS/SSL_ |             |                  |
| functions/sslfnc.html#1096168>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ``SSL_PreencryptedFileToStream``  | MXR         | 3.2 and later    |
+-----------------------------------+-------------+------------------+
| ``SSL_PreencryptedStreamToFile``  | MXR         | 3.2 and later    |
+-----------------------------------+-------------+------------------+
| ```SSL_ReHandshake`` </NSS/SSL_   | MXR         | 3.2 and later    |
| functions/sslfnc.html#1232052>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ``SSL_ReHandshakeWithTimeout``    | MXR         | 3.11.4 and later |
+-----------------------------------+-------------+------------------+
| `                                 | MXR         | 3.2 and later    |
| ``SSL_ResetHandshake`` </NSS/SSL_ |             |                  |
| functions/sslfnc.html#1058001>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ``S                               | MXR         | 3.2 and later    |
| SL_RestartHandshakeAfterCertReq`` |             |                  |
+-----------------------------------+-------------+------------------+
| ``SSL_                            | MXR         | 3.2 and later    |
| RestartHandshakeAfterServerCert`` |             |                  |
+-----------------------------------+-------------+------------------+
| ``SSL_RevealCert``                | MXR         | 3.2 and later    |
+-----------------------------------+-------------+------------------+
| ```SSL_RevealPinArg`` </NSS/SSL_  | MXR         | 3.2 and later    |
| functions/sslfnc.html#1123385>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ```SSL_RevealURL`` </NSS/SSL_     | MXR         | 3.2 and later    |
| functions/sslfnc.html#1081175>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| `                                 | MXR         | 3.2 and later    |
| ``SSL_SecurityStatus`` </NSS/SSL_ |             |                  |
| functions/sslfnc.html#1092805>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ``SSL_SetMaxServerCacheLocks``    | MXR         | 3.4 and later    |
+-----------------------------------+-------------+------------------+
| ``                                | MXR         | 3.2 and later    |
| `SSL_SetPKCS11PinArg`` </NSS/SSL_ |             |                  |
| functions/sslfnc.html#1088040>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ```SSL_SetSockPeerID`` </NSS/SSL_ | MXR         | 3.2 and later    |
| functions/sslfnc.html#1124562>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ```SSL_SetURL`` </NSS/SSL_        | MXR         | 3.2 and later    |
| functions/sslfnc.html#1087792>`__ |             |                  |
+-----------------------------------+-------------+------------------+
| ``S                               | MXR         | 3.7.4 and later  |
| SL_ShutdownServerSessionIDCache`` |             |                  |
+-----------------------------------+-------------+------------------+