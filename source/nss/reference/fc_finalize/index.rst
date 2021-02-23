.. _Mozilla_Projects_NSS_Reference_FC_Finalize:

===========
FC_Finalize
===========
.. _Name:

Name
~~~~

FC_Finalize - indicate that an application is done with the PKCS #11
library.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_Finalize (CK_VOID_PTR pReserved);

.. _Parameters:

Parameters
~~~~~~~~~~

``FC_Finalize`` has one parameter:

``pReserved``
   must be ``NULL``

.. _Description:

Description
~~~~~~~~~~~

``FC_Finalize`` shuts down the
:ref:`Mozilla_Projects_NSS_reference_NSS_cryptographic_module` in the
:ref:`Mozilla_Projects_NSS_reference_NSS_cryptographic_module_FIPS_mode_of_operation`.
If the library is not initialized, it does nothing.

The ``pReserved`` argument is not used and must be ``NULL``.

.. _Return_value:

Return value
~~~~~~~~~~~~

``FC_Finalize`` always returns ``CKR_OK``.

.. note::

   ``FC_Finalize`` should check the ``pReserved`` argument and return
   ``CKR_ARGUMENTS_BAD`` if ``pReserved`` is not ``NULL``.

   ``FC_Finalize`` should return ``CKR_CRYPTOKI_NOT_INITIALIZED`` if the
   library is not initialized.

.. _Examples:

Examples
~~~~~~~~

.. code:: eval

   #include <assert.h>

   CK_FUNCTION_LIST_PTR pFunctionList;
   CK_RV crv;

   crv = FC_GetFunctionList(&pFunctionList);
   assert(crv == CKR_OK);

   ...

   /* invoke FC_Finalize as pFunctionList->C_Finalize */
   crv = pFunctionList->C_Finalize(NULL);

.. _See_also:

See also
~~~~~~~~

-  `FC_Initialize <https://developer.mozilla.org/en-US/FC_Initialize>`__,
   `NSC_Initialize <https://developer.mozilla.org/en-US/NSC_Initialize>`__,
   `NSC_Finalize <https://developer.mozilla.org/en-US/NSC_Finalize>`__