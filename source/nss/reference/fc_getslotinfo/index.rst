--- title: FC_GetSlotInfo slug:
Mozilla/Projects/NSS/Reference/FC_GetSlotInfo tags: - NSS ---

.. _Name:

Name
~~~~

FC_GetSlotInfo - get information about a particular slot in the system.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_GetSlotInfo(
     CK_SLOT_ID slotID,
     CK_SLOT_INFO_PTR pInfo
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``FC_GetSlotInfo`` takes two parameters:

``slotID``
   {{ mediawiki.external('in') }}
``pInfo``
   {{ mediawiki.external('out') }} The address of a ``CK_SLOT_INFO``
   structure.

.. _Description:

Description
~~~~~~~~~~~

``FC_GetSlotInfo`` stores the information about the slot in the
``CK_SLOT_INFO`` structure that ``pInfo`` points to.

A user may call ``FC_GetSlotInfo`` without logging into the token (to
assume the NSS User role).

.. _Return_value:

Return value
~~~~~~~~~~~~

``CKR_OK``
   Slot information was successfully copied.
``CKR_SLOT_ID_INVALID``
   The specified slot number is out of the defined range of values.

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `NSC_GetSlotInfo </en-US/NSC_GetSlotInfo>`__
