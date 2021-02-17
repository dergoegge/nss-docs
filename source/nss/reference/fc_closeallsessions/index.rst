.. _Mozilla_Projects_NSS_Reference_FC_CloseAllSessions:

===================
FC_CloseAllSessions
===================
.. _Name:

Name
~~~~

FC_CloseAllSessions - close all sessions between an application and a token.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_CloseAllSessions(
     CK_SLOT_ID slotID
    );

.. _Parameters:

Parameters
~~~~~~~~~~

``slotID``
   [in] the ID of the token's slot.

.. _Description:

Description
~~~~~~~~~~~

``FC_CloseAllSessions`` closes all sessions between an application and the token in the slot with
the ID ``slotID``.

The NSS cryptographic module currently doesn't call the surrender callback function ``Notify``. (See
PKCS #11 v2.20 section 11.17.1.)

A user may call ``FC_CloseAllSessions`` without logging into the token (to assume the NSS User
role).

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
   `NSC_CloseAllSessions </en-US/NSC_CloseAllSessions>`__