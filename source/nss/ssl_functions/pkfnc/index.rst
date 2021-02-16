=====
pkfnc
=====
--- title: pkfnc slug: Mozilla/Projects/NSS/SSL_functions/pkfnc ---

.. note::

   -  This page is part of the `SSL
      Reference </en-US/docs/NSS/SSL_functions/OLD_SSL_Reference>`__
      that we are migrating into the format described in the `MDN Style
      Guide </en-US/docs/Project:MDC_style_guide>`__. If you are
      inclined to help with this migration, your help would be very much
      appreciated.

   -  Upgraded documentation may be found in the `Current NSS
      Reference </NSS_reference>`__

.. _PKCS_11_Functions:

PKCS #11 Functions
==================

--------------

.. _Chapter_7_PKCS_11_Functions:

Chapter 7
PKCS #11 Functions
------------------

This chapter describes the core PKCS #11 functions that an application
needs for communicating with cryptographic modules. In particular, these
functions are used for obtaining certificates, keys, and passwords.

|  ```PK11_FindCertFromNickname`` <#1035673>`__
| ```PK11_FindKeyByAnyCert`` <#1026891>`__
| ```PK11_GetSlotName`` <#1030779>`__
| ```PK11_GetTokenName`` <#1026964>`__
| ```PK11_IsHW`` <#1026762>`__
| ```PK11_IsPresent`` <#1022948>`__
| ```PK11_IsReadOnly`` <#1022991>`__
| ```PK11_SetPasswordFunc`` <#1023128>`__

.. _PK11_FindCertFromNickname:

PK11_FindCertFromNickname
^^^^^^^^^^^^^^^^^^^^^^^^^

Finds a certificate from its nickname.

.. _Syntax:

Syntax
''''''

::

   #include <pk11func.h>
   #include <certt.h>

::

   CERTCertificate *PK11_FindCertFromNickname(
      char *nickname,
      void *wincx);

.. _Parameters:

Parameters
''''''''''

This function has the following parameters:

+-----------------------------------+-----------------------------------+
| ::                                | A pointer to the nickname in the  |
|                                   | certificate database or to the    |
|    nickname                       | nickname in the token.            |
+-----------------------------------+-----------------------------------+
| ::                                | A pointer to application data for |
|                                   | the password callback function.   |
|    wincx                          | This pointer is set with          |
|                                   | ```SSL_SetPKCS11                  |
|                                   | PinArg`` <sslfnc.html#1088040>`__ |
|                                   | during SSL configuration. To      |
|                                   | retrieve its current value, use   |
|                                   | ```SSL_RevealP                    |
|                                   | inArg`` <sslfnc.html#1123385>`__. |
+-----------------------------------+-----------------------------------+

.. _Returns:

Returns
'''''''

The function returns one of these values:

-  If successful, a pointer to a certificate structure.
-  If unsuccessful, ``NULL``.

.. _Description:

Description
'''''''''''

A nickname is an alias for a certificate subject. There may be multiple
certificates with the same subject, and hence the same nickname. This
function will return the newest certificate that matches the subject,
based on the NotBefore / NotAfter fields of the certificate. When you
are finished with the certificate structure returned by
``PK11_FindCertFromNickname``, you must free it by calling
```CERT_DestroyCertificate`` <sslcrt.html#1050532>`__.

The ``PK11_FindCertFromNickname`` function calls the password callback
function set with ```PK11_SetPasswordFunc`` <#1023128>`__ and passes it
the pointer specified by the ``wincx`` parameter.

.. _PK11_FindKeyByAnyCert:

PK11_FindKeyByAnyCert
^^^^^^^^^^^^^^^^^^^^^

Finds the private key associated with a specified certificate in any
available slot.

.. _Syntax_2:

Syntax
''''''

::

   #include <pk11func.h>
   #include <certt.h>
   #include <keyt.h>

::

   SECKEYPrivateKey *PK11_FindKeyByAnyCert(
      CERTCertificate *cert,
      void *wincx);

.. _Parameters_2:

Parameters
''''''''''

This function has the following parameters:

+-----------------------------------+-----------------------------------+
| ::                                | A pointer to a certificate        |
|                                   | structure in the certificate      |
|    cert                           | database.                         |
+-----------------------------------+-----------------------------------+
| ::                                | A pointer to application data for |
|                                   | the password callback function.   |
|    wincx                          | This pointer is set with          |
|                                   | ```SSL_SetPKCS11                  |
|                                   | PinArg`` <sslfnc.html#1088040>`__ |
|                                   | during SSL configuration. To      |
|                                   | retrieve its current value, use   |
|                                   | ```SSL_RevealP                    |
|                                   | inArg`` <sslfnc.html#1123385>`__. |
+-----------------------------------+-----------------------------------+

.. _Returns_2:

Returns
'''''''

The function returns one of these values:

-  If successful, a pointer to a private key structure.
-  If unsuccessful, ``NULL``.

.. _Description_2:

Description
'''''''''''

When you are finished with the private key structure returned by
``PK11_FindKeyByAnyCert``, you must free it by calling
```SECKEY_DestroyPrivateKey`` <sslkey.html#1051017>`__.

The ``PK11_FindKeyByAnyCert`` function calls the password callback
function set with ```PK11_SetPasswordFunc`` <#1023128>`__ and passes it
the pointer specified by the ``wincx`` parameter.

.. _PK11_GetSlotName:

PK11_GetSlotName
^^^^^^^^^^^^^^^^

Gets the name of a slot.

.. _Syntax_3:

Syntax
''''''

::

   #include <pk11func.h>

::

   char *PK11_GetSlotName(PK11SlotInfo *slot);

.. _Parameters_3:

Parameters
''''''''''

This function has the following parameter:

+-----------------------------------+-----------------------------------+
| ::                                | A pointer to a slot info          |
|                                   | structure.                        |
|    slot                           |                                   |
+-----------------------------------+-----------------------------------+

.. _Returns_3:

Returns
'''''''

The function returns one of these values:

-  If successful, a pointer to the name of the slot (a string).
-  If unsuccessful, ``NULL``.

.. _Description_3:

Description
'''''''''''

If the slot is freed, the string with the slot name may also be freed.
If you want to preserve it, copy the string before freeing the slot. Do
not try to free the string yourself.

.. _PK11_GetTokenName:

PK11_GetTokenName
^^^^^^^^^^^^^^^^^

Gets the name of the token.

.. _Syntax_4:

Syntax
''''''

::

   #include <pk11func.h>

::

   char *PK11_GetTokenName(PK11SlotInfo *slot);

.. _Parameters_4:

Parameters
''''''''''

This function has the following parameter:

+-----------------------------------+-----------------------------------+
| ::                                | A pointer to a slot info          |
|                                   | structure.                        |
|    slot                           |                                   |
+-----------------------------------+-----------------------------------+

.. _Returns_4:

Returns
'''''''

The function returns one of these values:

-  If successful, a pointer to the name of the token (a string).
-  If unsuccessful, ``NULL``.

.. _Description_4:

Description
'''''''''''

If the slot is freed, the string with the token name may also be freed.
If you want to preserve it, copy the string before freeing the slot. Do
not try to free the string yourself.

.. _PK11_IsHW:

PK11_IsHW
^^^^^^^^^

Finds out whether a slot is implemented in hardware or software.

.. _Syntax_5:

Syntax
''''''

::

   #include <pk11func.h>
   #include <prtypes.h>

::

   PRBool PK11_IsHW(PK11SlotInfo *slot);

.. _Parameters_5:

Parameters
''''''''''

This function has the following parameter:

+-----------------------------------+-----------------------------------+
| ::                                | A pointer to a slot info          |
|                                   | structure.                        |
|    slot                           |                                   |
+-----------------------------------+-----------------------------------+

.. _Returns_5:

Returns
'''''''

The function returns one of these values:

-  If the slot is implemented in hardware, ``PR_TRUE``.
-  If the slot is implemented in software, ``PR_FALSE``.

.. _PK11_IsPresent:

PK11_IsPresent
^^^^^^^^^^^^^^

Finds out whether the token for a slot is available.

.. _Syntax_6:

Syntax
''''''

::

   #include <pk11func.h>
   #include <prtypes.h>

::

   PRBool PK11_IsPresent(PK11SlotInfo *slot);

.. _Parameters_6:

Parameters
''''''''''

This function has the following parameter:

+-----------------------------------+-----------------------------------+
| ::                                | A pointer to a slot info          |
|                                   | structure.                        |
|    slot                           |                                   |
+-----------------------------------+-----------------------------------+

.. _Returns_6:

Returns
'''''''

The function returns one of these values:

-  If token is available, ``PR_TRUE``.
-  If token is disabled or missing, ``PR_FALSE``.

.. _PK11_IsReadOnly:

PK11_IsReadOnly
^^^^^^^^^^^^^^^

Finds out whether a slot is read-only.

.. _Syntax_7:

Syntax
''''''

::

   #include <pk11func.h>
   #include <prtypes.h>

::

   PRBool PK11_IsReadOnly(PK11SlotInfo *slot);

.. _Parameters_7:

Parameters
''''''''''

This function has the following parameter:

+-----------------------------------+-----------------------------------+
| ::                                | A pointer to a slot info          |
|                                   | structure.                        |
|    slot                           |                                   |
+-----------------------------------+-----------------------------------+

.. _Returns_7:

Returns
'''''''

The function returns one of these values:

-  If slot is read-only, ``PR_TRUE``.
-  Otherwise, ``PR_FALSE``.

.. _PK11_SetPasswordFunc:

PK11_SetPasswordFunc
^^^^^^^^^^^^^^^^^^^^

Defines a callback function used by the NSS libraries whenever
information protected by a password needs to be retrieved from the key
or certificate databases.

.. _Syntax_8:

Syntax
''''''

::

   #include <pk11func.h>
   #include <prtypes.h>

::

   void PK11_SetPasswordFunc(PK11PasswordFunc func);

.. _Parameter:

Parameter
'''''''''

This function has the following parameter:

+-----------------------------------+-----------------------------------+
| ::                                | A pointer to the callback         |
|                                   | function to set.                  |
|    func                           |                                   |
+-----------------------------------+-----------------------------------+

.. _Description_5:

Description
'''''''''''

During the course of an SSL operation, it may be necessary for the user
to log in to a PKCS #11 token (either a smart card or soft token) to
access protected information, such as a private key. Such information is
protected with a password that can be retrieved by calling an
application-supplied callback function. The callback function is
identified in a call to ``PK11_SetPasswordFunc`` that takes place during
NSS initialization.

The callback function set up by ``PK11_SetPasswordFunc`` has the
following prototype:

::

   typedef char *(*PK11PasswordFunc)(
      PK11SlotInfo *slot,
      PRBool retry,
      void *arg);

This callback function has the following parameters:

+-----------------------------------+-----------------------------------+
| ::                                | A pointer to a slot info          |
|                                   | structure.                        |
|    slot                           |                                   |
+-----------------------------------+-----------------------------------+
| ::                                | Set to ``PR_TRUE`` if this is a   |
|                                   | retry. This implies that the      |
|    retry                          | callback has previously returned  |
|                                   | the wrong password.               |
+-----------------------------------+-----------------------------------+
| ::                                | A pointer supplied by the         |
|                                   | application that can be used to   |
|    arg                            | pass state information. Can be    |
|                                   | ``NULL``.                         |
+-----------------------------------+-----------------------------------+

This callback function returns one of these values:

-  If successful, a pointer to the password. This memory must have been
   allocated with
   ```PR_Malloc`` <../../../../../nspr/reference/html/prmem2.html#21428>`__
   or
   ```PL_strdup`` <../../../../../nspr/reference/html/plstr.html#21753>`__.
-  If unsuccessful, returns ``NULL``.

Many tokens keep track of the number of attempts to enter a password and
do not allow further attempts after a certain point. Therefore, if the
``retry`` argument is ``PR_TRUE``, indicating that the password was
tried and is wrong, the callback function should return ``NULL`` to
indicate that it is unsuccessful, rather than attempting to return the
same password again. Failing to terminate when the ``retry`` argument is
``PR_TRUE`` can result in an endless loop.

Several functions in the NSS libraries use the password callback
function to obtain the password before performing operations that
involve the protected information. The third parameter to the password
callback function is application-defined and can be used for any
purpose. For example, Communicator uses the parameter to pass
information about which window is associated with the modal dialog box
requesting the password from the user. When NSS libraries call the
password callback function, the value they pass in the third parameter
is determined by ```SSL_SetPKCS11PinArg`` <sslfnc.html#1088040>`__.

.. _See_Also:

See Also
''''''''

For examples of password callback functions, see the samples in the
`Samples </NSS/NSS_Sample_Code>`__ directory.
