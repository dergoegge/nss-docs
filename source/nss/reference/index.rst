.. _Mozilla_Projects_NSS_Reference:

=============
NSS reference
=============
.. _Initial_Notes:

Initial Notes
~~~~~~~~~~~~~

.. note::

   -  We are migrating the `SSL Reference </NSS/SSL_functions/OLD_SSL_Reference>`__ into the format
      described in the `MDN Style Guide </en-US/docs/Project:MDC_style_guide>`__. If you are
      inclined to help with this migration, your help would be very much appreciated.

   -  The proposed chapters below are based on the chapters of the `SSL
      Reference </NSS/SSL_functions/OLD_SSL_Reference>`__ and the categories of functions in `NSS
      Public Functions </en-US/docs/NSS_functions>`__.

   -  Should a particular page require the use of an underscore, please see the documentation for
      the `Title Override Extension </Project:En/MDC_style_guide#Title_Override_Extension>`__.

.. _Building_and_installing_NSS:

`Building and installing NSS </en-US/NSS_reference/Building_and_installing_NSS>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _Overview_of_an_NSS_application:

Overview of an NSS application
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Based on `"Overview of an SSL Application" </en-US/docs/NSS/SSL_functions/sslintro.html>`__ in the
SSL Reference.

.. _Getting_started_with_NSS:

Getting started with NSS
~~~~~~~~~~~~~~~~~~~~~~~~

Based on `"Getting Started With SSL" </en-US/docs/NSS/SSL_functions/gtstd.html>`__ in the SSL
Reference.

.. _Data_types:

Data types
~~~~~~~~~~

Based on `"Selected SSL Types and Structures" </en-US/docs/NSS/SSL_functions/ssltyp.html>`__ in the
SSL Reference.

.. _NSS_initialization_and_shutdown:

NSS initialization and shutdown
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  NSS_Init
-  NSS_InitReadWrite
-  NSS_NoDB_Init
-  `NSS_Initialize </en-US/NSS_Initialize>`__
-  NSS_Shutdown

.. _Utility_functions:

Utility functions
~~~~~~~~~~~~~~~~~

Based on `"Utility Functions" </en-US/docs/NSS_functions#Utility_functions>`__ in NSS Public
Functions.

.. _Certificate_functions:

Certificate functions
~~~~~~~~~~~~~~~~~~~~~

Based on `Certificate Functions </en-US/docs/NSS/SSL_functions/sslcrt.html>`__ in the SSL Reference
and `"Certificate Functions" </en-US/docs/NSS_functions#Certificate_functions>`__ in NSS Public
Functions.

-  `Validating Certificates </en-US/NSS_Certificate_Functions#Validating_Certificates>`__

   -  `CERT_VerifyCertNow </en-US/NSS_Certificate_Functions#CERT_VerifyCertNow>`__
   -  `CERT_VerifyCert </en-US/NSS_Certificate_Functions#CERT_VerifyCert>`__
   -  `CERT_VerifyCertName </en-US/NSS_Certificate_Functions#CERT_VerifyCertName>`__
   -  `CERT_CheckCertValidTimes </en-US/NSS_Certificate_Functions#CERT_CheckCertValidTimes>`__
   -  `NSS_CmpCertChainWCANames </en-US/NSS_Certificate_Functions#NSS_CmpCertChainWCANames>`__

-  `Manipulating Certificates </en-US/NSS_Certificate_Functions#Manipulating_Certificates>`__

   -  `CERT_DupCertificate </en-US/NSS_Certificate_Functions#CERT_DupCertificate>`__
   -  `CERT_DestroyCertificate </en-US/NSS_Certificate_Functions#CERT_DestroyCertificate>`__
   -  SEC_DeletePermCertificate
   -  \__CERT_ClosePermCertDB

-  `Getting Certificate
   Information </en-US/NSS_Certificate_Functions#Getting_Certificate_Information>`__

   -  `CERT_FindCertByName </en-US/NSS_Certificate_Functions#CERT_FindCertByName>`__
   -  `CERT_GetCertNicknames </en-US/NSS_Certificate_Functions#CERT_GetCertNicknames>`__
   -  `CERT_FreeNicknames </en-US/NSS_Certificate_Functions#CERT_FreeNicknames>`__
   -  `CERT_GetDefaultCertDB </en-US/NSS_Certificate_Functions#CERT_GetDefaultCertDB>`__
   -  `NSS_FindCertKEAType </en-US/NSS_Certificate_Functions#NSS_FindCertKEAType>`__

-  `Comparing SecItem Objects </en-US/NSS_Certificate_Functions#Comparing_SecItem_Objects>`__

   -  `SECITEM_CompareItem </en-US/NSS_Certificate_Functions#SECITEM_CompareItem>`__

.. _Key_functions:

Key functions
~~~~~~~~~~~~~

`Key Functions </en-US/NSS_Key_Functions>`__

-  `SECKEY_GetDefaultKeyDB </en-US/NSS_Key_Functions#SECKEY_GetDefaultKeyDB>`__
-  `SECKEY_DestroyPrivateKey </en-US/NSS_Key_Functions#SECKEY_DestroyPrivateKey>`__

.. _Digital_signatures:

Digital signatures
~~~~~~~~~~~~~~~~~~

This API consists of the routines used to perform signature generation and the routines used to
perform signature verification.

.. _Encryption.2Fdecryption:

Encryption/decryption
~~~~~~~~~~~~~~~~~~~~~

.. _Hashing:

Hashing
~~~~~~~

.. _Key_generation:

Key generation
~~~~~~~~~~~~~~

Generate keys, key pairs, and domain parameters.

.. _Random_number_generation:

Random number generation
~~~~~~~~~~~~~~~~~~~~~~~~

This API consists of the two routines used for pseudorandom number generation --
PK11_GenerateRandomOnSlot and PK11_GenerateRandom -- and the two routines used for seeding
pseudorandom number generation -- PK11_SeedRandom and PK11_RandomUpdate.

.. _PKCS_.2311_functions:

PKCS #11 functions
~~~~~~~~~~~~~~~~~~

Based on `PKCS #11 Functions </en-US/docs/NSS/SSL_functions/pkfnc.html>`__ in the SSL Reference and
`"Crypto Functions" </en-US/docs/NSS_functions#Cryptography_functions>`__ in NSS Public Functions.

-  `SECMOD_LoadUserModule </en-US/NSS_PKCS11_Functions#SECMOD_LoadUserModule>`__
-  `SECMOD_UnloadUserModule </en-US/NSS_PKCS11_Functions#SECMOD_UnloadUserModule>`__
-  `SECMOD_CloseUserDB </en-US/NSS_PKCS11_Functions#SECMOD_CloseUserDB>`__
-  `SECMOD_OpenUserDB </en-US/NSS_PKCS11_Functions#SECMOD_OpenUserDB>`__
-  `PK11_FindCertFromNickname </en-US/NSS_PKCS11_Functions#PK11_FindCertFromNickname>`__
-  `PK11_FindKeyByAnyCert </en-US/NSS_PKCS11_Functions#PK11_FindKeyByAnyCert>`__
-  `PK11_GetSlotName </en-US/NSS_PKCS11_Functions#PK11_GetSlotName>`__
-  `PK11_GetTokenName </en-US/NSS_PKCS11_Functions#PK11_GetTokenName>`__
-  `PK11_IsHW </en-US/NSS_PKCS11_Functions#PK11_IsHW>`__
-  `PK11_IsPresent </en-US/NSS_PKCS11_Functions#PK11_IsPresent>`__
-  `PK11_IsReadOnly </en-US/NSS_PKCS11_Functions#PK11_IsReadOnly>`__
-  `PK11_SetPasswordFunc </en-US/NSS_PKCS11_Functions#PK11_SetPasswordFunc>`__

.. _SSL_Functions:

SSL Functions
~~~~~~~~~~~~~

Based on `"SSL Functions" </en-US/docs/NSS/SSL_functions/sslfnc.html>`__ in the SSL Reference and
`"SSL Functions" </en-US/docs/NSS_functions#SSL_functions>`__ and `"Deprecated SSL
Functions" </en-US/docs/NSS_functions#Deprecated_SSL_functions>`__ in NSS Public Functions.

-  SSL_ConfigServerSessionIDCache
-  SSL_ClearSessionCache

.. _S.2FMIME:

S/MIME
~~~~~~

Based on the `S/MIME
Reference <https://www-archive.mozilla.org/projects/security/pki/nss/ref/smime/>`__ (which only has
one written chapter) and `"S/MIME Functions" </en-US/docs/NSS_functions#S.2FMIME_functions>`__ in
NSS Public Functions.

.. _PKCS_.237_functions:

PKCS #7 functions
~~~~~~~~~~~~~~~~~

Based on `"Archived PKCS #7 Functions
documentation." <https://www-archive.mozilla.org/projects/security/pki/nss/ref/nssfunctions.html#pkcs7>`__

.. _PKCS_.235_functions:

PKCS #5 functions
~~~~~~~~~~~~~~~~~

Password-based encryption

-  SEC_PKCS5GetIV
-  SEC_PKCS5CreateAlgorithmID
-  SEC_PKCS5GetCryptoAlgorithm
-  SEC_PKCS5GetKeyLength
-  SEC_PKCS5GetPBEAlgorithm
-  SEC_PKCS5IsAlgorithmPBEAlg

.. _PKCS_.2312_functions:

PKCS #12 functions
~~~~~~~~~~~~~~~~~~

Based on `"Archived PKCS #12 Functions
documentation." <https://www-archive.mozilla.org/projects/security/pki/nss/ref/nssfunctions.html#pkcs12>`__
Used to exchange data such as private keys and certificates between two parties.

-  SEC_PKCS12CreateExportContext
-  SEC_PKCS12CreatePasswordPrivSafe
-  SEC_PKCS12CreateUnencryptedSafe
-  SEC_PKCS12AddCertAndKey
-  SEC_PKCS12AddPasswordIntegrity
-  SEC_PKCS12EnableCipher
-  SEC_PKCS12Encode
-  SEC_PKCS12DestroyExportContext
-  SEC_PKCS12DecoderStart
-  SEC_PKCS12DecoderImportBags
-  SEC_PKCS12DecoderUpdate
-  SEC_PKCS12DecoderFinish
-  SEC_PKCS12DecoderValidateBags
-  SEC_PKCS12DecoderVerify
-  SEC_PKCS12DecoderGetCerts
-  SEC_PKCS12DecoderSetTargetTokenCAs
-  SEC_PKCS12DecoderIterateInit
-  SEC_PKCS12DecoderIterateNext
-  SEC_PKCS12IsEncryptionAllowed
-  SEC_PKCS12SetPreferredCipher

.. _NSPR_functions:

`NSPR functions </en-US/NSS_reference/NSPR_functions>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A small number of NSPR functions are required for using the certificate verification and SSL
functions in NSS.  These functions are listed in this section.

.. _Error_codes:

Error codes
~~~~~~~~~~~

Based on `"NSS and SSL Error Codes" </en-US/docs/NSS/SSL_functions/sslerr.html>`__ in the SSL
Reference.

.. _NSS_Environment_variables:

`NSS Environment variables </en-US/NSS_reference/NSS_environment_variables>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _NSS_cryptographic_module:

`NSS cryptographic module </en-US/NSS_reference/NSS_cryptographic_module>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _NSS_Tech_Notes:

NSS Tech Notes
~~~~~~~~~~~~~~

`NSS Tech Notes </en-US/docs/NSS/NSS_Tech_Notes>`__ `NSS Memory
allocation </en-US/NSS_Memory_allocation>`__

.. _Tools:

Tools
~~~~~

Based on `NSS Tools </en-US/docs/NSS/Tools>`__ documentation.

Based on `NSS Tools Man Pages : work in progress </en-US/NSS_reference/NSS_tools>`__