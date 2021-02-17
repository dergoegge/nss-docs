===================
FC_WaitForSlotEvent
===================
.. _Name:

Name
~~~~

FC_WaitForSlotEvent - waits for a slot event, such as token insertion or
token removal, to occur.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_WaitForSlotEvent(CK_FLAGS flags, CK_SLOT_ID_PTR pSlot CK_VOID_PTR pReserved);

.. _Parameters:

Parameters
~~~~~~~~~~

``FC_WaitForSlotEvent`` takes three parameters:

``flags``
``pSlot``.
``pReserved``.

.. _Description:

Description
~~~~~~~~~~~

This function is not supported by the NSS cryptographic module.

.. _Return_value:

Return value
~~~~~~~~~~~~

``FC_WaitForSlotEvent`` always returns ``CKR_FUNCTION_NOT_SUPPORTED``.

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `FC_WaitForSlotEvent </en-US/FC_WaitForSlotEvent>`__
