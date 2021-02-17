=================
FC_CancelFunction
=================
.. _Name:

Name
~~~~

FC_CancelFunction - cancel a function running in parallel

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_CancelFunction(
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

Parallel functions are not implemented. ``FC_CancelFunction`` is a
legacy function that simply returns ``CKR_FUNCTION_NOT_PARALLEL``.

.. _Return_value:

Return value
~~~~~~~~~~~~

``FC_CancelFunction`` always returns ``CKR_FUNCTION_NOT_PARALLEL``.

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `NSC_CancelFunction </en-US/NSC_CancelFunction>`__
