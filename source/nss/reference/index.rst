.. _Mozilla_Projects_NSS_Reference:

NSS reference
=============

.. _initial_notes:

`Initial Notes <#initial_notes>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   .. container:: notecard note

      -  We are migrating the :ref:`Mozilla_Projects_NSS_SSL_functions_OLD_SSL_Reference` into the
         format described in the `MDN Style
         Guide <https://developer.mozilla.org/en-US/docs/MDN/Guidelines>`__. If you are inclined to
         help with this migration, your help would be very much appreciated.

      -  The proposed chapters below are based on the chapters of the
         :ref:`Mozilla_Projects_NSS_SSL_functions_OLD_SSL_Reference` and the categories of functions
         in :ref:`Mozilla_Projects_NSS_Reference_NSS_functions`.

      -  Should a particular page require the use of an underscore, please see the documentation for
         the `Title Override Extension </Project:En/MDC_style_guide#Title_Override_Extension>`__.

.. _building_and_installing_nss:

`Building and installing NSS <#building_and_installing_nss>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   :ref:`Mozilla_Projects_NSS_Reference_Building_and_installing_NSS`

.. _overview_of_an_nss_application:

`Overview of an NSS application <#overview_of_an_nss_application>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   Based on :ref:`Mozilla_Projects_NSS_SSL_functions_sslintro` in the SSL Reference.

.. _getting_started_with_nss:

`Getting started with NSS <#getting_started_with_nss>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   Based on :ref:`Mozilla_Projects_NSS_SSL_functions_gtstd` in the SSL Reference.

.. _data_types:

`Data types <#data_types>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   Based on :ref:`Mozilla_Projects_NSS_SSL_functions_ssltyp` in the SSL Reference.

.. _nss_initialization_and_shutdown:

`NSS initialization and shutdown <#nss_initialization_and_shutdown>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   -  NSS_Init
   -  NSS_InitReadWrite
   -  NSS_NoDB_Init
   -  :ref:`Mozilla_Projects_NSS_Reference_NSS_Initialize`
   -  NSS_Shutdown

.. _utility_functions:

`Utility functions <#utility_functions>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   Based on :ref:`Mozilla_Projects_NSS_Reference_NSS_functions#utility_functions` in NSS Public
   Functions.

.. _certificate_functions:

`Certificate functions <#certificate_functions>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   Based on :ref:`Mozilla_Projects_NSS_SSL_functions_sslcrt` in the SSL Reference and
   :ref:`Mozilla_Projects_NSS_Reference_NSS_functions#certificate_functions` in NSS Public
   Functions.

   -  :ref:`Mozilla_Projects_NSS_Reference_NSS_Certificate_Functions#validating_certificates`

      -  :ref:`Mozilla_Projects_NSS_Reference_NSS_Certificate_Functions#cert_verifycertnow`
      -  :ref:`Mozilla_Projects_NSS_Reference_NSS_Certificate_Functions#cert_verifycert`
      -  :ref:`Mozilla_Projects_NSS_Reference_NSS_Certificate_Functions#cert_verifycertname`
      -  :ref:`Mozilla_Projects_NSS_Reference_NSS_Certificate_Functions#cert_checkcertvalidtimes`
      -  :ref:`Mozilla_Projects_NSS_Reference_NSS_Certificate_Functions#nss_cmpcertchainwcanames`

   -  :ref:`Mozilla_Projects_NSS_Reference_NSS_Certificate_Functions#manipulating_certificates`

      -  :ref:`Mozilla_Projects_NSS_Reference_NSS_Certificate_Functions#cert_dupcertificate`
      -  :ref:`Mozilla_Projects_NSS_Reference_NSS_Certificate_Functions#cert_destroycertificate`
      -  SEC_DeletePermCertificate
      -  \__CERT_ClosePermCertDB

   -  :ref:`Mozilla_Projects_NSS_Reference_NSS_Certificate_Functions#getting_certificate_information`

      -  :ref:`Mozilla_Projects_NSS_Reference_NSS_Certificate_Functions#cert_findcertbyname`
      -  :ref:`Mozilla_Projects_NSS_Reference_NSS_Certificate_Functions#cert_getcertnicknames`
      -  :ref:`Mozilla_Projects_NSS_Reference_NSS_Certificate_Functions#cert_freenicknames`
      -  :ref:`Mozilla_Projects_NSS_Reference_NSS_Certificate_Functions#cert_getdefaultcertdb`
      -  :ref:`Mozilla_Projects_NSS_Reference_NSS_Certificate_Functions#nss_findcertkeatype`

   -  :ref:`Mozilla_Projects_NSS_Reference_NSS_Certificate_Functions#comparing_secitem_objects`

      -  :ref:`Mozilla_Projects_NSS_Reference_NSS_Certificate_Functions#secitem_compareitem`

.. _key_functions:

`Key functions <#key_functions>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   :ref:`Mozilla_Projects_NSS_Reference_NSS_Key_Functions`

   -  :ref:`Mozilla_Projects_NSS_SSL_functions_sslkey#seckey_getdefaultkeydb`
   -  :ref:`Mozilla_Projects_NSS_SSL_functions_sslkey#seckey_destroyprivatekey`

.. _digital_signatures:

`Digital signatures <#digital_signatures>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   This API consists of the routines used to perform signature generation and the routines used to
   perform signature verification.

.. _encryption.2fdecryption:

`Encryption/decryption <#encryption.2fdecryption>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

`Hashing <#hashing>`__
~~~~~~~~~~~~~~~~~~~~~~

.. container::

.. _key_generation:

`Key generation <#key_generation>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   Generate keys, key pairs, and domain parameters.

.. _random_number_generation:

`Random number generation <#random_number_generation>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   This API consists of the two routines used for pseudorandom number generation --
   PK11_GenerateRandomOnSlot and PK11_GenerateRandom -- and the two routines used for seeding
   pseudorandom number generation -- PK11_SeedRandom and PK11_RandomUpdate.

.. _pkcs_.2311_functions:

`PKCS #11 functions <#pkcs_.2311_functions>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   Based on :ref:`Mozilla_Projects_NSS_SSL_functions_pkfnc` in the SSL Reference and
   :ref:`Mozilla_Projects_NSS_Reference_NSS_functions#cryptography_functions` in NSS Public
   Functions.

   -  :ref:`Mozilla_Projects_NSS_PKCS11_Functions#secmod_loadusermodule`
   -  :ref:`Mozilla_Projects_NSS_PKCS11_Functions#secmod_unloadusermodule`
   -  :ref:`Mozilla_Projects_NSS_PKCS11_Functions#secmod_closeuserdb`
   -  :ref:`Mozilla_Projects_NSS_PKCS11_Functions#secmod_openuserdb`
   -  :ref:`Mozilla_Projects_NSS_PKCS11_Functions#pk11_findcertfromnickname`
   -  :ref:`Mozilla_Projects_NSS_PKCS11_Functions#pk11_findkeybyanycert`
   -  :ref:`Mozilla_Projects_NSS_PKCS11_Functions#pk11_getslotname`
   -  :ref:`Mozilla_Projects_NSS_PKCS11_Functions#pk11_gettokenname`
   -  :ref:`Mozilla_Projects_NSS_PKCS11_Functions#pk11_ishw`
   -  :ref:`Mozilla_Projects_NSS_PKCS11_Functions#pk11_ispresent`
   -  :ref:`Mozilla_Projects_NSS_PKCS11_Functions#pk11_isreadonly`
   -  :ref:`Mozilla_Projects_NSS_PKCS11_Functions#pk11_setpasswordfunc`

.. _ssl_functions:

`SSL Functions <#ssl_functions>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   Based on :ref:`Mozilla_Projects_NSS_SSL_functions_sslfnc` in the SSL Reference and
   :ref:`Mozilla_Projects_NSS_Reference_NSS_functions#ssl_functions` and
   :ref:`Mozilla_Projects_NSS_Reference_NSS_functions#deprecated_ssl_functions` in NSS Public
   Functions.

   -  SSL_ConfigServerSessionIDCache
   -  SSL_ClearSessionCache

.. _s.2fmime:

`S/MIME <#s.2fmime>`__
~~~~~~~~~~~~~~~~~~~~~~

.. container::

   Based on the `S/MIME
   Reference <https://www-archive.mozilla.org/projects/security/pki/nss/ref/smime/>`__ (which only
   has one written chapter) and
   :ref:`Mozilla_Projects_NSS_Reference_NSS_functions#s_2fmime_functions` in NSS Public Functions.

.. _pkcs_.237_functions:

`PKCS #7 functions <#pkcs_.237_functions>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   Based on `"Archived PKCS #7 Functions
   documentation." <https://www-archive.mozilla.org/projects/security/pki/nss/ref/nssfunctions.html#pkcs7>`__

.. _pkcs_.235_functions:

`PKCS #5 functions <#pkcs_.235_functions>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   Password-based encryption

   -  SEC_PKCS5GetIV
   -  SEC_PKCS5CreateAlgorithmID
   -  SEC_PKCS5GetCryptoAlgorithm
   -  SEC_PKCS5GetKeyLength
   -  SEC_PKCS5GetPBEAlgorithm
   -  SEC_PKCS5IsAlgorithmPBEAlg

.. _pkcs_.2312_functions:

`PKCS #12 functions <#pkcs_.2312_functions>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

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

.. _nspr_functions:

`NSPR functions <#nspr_functions>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   A small number of :ref:`Mozilla_Projects_NSS_Reference_NSPR_functions` are required for using the
   certificate verification and SSL functions in NSS.  These functions are listed in this section.

.. _error_codes:

`Error codes <#error_codes>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   Based on :ref:`Mozilla_Projects_NSS_SSL_functions_sslerr` in the SSL Reference.

.. _nss_environment_variables:

`NSS Environment variables <#nss_environment_variables>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   :ref:`Mozilla_Projects_NSS_Reference_NSS_environment_variables`

.. _nss_cryptographic_module:

`NSS cryptographic module <#nss_cryptographic_module>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   :ref:`Mozilla_Projects_NSS_Reference_NSS_cryptographic_module`

.. _nss_tech_notes:

`NSS Tech Notes <#nss_tech_notes>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   :ref:`Mozilla_Projects_NSS_NSS_Tech_Notes` :ref:`Mozilla_Projects_NSS_Memory_allocation`

`Tools <#tools>`__
~~~~~~~~~~~~~~~~~~

.. container::

   Based on :ref:`Mozilla_Projects_NSS_tools` documentation.

   Based on :ref:`Mozilla_Projects_NSS_tools`