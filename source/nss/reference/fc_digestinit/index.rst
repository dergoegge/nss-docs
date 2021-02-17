.. _Mozilla_Projects_NSS_Reference_FC_DigestInit:

=============
FC_DigestInit
=============
.. _Name:

Name
~~~~

FC_DigestInit - initialize a message-digest operation.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_DigestInit(
     CK_SESSION_HANDLE hSession,
     CK_MECHANISM_PTR pMechanism
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pMechanism``
   [in] mechanism to be used for the subsequent digest operation.

.. _Description:

Description
~~~~~~~~~~~

``FC_DigestInit`` initializes a message-digest operation.

A user may call ``FC_DigestInit`` without logging into the token (to assume the NSS User role).

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `NSC_DigestInit </en-US/NSC_DigestInit>`__