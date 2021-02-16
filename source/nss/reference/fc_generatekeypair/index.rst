--- title: FC_GenerateKeyPair slug:
Mozilla/Projects/NSS/Reference/FC_GenerateKeyPair tags: - NSS ---

.. _Name:

Name
~~~~

FC_GenerateKeyPair - generate a new public/private key pair

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_GenerateKeyPair(
     CK_SESSION_HANDLE hSession,
     CK_MECHANISM_PTR pMechanism,
     CK_ATTRIBUTE_PTR pPublicKeyTemplate,
     CK_ULONG usPublicKeyAttributeCount,
     CK_ATTRIBUTE_PTR pPrivateKeyTemplate,
     CK_ULONG usPrivateKeyAttributeCount,
     CK_OBJECT_HANDLE_PTR phPublicKey,
     CK_OBJECT_HANDLE_PTR phPrivateKey
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   {{ mediawiki.external('in') }} session handle.
``pMechanism``
   {{ mediawiki.external('in') }} pointer to the mechanism to use.
``pPublicKeyTemplate``
   {{ mediawiki.external('in') }} pointer to the public key template.
``usPublicKeyAttributeCount``
   {{ mediawiki.external('in') }} number of attributes in the public key
   template.
``pPrivateKeyTemplate``
   {{ mediawiki.external('in') }} pointer to the private key template.
``usPrivateKeyAttributeCount``
   {{ mediawiki.external('in') }} number of attributes in the private
   key template.
``phPublicKey``
   {{ mediawiki.external('out') }} pointer to the location to receive
   the handle of the new public key.
``phPrivateKey``
   {{ mediawiki.external('out') }} pointer to the location to receive
   the handle of the new private key.

.. _Description:

Description
~~~~~~~~~~~

``FC_GenerateKeyPair`` generates a public/private key pair, creating new
key objects. The handles of new keys are returned.

A user must log into the token (to assume the NSS User role) before
calling ``FC_GenerateKeyPair``.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `NSC_GenerateKeyPair </en-US/NSC_GenerateKeyPair>`__
