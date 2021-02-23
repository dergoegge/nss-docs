.. _Mozilla_Projects_NSS_Reference_FC_DigestKey:

============
FC_DigestKey
============
.. _Name:

Name
~~~~

FC_DigestKey - add the digest of a key to a multi-part digest operation.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_DigestKey(
     CK_SESSION_HANDLE hSession,
     CK_OBJECT_HANDLE hKey
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``hKey``
   [in] handle of the key to be digested.

.. _Description:

Description
~~~~~~~~~~~

``FC_DigestKey`` continues a multi-part digest operation by digesting
the value of a secret key. The digest for the entire message is returned
by a call to
`FC_DigestFinal <https://developer.mozilla.org/en-US/FC_DigestFinal>`__.

A user must log into the token (to assume the NSS User role) before
calling ``FC_DigestKey``.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `FC_DigestInit <https://developer.mozilla.org/en-US/FC_DigestInit>`__,
   `FC_DigestFinal <https://developer.mozilla.org/en-US/FC_DigestFinal>`__,
   `NSC_DigestKey <https://developer.mozilla.org/en-US/NSC_DigestKey>`__