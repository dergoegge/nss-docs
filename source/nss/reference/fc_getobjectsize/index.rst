--- title: FC_GetObjectSize slug:
Mozilla/Projects/NSS/Reference/FC_GetObjectSize tags: - NSS ---

.. _Name:

Name
~~~~

FC_GetObjectSize - create a copy of an object.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_GetObjectSize(
     CK_SESSION_HANDLE hSession,
     CK_OBJECT_HANDLE hObject,
     CK_ULONG_PTR pusSize
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   {{ mediawiki.external('in') }} session handle.
``hObject``
   {{ mediawiki.external('in') }} object handle.
``pusSize``
   {{ mediawiki.external('out') }} pointer to location to receive the
   object's size.

.. _Description:

Description
~~~~~~~~~~~

``FC_GetObjectSize`` gets the size of an object in bytes.

A user must log into the token (to assume the NSS User role) before
getting the size of a secret or private key object.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `NSC_GetObjectSize </en-US/NSC_GetObjectSize>`__
