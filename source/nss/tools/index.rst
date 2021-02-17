=========
NSS Tools
=========
.. _NSS_Security_Tools:

NSS Security Tools
------------------

Newsgroup:
`mozilla.dev.tech.crypto <news://news.mozilla.org/mozilla.dev.tech.crypto>`__

.. _Overview:

Overview
~~~~~~~~

The NSS Security Tools allow developers to test, debug, and manage
applications that use NSS. The `Tools Information <#tools>`__ table
below describes both the tools that are currently working and those that
are still under development. The links for each tool take you to the
source code, documentation, plans, and related links for each tool. The
links will become active when information is available.

Currently, you must download the NSS 3.1 source and build it to create
binary files for the NSS tools. For information about downloading the
NSS source, see
`https://developer.mozilla.org/NSS/Building </NSS/Building>`__.

If you have feedback or questions, please feel free to post to
`mozilla.dev.tech.crypto <news://news.mozilla.org/mozilla.dev.tech.crypto>`__.
This newsgroup is the preferred forum for all questions about NSS and
NSS tools.

.. _Overall_Objectives:

Overall Objectives
~~~~~~~~~~~~~~~~~~

#. Provide a tool for analyzing and repairing certificate databases
   (`dbck <#dbck>`__).
#. Migrate tools from secutil.h interface to PKCS #11 interface.
#. Eliminate redundant functionality in tools. Many tools implement
   private versions of PKCS11Init(), OpenCertDB(), etc.
#. Eliminate use of getopt() and replace with NSPR calls to get command
   options (to eliminate platform dependencies with getopt()).

.. _Tools_Information:

Tools Information
~~~~~~~~~~~~~~~~~

+--------------+--------------------------+--------------------------+
| **Tool**     | **Description**          | **Links**                |
+--------------+--------------------------+--------------------------+
| certutil 2.0 | Manage certificate and   | `Source                  |
|              | key databases (cert7.db  |  <https://dxr.mozilla.or |
|              | and key3.db).            | g/mozilla/source/securit |
|              |                          | y/nss/cmd/certutil/>`__, |
|              |                          | `Documentation <tools    |
|              |                          | /NSS_Tools_certutil>`__, |
|              |                          | `Tasks/Plans <tools/NSS_ |
|              |                          | Tools_certutil-tasks>`__ |
+--------------+--------------------------+--------------------------+
| cmsutil 1.0  | Performs basic CMS       | `Source <                |
|              | operations such as       | https://dxr.mozilla.org/ |
|              | encrypting, decrypting,  | mozilla/source/security/ |
|              | and signing messages.    | nss/cmd/smimetools/>`__, |
|              |                          | `Documentation <too      |
|              |                          | ls/NSS_Tools_cmsutil>`__ |
+--------------+--------------------------+--------------------------+
| crlutil      | Manage certificate       | `Sourc                   |
|              | revocation lists (CRLs). | e <https://dxr.mozilla.o |
|              |                          | rg/mozilla/source/securi |
|              |                          | ty/nss/cmd/crlutil/>`__, |
|              |                          | `Documentation <tool     |
|              |                          | s/NSS_Tools_crlutil>`__, |
+--------------+--------------------------+--------------------------+
| dbck 1.0     | Analyze and repair       | `So                      |
|              | certificate databases    | urce <https://dxr.mozill |
|              | (not working in NSS 3.2) | a.org/mozilla/source/sec |
|              |                          | urity/nss/cmd/dbck/>`__, |
|              |                          | `Tasks/Plans <tools/     |
|              |                          | NSS_Tools_dbck-tasks>`__ |
+--------------+--------------------------+--------------------------+
| modutil 1.1  | Manage the database of   | `Sourc                   |
|              | PKCS11 modules           | e <https://dxr.mozilla.o |
|              | (secmod.db). Add modules | rg/mozilla/source/securi |
|              | and modify the           | ty/nss/cmd/modutil/>`__, |
|              | properties of existing   | `Documentation <tool     |
|              | modules (such as whether | s/NSS_Tools_modutil>`__, |
|              | a module is the default  | `Tasks/Plans <tools/NSS  |
|              | provider of some crypto  | _Tools_modutil-tasks>`__ |
|              | service).                |                          |
+--------------+--------------------------+--------------------------+
| pk12util 1.0 | Import and export keys   | `Source                  |
|              | and certificates between |  <https://dxr.mozilla.or |
|              | the cert/key databases   | g/mozilla/source/securit |
|              | and files in PKCS12      | y/nss/cmd/pk12util/>`__, |
|              | format.                  | `Documentation <tools    |
|              |                          | /NSS_Tools_pk12util>`__, |
|              |                          | `Tasks/Plans <tools/NSS_ |
|              |                          | Tools_pk12util-tasks>`__ |
+--------------+--------------------------+--------------------------+
| signtool 1.3 | Create digitally-signed  | `Source                  |
|              | jar archives containing  |  <https://dxr.mozilla.or |
|              | files and/or code.       | g/mozilla/source/securit |
|              |                          | y/nss/cmd/signtool/>`__, |
|              |                          | `Documentation <https:// |
|              |                          | docs.oracle.com/javase/8 |
|              |                          | /docs/technotes/guides/s |
|              |                          | ecurity/SecurityToolsSum |
|              |                          | mary.html#jarsigner>`__, |
+--------------+--------------------------+--------------------------+
| signver 1.1  | Verify signatures on     | `Sourc                   |
|              | digitally-signed         | e <https://dxr.mozilla.o |
|              | objects.                 | rg/mozilla/source/securi |
|              |                          | ty/nss/cmd/signver/>`__, |
|              |                          | `Documentation           |
|              |                          | <https://docs.oracle.com |
|              |                          | /javase/tutorial/deploym |
|              |                          | ent/jar/verify.html>`__, |
|              |                          | `Tasks/Plans <tools/NSS  |
|              |                          | _Tools_signver-tasks>`__ |
+--------------+--------------------------+--------------------------+
| sslstrength  | SSL Strength             | `Documentation <tools/N  |
|              |                          | SS_Tools_sslstrength>`__ |
+--------------+--------------------------+--------------------------+
| ssltap 3.2   | Proxy requests for an    | `Sour                    |
|              | SSL server and display   | ce <https://dxr.mozilla. |
|              | the contents of the      | org/mozilla/source/secur |
|              | messages exchanged       | ity/nss/cmd/ssltap/>`__, |
|              | between the client and   | `Documentation <to       |
|              | server. The ssltap tool  | ols/NSS_Tools_ssltap>`__ |
|              | does not decrypt data,   |                          |
|              | but it shows things like |                          |
|              | the type of SSL message  |                          |
|              | (clientHello,            |                          |
|              | serverHello, etc) and    |                          |
|              | connection data          |                          |
|              | (protocol version,       |                          |
|              | cipher suite, etc). This |                          |
|              | tool is very useful for  |                          |
|              | debugging.               |                          |
+--------------+--------------------------+--------------------------+