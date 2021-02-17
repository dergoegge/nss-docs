================
FC_DestroyObject
================
.. _Name:

Name
~~~~

FC_DestroyObject - destroy an object.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_DestroyObject(
     CK_SESSION_HANDLE hSession,
     CK_OBJECT_HANDLE hObject
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``hObject``
   [in] object handle.

.. _Description:

Description
~~~~~~~~~~~

``FC_DestroyObject`` destroys an object.

A user must log into the token (to assume the NSS User role) before
destroying a secret or private key object.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `NSC_DestroyObject </en-US/NSC_DestroyObject>`__
