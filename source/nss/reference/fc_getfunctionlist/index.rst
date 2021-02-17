==================
FC_GetFunctionList
==================
.. _Name:

Name
~~~~

FC_GetFunctionList - get a pointer to the list of function pointers in
the FIPS mode of operation.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_GetFunctionList(CK_FUNCTION_LIST_PTR *ppFunctionList);

.. _Parameters:

Parameters
~~~~~~~~~~

``FC_GetFunctionList`` has one parameter:

``ppFunctionList``
   [Output] The address of a variable that
   will receive a pointer to the list of function pointers.

.. _Description:

Description
~~~~~~~~~~~

``FC_GetFunctionList`` stores in ``*ppFunctionList`` a pointer to the
`NSS cryptographic
module </en-US/NSS_reference/NSS_cryptographic_module>`__'s list of
function pointers in the `FIPS mode of
operation </en-US/NSS_reference/NSS_cryptographic_module/FIPS_mode_of_operation>`__.

A user may call ``FC_GetFunctionList`` without logging into the token
(to assume the NSS User role).

.. _Return_value:

Return value
~~~~~~~~~~~~

``FC_GetFunctionList`` always returns ``CKR_OK``.

.. _Examples:

Examples
~~~~~~~~

.. code:: eval

   #include <assert.h>

   CK_FUNCTION_LIST_PTR pFunctionList;
   CK_RV crv;

   crv = FC_GetFunctionList(&pFunctionList);
   assert(crv == CKR_OK);

   /* invoke the FC_XXX function as pFunctionList->C_XXX */

.. _See_also:

See also
~~~~~~~~

-  `NSC_GetFunctionList </en-US/NSC_GetFunctionList>`__