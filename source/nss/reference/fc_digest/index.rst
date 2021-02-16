--- title: FC_Digest slug: Mozilla/Projects/NSS/Reference/FC_Digest
tags: - NSS ---

.. _Name:

Name
~~~~

FC_Digest - digest a block of data.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_Digest(
     CK_SESSION_HANDLE hSession,
     CK_BYTE_PTR pData,
     CK_ULONG usDataLen,
     CK_BYTE_PTR pDigest,
     CK_ULONG_PTR pusDigestLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   {{ mediawiki.external('in') }} session handle.
``pData``
   {{ mediawiki.external('in') }} pointer to data block.
``usDataLen``
   {{ mediawiki.external('in') }} length of the data in bytes.
``pDigest``
   {{ mediawiki.external('out') }} pointer to location where recovered
   data is to be stored.
``pusDigestLen``
   {{ mediawiki.external('in, out') }} pointer to the maximum size of
   the output buffer, replaced by the length of the message digest if
   the operation is successful.

.. _Description:

Description
~~~~~~~~~~~

``FC_Digest`` digests a message in a single operation according to the
attributes of the previous call to ``FC_DigestInit``.

A user may call ``FC_Digest`` without logging into the token (to assume
the NSS User role).

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
   `NSC_Digest </en-US/NSC_Digest>`__
