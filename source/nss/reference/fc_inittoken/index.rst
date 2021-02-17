============
FC_InitToken
============
.. _Name:

Name
~~~~

``FC_InitToken()`` - initialize or re-initialize a token.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_InitToken(
     CK_SLOT_ID slotID,
     CK_CHAR_PTR pPin,
     CK_ULONG ulPinLen,
     CK_CHAR_PTR pLabel
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``FC_InitToken()`` has the following parameters:

``slotID``
   the ID of the token's slot
``pPin``
   the password of the security officer (SO)
``ulPinLen``
   the length in bytes of the SO password
``pLabel``
   points to the label of the token, which must be padded with spaces to
   32 bytes and not be null-terminated

.. _Description:

Description
~~~~~~~~~~~

``FC_InitToken()`` initializes a brand new token or re-initializes a
token that was initialized before.

Specifically, ``FC_InitToken()`` initializes or clears the key database,
removes the password, and then marks all the *user certs* in the
certificate database as *non-user certs*. (User certs are the
certificates that have their associated private keys in the key
database.)

A user must be able to call ``FC_InitToken()`` without logging into the
token (to assume the NSS User role) because either the user's password
hasn't been set yet or the user forgets the password and needs to blow
away the password-encrypted private key database and start over.

.. note::

   **Note:** The SO password should be the empty string, i.e.,
   ``ulPinLen`` argument should be 0. ``FC_InitToken()`` ignores the
   ``pLabel`` argument.

.. _Return_value:

Return value
~~~~~~~~~~~~

``FC_InitToken()`` returns the following return codes.

-  ``CKR_OK``: token initialization succeeded.
-  ``CKR_SLOT_ID_INVALID``: slot ID is invalid.
-  ``CKR_TOKEN_WRITE_PROTECTED``

   -  we don't have a reference to the key database (we failed to open
      the key database or we have released our reference).

-  ``CKR_DEVICE_ERROR``: failed to reset the key database.

.. _Application_usage:

Application usage
~~~~~~~~~~~~~~~~~

``FC_InitToken()`` is used to reset the password for the key database
when the user forgets the password.

-  The "Reset Password" button of the Mozilla Application Suite and
   SeaMonkey (in Preferences->Privacy & Security->Master Passwords)
   calls ``FC_InitToken()``.
-  The "-T" (token reset) command of ``certutil`` calls
   ``FC_InitToken()``.

.. note::

   **Note:** Resetting the password clears all permanent secret and
   private keys. You won't be able to decrypt the data, such as
   Mozilla's stored passwords, that were encrypted using any of those
   keys.

.. _See_also:

See also
~~~~~~~~

-  `FC_InitPIN </en-US/FC_InitPIN>`__,
   `NSC_InitToken </en-US/NSC_InitToken>`__
