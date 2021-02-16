======
sslcrt
======
--- title: sslcrt slug: Mozilla/Projects/NSS/SSL_functions/sslcrt ---

.. note::

   -  This page is part of the `SSL
      Reference </en-US/docs/NSS/SSL_functions/OLD_SSL_Reference>`__
      that we are migrating into the format described in the `MDN Style
      Guide </en-US/docs/Project:MDC_style_guide>`__. If you are
      inclined to help with this migration, your help would be very much
      appreciated.

   -  Upgraded documentation may be found in the `Current NSS
      Reference </NSS_reference>`__

.. _Certificate_Functions:

Certificate Functions
=====================

--------------

.. _Chapter_5_Certificate_Functions:

Chapter 5
Certificate Functions
---------------------

This chapter describes the functions and related types used to work with
a certificate database such as the ``cert7.db`` database provided with
Communicator.

|  `Validating Certificates <#1060423>`__
| `Manipulating Certificates <#1056436>`__
| `Getting Certificate Information <#1056475>`__
| `Comparing SecItem Objects <#1055384>`__

.. _Validating_Certificates:

Validating Certificates
-----------------------

|  ```CERT_VerifyCertNow`` <#1058011>`__
| ```CERT_VerifyCertName`` <#1050342>`__
| ```CERT_CheckCertValidTimes`` <#1056662>`__
| ```NSS_CmpCertChainWCANames`` <#1056760>`__

.. _CERT_VerifyCertNow:

CERT_VerifyCertNow
^^^^^^^^^^^^^^^^^^

Checks that the current date is within the certificate's validity period
and that the CA signature on the certificate is valid.

.. _Syntax:

Syntax
''''''

::

   #include <cert.h> 

::

   SECStatus CERT_VerifyCertNow(
      CERTCertDBHandle *handle,
      CERTCertificate *cert,
      PRBool checkSig,
      SECCertUsage certUsage,
      void *wincx);

.. _Parameters:

Parameters
''''''''''

This function has the following parameters:

+-----------------------------------+-----------------------------------+
| ::                                | A pointer to the certificate      |
|                                   | database handle.                  |
|    handle                         |                                   |
+-----------------------------------+-----------------------------------+
| ::                                | A pointer to the certificate to   |
|                                   | be checked.                       |
|    cert                           |                                   |
+-----------------------------------+-----------------------------------+
| ::                                | Indicates whether certificate     |
|                                   | signatures are to be checked.     |
|    checkSig                       | ``PR_TRUE`` means certificate     |
|                                   | signatures are to be checked.     |
|                                   | ``PR_FALSE`` means certificate    |
|                                   | signatures will not be checked.   |
+-----------------------------------+-----------------------------------+
| ::                                | One of these values:              |
|                                   |                                   |
|    certUsage                      | -  ``certUsageSSLClient``         |
|                                   | -  ``certUsageSSLServer``         |
|                                   | -                                 |
|                                   |  ``certUsageSSLServerWithStepUp`` |
|                                   | -  ``certUsageSSLCA``             |
|                                   | -  ``certUsageEmailSigner``       |
|                                   | -  ``certUsageEmailRecipient``    |
|                                   | -  ``certUsageObjectSigner``      |
|                                   | -  ``certUsageUserCertImport``    |
|                                   | -  ``certUsageVerifyCA``          |
|                                   | -  `                              |
|                                   | `certUsageProtectedObjectSigner`` |
+-----------------------------------+-----------------------------------+
| ::                                | The PIN argument value to pass to |
|                                   | PK11 functions. See description   |
|    wincx                          | below for more information.       |
+-----------------------------------+-----------------------------------+

.. _Returns:

Returns
'''''''

The function returns one of these values:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   ```PR_GetError`` <../../../../../nspr/reference/html/prerr.html#26127>`__
   to obtain the error code.

.. _Description:

Description
'''''''''''

The ``CERT_VerifyCertNow`` function must call one or more PK11 functions
to obtain the services of a PKCS #11 module. Some of the PK11 functions
require a PIN argument (see
```SSL_SetPKCS11PinArg`` <sslfnc.html#1088040>`__ for details), which
must be specified in the ``wincx`` parameter. To obtain the value to
pass in the ``wincx`` parameter, call
```SSL_RevealPinArg`` <sslfnc.html#1123385>`__.

.. _CERT_VerifyCertName:

CERT_VerifyCertName
^^^^^^^^^^^^^^^^^^^

Compares the common name specified in the subject DN for a certificate
with a specified hostname.

.. _Syntax_2:

Syntax
''''''

::

   #include <cert.h>

::

   SECStatus CERT_VerifyCertName(
      CERTCertificate *cert,
      char *hostname);

.. _Parameters_2:

Parameters
''''''''''

This function has the following parameters:

+-----------------------------------+-----------------------------------+
| ::                                | A pointer to the certificate      |
|                                   | against which to check the        |
|    cert                           | hostname referenced by            |
|                                   | ``hostname``.                     |
+-----------------------------------+-----------------------------------+
| ::                                | The hostname to be checked.       |
|                                   |                                   |
|    hostname                       |                                   |
+-----------------------------------+-----------------------------------+

.. _Returns_2:

Returns
'''''''

The function returns one of these values:

-  If the common name in the subject DN for the certificate matches the
   domain name passed in the ``hostname`` parameter, ``SECSuccess``.
-  If the common name in the subject DN for the certificate is not
   identical to the domain name passed in the ``hostname`` parameter,
   ``SECFailure``. Use
   ```PR_GetError`` <../../../../../nspr/reference/html/prerr.html#26127>`__
   to obtain the error code.

.. _Description_2:

Description
'''''''''''

The comparison performed by CERT_VerifyCertName is not a simple string
comparison. Instead, it takes account of the following rules governing
the construction of common names in SSL server certificates:

-  ``*`` matches anything
-  ``?`` matches one character
-  ``\`` escapes a special character
-  ``$`` matches the end of the string
-  ``[abc]`` matches one occurrence of ``a``, ``b``, or ``c``. The only
   character that needs to be escaped in this is ``]``, all others are
   not special.
-  ``[a-z]`` matches any character between ``a`` and ``z``
-  ``[^az]`` matches any character except ``a`` or ``z``
-  ``~`` followed by another shell expression removes any pattern
   matching the shell expression from the match list
-  ``(foo|bar)`` matches either the substring ``foo`` or the substring
   ``bar``. These can be shell expressions as well.

.. _CERT_CheckCertValidTimes:

CERT_CheckCertValidTimes
^^^^^^^^^^^^^^^^^^^^^^^^

Checks whether a specified time is within a certificate's validity
period.

.. _Syntax_3:

Syntax
''''''

::

   #include <cert.h>
   #include <certt.h>

::

   SECCertTimeValidity CERT_CheckCertValidTimes(
      CERTCertificate *cert,
      int64 t);

.. _Parameters_3:

Parameters
''''''''''

This function has the following parameters:

+-----------------------------------+-----------------------------------+
| ::                                | A pointer to the certificate      |
|                                   | whose validity period you want to |
|    cert                           | check against.                    |
+-----------------------------------+-----------------------------------+
| ::                                | The time to check against the     |
|                                   | certificate's validity period.    |
|    t                              | For more information, see the     |
|                                   | NSPR header ``pr_time.h``.        |
+-----------------------------------+-----------------------------------+

.. _Returns_3:

Returns
'''''''

The function returns an enumerator of type ``SECCertTimeValidity``:

::

   typedef enum {
      secCertTimeValid,
      secCertTimeExpired,
      secCertTimeNotValidYet
   } SECCertTimeValidity;

.. _NSS_CmpCertChainWCANames:

NSS_CmpCertChainWCANames
^^^^^^^^^^^^^^^^^^^^^^^^

Determines whether any of the signers in the certificate chain for a
specified certificate are on a specified list of CA names.

.. _Syntax_4:

Syntax
''''''

::

   #include <nss.h>

::

   SECStatus NSS_CmpCertChainWCANames(
      CERTCertificate *cert,
      CERTDistNames *caNames);

.. _Parameters_4:

Parameters
''''''''''

This function has the following parameters:

+-----------------------------------+-----------------------------------+
| ::                                | A pointer to the certificate      |
|                                   | structure for the certificate     |
|    cert                           | whose certificate chain is to be  |
|                                   | checked.                          |
+-----------------------------------+-----------------------------------+
| ::                                | A pointer to a structure that     |
|                                   | contains a list of distinguished  |
|    caNames                        | names (DNs) against which to      |
|                                   | check the DNs for the signers in  |
|                                   | the certificate chain.            |
+-----------------------------------+-----------------------------------+

.. _Returns_4:

Returns
'''''''

The function returns one of these values:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   ```PR_GetError`` <../../../../../nspr/reference/html/prerr.html#26127>`__
   to obtain the error code.

.. _Manipulating_Certificates:

Manipulating Certificates
-------------------------

|  ```CERT_DupCertificate`` <#1058344>`__
| ```CERT_DestroyCertificate`` <#1050532>`__

.. _CERT_DupCertificate:

CERT_DupCertificate
^^^^^^^^^^^^^^^^^^^

Makes a shallow copy of a specified certificate.

.. _Syntax_5:

Syntax
''''''

::

   #include <cert.h>

::

   CERTCertificate *CERT_DupCertificate(CERTCertificate *c)

.. _Parameter:

Parameter
'''''''''

This function has the following parameter:

+-----------------------------------+-----------------------------------+
| ::                                | A pointer to the certificate      |
|                                   | object to be duplicated.          |
|    c                              |                                   |
+-----------------------------------+-----------------------------------+

.. _Returns_5:

Returns
'''''''

If successful, the function returns a pointer to a certificate object of
type ```CERTCertificate`` <ssltyp.html#1027387>`__.

.. _Description_3:

Description
'''''''''''

The ``CERT_DupCertificate`` function increments the reference count for
the certificate passed in the ``c`` parameter.

.. _CERT_DestroyCertificate:

CERT_DestroyCertificate
^^^^^^^^^^^^^^^^^^^^^^^

Destroys a certificate object.

.. _Syntax_6:

Syntax
''''''

::

   #include <cert.h>
   #include <certt.h>

::

   void CERT_DestroyCertificate(CERTCertificate *cert);

.. _Parameters_5:

Parameters
''''''''''

This function has the following parameter:

+-----------------------------------+-----------------------------------+
| ::                                | A pointer to the certificate to   |
|                                   | destroy.                          |
|    cert                           |                                   |
+-----------------------------------+-----------------------------------+

.. _Description_4:

Description
'''''''''''

Certificate and key structures are shared objects. When an application
makes a copy of a particular certificate or key structure that already
exists in memory, SSL makes a *shallow* copy--that is, it increments the
reference count for that object rather than making a whole new copy.
When you call ```CERT_DestroyCertificate`` <#1050532>`__ or
```SECKEY_DestroyPrivateKey`` <sslkey.html#1051017>`__, the function
decrements the reference count and, if the reference count reaches zero
as a result, both frees the memory and sets all the bits to zero. The
use of the word "destroy" in function names or in the description of a
function implies reference counting.

Never alter the contents of a certificate or key structure. If you
attempt to do so, the change affects all the shallow copies of that
structure and can cause severe problems.

.. _Getting_Certificate_Information:

Getting Certificate Information
-------------------------------

|  ```CERT_FindCertByName`` <#1050345>`__
| ```CERT_GetCertNicknames`` <#1050346>`__
| ```CERT_FreeNicknames`` <#1050349>`__
| ```CERT_GetDefaultCertDB`` <#1052308>`__
| ```NSS_FindCertKEAType`` <#1056950>`__

.. _CERT_FindCertByName:

CERT_FindCertByName
^^^^^^^^^^^^^^^^^^^

Finds the certificate in the certificate database with a specified DN.

.. _Syntax_7:

Syntax
''''''

::

   #include <cert.h>

::

   CERTCertificate *CERT_FindCertByName (
      CERTCertDBHandle *handle,
      SECItem *name);

.. _Parameters_6:

Parameters
''''''''''

This function has the following parameters:

+-----------------------------------+-----------------------------------+
| ::                                | A pointer to the certificate      |
|                                   | database handle.                  |
|    handle                         |                                   |
+-----------------------------------+-----------------------------------+
| ::                                | The subject DN of the certificate |
|                                   | you wish to find.                 |
|    name                           |                                   |
+-----------------------------------+-----------------------------------+

.. _Returns_6:

Returns
'''''''

If successful, the function returns a certificate object of type
```CERTCertificate`` <ssltyp.html#1027387>`__.

.. _CERT_GetCertNicknames:

CERT_GetCertNicknames
^^^^^^^^^^^^^^^^^^^^^

Returns the nicknames of the certificates in a specified certificate
database.

.. _Syntax_8:

Syntax
''''''

::

   #include <cert.h>
   #include <certt.h>

::

   CERTCertNicknames *CERT_GetCertNicknames (
      CERTCertDBHandle *handle,
      int what,
      void *wincx);

.. _Parameters_7:

Parameters
''''''''''

This function has the following parameters:

+-----------------------------------+-----------------------------------+
| ::                                | A pointer to the certificate      |
|                                   | database handle.                  |
|    handle                         |                                   |
+-----------------------------------+-----------------------------------+
| ::                                | One of these values:              |
|                                   |                                   |
|    what                           | -  ``SEC_CERT_NICKNAMES_ALL``     |
|                                   | -  ``SEC_CERT_NICKNAMES_USER``    |
|                                   | -  ``SEC_CERT_NICKNAMES_SERVER``  |
|                                   | -  ``SEC_CERT_NICKNAMES_CA``      |
+-----------------------------------+-----------------------------------+
| ::                                | The PIN argument value to pass to |
|                                   | PK11 functions. See description   |
|    wincx                          | below for more information.       |
+-----------------------------------+-----------------------------------+

.. _Returns_7:

Returns
'''''''

The function returns a ``CERTCertNicknames`` object containing the
requested nicknames.

.. _Description_5:

Description
'''''''''''

``CERT_GetCertNicknames`` must call one or more PK11 functions to obtain
the services of a PKCS #11 module. Some of the PK11 functions require a
PIN argument (see ```SSL_SetPKCS11PinArg`` <sslfnc.html#1088040>`__ for
details), which must be specified in the ``wincx`` parameter. To obtain
the value to pass in the ``wincx`` parameter, call
```SSL_RevealPinArg`` <sslfnc.html#1123385>`__.

.. _CERT_FreeNicknames:

CERT_FreeNicknames
^^^^^^^^^^^^^^^^^^

Frees a ``CERTCertNicknames`` structure. This structure is returned by
```CERT_GetCertNicknames`` <#1050346>`__.

.. _Syntax_9:

Syntax
''''''

::

   #include <cert.h>

::

   void CERT_FreeNicknames(CERTCertNicknames *nicknames);

.. _Parameters_8:

Parameters
''''''''''

This function has the following parameter:

+-----------------------------------+-----------------------------------+
| ::                                | A pointer to the                  |
|                                   | ``CERTCertNicknames`` structure   |
|    nicknames                      | to be freed.                      |
+-----------------------------------+-----------------------------------+

.. _CERT_GetDefaultCertDB:

CERT_GetDefaultCertDB
^^^^^^^^^^^^^^^^^^^^^

Returns a handle to the default certificate database.

.. _Syntax_10:

Syntax
''''''

::

   #include <cert.h>

::

   CERTCertDBHandle *CERT_GetDefaultCertDB(void);

.. _Returns_8:

Returns
'''''''

The function returns the ```CERTCertDBHandle`` <ssltyp.html#1028465>`__
for the default certificate database.

.. _Description_6:

Description
'''''''''''

This function is useful for determining whether the default certificate
database has been opened.

.. _NSS_FindCertKEAType:

NSS_FindCertKEAType
^^^^^^^^^^^^^^^^^^^

Returns key exchange type of the keys in an SSL server certificate.

.. _Syntax_11:

Syntax
''''''

::

   #include <nss.h>

::

   SSLKEAType NSS_FindCertKEAType(CERTCertificate * cert);

.. _Parameter_2:

Parameter
'''''''''

This function has the following parameter:

+-----------------------------------+-----------------------------------+
| ::                                | The certificate to check.         |
|                                   |                                   |
|    a                              |                                   |
+-----------------------------------+-----------------------------------+

.. _Returns_9:

Returns
'''''''

The function returns one of these values:

-  ``kt_null = 0``
-  ``kt_rsa``
-  ``kt_dh``
-  ``kt_fortezza``
-  ``kt_kea_size``

.. _Comparing_SecItem_Objects:

Comparing SecItem Objects
-------------------------

.. _SECITEM_CompareItem:

SECITEM_CompareItem
^^^^^^^^^^^^^^^^^^^

Compares two ```SECItem`` <ssltyp.html#1026076>`__ objects and returns a
``SECComparison`` enumerator that shows the difference between them.

.. _Syntax_12:

Syntax
''''''

::

   #include <secitem.h>
   #include <seccomon.h>

::

   SECComparison SECITEM_CompareItem(
      SECItem *a,
      SECItem *b);

.. _Parameters_9:

Parameters
''''''''''

This function has the following parameters:

+-----------------------------------+-----------------------------------+
| ::                                | A pointer to one of the items to  |
|                                   | be compared.                      |
|    a                              |                                   |
+-----------------------------------+-----------------------------------+
| ::                                | A pointer to one of the items to  |
|                                   | be compared.                      |
|    b                              |                                   |
+-----------------------------------+-----------------------------------+

.. _Returns_10:

Returns
'''''''

The function returns an enumerator of type ``SECComparison``.

::

   typedef enum _SECComparison {
      SECLessThan                = -1,
      SECEqual                = 0,
      SECGreaterThan = 1
   } SECComparison;
