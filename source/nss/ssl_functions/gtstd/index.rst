.. _Mozilla_Projects_NSS_SSL_functions_gtstd:

=====
gtstd
=====
.. note::

   -  This page is part of the `SSL Reference </en-US/docs/NSS/SSL_functions/OLD_SSL_Reference>`__
      that we are migrating into the format described in the `MDN Style
      Guide </en-US/docs/Project:MDC_style_guide>`__. If you are inclined to help with this
      migration, your help would be very much appreciated.

   -  Upgraded documentation may be found in the `Current NSS Reference </NSS_reference>`__

.. _Getting_Started_With_SSL:

Getting Started With SSL
========================

.. _Chapter_2_Getting_Started_With_SSL:

Chapter 2
Getting Started With SSL
------------------------

This chapter describes how to set up your environment, including certificate and key databases.

|  `SSL, PKCS #11, and the Default Security Databases <#1011970>`__
| `Setting Up the Certificate and Key Databases <#1011987>`__
| `Building NSS Programs <#1013274>`__

.. _SSL_PKCS_11_and_the_Default_Security_Databases:

SSL, PKCS #11, and the Default Security Databases
-------------------------------------------------

The basic relationships among the NSS libraries are described in `Introduction to Network Security
Services <../../intro.html>`__. Before running the sample programs, it's important to understand the
relationships between the SSL interface, the PKCS #11 interface, PKCS #11 modules, and the default
Netscape security databases.

A **PKCS #11 module** (also called a **cryptographic module**) manages cryptographic services such
as encryption and decryption via the PKCS #11 interface. PKCS #11 modules can be thought of as
drivers for cryptographic devices that can be implemented in either hardware or software. Netscape
provides a built-in PKCS #11 module with NSS. Other kinds of PKCS #11 modules include the Netscape
FORTEZZA module, used by the government, and the Litronic PKCS #11 module for smart card readers.

`Figure 2.1 <#1013181>`__ illustrates the relationships between NSPR, SSL, PKCS #11, and the
available cryptographic modules. SSL is built on top of NSPR, which handles sockets, threads, and
related low-level OS operations. On any given server or client, one or more PKCS #11 modules may be
available.

**Figure 2.1    Relationships among NSS libraries, cryptographic modules, slots, and tokens**

.. image:: pkcs.gif

As shown in the figure, SSL communicates with PKCS #11 modules through the PKCS #11 interface. Any
PKCS #11 module that supports PKCS #11 can be used with the NSS libraries. Netscape software uses a
file called ``secmod.db`` to keep track of the modules available.

A PKCS #11 module always has one or more **slots,** which may be implemented as physical hardware
slots in some form of physical reader (for example, for smart cards) or as conceptual slots in
software. Each slot for a PKCS #11 module can in turn contain a **token,** which is the hardware or
software device that actually provides cryptographic services and optionally stores certificates and
keys.

Netscape provides three built-in modules with NSS and with server and client products:

-  The default Netscape Internal PKCS #11 Module comes with two built-in tokens:

   -  The Generic Crypto Services token performs all cryptographic operations, such as encryption,
      decryption, and hashing.
   -  The Communicator Certificate DB token handles all communication with the certificate and key
      database files (called ``cert``\ *X*\ ``.db`` and ``key``\ *X*\ ``.db``, respectively,
      where\ *X* is a version number) that store certificates and keys.

-  The FORTEZZA module is intended for use with FORTEZZA hardware tokens.
-  The FIPS 140-1 module is compliant with the FIPS 140-1 government standard for implementations of
   cryptographic modules. Many products sold to the U.S. government must comply with one or more of
   the FIPS standards. The FIPS 140-1 module includes a single, built-in FIPS 140-1 Certificate DB
   token (see `Figure 2.1 <#1013181>`__), which handles both cryptographic operations and
   communication with the ``cert``\ *X*\ ``.db`` and ``key``\ *X*\ ``.db`` files.

If you are creating a server application, you must use the Certificate Database Tool, which comes
with NSS, to create the ``cert``\ *X*\ ``.db`` and ``key``\ *X*\ ``.db`` files and populate them
with the appropriate certificates and keys.

If you are creating a client application, you can use either the Certificate Database Tool or the
Communicator security interface to create the database files and populate them with the appropriate
certificates and keys. You can use Communicator to set up client certificate databases by obtaining
certificates from either a public CA or from a certificate server such as Netscape Certificate
Management System. The instructions that follow assume you are using the Certificate Database Tool
to set up both the server and client databases for testing purposes.

You can use the Security Module Database Tool, a command-line utility that comes with NSS, to manage
PKCS #11 module information within s\ ``ecmod.db`` files. The Security Module Database Tool allows
you to add and delete PKCS #11 modules, change passwords, set defaults, list module contents, enable
or disable slots, enable or disable FIPS-140-1 compliance, and assign default providers for
cryptographic operations.

.. _Setting_Up_the_Certificate_and_Key_Databases:

Setting Up the Certificate and Key Databases
--------------------------------------------

Before you can run the sample programs (``server.c`` and ``client.c``) that come with NSS, you must
set up certificate, key, and security module databases for both the client and the server and
populate them with valid CA, client SSL, and server SSL certificates. The following sections decribe
how to the Certificate Database Tool to perform these tasks:

|  `Setting Up the CA DB and Certificate <#1012301>`__
| `Setting Up the Server DB and Certificate <#1012351>`__
| `Setting Up the Client DB and Certificate <#1012067>`__
| `Verifying the Server and Client Certificates <#1012108>`__

   **WARNING:** The instructions below illustrate the use of NSS command line tools to operate a
   simple root Certificate Authority for test purposes only. The CA, SSL server and SSL client
   certificates produced by these instructions work correctly for short term testing purposes.
   Although it is possible to use NSS command line tools to operate a proper CA, these instructions
   do not provide nearly enough understanding of the many considerations required to competently
   operate a CA. The NSS teams **strongly** recommends that users should not attempt to operate a CA
   for use in mission critical production business uses using NSS's command line tools, nor with the
   simple command line test tools that come with any package of cryptographic libraries. Many who
   have attempted it have eventually come to regret that decision. For production deployment, the
   NSS team strongly recommends that you either:

   -  Use certificates from a competent third-party CA that is already known to your relying party
      software (e.g. your SSL clients), or
   -  Use professional grade CA software, such as Red Hat's
      `Dogtag <http://pki.fedoraproject.org/wiki/PKI_Main_Page>`__ `Certificate
      System <http://www.redhat.com/certificate_system/>`__, to set up and operate your own CA and
      issue your own certificates.

For complete information about the command-line options used in the examples that follow, see `Using
the Certificate Database Tool <../../tools/certutil.html>`__.

.. _Setting_Up_the_CA_DB_and_Certificate:

Setting Up the CA DB and Certificate
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Set up the CA with its own separate set of databases.

#. Create a new certificate database in the ``CA_db`` directory.
   ``>mkdir CA_db     >certutil -N -d CA_db``
#. Create the self-signed Root CA certificate, specifying the subject name for the certificate.
   ``>certutil -S -d CA_db -n "MyCo's Root CA" -s "CN=My CA,O=MyCo,ST=California,C=US" -t "CT,," -x -2     Enter Password or Pin for "Communicator Certificate DB":``
#. Extract the CA certificate from the CA's certificate database to a file.
   ``>certutil -L -d CA_db -n "MyCo's Root CA" -a -o CA_db/rootca.crt     Enter Password or Pin for "Communicator Certificate DB":``
#. Display the contents of the CA's certificate databases.
   ``>certutil -L -d CA_db``

The trust flag settings ``"CTu,u,u"`` indicate that the certificate is a CA certificate that is
trusted to issue both client (``C``) and server (``T``) SSL certificates. The ``u`` flag indicates
that the private key for the CA certificate is present in this set of databases, so the CA can issue
SSL client and server certificates with these databases.

.. _Setting_Up_the_Server_DB_and_Certificate:

Setting Up the Server DB and Certificate
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The sections that follow describe how to set up the Server DB and certificate:

#. Create a new certificate database in the ``server_db`` directory.
   ``>mkdir server_db     >certutil -N -d server_db``
#. Import the new CA certificate into the server's certificate database, and mark it trusted for
   issuing certificates for SSL client and server authentication.
   ``>certutil -A -d server_db -n "MyCo's Root CA" -t "TC,," -a -i CA_db/rootca.crt``
#. Create the server certificate request, specifying the subject name for the server certificate. We
   make the common name (CN) be identical to the hostname of the server. Note that this step
   generates the server's private key, so it must be done in the server's database directory.
   ``>certutil -R -d server_db -s "CN=myco.mcom.org,O=MyCo,ST=California,C=US" -a -o server_db/server.req     Enter Password or Pin for "Communicator Certificate DB":``
#. This step simulates the CA signing and issuing a new server certificate based on the server's
   certificate request. The new cert is signed with the CA's private key, so this operation uses the
   CA's databases. This step leaves the server's new certificate in a file.
   ``>certutil -C -d CA_db -c "MyCo's Root CA" -a -i server_db/server.req -o server_db/server.crt -2 -6     Enter Password or Pin for "Communicator Certificate DB":``
#. Import (Add) the new server certificate to the server's certificate database in the ``server_db``
   directory with the appropriate nickname. Notice that no trust is explicitly needed for this
   certificate.
   ``>certutil -A -d server_db -n myco.mcom.org -a -i server_db/server.crt -t ",,"``
#. Display the contents of the server's certificate databases.
   ``>certutil -L -d server_db``

The trust flag settings ``"u,u,u"`` indicate that the server's databases contain the private key for
this certificate. This is necessary for the SSL server to be able to do its job.

.. _Setting_Up_the_Client_DB_and_Certificate:

Setting Up the Client DB and Certificate
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Setting up the client certificate database involves three stages:

#. Create a new certificate database in the ``client_db`` directory.
   ``>mkdir client_db     >certutil -N -d client_db``
#. Import the new CA certificate into the client's certificate database, and mark it trusted for
   issuing certificates for SSL client and server authentication.
   ``>certutil -A -d client_db -n "MyCo's Root CA" -t "TC,," -a -i CA_db/rootca.crt``
#. Create the client certificate request, specifying the subject name for the certificate.
   ``>certutil -R -d client_db -s "CN=Joe Client,O=MyCo,ST=California,C=US" -a -o client_db/client.req     Enter Password or Pin for "Communicator Certificate DB":``
#. This step simulates the CA signing and issuing a new client certificate based on the client's
   certificate request. The new cert is signed with the CA's private key, so this operation uses the
   CA's databases. This step leaves the client's new certificate in a file.
   ``>certutil -C -d CA_db -c "MyCo's Root CA" -a -i client_db/client.req -o client_db/client.crt -2 -6     Enter Password or Pin for "Communicator Certificate DB":``
#. Add the new client certificate to the client's certificate database in the ``client_db``
   directory with the appropriate nickname. Notice that no trust is required for this certificate.
   ``>certutil -A -d client_db -n "Joe Client" -a -i client_db/client.crt -t ",,"``
#. Display the contents of the client's certificate databases.
   ``>certutil -L -d client_db``

The trust flag settings ``"u,u,u"`` indicate that the client's databases contain the private key for
this certificate. This is necessary for the SSL client to be able to authenticate to the server.

.. _Verifying_the_Server_and_Client_Certificates:

Verifying the Server and Client Certificates
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When you have finished setting up the server and client certificate databases, verify that the
client and server certificates are valid, as follows:

``>certutil -V -d server_db -u V -n myco.mcom.org certutil: certificate is valid``

``>certutil -V -d client_db -u C -n "Joe Client" certutil: certificate is valid``

.. _Building_NSS_Programs:

Building NSS Programs
---------------------

On Unix, use the GNU utility ``gmake`` to run the makefile. On Windows NT, use the ``nmake`` utility
that comes with Visual C++.

If you create your own makefiles, be sure to include the libraries in the same order that they are
listed in the sample makefiles. In addition, you must use the following compiler flags:

Solaris flags:

``-c -O -KPIC -DSVR4 -DSYSV -D__svr4 -D__svr4__ -DSOLARIS -D_REENTRANT -DSOLARIS2_5 -D_SVID_GETTOD -DXP_UNIX -UDEBUG -DNDEBUG``

Windows NT flags:

``-c -O2 -MD -W3 -nologo -D_X86_ -GT -DWINNT -DXP_PC -UDEBUG -U_DEBUG -DNDEBUG -DWIN32 -D_WINDOWS``
