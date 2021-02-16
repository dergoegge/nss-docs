--- title: FC_OpenSession slug:
Mozilla/Projects/NSS/Reference/FC_OpenSession tags: - NSS ---

.. _Name:

Name
~~~~

FC_OpenSession - open a session between an application and a token.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_OpenSession(
     CK_SLOT_ID slotID,
     CK_FLAGS flags,
     CK_VOID_PTR pApplication,
     CK_NOTIFY Notify,
     CK_SESSION_HANDLE_PTR phSession
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``FC_OpenSession`` has the following parameters:

``slotID``
   {{ mediawiki.external('in') }} the ID of the token's slot.
``flags``
   {{ mediawiki.external('in') }}
``pApplication``
``Notify``
   {{ mediawiki.external('in') }} pointer to a notification callback
   function. Not currently supported.
``phSession``
   {{ mediawiki.external('out') }} pointer to a session handle.

.. _Description:

Description
~~~~~~~~~~~

``FC_OpenSession`` opens a session between an application and the token
in the slot with the ID ``slotID``.

The NSS cryptographic module currently doesn't call the surrender
callback function ``Notify``. (See PKCS #11 v2.20 section 11.17.1.)

A user may call ``FC_OpenSession`` without logging into the token (to
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

-  `FC_CloseSession </en-US/FC_CloseSession>`__,
   `NSC_OpenSession </en-US/NSC_OpenSession>`__
