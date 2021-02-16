--- title: FC_WrapKey slug: Mozilla/Projects/NSS/Reference/FC_WrapKey
tags: - NSS ---

.. _Name:

Name
~~~~

FC_WrapKey - wrap a key

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_WrapKey(
     CK_SESSION_HANDLE hSession,
     CK_MECHANISM_PTR pMechanism,
     CK_OBJECT_HANDLE hWrappingKey,
     CK_OBJECT_HANDLE hKey,
     CK_BYTE_PTR pWrappedKey,
     CK_ULONG_PTR pusWrappedKeyLen
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   {{ mediawiki.external('in') }} session handle.
``pMechanism``
   {{ mediawiki.external('in') }} pointer to the mechanism to use.
``hWrappingKey``
   {{ mediawiki.external('in') }} pointer to the public key template.
``hKey``
   {{ mediawiki.external('in') }} number of attributes in the public key
   template.
``pWrappedKey``
   {{ mediawiki.external('out') }} pointer to the location to receive
   the wrapped key or NULL.
``pusWrappedKeyLen``
   {{ mediawiki.external('in, out') }} pointer to length of wrapped key
   buffer.

.. _Description:

Description
~~~~~~~~~~~

``FC_WrapKey`` wraps (encrypts) a key. If ``pWrappedKey`` is NULL the
length of the wrapped key is returned in ``pusWrappedKeyLen`` and
FC_WrapKey may be called again with ``pWrappedKey`` set to retrieve the
wrapped key.

A user must log into the token (to assume the NSS User role) before
calling ``FC_WrapKey``.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `NSC_WrapKey </en-US/NSC_WrapKey>`__
