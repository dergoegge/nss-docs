.. _Mozilla_Projects_NSS_Reference_FC_GetMechanismInfo:

===================
FC_GetMechanismInfo
===================
.. _Name:

Name
~~~~

FC_GetMechanismInfo - get information on a particular mechanism.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_GetMechanismInfo(
     CK_SLOT_ID slotID,
     CK_MECHANISM_TYPE type,
     CK_MECHANISM_INFO_PTR pInfo
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``FC_GetMechanismInfo`` takes three parameters:

``slotID``
   [Input]
``type``
   [Input] .
``pInfo``
   [Output] .

.. _Description:

Description
~~~~~~~~~~~

``FC_GetMechanismInfo`` obtains information about a particular mechanism
possibly supported by a token.

A user may call ``FC_GetMechanismInfo`` without logging into the token
(to assume the NSS User role).

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

-  `NSC_GetMechanismInfo </en-US/NSC_GetMechanismInfo>`__