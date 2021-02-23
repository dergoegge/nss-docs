.. _Mozilla_Projects_NSS_Reference:

=============
NSS reference
=============
.. _Initial_Notes:

Initial Notes
~~~~~~~~~~~~~

.. note::

   -  We are migrating the `SSL
      Reference </NSS/SSL_functions/OLD_SSL_Reference>`__ into the
      format described in the `MDN Style
      Guide <https://developer.mozilla.org/en-US/docs/Project:MDC_style_guide>`__.
      If you are inclined to help with this migration, your help would
      be very much appreciated.

   -  The proposed chapters below are based on the chapters of the `SSL
      Reference </NSS/SSL_functions/OLD_SSL_Reference>`__ and the
      categories of functions in :ref:`Mozilla_Projects_NSS_functions`.

   -  Should a particular page require the use of an underscore, please
      see the documentation for the `Title Override
      Extension </Project:En/MDC_style_guide#Title_Override_Extension>`__.

.. _Building_and_installing_NSS:

:ref:`Mozilla_Projects_NSS_reference_Building_and_installing_NSS`
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _Overview_of_an_NSS_application:

Overview of an NSS application
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Based on :ref:`Mozilla_Projects_SSL_functions_sslintro_html` in the SSL
Reference.

.. _Getting_started_with_NSS:

Getting started with NSS
~~~~~~~~~~~~~~~~~~~~~~~~

Based on :ref:`Mozilla_Projects_SSL_functions_gtstd_html` in the SSL
Reference.

.. _Data_types:

Data types
~~~~~~~~~~

Based on :ref:`Mozilla_Projects_SSL_functions_ssltyp_html` in the SSL
Reference.

.. _NSS_initialization_and_shutdown:

NSS initialization and shutdown
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  NSS_Init
-  NSS_InitReadWrite
-  NSS_NoDB_Init
-  :ref:`Mozilla_Projects_NSS_Initialize`
-  NSS_Shutdown

.. _Utility_functions:

Utility functions
~~~~~~~~~~~~~~~~~

Based on :ref:`Mozilla_Projects_NSS_functions#Utility_functions` in NSS
Public Functions.

.. _Certificate_functions:

Certificate functions
~~~~~~~~~~~~~~~~~~~~~

Based on :ref:`Mozilla_Projects_SSL_functions_sslcrt_html` in the SSL
Reference and
:ref:`Mozilla_Projects_NSS_functions#Certificate_functions` in NSS
Public Functions.

-  :ref:`Mozilla_Projects_NSS_Certificate_Functions#Validating_Certificates`

   -  :ref:`Mozilla_Projects_NSS_Certificate_Functions#CERT_VerifyCertNow`
   -  :ref:`Mozilla_Projects_NSS_Certificate_Functions#CERT_VerifyCert`
   -  :ref:`Mozilla_Projects_NSS_Certificate_Functions#CERT_VerifyCertName`
   -  :ref:`Mozilla_Projects_NSS_Certificate_Functions#CERT_CheckCertValidTimes`
   -  :ref:`Mozilla_Projects_NSS_Certificate_Functions#NSS_CmpCertChainWCANames`

-  :ref:`Mozilla_Projects_NSS_Certificate_Functions#Manipulating_Certificates`

   -  :ref:`Mozilla_Projects_NSS_Certificate_Functions#CERT_DupCertificate`
   -  :ref:`Mozilla_Projects_NSS_Certificate_Functions#CERT_DestroyCertificate`
   -  SEC_DeletePermCertificate
   -  \__CERT_ClosePermCertDB

-  :ref:`Mozilla_Projects_NSS_Certificate_Functions#Getting_Certificate_Information`

   -  :ref:`Mozilla_Projects_NSS_Certificate_Functions#CERT_FindCertByName`
   -  :ref:`Mozilla_Projects_NSS_Certificate_Functions#CERT_GetCertNicknames`
   -  :ref:`Mozilla_Projects_NSS_Certificate_Functions#CERT_FreeNicknames`
   -  :ref:`Mozilla_Projects_NSS_Certificate_Functions#CERT_GetDefaultCertDB`
   -  :ref:`Mozilla_Projects_NSS_Certificate_Functions#NSS_FindCertKEAType`

-  :ref:`Mozilla_Projects_NSS_Certificate_Functions#Comparing_SecItem_Objects`

   -  :ref:`Mozilla_Projects_NSS_Certificate_Functions#SECITEM_CompareItem`

.. _Key_functions:

Key functions
~~~~~~~~~~~~~

:ref:`Mozilla_Projects_NSS_Key_Functions`

-  :ref:`Mozilla_Projects_NSS_Key_Functions#SECKEY_GetDefaultKeyDB`
-  :ref:`Mozilla_Projects_NSS_Key_Functions#SECKEY_DestroyPrivateKey`

.. _Digital_signatures:

Digital signatures
~~~~~~~~~~~~~~~~~~

This API consists of the routines used to perform signature generation
and the routines used to perform signature verification.

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

This API consists of the two routines used for pseudorandom number
generation -- PK11_GenerateRandomOnSlot and PK11_GenerateRandom -- and
the two routines used for seeding pseudorandom number generation --
PK11_SeedRandom and PK11_RandomUpdate.

.. _PKCS_.2311_functions:

PKCS #11 functions
~~~~~~~~~~~~~~~~~~

Based on :ref:`Mozilla_Projects_SSL_functions_pkfnc_html` in the SSL
Reference and
:ref:`Mozilla_Projects_NSS_functions#Cryptography_functions` in NSS
Public Functions.

-  :ref:`Mozilla_Projects_NSS_PKCS11_Functions#SECMOD_LoadUserModule`
-  :ref:`Mozilla_Projects_NSS_PKCS11_Functions#SECMOD_UnloadUserModule`
-  :ref:`Mozilla_Projects_NSS_PKCS11_Functions#SECMOD_CloseUserDB`
-  :ref:`Mozilla_Projects_NSS_PKCS11_Functions#SECMOD_OpenUserDB`
-  :ref:`Mozilla_Projects_NSS_PKCS11_Functions#PK11_FindCertFromNickname`
-  :ref:`Mozilla_Projects_NSS_PKCS11_Functions#PK11_FindKeyByAnyCert`
-  :ref:`Mozilla_Projects_NSS_PKCS11_Functions#PK11_GetSlotName`
-  :ref:`Mozilla_Projects_NSS_PKCS11_Functions#PK11_GetTokenName`
-  :ref:`Mozilla_Projects_NSS_PKCS11_Functions#PK11_IsHW`
-  :ref:`Mozilla_Projects_NSS_PKCS11_Functions#PK11_IsPresent`
-  :ref:`Mozilla_Projects_NSS_PKCS11_Functions#PK11_IsReadOnly`
-  :ref:`Mozilla_Projects_NSS_PKCS11_Functions#PK11_SetPasswordFunc`

.. _SSL_Functions:

SSL Functions
~~~~~~~~~~~~~

Based on :ref:`Mozilla_Projects_SSL_functions_sslfnc_html` in the SSL
Reference and :ref:`Mozilla_Projects_NSS_functions#SSL_functions` and
:ref:`Mozilla_Projects_NSS_functions#Deprecated_SSL_functions` in NSS
Public Functions.

-  SSL_ConfigServerSessionIDCache
-  SSL_ClearSessionCache

.. _S.2FMIME:

S/MIME
~~~~~~

Based on the `S/MIME
Reference <https://www-archive.mozilla.org/projects/security/pki/nss/ref/smime/>`__
(which only has one written chapter) and
:ref:`Mozilla_Projects_NSS_functions#S_2FMIME_functions` in NSS Public
Functions.

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
Used to exchange data such as private keys and certificates between two
parties.

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

:ref:`Mozilla_Projects_NSS_reference_NSPR_functions`
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A small number of NSPR functions are required for using the certificate
verification and SSL functions in NSS.  These functions are listed in
this section.

.. _Error_codes:

Error codes
~~~~~~~~~~~

Based on :ref:`Mozilla_Projects_SSL_functions_sslerr_html` in the SSL
Reference.

.. _NSS_Environment_variables:

:ref:`Mozilla_Projects_NSS_reference_NSS_environment_variables`
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _NSS_cryptographic_module:

:ref:`Mozilla_Projects_NSS_reference_NSS_cryptographic_module`
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _NSS_Tech_Notes:

NSS Tech Notes
~~~~~~~~~~~~~~

:ref:`Mozilla_Projects_NSS_Tech_Notes`
:ref:`Mozilla_Projects_NSS_Memory_allocation`

.. _Tools:

Tools
~~~~~

Based on :ref:`Mozilla_Projects_Tools` documentation.

Based on :ref:`Mozilla_Projects_NSS_reference_NSS_tools`