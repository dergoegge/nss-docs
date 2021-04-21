.. _Mozilla_Projects_NSS_Reference_FC_SignInit:

FC_SignInit
===========

`Name <#name>`__
~~~~~~~~~~~~~~~~

.. container::

   FC_SignInit - initialize a signing operation.

`Syntax <#syntax>`__
~~~~~~~~~~~~~~~~~~~~

.. container::

   .. code:: eval

      CK_RV FC_SignInit(
        CK_SESSION_HANDLE hSession,
        CK_MECHANISM_PTR pMechanism,
        CK_OBJECT_HANDLE hKey
      );

`Parameters <#parameters>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   ``hSession``
      [in] session handle.
   ``pMechanism``
      [in] mechanism to be used for the subsequent signing operation.
   ``hKey``
      [in] handle of the key to be used .

`Description <#description>`__
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. container::

   ``FC_SignInit`` initializes a signature operation.

   A user must log into the token (to assume the NSS User role) before calling ``FC_SignInit``.

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

   -  `NSC_SignInit </en-US/NSC_SignInit>`__ :ref:`Mozilla_Projects_NSS_Reference_FC_Sign`
      :ref:`Mozilla_Projects_NSS_Reference_FC_SignUpdate`
      :ref:`Mozilla_Projects_NSS_Reference_FC_SignFinal`