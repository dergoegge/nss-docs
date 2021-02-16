--- title: FC_SetAttributeValue slug:
Mozilla/Projects/NSS/Reference/FC_SetAttributeValue tags: - NSS ---

.. _Name:

Name
~~~~

FC_SetAttributeValue - set the values of attributes of an object.

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_SetAttributeValue(
     CK_SESSION_HANDLE hSession,
     CK_OBJECT_HANDLE hObject,
     CK_ATTRIBUTE_PTR pTemplate,
     CK_ULONG usCount
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   {{ mediawiki.external('in') }} session handle.
``hObject``
   {{ mediawiki.external('in') }} object handle.
``pTemplate``
   {{ mediawiki.external('in, out') }} pointer to template.
``usCount``
   {{ mediawiki.external('in') }} number of attributes in the template.

.. _Description:

Description
~~~~~~~~~~~

``FC_SetAttributeValue`` sets the value of one or more attributes of an
object.

A user must log into the token before setting the attribute values of a
secret or private key object.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `NSC_SetAttributeValue </en-US/NSC_SetAttributeValue>`__
