====================
FC_GetAttributeValue
====================
--- title: FC_GetAttributeValue slug:
Mozilla/Projects/NSS/Reference/FC_GetAttributeValue tags: - NSS ---

.. _Name:

Name
~~~~

FC_GetAttributeValue - get the value of attributes of an object.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_GetAttributeValue(
     CK_SESSION_HANDLE hSession,
     CK_OBJECT_HANDLE hObject,
     CK_ATTRIBUTE_PTR pTemplate,
     CK_ULONG usCount
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``hObject``
   [in] object handle.
``pTemplate``
   [in, out] pointer to template.
``usCount``
   [in] number of attributes in the template.

.. _Description:

Description
~~~~~~~~~~~

``FC_GetAttributeValue`` gets the value of one or more attributes of an
object.

A user must log into the token (to assume the NSS User role) before
getting the attribute values of a secret or private key object.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `NSC_GetAttributeValue </en-US/NSC_GetAttributeValue>`__
