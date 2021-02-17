=============
FC_SeedRandom
=============
.. _Name:

Name
~~~~

``FC_SeedRandom()`` - mix additional seed material into the random
number generator.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_SeedRandom(
     CK_SESSION_HANDLE hSession,
     CK_BYTE_PTR pSeed,
     CK_ULONG usSeedLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pSeed``
   [in] pointer to the seed material
``usSeedLen``
   [in] length of the seed material in bytes.

.. _Description:

Description
~~~~~~~~~~~

``FC_SeedRandom()`` mixes additional seed material into the token's
random number generator. Note that ``FC_SeedRandom()`` doesn't provide
the initial seed material for the random number generator. The initial
seed material is provided by the NSS cryptographic module itself.

| 
| A user may call ``FC_SeedRandom()`` without logging into the token (to
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

-  `NSC_SeedRandom </en-US/NSC_SeedRandom>`__
