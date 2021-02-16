--- title: FC_DecryptFinal slug:
Mozilla/Projects/NSS/Reference/FC_DecryptFinal tags: - NSS ---

.. _Name:

Name
~~~~

FC_DecryptFinal - finish a multi-part decryption operation.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_DecryptFinal(
     CK_SESSION_HANDLE hSession,
     CK_BYTE_PTR pLastPart,
     CK_ULONG_PTR pusLastPartLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   {{ mediawiki.external('in') }} session handle.
``pLastPart``
   {{ mediawiki.external('out') }} pointer to the location where the
   last block of recovered data, if any, is to be stored.
``pusLastPartLen``
   {{ mediawiki.external('in,out') }} pointer to location where the
   number of bytes of recovered data is to be stored.

.. _Description:

Description
~~~~~~~~~~~

``FC_DecryptFinal`` returns the last block of data of a multi-part
decryption operation.

A user must log into the token (to assume the NSS User role) before
calling ``FC_DecryptFinal``.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `FC_DecryptInit </en-US/FC_DecryptInit>`__,
   `NSC_DecryptFinal </en-US/NSC_DecryptFinal>`__
