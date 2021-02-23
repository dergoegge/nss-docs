.. _Mozilla_Projects_NSS_Reference_NSS_Certificate_Functions:

=========================
NSS Certificate Functions
=========================
.. _Certificate_Functions:

Certificate Functions
~~~~~~~~~~~~~~~~~~~~~

This chapter describes the functions and related types used to work with
a certificate database such as the cert8.db database provided with NSS.
This was converted from `"Chapter 5: Certificate
Functions" <https://www.mozilla.org/projects/security/pki/nss/ref/ssl/sslcrt.html>`__.

-  :ref:`Mozilla_Projects_NSS_reference`
-  `Validating
   Certificates <NSS_Certificate_Functions#Validating_Certificates>`__
-  `Manipulating
   Certificates <NSS_Certificate_Functions#Manipulating_Certificates>`__
-  `Getting Certificate
   Information <NSS_Certificate_Functions#Getting_Certificate_Information>`__
-  `Comparing SecItem
   Objects <NSS_Certificate_Functions#Comparing_SecItem_Objects>`__

.. _Validating_Certificates:

Validating Certificates
^^^^^^^^^^^^^^^^^^^^^^^

-  `CERT_VerifyCertNow <NSS_Certificate_Functions#CERT_VerifyCertNow>`__
-  `CERT_VerifyCert <NSS_Certificate_Functions#CERT_VerifyCert>`__
-  `CERT_VerifyCertName <NSS_Certificate_Functions#CERT_VerifyCertName>`__
-  `CERT_CheckCertValidTimes <NSS_Certificate_Functions#CERT_CheckCertValidTimes>`__
-  `NSS_CmpCertChainWCANames <NSS_Certificate_Functions#NSS_CmpCertChainWCANames>`__

.. _CERT_VerifyCertNow:

CERT_VerifyCertNow
''''''''''''''''''

Checks that the current date is within the certificate's validity period
and that the CA signature on the certificate is valid.

.. _Syntax:

Syntax
      

.. code:: eval

   #include <cert.h>

.. code:: eval

   SECStatus CERT_VerifyCertNow(
     CERTCertDBHandle *handle,
     CERTCertificate *cert,
     PRBool checkSig,
     SECCertUsage certUsage,
     void *wincx);

.. _Parameters:

Parameters
          

This function has the following parameters:

*handle*\ A pointer to the certificate database handle.

*cert*\ A pointer to the certificate to be checked.

*checkSig*\ Indicates whether certificate signatures are to be checked.

-  PR_TRUE means certificate signatures are to be checked.
-  PR_FALSE means certificate signatures will not be checked.

*certUsage*\ One of these values:

-  certUsageSSLClient
-  certUsageSSLServer
-  certUsageSSLServerWithStepUp
-  certUsageSSLCA
-  certUsageEmailSigner
-  certUsageEmailRecipient
-  certUsageObjectSigner
-  certUsageUserCertImport
-  certUsageVerifyCA
-  certUsageProtectedObjectSigner

*wincx*\ The PIN argument value to pass to PK11 functions. See
description below for more information.

.. _Returns:

Returns
       

The function returns one of these values:

-  If successful, SECSuccess.
-  If unsuccessful, SECFailure. Use PR_GetError to obtain the error
   code.

.. _Description:

Description
           

The CERT_VerifyCertNow function must call one or more PK11 functions to
obtain the services of a PKCS #11 module. Some of the PK11 functions
require a PIN argument (see SSL_SetPKCS11PinArg for details), which must
be specified in the wincx parameter. To obtain the value to pass in the
wincx parameter, call SSL_RevealPinArg.

.. _CERT_VerifyCert:

CERT_VerifyCert
'''''''''''''''

Checks that the a given aribrary date is within the certificate's
validity period and that the CA signature on the certificate is valid.
It also optionally returns a log of all the problems with the chain.
Calling CERT_VerifyCert with the parameters: CERT_VerifyCert(handle,
cert, checkSig, certUsage, PR_Now(), wincx, NULL) is equivalent to
calling CERT_VerifyNow(handle, cert, checkSig, certUsage, wincx).

.. _Syntax_2:

Syntax
      

.. code:: eval

   #include <cert.h>

.. code:: eval

   SECStatus CERT_VerifyCert(
     CERTCertDBHandle *handle,
     CERTCertificate *cert,
     PRBool checkSig,
     SECCertUsage certUsage,
     int 64 t,
     void *wincx
     CERTVerifyLog *log);

.. _Parameters_2:

Parameters
          

This function has the following parameters:

*handle*\ A pointer to the certificate database handle.

*cert*\ A pointer to the certificate to be checked.

*checkSig*\ Indicates whether certificate signatures are to be checked.

-  PR_TRUE means certificate signatures are to be checked.
-  PR_FALSE means certificate signatures will not be checked.

*certUsage*\ One of these values:

-  certUsageSSLClient
-  certUsageSSLServer
-  certUsageSSLServerWithStepUp
-  certUsageSSLCA
-  certUsageEmailSigner
-  certUsageEmailRecipient
-  certUsageObjectSigner
-  certUsageUserCertImport
-  certUsageVerifyCA
-  certUsageProtectedObjectSigner

*t*\ Time in which to validate the certificate.

*wincx*\ The PIN argument value to pass to PK11 functions. See
description below for more information.

*log*\ Optional certificate log which returns all the errors in
processing a given certificate chain. See
:ref:`Mozilla_Projects_NSS_CERTVerify_Log` for more information.

.. _Returns_2:

Returns
       

The function returns one of these values:

-  If successful, SECSuccess.
-  If unsuccessful, SECFailure. Use PR_GetError to obtain the error
   code.

.. _Description_2:

Description
           

The CERT_VerifyCert function must call one or more PK11 functions to
obtain the services of a PKCS #11 module. Some of the PK11 functions
require a PIN argument (see SSL_SetPKCS11PinArg for details), which must
be specified in the wincx parameter. To obtain the value to pass in the
wincx parameter, call SSL_RevealPinArg.

.. _CERT_VerifyCertName:

CERT_VerifyCertName
'''''''''''''''''''

Compares the common name specified in the subject DN for a certificate
with a specified hostname.

.. _Syntax_3:

Syntax
      

.. code:: eval

   #include <cert.h>

.. code:: eval

   SECStatus CERT_VerifyCertName(
     CERTCertificate *cert,
     char *hostname);

.. _Parameters_3:

Parameters
          

This function has the following parameters:

*cert*\ A pointer to the certificate against which to check the hostname
referenced by hostname.

*hostname*\ The hostname to be checked.

.. _Returns_3:

Returns
       

The function returns one of these values:

-  If the common name in the subject DN for the certificate matches the
   domain name passed in the hostname parameter, SECSuccess.
-  If the common name in the subject DN for the certificate is not
   identical to the domain name passed in the hostname parameter,
   SECFailure. Use PR_GetError to obtain the error code.

.. _Description_3:

Description
           

The comparison performed by CERT_VerifyCertName is not a simple string
comparison. Instead, it takes account of the following rules governing
the construction of common names in SSL server certificates:

-  \* matches anything
-   ? matches one character
-  \\ escapes a special character
-  $ matches the end of the string
-  [abc] matches one occurrence of a, b, or c.
   The only character that needs to be escaped in this is ], all others
   are not special.
-  [a-z] matches any character between a and z
-  [^az] matches any character except a or z
-  ~ followed by another shell expression removes any pattern matching
   the shell expression from the match list
-  (foo|bar) matches either the substring foo or the substring bar.
   These can be shell expressions as well.

.. _CERT_CheckCertValidTimes:

CERT_CheckCertValidTimes
''''''''''''''''''''''''

Checks whether a specified time is within a certificate's validity
period.

.. _Syntax_4:

Syntax
      

.. code:: eval

   #include <cert.h>
   #include <certt.h>

.. code:: eval

   SECCertTimeValidity CERT_CheckCertValidTimes(
     CERTCertificate *cert,
     int64 t);

.. _Parameters_4:

Parameters
          

This function has the following parameters:

*cert*\ A pointer to the certificate whose validity period you want to
check against.

*t*\ The time to check against the certificate's validity period. For
more information, see the NSPR header pr_time.h.

.. _Returns_4:

Returns
       

The function returns an enumerator of type SECCertTimeValidity:

.. code:: eval

   typedef enum {
     secCertTimeValid,
     secCertTimeExpired,
     secCertTimeNotValidYet
   } SECCertTimeValidity;

.. _NSS_CmpCertChainWCANames:

NSS_CmpCertChainWCANames
''''''''''''''''''''''''

Determines whether any of the signers in the certificate chain for a
specified certificate are on a specified list of CA names.

.. _Syntax_5:

Syntax
      

.. code:: eval

   #include <nss.h>

   SECStatus NSS_CmpCertChainWCANames(
     CERTCertificate *cert,
     CERTDistNames *caNames);

.. _Parameters_5:

Parameters
          

This function has the following parameters:

*cert*\ A pointer to the certificate structure for the certificate whose
certificate chain is to be checked.

*caNames*\ A pointer to a structure that contains a list of
distinguished names (DNs) against which to check the DNs for the signers
in the certificate chain.

.. _Returns_5:

Returns
       

The function returns one of these values:

-  If successful, SECSuccess.
-  If unsuccessful, SECFailure. Use PR_GetError to obtain the error
   code.

.. _Manipulating_Certificates:

Manipulating Certificates
^^^^^^^^^^^^^^^^^^^^^^^^^

-  :ref:`Mozilla_Projects_NSS_Certificate_Functions#CERT_DupCertificate`
-  :ref:`Mozilla_Projects_NSS_Certificate_Functions#CERT_DestroyCertificate`

.. _CERT_DupCertificate:

CERT_DupCertificate
'''''''''''''''''''

Makes a shallow copy of a specified certificate.

.. _Syntax_6:

Syntax
      

.. code:: eval

   #include <cert.h>

.. code:: eval

   CERTCertificate *CERT_DupCertificate(CERTCertificate *c)

.. _Parameter:

Parameter
         

This function has the following parameter:

*c*\ A pointer to the certificate object to be duplicated.

.. _Returns_6:

Returns
       

If successful, the function returns a pointer to a certificate object of
type CERTCertificate.

.. _Description_4:

Description
           

The CERT_DupCertificate function increments the reference count for the
certificate passed in the c parameter.

.. _CERT_DestroyCertificate:

CERT_DestroyCertificate
'''''''''''''''''''''''

Destroys a certificate object.

.. _Syntax_7:

Syntax
      

.. code:: eval

   #include <cert.h>
   #include <certt.h>

.. code:: eval

   void CERT_DestroyCertificate(CERTCertificate *cert);

.. _Parameters_6:

Parameters
          

This function has the following parameter:

*cert*\ A pointer to the certificate to destroy.

.. _Description_5:

Description
           

Certificate and key structures are shared objects. When an application
makes a copy of a particular certificate or key structure that already
exists in memory, SSL makes a shallow copy--that is, it increments the
reference count for that object rather than making a whole new copy.
When you call CERT_DestroyCertificate or SECKEY_DestroyPrivateKey, the
function decrements the reference count and, if the reference count
reaches zero as a result, both frees the memory and sets all the bits to
zero. The use of the word "destroy" in function names or in the
description of a function implies reference counting.

Never alter the contents of a certificate or key structure. If you
attempt to do so, the change affects all the shallow copies of that
structure and can cause severe problems.

.. _Getting_Certificate_Information:

Getting Certificate Information
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  :ref:`Mozilla_Projects_NSS_Certificate_Functions#CERT_FindCertByName`
-  :ref:`Mozilla_Projects_NSS_Certificate_Functions#CERT_GetCertNicknames`
-  :ref:`Mozilla_Projects_NSS_Certificate_Functions#CERT_FreeNicknames`
-  :ref:`Mozilla_Projects_NSS_Certificate_Functions#CERT_GetDefaultCertDB`
-  :ref:`Mozilla_Projects_NSS_Certificate_Functions#NSS_FindCertKEAType`

.. _CERT_FindCertByName:

CERT_FindCertByName
'''''''''''''''''''

Finds the certificate in the certificate database with a specified DN.

.. _Syntax_8:

Syntax
      

.. code:: eval

   #include <cert.h>

.. code:: eval

   CERTCertificate *CERT_FindCertByName (
     CERTCertDBHandle *handle,
     SECItem *name);

.. _Parameters_7:

Parameters
          

This function has the following parameters:

*handle*\ A pointer to the certificate database handle.

*name*\ The subject DN of the certificate you wish to find.

.. _Returns_7:

Returns
       

If successful, the function returns a certificate object of type
CERTCertificate.

.. _CERT_GetCertNicknames:

CERT_GetCertNicknames
'''''''''''''''''''''

Returns the nicknames of the certificates in a specified certificate
database.

.. _Syntax_9:

Syntax
      

.. code:: eval

   #include <cert.h>
   #include <certt.h>

.. code:: eval

   CERTCertNicknames *CERT_GetCertNicknames (
     CERTCertDBHandle *handle,
     int what,
     void *wincx);

.. _Parameters_8:

Parameters
          

This function has the following parameters:

*handle*\ A pointer to the certificate database handle.

*what*\ One of these values:

-  SEC_CERT_NICKNAMES_ALL
-  SEC_CERT_NICKNAMES_USER
-  SEC_CERT_NICKNAMES_SERVER
-  SEC_CERT_NICKNAMES_CA

*wincx*\ The PIN argument value to pass to PK11 functions. See
description below for more information.

.. _Returns_8:

Returns
       

The function returns a CERTCertNicknames object containing the requested
nicknames.

.. _Description_6:

Description
           

CERT_GetCertNicknames must call one or more PK11 functions to obtain the
services of a PKCS #11 module. Some of the PK11 functions require a PIN
argument (see SSL_SetPKCS11PinArg for details), which must be specified
in the wincx parameter. To obtain the value to pass in the wincx
parameter, call SSL_RevealPinArg.

.. _CERT_FreeNicknames:

CERT_FreeNicknames
''''''''''''''''''

Frees a CERTCertNicknames structure. This structure is returned by
CERT_GetCertNicknames.

.. _Syntax_10:

Syntax
      

.. code:: eval

   #include <cert.h>

.. code:: eval

   void CERT_FreeNicknames(CERTCertNicknames *nicknames);

.. _Parameters_9:

Parameters
          

This function has the following parameter:

*nicknames*\ A pointer to the CERTCertNicknames structure to be freed.

.. _CERT_GetDefaultCertDB:

CERT_GetDefaultCertDB
'''''''''''''''''''''

Returns a handle to the default certificate database.

.. _Syntax_11:

Syntax
      

.. code:: eval

   #include <cert.h>

.. code:: eval

   CERTCertDBHandle *CERT_GetDefaultCertDB(void);

.. _Returns_9:

Returns
       

The function returns the CERTCertDBHandle for the default certificate
database.

.. _Description_7:

Description
           

This function is useful for determining whether the default certificate
database has been opened.

.. _NSS_FindCertKEAType:

NSS_FindCertKEAType
'''''''''''''''''''

Returns key exchange type of the keys in an SSL server certificate.

.. _Syntax_12:

Syntax
      

.. code:: eval

   #include <nss.h>

.. code:: eval

   SSLKEAType NSS_FindCertKEAType(CERTCertificate * cert);

.. _Parameter_2:

Parameter
         

This function has the following parameter:

*a*\ The certificate to check.

.. _Returns_10:

Returns
       

The function returns one of these values:

-  kt_null = 0
-  kt_rsa
-  kt_dh
-  kt_fortezza
-  kt_kea_size

.. _Comparing_SecItem_Objects:

Comparing SecItem Objects
^^^^^^^^^^^^^^^^^^^^^^^^^

.. _SECITEM_CompareItem:

SECITEM_CompareItem
'''''''''''''''''''

Compares two SECItem objects and returns a SECComparison enumerator that
shows the difference between them.

.. _Syntax_13:

Syntax
      

.. code:: eval

   #include <secitem.h>
   #include <seccomon.h>

.. code:: eval

   SECComparison SECITEM_CompareItem(
     SECItem *a,
     SECItem *b);

.. _Parameters_10:

Parameters
          

This function has the following parameters:

*a*\ A pointer to one of the items to be compared.

*b*\ A pointer to one of the items to be compared.

.. _Returns_11:

Returns
       

The function returns an enumerator of type SECComparison.

.. code:: eval

   typedef enum _SECComparison {
     SECLessThan                = -1,
     SECEqual                = 0,
     SECGreaterThan = 1
   } SECComparison;