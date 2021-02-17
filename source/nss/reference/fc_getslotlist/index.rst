==============
FC_GetSlotList
==============
.. _Name:

Name
~~~~

FC_GetSlotList - Obtain a list of slots in the system.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_GetSlotList(
     CK_BBOOL tokenPresent,
     CK_SLOT_ID_PTR pSlotList,
     CK_ULONG_PTR pulCount
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``tokenPresent``
   [in] If true only slots with a token
   present are included in the list, otherwise all slots are included.
``pSlotList``
   [out] Either null or a pointer to an
   existing array of ``CK_SLOT_ID`` objects.
``pulCount``
   [out] Pointer to a ``CK_ULONG`` variable
   which receives the slot count.;

.. _Description:

Description
~~~~~~~~~~~

``FC_GetSlotList`` obtains a list of slots in the system.

A user may call ``FC_GetSlotList`` without logging into the token (to
assume the NSS User role).

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

-  `NSC_GetSlotList </en-US/NSC_GetSlotList>`__
