.. _Mozilla_Projects_NSS_Reference_FC_CloseSession:

===============
FC_CloseSession
===============
.. _Name:

Name
~~~~

FC_CloseSession - close a session opened between an application and a
token.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_CloseSession(
     CK_SESSION_HANDLE hSession
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] the session handle to be closed.

.. _Description:

Description
~~~~~~~~~~~

``FC_CloseSession`` closes a session between an application and a token.

A user may call ``FC_CloseSession`` without logging into the token (to
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

-  `FC_OpenSession </en-US/FC_OpenSession>`__