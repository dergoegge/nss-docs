==============
FC_DigestFinal
==============
.. _Name:

Name
~~~~

FC_DigestFinal - finish a multi-part digest operation.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_DigestFinal(
     CK_SESSION_HANDLE hSession,
     CK_BYTE_PTR pDigest,
     CK_ULONG_PTR pulDigestLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pDigest``
   [out] pointer to the buffer which will
   receive the digest or NULL.
``pulDigestLen``
   [in, out] pointer to location containing
   the maximum buffer size.

.. _Description:

Description
~~~~~~~~~~~

``FC_DigestFinal`` finishes a multi-part digest operation by returning
the complete digest and clearing the operation context. If ``pDigest``
is NULL the length of the digest is returned and ``FC_DigestFinal`` may
be called again with ``pDigest`` set to retrieve the digest.

A user may call ``FC_DigestFinal`` without logging into the token (to
assume the NSS User role).

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `FC_DigestInit </en-US/FC_DigestInit>`__,
   `NSC_DigestFinal </en-US/NSC_DigestFinal>`__