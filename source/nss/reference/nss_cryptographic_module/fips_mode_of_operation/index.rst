.. _Mozilla_Projects_NSS_Reference_NSS_cryptographic_module_FIPS_mode_of_operation:

======================
FIPS mode of operation
======================
.. _General-purpose_functions:

General-purpose functions
~~~~~~~~~~~~~~~~~~~~~~~~~

-  :ref:`Mozilla_Projects_NSS_Reference_FC_GetFunctionList`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_Initialize`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_Finalize`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_GetInfo`

.. _Slot_and_token_management_functions:

Slot and token management functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  :ref:`Mozilla_Projects_NSS_Reference_FC_GetSlotList`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_GetSlotInfo`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_GetTokenInfo`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_WaitForSlotEvent`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_GetMechanismList`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_GetMechanismInfo`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_InitToken`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_InitPIN`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_SetPIN`

.. _Session_management_functions:

Session management functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  :ref:`Mozilla_Projects_NSS_Reference_FC_OpenSession`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_CloseSession`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_CloseAllSessions`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_GetSessionInfo`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_GetOperationState`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_SetOperationState`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_Login`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_Logout`

.. _Object_management_functions:

Object management functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~

These functions manage certificates and keys.

-  :ref:`Mozilla_Projects_NSS_Reference_FC_CreateObject`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_CopyObject`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_DestroyObject`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_GetObjectSize`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_GetAttributeValue`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_SetAttributeValue`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_FindObjectsInit`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_FindObjects`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_FindObjectsFinal`

.. _Encryption_functions:

Encryption functions
~~~~~~~~~~~~~~~~~~~~

These functions support Triple DES and AES in ECB and CBC modes.

-  :ref:`Mozilla_Projects_NSS_Reference_FC_EncryptInit`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_Encrypt`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_EncryptUpdate`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_EncryptFinal`

.. _Decryption_functions:

Decryption functions
~~~~~~~~~~~~~~~~~~~~

These functions support Triple DES and AES in ECB and CBC modes.

-  :ref:`Mozilla_Projects_NSS_Reference_FC_DecryptInit`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_Decrypt`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_DecryptUpdate`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_DecryptFinal`

.. _Message_digesting_functions:

Message digesting functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~

These functions support SHA-1, SHA-256, SHA-384, and SHA-512.

-  :ref:`Mozilla_Projects_NSS_Reference_FC_DigestInit`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_Digest`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_DigestUpdate`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_DigestKey`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_DigestFinal`

.. _Signature_and_MAC_generation_functions:

Signature and MAC generation functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These functions support DSA, RSA, ECDSA, and HMAC.

-  :ref:`Mozilla_Projects_NSS_Reference_FC_SignInit`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_Sign`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_SignUpdate`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_SignFinal`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_SignRecoverInit`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_SignRecover`

.. _Signature_and_MAC_verification_functions:

Signature and MAC verification functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These functions support DSA, RSA, ECDSA, and HMAC.

-  :ref:`Mozilla_Projects_NSS_Reference_FC_VerifyInit`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_Verify`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_VerifyUpdate`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_VerifyFinal`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_VerifyRecoverInit`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_VerifyRecover`

.. _Dual-function_cryptographic_functions:

Dual-function cryptographic functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  :ref:`Mozilla_Projects_NSS_Reference_FC_DigestEncryptUpdate`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_DecryptDigestUpdate`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_SignEncryptUpdate`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_DecryptVerifyUpdate`

.. _Key_management_functions:

Key management functions
~~~~~~~~~~~~~~~~~~~~~~~~

-  :ref:`Mozilla_Projects_NSS_Reference_FC_GenerateKey`: DSA domain
   parameters (PQG)
-  :ref:`Mozilla_Projects_NSS_Reference_FC_GenerateKeyPair`: DSA, RSA,
   and ECDSA. Performs pair-wise consistency test.
-  :ref:`Mozilla_Projects_NSS_Reference_FC_WrapKey`: RSA Key Wrapping
-  :ref:`Mozilla_Projects_NSS_Reference_FC_UnwrapKey`: RSA Key Wrapping
-  :ref:`Mozilla_Projects_NSS_Reference_FC_DeriveKey`: Diffie-Hellman, EC
   Diffie-Hellman

.. _Random_number_generation_functions:

Random number generation functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  :ref:`Mozilla_Projects_NSS_Reference_FC_SeedRandom`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_GenerateRandom`: Performs
   continuous random number generator test.

.. _Parallel_function_management_functions:

Parallel function management functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  :ref:`Mozilla_Projects_NSS_Reference_FC_GetFunctionStatus`
-  :ref:`Mozilla_Projects_NSS_Reference_FC_CancelFunction`