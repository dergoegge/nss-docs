=================
FC_GenerateRandom
=================
.. _Name:

Name
~~~~

FC_GenerateRandom - generate a random number.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_GenerateRandom(
     CK_SESSION_HANDLE hSession,
     CK_BYTE_PTR pRandomData,
     CK_ULONG ulRandomLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pRandomData``
   [out] pointer to the location to receive
   the random data.
``ulRandomLen``
   [in] length of the buffer in bytes.

.. _Description:

Description
~~~~~~~~~~~

``FC_GenerateRandom`` generates random data of the specified length.

A user may call ``FC_GenerateRandom`` without logging into the token (to
assume the NSS User role).

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `NSC_GenerateRandom </en-US/NSC_GenerateRandom>`__