=================
OLD SSL Reference
=================
--- title: OLD SSL Reference slug:
Mozilla/Projects/NSS/SSL_functions/OLD_SSL_Reference tags: - NSS ---

.. _OLD_SSL_Reference:

OLD SSL Reference
=================

.. note::

   -  We are migrating this SSL Reference into the format described in
      the `MDN Style Guide </en-US/docs/Project:MDC_style_guide>`__. If
      you are inclined to help with this migration, your help would be
      very much appreciated.

   -  Upgraded documentation may be found in the `Current NSS
      Reference </NSS_reference>`__

.. _SSL_Reference:

SSL Reference
-------------

*Newsgroup:*\ `mozilla.dev.tech.crypto <news://news.mozilla.org/mozilla.dev.tech.crypto>`__\ *
Writer: Sean Cotter
Manager: Wan-Teh Chang*

.. _Chapter_1_Overview_of_an_SSL_Application:

`Chapter 1  Overview of an SSL Application <sslintro.html#1028068>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

   SSL and related APIs allow compliant applications to configure
   sockets for authenticated, tamper-proof, and encrypted
   communications. This chapter introduces some of the basic SSL
   functions. Chapter 2, "Getting Started With SSL" illustrates their
   use in sample client and server applications.

-  `Initialization <sslintro.html#1027662>`__

   -  `Initializing Caches <sslintro.html#1039943>`__

-  `Configuration <sslintro.html#1027742>`__
   ` <sslintro.html#1027816>`__
-  `Communication <sslintro.html#1027816>`__
   ` <sslintro.html#1027820>`__
-  `Functions Used by Callbacks <sslintro.html#1027820>`__
   ` <sslintro.html#1030535>`__
-  `Cleanup <sslintro.html#1030535>`__

.. _Chapter_2_Getting_Started_With_SSL:

`Chapter 2  Getting Started With SSL <gtstd.html#1005439>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

   This chapter describes how to set up your environment, including
   certificate and key databases, to run the NSS sample code. The sample
   code and makefiles are available via LXR in the SSLSamples directory.

-  `SSL, PKCS #11, and the Default Security
   Databases <gtstd.html#1011970>`__ ` <gtstd.html#1011987>`__
-  `Setting Up the Certificate and Key Databases <gtstd.html#1011987>`__

   -  `Setting Up the CA DB and Certificate <gtstd.html#1012301>`__
      ` <gtstd.html#1012351>`__
   -  `Setting Up the Server DB and Certificate <gtstd.html#1012351>`__
      ` <gtstd.html#1012067>`__
   -  `Setting Up the Client DB and Certificate <gtstd.html#1012067>`__
      ` <gtstd.html#1012108>`__
   -  `Verifying the Server and Client
      Certificates <gtstd.html#1012108>`__

-  `Building NSS Programs <gtstd.html#1013274>`__

.. _Chapter_3_Selected_SSL_Types_and_Structures:

`Chapter 3  Selected SSL Types and Structures <ssltyp.html#1029792>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

   This chapter describes some of the most important types and
   structures used with the functions described in the rest of this
   document, and how to manage the memory used for them. Additional
   types are described with the functions that use them or in the header
   files.

-  `Types and Structures <ssltyp.html#1030559>`__

   -  `CERTCertDBHandle <ssltyp.html#1028465>`__
      ` <ssltyp.html#1027387>`__
   -  `CERTCertificate <ssltyp.html#1027387>`__
      ` <ssltyp.html#1028593>`__
   -  `PK11SlotInfo <ssltyp.html#1028593>`__ ` <ssltyp.html#1026076>`__
   -  `SECItem <ssltyp.html#1026076>`__ ` <ssltyp.html#1026727>`__
   -  `SECKEYPrivateKey <ssltyp.html#1026727>`__
      ` <ssltyp.html#1026722>`__
   -  `SECStatus <ssltyp.html#1026722>`__

-  `Managing SECItem Memory <ssltyp.html#1029645>`__

   -  `SECItem_FreeItem <ssltyp.html#1030620>`__
      ` <ssltyp.html#1030773>`__
   -  `SECItem_ZfreeItem <ssltyp.html#1030773>`__

.. _Chapter_4_SSL_Functions:

`Chapter 4  SSL Functions <sslfnc.html#1047959>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

   This chapter describes the core SSL functions.

-  `SSL Initialization Functions <sslfnc.html#1022864>`__

   -  `NSS_Init <sslfnc.html#1067601>`__ ` <sslfnc.html#1237143>`__
   -  `NSS_InitReadWrite <sslfnc.html#1237143>`__
      ` <sslfnc.html#1234224>`__
   -  `NSS_NoDB_Init <sslfnc.html#1234224>`__ ` <sslfnc.html#1068466>`__
   -  `SSL_OptionSetDefault <sslfnc.html#1068466>`__
      ` <sslfnc.html#1204897>`__
   -  `SSL_OptionGetDefault <sslfnc.html#1204897>`__
      ` <sslfnc.html#1084747>`__
   -  `SSL_CipherPrefSetDefault <sslfnc.html#1084747>`__
      ` <sslfnc.html#1208119>`__
   -  `SSL_CipherPrefGetDefault <sslfnc.html#1208119>`__
      ` <sslfnc.html#1138601>`__
   -  `SSL_ClearSessionCache <sslfnc.html#1138601>`__
      ` <sslfnc.html#1143851>`__
   -  `SSL_ConfigServerSessionIDCache <sslfnc.html#1143851>`__

-  `Initializing Multi-Processing with a Shared SSL Server
   Cache <sslfnc.html#1154189>`__

   -  `SSL_ConfigMPServerSIDCache <sslfnc.html#1142625>`__
      ` <sslfnc.html#1162055>`__
   -  `SSL_InheritMPServerSIDCache <sslfnc.html#1162055>`__

-  `SSL Export Policy Functions <sslfnc.html#1098841>`__

   -  `NSS_SetDomesticPolicy <sslfnc.html#1228530>`__
      ` <sslfnc.html#1100285>`__
   -  `NSS_SetExportPolicy <sslfnc.html#1100285>`__
      ` <sslfnc.html#1105952>`__
   -  `NSS_SetFrancePolicy <sslfnc.html#1105952>`__
      ` <sslfnc.html#1104647>`__
   -  `SSL_CipherPolicySet <sslfnc.html#1104647>`__
      ` <sslfnc.html#1210463>`__
   -  `SSL_CipherPolicyGet <sslfnc.html#1210463>`__

-  `SSL Configuration Functions <sslfnc.html#1163855>`__

   -  `SSL Configuration <sslfnc.html#1090577>`__

      -  `SSL_ImportFD <sslfnc.html#1085950>`__
         ` <sslfnc.html#1086543>`__
      -  `SSL_OptionSet <sslfnc.html#1086543>`__
         ` <sslfnc.html#1194921>`__
      -  `SSL_OptionGet <sslfnc.html#1194921>`__
         ` <sslfnc.html#1214758>`__
      -  `SSL_CipherPrefSet <sslfnc.html#1214758>`__
         ` <sslfnc.html#1214800>`__
      -  `SSL_CipherPrefGet <sslfnc.html#1214800>`__
         ` <sslfnc.html#1217647>`__
      -  `SSL_ConfigSecureServer <sslfnc.html#1217647>`__
         ` <sslfnc.html#1087792>`__
      -  `SSL_SetURL <sslfnc.html#1087792>`__ ` <sslfnc.html#1088040>`__
      -  `SSL_SetPKCS11PinArg <sslfnc.html#1088040>`__

   -  `Callback Configuration <sslfnc.html#1089578>`__

      -  `SSL_AuthCertificateHook <sslfnc.html#1088805>`__
         ` <sslfnc.html#1088888>`__
      -  `SSL_AuthCertificate <sslfnc.html#1088888>`__
         ` <sslfnc.html#1088928>`__
      -  `SSL_BadCertHook <sslfnc.html#1088928>`__
         ` <sslfnc.html#1126622>`__
      -  `SSL_GetClientAuthDataHook <sslfnc.html#1126622>`__
         ` <sslfnc.html#1106762>`__
      -  `NSS_GetClientAuthData <sslfnc.html#1106762>`__
         ` <sslfnc.html#1112702>`__
      -  `SSL_HandshakeCallback <sslfnc.html#1112702>`__

-  `SSL Communication Functions <sslfnc.html#1127321>`__

   -  `SSL_InvalidateSession <sslfnc.html#1089420>`__
      ` <sslfnc.html#1092785>`__
   -  `SSL_DataPending <sslfnc.html#1092785>`__
      ` <sslfnc.html#1092805>`__
   -  `SSL_SecurityStatus <sslfnc.html#1092805>`__
      ` <sslfnc.html#1092869>`__
   -  `SSL_GetSessionID <sslfnc.html#1092869>`__
      ` <sslfnc.html#1124562>`__
   -  `SSL_SetSockPeerID <sslfnc.html#1124562>`__

-  `SSL Functions Used by Callbacks <sslfnc.html#1127893>`__

   -  `SSL_PeerCertificate <sslfnc.html#1096168>`__
      ` <sslfnc.html#1081175>`__
   -  `SSL_RevealURL <sslfnc.html#1081175>`__ ` <sslfnc.html#1123385>`__
   -  `SSL_RevealPinArg <sslfnc.html#1123385>`__

-  `SSL Handshake Functions <sslfnc.html#1061582>`__

   -  `SSL_ForceHandshake <sslfnc.html#1133431>`__
      ` <sslfnc.html#1232052>`__
   -  `SSL_ReHandshake <sslfnc.html#1232052>`__
      ` <sslfnc.html#1058001>`__
   -  `SSL_ResetHandshake <sslfnc.html#1058001>`__

-  `NSS Shutdown Function <sslfnc.html#1095840>`__

   -  `NSS_Shutdown <sslfnc.html#1061858>`__

-  `Deprecated Functions <sslfnc.html#1198429>`__

   -  `SSL_EnableDefault <sslfnc.html#1206365>`__
      ` <sslfnc.html#1220189>`__
   -  `SSL_Enable <sslfnc.html#1220189>`__ ` <sslfnc.html#1207298>`__
   -  `SSL_EnableCipher <sslfnc.html#1207298>`__
      ` <sslfnc.html#1207350>`__
   -  `SSL_SetPolicy <sslfnc.html#1207350>`__ ` <sslfnc.html#1231825>`__
   -  `SSL_RedoHandshake <sslfnc.html#1231825>`__

.. _Chapter_5_Certificate_Functions:

`Chapter 5  Certificate Functions <sslcrt.html#1047959>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

   This chapter describes the functions and related types used to work
   with a certificate database such as the cert7.db database provided
   with Communicator.

-  `Validating Certificates <sslcrt.html#1060423>`__

   -  `CERT_VerifyCertNow <sslcrt.html#1058011>`__
      ` <sslcrt.html#1050342>`__
   -  `CERT_VerifyCertName <sslcrt.html#1050342>`__
      ` <sslcrt.html#1056662>`__
   -  `CERT_CheckCertValidTimes <sslcrt.html#1056662>`__
      ` <sslcrt.html#1056760>`__
   -  `NSS_CmpCertChainWCANames <sslcrt.html#1056760>`__

-  `Manipulating Certificates <sslcrt.html#1056436>`__

   -  `CERT_DupCertificate <sslcrt.html#1058344>`__
      ` <sslcrt.html#1050532>`__
   -  `CERT_DestroyCertificate <sslcrt.html#1050532>`__

-  `Getting Certificate Information <sslcrt.html#1056475>`__

   -  `CERT_FindCertByName <sslcrt.html#1050345>`__
      ` <sslcrt.html#1050346>`__
   -  `CERT_GetCertNicknames <sslcrt.html#1050346>`__
      ` <sslcrt.html#1050349>`__
   -  `CERT_FreeNicknames <sslcrt.html#1050349>`__
      ` <sslcrt.html#1052308>`__
   -  `CERT_GetDefaultCertDB <sslcrt.html#1052308>`__
      ` <sslcrt.html#1056950>`__
   -  `NSS_FindCertKEAType <sslcrt.html#1056950>`__

-  `Comparing SecItem Objects <sslcrt.html#1055384>`__

   -  `SECITEM_CompareItem <sslcrt.html#1057028>`__

.. _Chapter_6_Key_Functions:

`Chapter 6  Key Functions <sslkey.html#1047959>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

   This chapter describes two functions used to manipulate private keys
   and key databases such as the key3.db database provided with
   Communicator.

-  `SECKEY_GetDefaultKeyDB <sslkey.html#1051479>`__
   ` <sslkey.html#1051017>`__
-  `SECKEY_DestroyPrivateKey <sslkey.html#1051017>`__

.. _Chapter_7_PKCS_11_Functions:

`Chapter 7  PKCS #11 Functions <pkfnc.html#1027946>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

   This chapter describes the core PKCS #11 functions that an
   application needs for communicating with cryptographic modules. In
   particular, these functions are used for obtaining certificates,
   keys, and passwords.

-  `PK11_FindCertFromNickname <pkfnc.html#1035673>`__
   ` <pkfnc.html#1026891>`__
-  `PK11_FindKeyByAnyCert <pkfnc.html#1026891>`__
   ` <pkfnc.html#1030779>`__
-  `PK11_GetSlotName <pkfnc.html#1030779>`__ ` <pkfnc.html#1026964>`__
-  `PK11_GetTokenName <pkfnc.html#1026964>`__ ` <pkfnc.html#1026762>`__
-  `PK11_IsHW <pkfnc.html#1026762>`__ ` <pkfnc.html#1022948>`__
-  `PK11_IsPresent <pkfnc.html#1022948>`__ ` <pkfnc.html#1022991>`__
-  `PK11_IsReadOnly <pkfnc.html#1022991>`__ ` <pkfnc.html#1023128>`__
-  `PK11_SetPasswordFunc <pkfnc.html#1023128>`__

.. _Chapter_8_NSS_and_SSL_Error_Codes:

`Chapter 8  NSS and SSL Error Codes <sslerr.html#1013897>`__
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

   NSS error codes are retrieved using the NSPR function PR_GetError. In
   addition to the error codes defined by NSPR, PR_GetError retrieves
   the error codes described in this chapter.

-  `SSL Error Codes <sslerr.html#1040263>`__ ` <sslerr.html#1039257>`__
-  `SEC Error Codes <sslerr.html#1039257>`__
