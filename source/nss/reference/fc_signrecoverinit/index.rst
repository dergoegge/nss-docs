--- title: FC_SignRecoverInit slug:
Mozilla/Projects/NSS/Reference/FC_SignRecoverInit tags: - NSS ---

.. _Name:

Name
~~~~

FC_SignRecoverInit - initialize a sign recover operation.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_SignRecoverInit(
     CK_SESSION_HANDLE hSession,
     CK_MECHANISM_PTR pMechanism,
     CK_OBJECT_HANDLE hKey
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   {{ mediawiki.external('in') }} session handle.
``pMechanism``
   {{ mediawiki.external('in') }} mechanism to be used for the signing
   operation.
``hKey``
   {{ mediawiki.external('in') }} handle of the key to be used.

.. _Description:

Description
~~~~~~~~~~~

``FC_SignRecoverInit`` initializes a initializes a signature operation
where the (digest) data can be recovered from the signature.

A user must log into the token (to assume the NSS User role) before
calling ``FC_SignRecoverInit``.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `NSC_SignRecoverInit </en-US/NSC_SignRecoverInit>`__
