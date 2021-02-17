==================
FC_FindObjectsInit
==================
.. _Name:

Name
~~~~

FC_FindObjectsInit - initialize the parameters for an object search.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_FindObjectsInit(
     CK_SESSION_HANDLE hSession,
     CK_ATTRIBUTE_PTR pTemplate,
     CK_ULONG usCount
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pTemplate``
   [in] pointer to template.
``usCount``
   [in] number of attributes in the template.

.. _Description:

Description
~~~~~~~~~~~

``FC_FindObjectsInit`` sets the attribute list for an object search. If
``FC_FindObjectsInit`` is successful ``FC_FindObjects`` may be called
one or more times to retrieve handles of matching objects.

A user must log into the token (to assume the NSS User role) before
searching for secret or private key objects.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `FC_FindObjects </en-US/FC_FindObjects>`__,
   `NSC_FindObjectsInit </en-US/NSC_FindObjectsInit>`__
