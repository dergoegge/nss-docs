--- title: FC_DigestUpdate slug:
Mozilla/Projects/NSS/Reference/FC_DigestUpdate tags: - NSS ---

.. _Name:

Name
~~~~

FC_DigestUpdate - process the next block of a multi-part digest
operation.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_DigestUpdate(
     CK_SESSION_HANDLE hSession,
     CK_BYTE_PTR pPart,
     CK_ULONG usPartLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   {{ mediawiki.external('in') }} session handle.
``pPart``
   {{ mediawiki.external('in') }} pointer to the next block of data to
   be digested.
``usPartLen``
   {{ mediawiki.external('in') }} length of data block in bytes.

.. _Description:

Description
~~~~~~~~~~~

``FC_DigestUpdate`` starts or continues a multi-part digest operation.
One or more blocks may be part of the message digest operation. The
digest for the entire message is returned by a call to
`FC_DigestFinal </en-US/FC_DigestFinal>`__.

A user may call ``FC_DigestUpdate`` without logging into the token (to
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
   `FC_DigestFinal </en-US/FC_DigestFinal>`__,
   `NSC_DigestUpdate </en-US/NSC_DigestUpdate>`__
