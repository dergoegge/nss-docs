==============
FC_DecryptInit
==============
--- title: FC_DecryptInit slug:
Mozilla/Projects/NSS/Reference/FC_DecryptInit tags: - NSS ---

.. _Name:

Name
~~~~

FC_DecryptInit - initialize a decryption operation.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_DecryptInit(
     CK_SESSION_HANDLE hSession,
     CK_MECHANISM_PTR pMechanism,
     CK_OBJECT_HANDLE hKey
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pMechanism``
   [in] mechanism to be used for the
   subsequent decryption operation.
``hKey``
   [in] handle of the key to be used.

.. _Description:

Description
~~~~~~~~~~~

``FC_DecryptInit`` initializes a decryption operation.

A user must log into the token (to assume the NSS User role) before
calling ``FC_DecryptInit``.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `NSC_DecryptInit </en-US/NSC_DecryptInit>`__
