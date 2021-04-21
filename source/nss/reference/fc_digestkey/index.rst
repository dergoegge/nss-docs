.. _Mozilla_Projects_NSS_Reference_FC_DigestKey:

FC_DigestKey
============

`Name <#name>`__
~~~~~~~~~~~~~~~~

.. container::

   FC_DigestKey - add the digest of a key to a multi-part digest operation.

`Syntax <#syntax>`__
~~~~~~~~~~~~~~~~~~~~

.. container::

   .. code:: eval

      CK_RV FC_DigestKey(
        CK_SESSION_HANDLE hSession,
        CK_OBJECT_HANDLE hKey
      );

`Parameters <#parameters>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   ``hSession``
      [in] session handle.
   ``hKey``
      [in] handle of the key to be digested.

`Description <#description>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   ``FC_DigestKey`` continues a multi-part digest operation by digesting the value of a secret key.
   The digest for the entire message is returned by a call to
   :ref:`Mozilla_Projects_NSS_Reference_FC_DigestFinal`.

   A user must log into the token (to assume the NSS User role) before calling ``FC_DigestKey``.

.. _return_value:

`Return value <#return_value>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

`Examples <#examples>`__
~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

.. _see_also:

`See also <#see_also>`__
~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   -  :ref:`Mozilla_Projects_NSS_Reference_FC_DigestInit`,
      :ref:`Mozilla_Projects_NSS_Reference_FC_DigestFinal`, `NSC_DigestKey </en-US/NSC_DigestKey>`__