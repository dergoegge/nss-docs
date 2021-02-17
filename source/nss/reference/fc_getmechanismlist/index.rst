.. _Mozilla_Projects_NSS_Reference_FC_GetMechanismList:

===================
FC_GetMechanismList
===================
.. _Name:

Name
~~~~

FC_GetMechanismList - get a list of mechanism types supported by a token.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_GetMechanismList(
     CK_SLOT_ID slotID,
     CK_MECHANISM_TYPE_PTR pMechanismList,
     CK_ULONG_PTR pusCount
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``FC_GetMechanismList`` takes three parameters:

``slotID``
   [Input]
``pInfo``
   [Output] The address of a variable that will receive a pointer to the
   list of function pointers.

.. _Description:

Description
~~~~~~~~~~~

``FC_GetMechanismList`` obtains a list of mechanism types supported by a token.

A user may call ``FC_GetMechanismList`` without logging into the token (to assume the NSS User
role).

.. _Return_value:

Return value
~~~~~~~~~~~~

``CKR_OK``

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `NSC_GetMechanismList </en-US/NSC_GetMechanismList>`__