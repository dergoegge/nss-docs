=============
FC_CopyObject
=============
--- title: FC_CopyObject slug:
Mozilla/Projects/NSS/Reference/FC_CopyObject tags: - NSS ---

.. _Name:

Name
~~~~

FC_CopyObject - create a copy of an object.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_CopyObject(
     CK_SESSION_HANDLE hSession,
     CK_OBJECT_HANDLE hObject,
     CK_ATTRIBUTE_PTR pTemplate,
     CK_ULONG usCount,
     CK_OBJECT_HANDLE_PTR phNewObject
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``hObject``
   [in] object handle.
``pTemplate``
   [in] object template.
``usCount``
   [in] number of attributes in the template.
``phnewObject``
   [out] pointer to location to receive the
   new object's handle.

.. _Description:

Description
~~~~~~~~~~~

``FC_CopyObject`` creates a copy of an object using the attributes
specified in the template.

A user must log into the token (to assume the NSS User role) before
copying a secret or private key object.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `FC_DestroyObject </en-US/FC_DestroyObject>`__,
   `NSC_CopyObject </en-US/NSC_CopyObject>`__
