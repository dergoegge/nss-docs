==============
FC_EncryptInit
==============
.. _Name:

Name
~~~~

FC_EncryptInit - initialize an encryption operation.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_EncryptInit(
     CK_SESSION_HANDLE hSession,
     CK_MECHANISM_PTR pMechanism,
     CK_OBJECT_HANDLE hKey
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] handle to the session.
``pMechanism``
   [in] pointer to the mechanism to be used
   for subsequent encryption.
``hKey``
   [in] handle of the encryption key.

.. _Description:

Description
~~~~~~~~~~~

``FC_EncryptInit`` initializes an encryption operation with the
mechanism and key to be used.

A user must log into the token (to assume the NSS User role) before
calling ``FC_EncryptInit``.

.. _Return_value:

Return value
~~~~~~~~~~~~

``CKR_OK``
   Slot information was successfully copied.
``CKR_SLOT_ID_INVALID``
   The specified slot number is out of the defined range of values.

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `NSC_EncryptInit </en-US/NSC_EncryptInit>`__
