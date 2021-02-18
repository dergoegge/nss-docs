.. _Mozilla_Projects_NSS_SSL_functions_ssltyp:

======
ssltyp
======
.. note::

   -  This page is part of the `SSL Reference </en-US/docs/NSS/SSL_functions/OLD_SSL_Reference>`__
      that we are migrating into the format described in the `MDN Style
      Guide </en-US/docs/Project:MDC_style_guide>`__. If you are inclined to help with this
      migration, your help would be very much appreciated.

   -  Upgraded documentation may be found in the `Current NSS Reference </NSS_reference>`__

.. _Selected_SSL_Types_and_Structures:

Selected SSL Types and Structures
=================================

.. _Chapter_3_Selected_SSL_Types_and_Structures:

Chapter 3
Selected SSL Types and Structures
---------------------------------

This chapter describes some of the most important types and structures used with the functions
described in the rest of this document, and how to manage the memory used for them. Additional types
are described with the functions that use them or in the header files.

|  `Types and Structures <#1030559>`__
| `Managing SECItem Memory <#1029645>`__

.. _Types_and_Structures:

Types and Structures
--------------------

These types and structures are described here:

|  ```CERTCertDBHandle`` <#1028465>`__
| ```CERTCertificate`` <#1027387>`__
| ```PK11SlotInfo`` <#1028593>`__
| ```SECItem`` <#1026076>`__
| ```SECKEYPrivateKey`` <#1026727>`__
| ```SECStatus`` <#1026722>`__

Additional types used by a single function only are described with the function's entry in each
chapter. Some of these functions also use types defined by NSPR and described in the `NSPR
Reference </en-US/docs/Mozilla/Projects/NSPR/Reference>`__.

<a id="> Many of the structures presented here (```CERTCertDBHandle`` <#1028465>`__,
```CERTCertificate`` <#1027387>`__, ```PK11SlotInfo`` <#1028593>`__, and
```SECKEYPrivateKey`` <#1026727>`__) are opaque--that is, they are types defined as structures (for
example, ``CERTCertDBHandleStr``) that may change in future releases of Network Security Services.
As long as you use the form shown here, your code will not need revision.

.. _CERTCertDBHandle:

CERTCertDBHandle
^^^^^^^^^^^^^^^^

An opaque handle structure for open certificate databases.

.. _Syntax:

Syntax
''''''

::

   #include <certt.h>

::

   typedef struct CERTCertDBHandleStr CERTCertDBHandle;

.. _CERTCertificate:

CERTCertificate
^^^^^^^^^^^^^^^

An opaque X.509 certificate object.

.. _Syntax_2:

Syntax
''''''

::

   #include <certt.h>

::

   typedef struct CERTCertificateStr CERTCertificate;

.. _Description:

Description
'''''''''''

Certificate structures are shared objects. When an application makes a copy of a particular
certificate structure that already exists in memory, SSL makes a *shallow* copy--that is, it
increments the reference count for that object rather than making a whole new copy. When you call
```CERT_DestroyCertificate`` <sslcrt.html#1050532>`__, the function decrements the reference count
and, if the reference count reaches zero as a result, frees the memory. The use of the word
"destroy" in function names or in the description of a function often implies reference counting.

Never alter the contents of a certificate structure. If you attempt to do so, the change affects all
the shallow copies of that structure and can cause severe problems.

.. _PK11SlotInfo:

PK11SlotInfo
^^^^^^^^^^^^

An opaque structure representing a physical or logical PKCS #11 slot.

.. _Syntax_3:

Syntax
''''''

::

   #include <pk11expt.h>

``typedef struct PK11SlotInfo``\ Str ``PK11SlotInfo``;

.. _SECItem:

SECItem
^^^^^^^

A structure that points to other structures.

.. _Syntax_4:

Syntax
''''''

::

   #include <seccomon.h>
   #include <prtypes.h>
   #include <secport.h>

::

   typedef enum {
       siBuffer,
       siClearDataBuffer,
       siCipherDataBuffer,
       siDERCertBuffer,
       siEncodedCertBuffer,
       siDERNameBuffer,
       siEncodedNameBuffer,
       siAsciiNameString,
       siAsciiString,
       siDEROID
   } SECItemType;

::

   typedef struct SECItemStr SECItem;

::

   struct SECItemStr {
       SECItemType type;
       unsigned char *data;
       unsigned int len;
   };

.. _Description_2:

Description
'''''''''''

A ``SECItem`` structure can be used to associate your own data with an SSL socket.

To free a structure pointed to by a ``SECItem``, and, if desired, the ``SECItem`` structure itself,
use one the functions ```SECItem_FreeItem`` <#1030620>`__ or ```SECItem_ZfreeItem`` <#1030773>`__.

.. _SECKEYPrivateKey:

SECKEYPrivateKey
^^^^^^^^^^^^^^^^

An opaque, generic key structure.

.. _Syntax_5:

Syntax
''''''

::

   #include <keyt.h>

::

   typedef struct SECKEYPrivateKeyStr SECKEYPrivateKey;

.. _Description_3:

Description
'''''''''''

Key structures are not shared objects. When an application makes a copy of a particular key
structure that already exists in memory, SSL makes a *deep* copy--that is, it makes a whole new copy
of that object. When you call ```SECKEY_DestroyPrivateKey`` <sslkey.html#1051017>`__, the function
both frees the memory and sets all the bits to zero.

Never alter the contents of a key structure. Treat the structure as read only.

.. _SECStatus:

SECStatus
^^^^^^^^^

The return value for many SSL functions.

.. _Syntax_6:

Syntax
''''''

::

   #include <seccomon.h>

::

   typedef enum {
       SECWouldBlock = -2,
       SECFailure = -1,
       SECSuccess = 0
   } SECStatus;

.. _Enumerators:

Enumerators
'''''''''''

The enum includes the following enumerators:

+-------------------------------------------------+-------------------------------------------------+
| ::                                              | Reserved for internal use.                      |
|                                                 |                                                 |
|    SECWouldBlock                                |                                                 |
+-------------------------------------------------+-------------------------------------------------+
| ::                                              | The operation failed. To find out why, call     |
|                                                 | ``PR_GetError``.                                |
|    SECFailure                                   |                                                 |
+-------------------------------------------------+-------------------------------------------------+
| ::                                              | The operation succeeded. In this case the value |
|                                                 | returned by ``PR_GetError`` is meaningless.     |
|    SECSuccess                                   |                                                 |
+-------------------------------------------------+-------------------------------------------------+

.. _Managing_SECItem_Memory:

Managing SECItem Memory
-----------------------

These functions are available for managing the memory associated with ``SECItem`` structures and the
structures to which they point.

|  ```SECItem_FreeItem`` <#1030620>`__
| ```SECItem_ZfreeItem`` <#1030773>`__

.. _SECItem_FreeItem:

SECItem_FreeItem
^^^^^^^^^^^^^^^^

Frees the memory associated with a ``SECItem`` structure.

.. _Syntax_7:

Syntax
''''''

::

   #include <prtypes.h> 

::

   SECStatus SECItem_FreeItem (
      SECItem *item,
      PRBool freeItem)

.. _Parameter:

Parameter
'''''''''

This function has the following parameter:

+----------+--------------------------------------------------------------------------------------+
| ``item`` | A pointer to a ``SECItem``\ structure.                                               |
+----------+--------------------------------------------------------------------------------------+
| freeItem | When ``PR_FALSE``, free only the structure pointed to. Otherwise, free both the      |
|          | structure pointed to and the ``SECItem`` structure itself.                           |
+----------+--------------------------------------------------------------------------------------+

.. _Returns:

Returns
'''''''

The function returns one of these value\ ``s``:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   `PR_GetError <../../../../../nspr/reference/html/prerr.html#26127>`__ to retrieve the error code.

.. _Description_4:

Description
'''''''''''

This function frees the memory associated with the structure to which the specified item points,
when that structure is no longer used. When ``freeItem`` is not ``PR_FALSE``, also frees the item
structure itself.

.. _SECItem_ZfreeItem:

SECItem_ZfreeItem
^^^^^^^^^^^^^^^^^

Zeroes and frees the memory associated with a ``SECItem`` structure.

.. _Syntax_8:

Syntax
''''''

::

   #include <prtypes.h> 

::

   SECStatus SECItem_ZfreeItem (
      SECItem *item,
      PRBool freeItem)

.. _Parameter_2:

Parameter
'''''''''

This function has the following parameter:

+----------+--------------------------------------------------------------------------------------+
| ``item`` | A pointer to a ``SECItem``\ structure.                                               |
+----------+--------------------------------------------------------------------------------------+
| freeItem | When ``PR_FALSE``, free only the structure pointed to. Otherwise, free both the      |
|          | structure pointed to and the ``SECItem`` structure itself.                           |
+----------+--------------------------------------------------------------------------------------+

.. _Returns_2:

Returns
'''''''

The function returns one of these value\ ``s``:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   `PR_GetError <../../../../../nspr/reference/html/prerr.html#26127>`__ to retrieve the error code.

.. _Description_5:

Description
'''''''''''

This function is similar to ```SECItem_FreeItem`` <#1030620>`__, except that it overwrites the
structures to be freed with zeroes before it frees them. Zeros and frees the memory associated with
the structure to which the specified item points, when that structure is no longer used. When
``freeItem`` is not ``PR_FALSE``, also zeroes and frees the item structure itself.
