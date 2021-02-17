======================
FC_DigestEncryptUpdate
======================
.. _Name:

Name
~~~~

FC_DigestEncryptUpdate - continue a multi-part digest and encryption
operation

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_DigestEncryptUpdate(
     CK_SESSION_HANDLE hSession,
     CK_BYTE_PTR pPart,
     CK_ULONG ulPartLen,
     CK_BYTE_PTR pEncryptedPart,
     CK_ULONG_PTR pulEncryptedPartLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pPart``
   [in] pointer to the data part.
``ulPartLen``
   [in] length of data in bytes.
``pEncryptedPart``
   [in] pointer to the location which receives
   the digested and encrypted part or NULL.
``pulEncryptedPartLen``
   [in] pointer to the length of the encrypted
   part buffer.

.. _Description:

Description
~~~~~~~~~~~

``FC_DigestEncryptUpdate`` continues a multi-part digest and encryption
operation. After calling both ``FC_DigestInit`` and ``FC_EncryptInit``
to set up the operations this function may be called multiple times. The
operation is finished by calls to ``FC_DigestFinal`` and
``FC_EncryptFinal`` in that order.

A user must log into the token (to assume the NSS User role) before
calling ``FC_DigestEncryptUpdate``.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `NSC_DigestEncryptUpdate </en-US/NSC_DigestEncryptUpdate>`__