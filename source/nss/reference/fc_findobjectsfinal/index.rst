.. _Mozilla_Projects_NSS_Reference_FC_FindObjectsFinal:

===================
FC_FindObjectsFinal
===================
.. _Name:

Name
~~~~

FC_FindObjectsFinal - terminate an object search.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_FindObjectsFinal(
     CK_SESSION_HANDLE hSession,
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.

.. _Description:

Description
~~~~~~~~~~~

Clears the object search criteria for a session.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `FC_FindObjects </en-US/FC_FindObjects>`__,
   `NSC_FindObjectsFinal </en-US/NSC_FindObjectsFinal>`__