--- title: FC_InitPIN slug: Mozilla/Projects/NSS/Reference/FC_InitPIN
tags: - NSS ---

.. _Name:

Name
~~~~

``FC_InitPIN()`` - Initialize the user's PIN.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_InitPIN(
     CK_SESSION_HANDLE hSession,
     CK_CHAR_PTR pPin,
     CK_ULONG ulPinLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``FC_InitPIN()`` takes three parameters:

``hSession``
   {{ mediawiki.external('Input') }} Session handle.
``pPin``
   {{ mediawiki.external('Input') }} Pointer to the PIN being set.
``ulPinLen``
   {{ mediawiki.external('Input') }} Length of the PIN.

.. _Description:

Description
~~~~~~~~~~~

``FC_InitPIN()`` initializes the normal user's PIN.

``FC_InitPIN()`` must be called when the PKCS #11 Security Officer (SO)
is logged into the token and the session is read/write, that is, the
session must be in the "R/W SO Functions" state
(``CKS_RW_SO_FUNCTIONS``). The role of the PKCS #11 SO is to initialize
a token and to initialize the normal user's PIN. In the NSS
cryptographic module, one uses the empty string password ("") to log in
as the PKCS #11 SO. The module only allows the PKCS #11 SO to log in if
the normal user's PIN has not yet been set or has been reset.

.. _Return_value:

Return value
~~~~~~~~~~~~

``FC_InitPIN()`` returns the following return codes.

-  ``CKR_OK``: normal user's PIN initialization succeeded.
-  ``CKR_SESSION_HANDLE_INVALID``: the session handle is invalid.
-  ``CKR_USER_NOT_LOGGED_IN``: the session is not in the "R/W SO
   Functions" state.
-  ``CKR_PIN_INVALID``: the PIN has an invalid UTF-8 character.
-  ``CKR_PIN_LEN_RANGE``: the PIN is too short, too long, or too weak
   (doesn't have enough character types).
-  ``CKR_DEVICE_ERROR``: normal user's PIN is already initialized.

.. _See_also:

See also
~~~~~~~~

-  `NSC_InitPIN </en-US/NSC_InitPIN>`__,
   `FC_SetPIN </en-US/FC_SetPIN>`__
