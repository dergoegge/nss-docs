.. _Mozilla_Projects_NSS_SSL_functions_sslkey:

======
sslkey
======
.. note::

   -  This page is part of the `SSL Reference </en-US/docs/NSS/SSL_functions/OLD_SSL_Reference>`__
      that we are migrating into the format described in the `MDN Style
      Guide </en-US/docs/Project:MDC_style_guide>`__. If you are inclined to help with this
      migration, your help would be very much appreciated.

   -  Upgraded documentation may be found in the `Current NSS Reference </NSS_reference>`__

.. _Key_Functions:

Key Functions
=============


.. _Chapter_6_Key_Functions:

Chapter 6
Key Functions
-------------

This chapter describes two functions used to manipulate private keys and key databases such as the
``key3.db`` database provided with Communicator.

|  ```SECKEY_GetDefaultKeyDB`` <#1051479>`__
| ```SECKEY_DestroyPrivateKey`` <#1051017>`__

.. _SECKEY_GetDefaultKeyDB:

SECKEY_GetDefaultKeyDB
^^^^^^^^^^^^^^^^^^^^^^

Returns a handle to the default key database opened by ```NSS_Init`` <sslfnc.html#1067601>`__.

.. _Syntax:

Syntax
''''''

::

   #include <key.h>
   #include <keyt.h>

::

   SECKEYKeyDBHandle *SECKEY_GetDefaultKeyDB(void);

.. _Returns:

Returns
'''''''

The function returns a handle of type ``SECKEYKeyDBHandle``.

.. _Description:

Description
'''''''''''

```NSS_Init`` <sslfnc.html#1067601>`__ opens the certificate, key, and security module databases
that you specify for use with NSS. ``SECKEYKeyDBHandle`` returns a handle to the key database opened
by ``NSS_Init``.

.. _SECKEY_DestroyPrivateKey:

SECKEY_DestroyPrivateKey
^^^^^^^^^^^^^^^^^^^^^^^^

Destroys a private key structure.

.. _Syntax_2:

Syntax
''''''

::

   #include <key.h>
   #include <keyt.h>

::

   void SECKEY_DestroyPrivateKey(SECKEYPrivateKey *key);

.. _Parameter:

Parameter
'''''''''

This function has the following parameter:

+-------------------------------------------------+-------------------------------------------------+
| ::                                              | A pointer to the private key structure to       |
|                                                 | destroy.                                        |
|    key                                          |                                                 |
+-------------------------------------------------+-------------------------------------------------+

.. _Description_2:

Description
'''''''''''

Certificate and key structures are shared objects. When an application makes a copy of a particular
certificate or key structure that already exists in memory, SSL makes a *shallow* copy--that is, it
increments the reference count for that object rather than making a whole new copy. When you call
```CERT_DestroyCertificate`` <sslcrt.html#1050532>`__ or
```SECKEY_DestroyPrivateKey`` <#1051017>`__, the function decrements the reference count and, if the
reference count reaches zero as a result, both frees the memory and sets all the bits to zero. The
use of the word "destroy" in function names or in the description of a function implies reference
counting.

Never alter the contents of a certificate or key structure. If you attempt to do so, the change
affects all the shallow copies of that structure and can cause severe problems.