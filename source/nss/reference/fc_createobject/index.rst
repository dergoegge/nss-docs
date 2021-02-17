.. _Mozilla_Projects_NSS_Reference_FC_CreateObject:

===============
FC_CreateObject
===============
.. _Name:

Name
~~~~

FC_CreateObject - create a new object.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_CreateObject(
     CK_SESSION_HANDLE hSession,
     CK_ATTRIBUTE_PTR pTemplate,
     CK_ULONG ulCount,
     CK_OBJECT_HANDLE_PTR phObject
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pTemplate``
   [in] object template.
``ulCount``
   [in] number of attributes in the template.
``phObject``
   [out] pointer to location to receive the
   new objects handle.

.. _Description:

Description
~~~~~~~~~~~

``FC_CreateObject`` creates an object using the attributes specified in
the template.

A user must log into the token (to assume the NSS User role) before
calling ``FC_CreateObject``.

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
   `NSC_CreateObject </en-US/NSC_CreateObject>`__