===========
FC_SignInit
===========
.. _Name:

Name
~~~~

FC_SignInit - initialize a signing operation.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_SignInit(
     CK_SESSION_HANDLE hSession,
     CK_MECHANISM_PTR pMechanism,
     CK_OBJECT_HANDLE hKey
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pMechanism``
   [in] mechanism to be used for the
   subsequent signing operation.
``hKey``
   [in] handle of the key to be used .

.. _Description:

Description
~~~~~~~~~~~

``FC_SignInit`` initializes a signature operation.

A user must log into the token (to assume the NSS User role) before
calling ``FC_SignInit``.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `NSC_SignInit </en-US/NSC_SignInit>`__ `FC_Sign </en-US/FC_Sign>`__
   `FC_SignUpdate </en-US/FC_SignUpdate>`__
   `FC_SignFinal </en-US/FC_SignFinal>`__