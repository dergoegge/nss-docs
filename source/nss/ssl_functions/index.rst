.. _Mozilla_Projects_NSS_SSL_functions:

=============
SSL functions
=============
The public functions listed here are used to configure sockets for communication via the SSL and TLS
protocols. In addition to the functions listed here, applications that support SSL use some of the
Certificate functions, Crypto functions, and Utility functions described below on this page.

Other sources of information:

-  The `NSS_reference </en-US/docs/NSS_reference>`__ documents the functions most commonly used by
   applications to support SSL.
-  The `NSS </en-US/docs/NSS>`__ home page links to additional SSL documentation.

If documentation is available for a function listed below, the function name is linked to either its
MDC wiki page or its entry in the `old SSL
Reference </en-US/docs/Mozilla/Projects/NSS/SSL_functions/OLD_SSL_Reference>`__. The `Mozilla Cross
Reference <https://dxr.mozilla.org/>`__ (DXR) link for each function provides access to the function
definition, prototype definition, and source code references. The NSS version column indicates which
versions of NSS support the function.

+-----------------------------------------------------------------+-------------+------------------+
| Function name/documentation                                     | Source code | NSS versions     |
+-----------------------------------------------------------------+-------------+------------------+
| ```NSS_GetClientAuthData`` </en-US/                             | MXR         | 3.2 and later    |
| docs/Mozilla/Projects/NSS/SSL_functions/sslfnc.html#1106762>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ```NSS_                                                         | MXR         | 3.2 and later    |
| SetDomesticPolicy`` </NSS/SSL_functions/sslfnc.html#1228530>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ```NS                                                           | MXR         | 3.2 and later    |
| S_SetExportPolicy`` </NSS/SSL_functions/sslfnc.html#1100285>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ``NSS_SetFrancePolicy``                                         | MXR         | 3.2 and later    |
+-----------------------------------------------------------------+-------------+------------------+
| ``NSSSSL_VersionCheck``                                         | MXR         | 3.2.1 and later  |
+-----------------------------------------------------------------+-------------+------------------+
| ```SS                                                           | MXR         | 3.2 and later    |
| L_AuthCertificate`` </NSS/SSL_functions/sslfnc.html#1088888>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ```SSL_Au                                                       | MXR         | 3.2 and later    |
| thCertificateHook`` </NSS/SSL_functions/sslfnc.html#1088805>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| `                                                               | MXR         | 3.2 and later    |
| ``SSL_BadCertHook`` </NSS/SSL_functions/sslfnc.html#1088928>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ``SSL_CertDBHandleSet``                                         | MXR         | 3.2 and later    |
+-----------------------------------------------------------------+-------------+------------------+
| ``SSL_Canbypass``                                               | MXR         | 3.11.7 and later |
+-----------------------------------------------------------------+-------------+------------------+
| ```SS                                                           | MXR         | 3.2 and later    |
| L_CipherPolicyGet`` </NSS/SSL_functions/sslfnc.html#1210463>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ```SS                                                           | MXR         | 3.2 and later    |
| L_CipherPolicySet`` </NSS/SSL_functions/sslfnc.html#1104647>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ```                                                             | MXR         | 3.2 and later    |
| SSL_CipherPrefGet`` </NSS/SSL_functions/sslfnc.html#1214800>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ```SSL_Cip                                                      | MXR         | 3.2 and later    |
| herPrefGetDefault`` </NSS/SSL_functions/sslfnc.html#1208119>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ```                                                             | MXR         | 3.2 and later    |
| SSL_CipherPrefSet`` </NSS/SSL_functions/sslfnc.html#1214758>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ```SSL_Cip                                                      | MXR         | 3.2 and later    |
| herPrefSetDefault`` </NSS/SSL_functions/sslfnc.html#1084747>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ```SSL_                                                         | MXR         | 3.2 and later    |
| ClearSessionCache`` </NSS/SSL_functions/sslfnc.html#1138601>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ```SSL_Confi                                                    | MXR         | 3.2 and later    |
| gMPServerSIDCache`` </NSS/SSL_functions/sslfnc.html#1142625>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ```SSL_C                                                        | MXR         | 3.2 and later    |
| onfigSecureServer`` </NSS/SSL_functions/sslfnc.html#1217647>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ```SSL_ConfigSer                                                | MXR         | 3.2 and later    |
| verSessionIDCache`` </NSS/SSL_functions/sslfnc.html#1143851>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| `                                                               | MXR         | 3.2 and later    |
| ``SSL_DataPending`` </NSS/SSL_functions/sslfnc.html#1142625>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ```S                                                            | MXR         | 3.2 and later    |
| SL_ForceHandshake`` </NSS/SSL_functions/sslfnc.html#1133431>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ``SSL_ForceHandshakeWithTimeout``                               | MXR         | 3.11.4 and later |
+-----------------------------------------------------------------+-------------+------------------+
| ``SSL_GetChannelInfo``                                          | MXR         | 3.4 and later    |
+-----------------------------------------------------------------+-------------+------------------+
| ``SSL_GetCipherSuiteInfo``                                      | MXR         | 3.4 and later    |
+-----------------------------------------------------------------+-------------+------------------+
| ```SSL_GetC                                                     | MXR         | 3.2 and later    |
| lientAuthDataHook`` </NSS/SSL_functions/sslfnc.html#1126622>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ``SSL_GetMaxServerCacheLocks``                                  | MXR         | 3.4 and later    |
+-----------------------------------------------------------------+-------------+------------------+
| ``                                                              | MXR         | 3.2 and later    |
| `SSL_GetSessionID`` </NSS/SSL_functions/sslfnc.html#1092869>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ``SSL_GetStatistics``                                           | MXR         | 3.2 and later    |
+-----------------------------------------------------------------+-------------+------------------+
| ```SSL_                                                         | MXR         | 3.2 and later    |
| HandshakeCallback`` </NSS/SSL_functions/sslfnc.html#1112702>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ```SSL_ImportFD`` </NSS/SSL_functions/sslfnc.html#1085950>`__   | MXR         | 3.2 and later    |
+-----------------------------------------------------------------+-------------+------------------+
| ```SSL_Inheri                                                   | MXR         | 3.2 and later    |
| tMPServerSIDCache`` </NSS/SSL_functions/sslfnc.html#1162055>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ```SSL_                                                         | MXR         | 3.2 and later    |
| InvalidateSession`` </NSS/SSL_functions/sslfnc.html#1089420>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ``SSL_LocalCertificate``                                        | MXR         | 3.4 and later    |
+-----------------------------------------------------------------+-------------+------------------+
| ```SSL_OptionGet`` </NSS/SSL_functions/sslfnc.html#1194921>`__  | MXR         | 3.2 and later    |
+-----------------------------------------------------------------+-------------+------------------+
| ```SSL                                                          | MXR         | 3.2 and later    |
| _OptionGetDefault`` </NSS/SSL_functions/sslfnc.html#1204897>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ```SSL_OptionSet`` </NSS/SSL_functions/sslfnc.html#1086543>`__  | MXR         | 3.2 and later    |
+-----------------------------------------------------------------+-------------+------------------+
| ```SSL                                                          | MXR         | 3.2 and later    |
| _OptionSetDefault`` </NSS/SSL_functions/sslfnc.html#1068466>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ```SS                                                           | MXR         | 3.2 and later    |
| L_PeerCertificate`` </NSS/SSL_functions/sslfnc.html#1096168>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ``SSL_PreencryptedFileToStream``                                | MXR         | 3.2 and later    |
+-----------------------------------------------------------------+-------------+------------------+
| ``SSL_PreencryptedStreamToFile``                                | MXR         | 3.2 and later    |
+-----------------------------------------------------------------+-------------+------------------+
| `                                                               | MXR         | 3.2 and later    |
| ``SSL_ReHandshake`` </NSS/SSL_functions/sslfnc.html#1232052>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ``SSL_ReHandshakeWithTimeout``                                  | MXR         | 3.11.4 and later |
+-----------------------------------------------------------------+-------------+------------------+
| ```S                                                            | MXR         | 3.2 and later    |
| SL_ResetHandshake`` </NSS/SSL_functions/sslfnc.html#1058001>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ``SSL_RestartHandshakeAfterCertReq``                            | MXR         | 3.2 and later    |
+-----------------------------------------------------------------+-------------+------------------+
| ``SSL_RestartHandshakeAfterServerCert``                         | MXR         | 3.2 and later    |
+-----------------------------------------------------------------+-------------+------------------+
| ``SSL_RevealCert``                                              | MXR         | 3.2 and later    |
+-----------------------------------------------------------------+-------------+------------------+
| ``                                                              | MXR         | 3.2 and later    |
| `SSL_RevealPinArg`` </NSS/SSL_functions/sslfnc.html#1123385>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ```SSL_RevealURL`` </NSS/SSL_functions/sslfnc.html#1081175>`__  | MXR         | 3.2 and later    |
+-----------------------------------------------------------------+-------------+------------------+
| ```S                                                            | MXR         | 3.2 and later    |
| SL_SecurityStatus`` </NSS/SSL_functions/sslfnc.html#1092805>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ``SSL_SetMaxServerCacheLocks``                                  | MXR         | 3.4 and later    |
+-----------------------------------------------------------------+-------------+------------------+
| ```SS                                                           | MXR         | 3.2 and later    |
| L_SetPKCS11PinArg`` </NSS/SSL_functions/sslfnc.html#1088040>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ```                                                             | MXR         | 3.2 and later    |
| SSL_SetSockPeerID`` </NSS/SSL_functions/sslfnc.html#1124562>`__ |             |                  |
+-----------------------------------------------------------------+-------------+------------------+
| ```SSL_SetURL`` </NSS/SSL_functions/sslfnc.html#1087792>`__     | MXR         | 3.2 and later    |
+-----------------------------------------------------------------+-------------+------------------+
| ``SSL_ShutdownServerSessionIDCache``                            | MXR         | 3.7.4 and later  |
+-----------------------------------------------------------------+-------------+------------------+