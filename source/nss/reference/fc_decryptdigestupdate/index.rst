.. _Mozilla_Projects_NSS_Reference_FC_DecryptDigestUpdate:

======================
FC_DecryptDigestUpdate
======================
.. _Name:

Name
~~~~

FC_DecryptDigestUpdate - continue a multi-part decrypt and digest
operation

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_DecryptDigestUpdate(
     CK_SESSION_HANDLE hSession,
     CK_BYTE_PTR pEncryptedPart,
     CK_ULONG ulEncryptedPartLen,
     CK_BYTE_PTR pPart,
     CK_ULONG_PTR pulPartLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pEncryptedPart``
   [in] pointer to the encrypted data part.
``ulEncryptedPartLen``
   [in] length of encrypted data in bytes.
``pPart``
   [in] pointer to the location which receives
   the recovered data part or NULL.
``pulPartLen``
   [in] pointer to the length of the recovered
   part buffer.

.. _Description:

Description
~~~~~~~~~~~

``FC_DecryptDigestUpdate`` continues a multi-part decrypt and digest
operation. After calling both ``FC_DecryptInit`` and ``FC_DigestInit``
to set up the operations this function may be called multiple times. The
operation is finished by calls to ``FC_DigestFinal`` and
``FC_DecryptFinal``.

A user must log into the token (to assume the NSS User role) before
calling ``FC_DecryptDigestUpdate``.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `NSC_DecryptDigestUpdate </en-US/NSC_DecryptDigestUpdate>`__