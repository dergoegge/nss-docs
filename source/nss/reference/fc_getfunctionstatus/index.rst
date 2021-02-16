====================
FC_GetFunctionStatus
====================
--- title: FC_GetFunctionStatus slug:
Mozilla/Projects/NSS/Reference/FC_GetFunctionStatus tags: - NSS ---

.. _Name:

Name
~~~~

FC_GetFunctionStatus - get the status of a function running in parallel

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_GetFunctionStatus(
     CK_SESSION_HANDLE hSession
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.

.. _Description:

Description
~~~~~~~~~~~

``FC_GetFunctionStatus`` is a legacy function that simply returns
``CKR_FUNCTION_NOT_PARALLEL``.

.. _Return_value:

Return value
~~~~~~~~~~~~

``FC_GetFunctionStatus`` always returns ``CKR_FUNCTION_NOT_PARALLEL``.

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `NSC_GetFunctionStatus </en-US/NSC_GetFunctionStatus>`__
