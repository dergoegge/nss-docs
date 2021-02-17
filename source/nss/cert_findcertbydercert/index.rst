======================
CERT_FindCertByDERCert
======================
Find a certificate in the database that matches a DER-encoded
certificate.

.. _Syntax:

Syntax
~~~~~~

::

   #include <cert.h>
   CERTCertificate *CERT_FindCertByDERCert(

       CERTCertDBHandle *handle,
       SECItem          *derCert          );

.. _Parameters:

Parameters
~~~~~~~~~~

+-------------+-------------------------------------------------------+
| ``handle``  | *in* pointer to a                                     |
|             | `CERTCertDBHandle </en-US/NSS/CERTCertDBHandle>`__    |
|             | representing the certificate database to look in      |
+-------------+-------------------------------------------------------+
| ``derCert`` | *in* pointer to an `SECItem </en-US/NSS/SECItem>`__   |
|             | whose ``type`` must be ``siDERCertBuffer`` and whose  |
|             | ``data`` contains a DER-encoded certificate           |
+-------------+-------------------------------------------------------+

.. _Description:

Description
~~~~~~~~~~~

This function looks in the ?NSSCryptoContext? and the ?NSSTrustDomain?
to find the certificate that matches the DER-encoded certificate. A
match is found when the issuer and serial number of the DER-encoded
certificate are found on a certificate in the certificate database.

.. _Returns:

Returns
~~~~~~~

A pointer to a `CERTCertificate </en-US/NSS/CERTCertificate>`__
representing the certificate in the database that matched the
``derCert``, or ``NULL`` if none was found. The certificate is a shallow
copy, use
`CERT_DestroyCertificate </en-US/NSS/CERT_DestroyCertificate>`__ to
decrement the reference count on the certificate instance.

.. _See_Also:

See Also
~~~~~~~~

Occurrences of
```CERT_FindCertByDERCert`` <http://lxr.mozilla.org/security/ident?i=CERT_FindCertByDERCert>`__
in the current NSS source code (generated by
`LXR <http://lxr.mozilla.org/security/>`__).