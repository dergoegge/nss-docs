--- title: FIPS mode of operation slug:
Mozilla/Projects/NSS/Reference/NSS_cryptographic_module/FIPS_mode_of_operation
tags: - NSS ---

.. _General-purpose_functions:

General-purpose functions
~~~~~~~~~~~~~~~~~~~~~~~~~

-  `FC_GetFunctionList </en-US/docs/Mozilla/Projects/NSS/Reference/FC_GetFunctionList>`__
-  `FC_Initialize </en-US/docs/Mozilla/Projects/NSS/Reference/FC_Initialize>`__
-  `FC_Finalize </en-US/docs/Mozilla/Projects/NSS/Reference/FC_Finalize>`__
-  `FC_GetInfo </en-US/docs/Mozilla/Projects/NSS/Reference/FC_GetInfo>`__

.. _Slot_and_token_management_functions:

Slot and token management functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  `FC_GetSlotList </en-US/docs/Mozilla/Projects/NSS/Reference/FC_GetSlotList>`__
-  `FC_GetSlotInfo </en-US/docs/Mozilla/Projects/NSS/Reference/FC_GetSlotInfo>`__
-  `FC_GetTokenInfo </en-US/docs/Mozilla/Projects/NSS/Reference/FC_GetTokenInfo>`__
-  `FC_WaitForSlotEvent </en-US/docs/Mozilla/Projects/NSS/Reference/FC_WaitForSlotEvent>`__
-  `FC_GetMechanismList </en-US/docs/Mozilla/Projects/NSS/Reference/FC_GetMechanismList>`__
-  `FC_GetMechanismInfo </en-US/docs/Mozilla/Projects/NSS/Reference/FC_GetMechanismInfo>`__
-  `FC_InitToken </en-US/docs/Mozilla/Projects/NSS/Reference/FC_InitToken>`__
-  `FC_InitPIN </en-US/docs/Mozilla/Projects/NSS/Reference/FC_InitPIN>`__
-  `FC_SetPIN </en-US/docs/Mozilla/Projects/NSS/Reference/FC_SetPIN>`__

.. _Session_management_functions:

Session management functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  `FC_OpenSession </en-US/docs/Mozilla/Projects/NSS/Reference/FC_OpenSession>`__
-  `FC_CloseSession </en-US/docs/Mozilla/Projects/NSS/Reference/FC_CloseSession>`__
-  `FC_CloseAllSessions </en-US/docs/Mozilla/Projects/NSS/Reference/FC_CloseAllSessions>`__
-  `FC_GetSessionInfo </en-US/docs/Mozilla/Projects/NSS/Reference/FC_GetSessionInfo>`__
-  `FC_GetOperationState </en-US/docs/Mozilla/Projects/NSS/Reference/FC_GetOperationState>`__
-  `FC_SetOperationState </en-US/docs/Mozilla/Projects/NSS/Reference/FC_SetOperationState>`__
-  `FC_Login </en-US/docs/Mozilla/Projects/NSS/Reference/FC_Login>`__
-  `FC_Logout </en-US/docs/Mozilla/Projects/NSS/Reference/FC_Logout>`__

.. _Object_management_functions:

Object management functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~

These functions manage certificates and keys.

-  `FC_CreateObject </en-US/docs/Mozilla/Projects/NSS/Reference/FC_CreateObject>`__
-  `FC_CopyObject </en-US/docs/Mozilla/Projects/NSS/Reference/FC_CopyObject>`__
-  `FC_DestroyObject </en-US/docs/Mozilla/Projects/NSS/Reference/FC_DestroyObject>`__
-  `FC_GetObjectSize </en-US/docs/Mozilla/Projects/NSS/Reference/FC_GetObjectSize>`__
-  `FC_GetAttributeValue </en-US/docs/Mozilla/Projects/NSS/Reference/FC_GetAttributeValue>`__
-  `FC_SetAttributeValue </en-US/docs/Mozilla/Projects/NSS/Reference/FC_SetAttributeValue>`__
-  `FC_FindObjectsInit </en-US/docs/Mozilla/Projects/NSS/Reference/FC_FindObjectsInit>`__
-  `FC_FindObjects </en-US/docs/Mozilla/Projects/NSS/Reference/FC_FindObjects>`__
-  `FC_FindObjectsFinal </en-US/docs/Mozilla/Projects/NSS/Reference/FC_FindObjectsFinal>`__

.. _Encryption_functions:

Encryption functions
~~~~~~~~~~~~~~~~~~~~

These functions support Triple DES and AES in ECB and CBC modes.

-  `FC_EncryptInit </en-US/docs/Mozilla/Projects/NSS/Reference/FC_EncryptInit>`__
-  `FC_Encrypt </en-US/docs/Mozilla/Projects/NSS/Reference/FC_Encrypt>`__
-  `FC_EncryptUpdate </en-US/docs/Mozilla/Projects/NSS/Reference/FC_EncryptUpdate>`__
-  `FC_EncryptFinal </en-US/docs/Mozilla/Projects/NSS/Reference/FC_EncryptFinal>`__

.. _Decryption_functions:

Decryption functions
~~~~~~~~~~~~~~~~~~~~

These functions support Triple DES and AES in ECB and CBC modes.

-  `FC_DecryptInit </en-US/docs/Mozilla/Projects/NSS/Reference/FC_DecryptInit>`__
-  `FC_Decrypt </en-US/docs/Mozilla/Projects/NSS/Reference/FC_Decrypt>`__
-  `FC_DecryptUpdate </en-US/docs/Mozilla/Projects/NSS/Reference/FC_DecryptUpdate>`__
-  `FC_DecryptFinal </en-US/docs/Mozilla/Projects/NSS/Reference/FC_DecryptFinal>`__

.. _Message_digesting_functions:

Message digesting functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~

These functions support SHA-1, SHA-256, SHA-384, and SHA-512.

-  `FC_DigestInit </en-US/docs/Mozilla/Projects/NSS/Reference/FC_DigestInit>`__
-  `FC_Digest </en-US/docs/Mozilla/Projects/NSS/Reference/FC_Digest>`__
-  `FC_DigestUpdate </en-US/docs/Mozilla/Projects/NSS/Reference/FC_DigestUpdate>`__
-  `FC_DigestKey </en-US/docs/Mozilla/Projects/NSS/Reference/FC_DigestKey>`__
-  `FC_DigestFinal </en-US/docs/Mozilla/Projects/NSS/Reference/FC_DigestFinal>`__

.. _Signature_and_MAC_generation_functions:

Signature and MAC generation functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These functions support DSA, RSA, ECDSA, and HMAC.

-  `FC_SignInit </en-US/docs/Mozilla/Projects/NSS/Reference/FC_SignInit>`__
-  `FC_Sign </en-US/docs/Mozilla/Projects/NSS/Reference/FC_Sign>`__
-  `FC_SignUpdate </en-US/docs/Mozilla/Projects/NSS/Reference/FC_SignUpdate>`__
-  `FC_SignFinal </en-US/docs/Mozilla/Projects/NSS/Reference/FC_SignFinal>`__
-  `FC_SignRecoverInit </en-US/docs/Mozilla/Projects/NSS/Reference/FC_SignRecoverInit>`__
-  `FC_SignRecover </en-US/docs/Mozilla/Projects/NSS/Reference/FC_SignRecover>`__

.. _Signature_and_MAC_verification_functions:

Signature and MAC verification functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These functions support DSA, RSA, ECDSA, and HMAC.

-  `FC_VerifyInit </en-US/docs/Mozilla/Projects/NSS/Reference/FC_VerifyInit>`__
-  `FC_Verify </en-US/docs/Mozilla/Projects/NSS/Reference/FC_Verify>`__
-  `FC_VerifyUpdate </en-US/docs/Mozilla/Projects/NSS/Reference/FC_VerifyUpdate>`__
-  `FC_VerifyFinal </en-US/docs/Mozilla/Projects/NSS/Reference/FC_VerifyFinal>`__
-  `FC_VerifyRecoverInit </en-US/docs/Mozilla/Projects/NSS/Reference/FC_VerifyRecoverInit>`__
-  `FC_VerifyRecover </en-US/docs/Mozilla/Projects/NSS/Reference/FC_VerifyRecover>`__

.. _Dual-function_cryptographic_functions:

Dual-function cryptographic functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  `FC_DigestEncryptUpdate </en-US/docs/Mozilla/Projects/NSS/Reference/FC_DigestEncryptUpdate>`__
-  `FC_DecryptDigestUpdate </en-US/docs/Mozilla/Projects/NSS/Reference/FC_DecryptDigestUpdate>`__
-  `FC_SignEncryptUpdate </en-US/docs/Mozilla/Projects/NSS/Reference/FC_SignEncryptUpdate>`__
-  `FC_DecryptVerifyUpdate </en-US/docs/Mozilla/Projects/NSS/Reference/FC_DecryptVerifyUpdate>`__

.. _Key_management_functions:

Key management functions
~~~~~~~~~~~~~~~~~~~~~~~~

-  `FC_GenerateKey </en-US/docs/Mozilla/Projects/NSS/Reference/FC_GenerateKey>`__:
   DSA domain parameters (PQG)
-  `FC_GenerateKeyPair </en-US/docs/Mozilla/Projects/NSS/Reference/FC_GenerateKeyPair>`__:
   DSA, RSA, and ECDSA. Performs pair-wise consistency test.
-  `FC_WrapKey </en-US/docs/Mozilla/Projects/NSS/Reference/FC_WrapKey>`__:
   RSA Key Wrapping
-  `FC_UnwrapKey </en-US/docs/Mozilla/Projects/NSS/Reference/FC_UnwrapKey>`__:
   RSA Key Wrapping
-  `FC_DeriveKey </en-US/docs/Mozilla/Projects/NSS/Reference/FC_DeriveKey>`__:
   Diffie-Hellman, EC Diffie-Hellman

.. _Random_number_generation_functions:

Random number generation functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  `FC_SeedRandom </en-US/docs/Mozilla/Projects/NSS/Reference/FC_SeedRandom>`__
-  `FC_GenerateRandom </en-US/docs/Mozilla/Projects/NSS/Reference/FC_GenerateRandom>`__:
   Performs continuous random number generator test.

.. _Parallel_function_management_functions:

Parallel function management functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  `FC_GetFunctionStatus </en-US/docs/Mozilla/Projects/NSS/Reference/FC_GetFunctionStatus>`__
-  `FC_CancelFunction </en-US/docs/Mozilla/Projects/NSS/Reference/FC_CancelFunction>`__
