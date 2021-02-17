=========
FC_Logout
=========
.. _Name:

Name
~~~~

FC_Logout - log a user out from a token.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_Logout(
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

Logs the current user out of a USER_FUNCTIONS session.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `FC_CloseSession </en-US/FC_CloseSession>`__,
   `NSC_Logout </en-US/NSC_Logout>`__