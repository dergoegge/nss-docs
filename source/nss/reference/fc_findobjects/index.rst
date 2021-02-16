==============
FC_FindObjects
==============
--- title: FC_FindObjects slug:
Mozilla/Projects/NSS/Reference/FC_FindObjects tags: - NSS ---

.. _Name:

Name
~~~~

FC_FindObjects - Search for one or more objects

.. _Syntax:

Syntax
~~~~~~

.. code:: eval

   CK_RV FC_FindObjects(
     CK_SESSION_HANDLE hSession,
     CK_OBJECT_HANDLE_PTR phObject,
     CK_ULONG usMaxObjectCount,
     CK_ULONG_PTR pusObjectCount
   );

.. _Parameters:

Parameters
~~~~~~~~~~

``hSession``
   [in] session handle.
``pTemplate``
   [out] pointer to location to receive the
   object handles.
``usMaxObjectCount``
   [in] maximum number of handles to retrieve.
``pusObjectCount``
   [out] pointer to location to receive the
   number of returned handles.

.. _Description:

Description
~~~~~~~~~~~

``FC_FindObjects`` returns the next set of object handles matching the
criteria set up by the previous call to ``FC_FindObjectsInit`` and sets
the object count variable to their number or to zero if there are none.

.. _Return_value:

Return value
~~~~~~~~~~~~

.. _Examples:

Examples
~~~~~~~~

.. _See_also:

See also
~~~~~~~~

-  `FC_FindObjectsInit </en-US/FC_FindObjectsInit>`__,
   `NSC_FindObjects </en-US/NSC_FindObjects>`__
