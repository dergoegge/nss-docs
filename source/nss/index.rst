.. _Mozilla_Projects_NSS:

=========================
Network Security Services
=========================
**Network Security Services** (**NSS**) is a set of libraries designed to support cross-platform
development of security-enabled client and server applications. Applications built with NSS can
support SSL v3, TLS, PKCS #5, PKCS #7, PKCS #11, PKCS #12, S/MIME, X.509 v3 certificates, and other
security standards.

For detailed information on standards supported, see `Overview of
NSS </en-US/docs/Mozilla/Projects/NSS/Overview>`__. For a list of frequently asked questions, see
the `FAQ </en-US/docs/NSS_FAQ>`__.

NSS is available under the Mozilla Public License. For information on downloading NSS releases as
tar files, see `Download PKI Source </en-US/docs/NSS_Sources_Building_Testing>`__.

If you're a developer and would like to contribute to NSS, you might want to read the documents
`highlevel overview of internal details of NSS </en-US/docs/An_overview_of_NSS_Internals>`__ and
`getting started with NSS </en-US/docs/Getting_Started_With_NSS>`__.

.. _Documentation:

Documentation
-------------

.. _Background_Information:

Background Information
~~~~~~~~~~~~~~~~~~~~~~

:ref:`Mozilla_Projects_NSS_Overview`
   Provides a brief summary of NSS and its capabilities.
:ref:`Mozilla_Projects_NSS_FAQ`
   Answers basic questions about NSS.
`Introduction to Public-Key Cryptography </en-US/docs/Archive/Security/Introduction_to_Public-Key_Cryptography>`__
   Explains the basic concepts of public-key cryptography that underlie NSS.
`Introduction to SSL </en-US/docs/Archive/Security/Introduction_to_SSL>`__
   Introduces the SSL protocol, including information about cryptographic ciphers supported by SSL
   and the steps involved in the SSL handshake.

.. _Getting_Started:

Getting Started
~~~~~~~~~~~~~~~

:ref:`Mozilla_Projects_NSS_NSS_Releases`
   This page contains information about the current and past releases of NSS.
`Get the source code and Build it </en-US/docs/NSS_Sources_Building_Testing>`__
   Instructions on how to build NSS on the different supported platforms.
:ref:`Mozilla_Developer_guide_Source_Code_Mercurial`
   Information about with working with Mercurial.
:ref:`Mozilla_Developer_guide_Source_Code_CVS`
   Old deprecated CVS documentation.

.. _NSS_APIs:

NSS APIs
~~~~~~~~

`Introduction to Network Security Services </en-US/docs/Introduction_to_Network_Security_Services>`__
   Provides an overview of the NSS libraries and what you need to know to use them.
`NSS SSL Public Functions <NSS/SSL_functions>`__
   Summarizes the SSL APIs exported by the NSS shared libraries.
`NSS SSL Reference </en-US/docs/NSS_reference>`__
   API used to invoke SSL operations.
`NSS API Guidelines <NSS/NSS_API_GUIDELINES>`__
   Explains how the libraries and code are organized, and guidelines for developing code (naming
   conventions, error handling, thread safety, etc.)
`NSS Technical Notes <NSS/nss_tech_notes>`__
   Links to NSS technical notes, which provide latest information about new NSS features and
   supplementary documentation for advanced topics in programming with NSS.

.. _Tools_testing_and_other_technical_details:

Tools, testing, and other technical details
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

:ref:`Mozilla_Projects_NSS_Building`
   Describe how to check out and build NSS releases.

:ref:`Mozilla_Projects_NSS_NSS_Developer_Tutorial`
   How to make changes in NSS. Coding style, maintaining ABI compatibility.

`NSS Tools <NSS/Tools>`__
   Tools for developing, debugging, and managing applications that use NSS.
`Sample Code <NSS/NSS_Sample_Code>`__
   Demonstrates how NSS can be used for cryptographic operations, certificate handling, SSL, etc.
`Third-Party Code <NSS/NSS_Third-Party_Code>`__
   A list of third-party code included in the NSS library.
`NSS 3.2 Test Suite <https://www-archive.mozilla.org/projects/security/pki/nss/testnss_32.html>`__
   **Archived version.** Describes how to run the standard NSS tests.
`NSS Performance Reports <https://www-archive.mozilla.org/projects/security/pki/nss/performance_reports.html>`__
   **Archived version.** Links to performance reports for NSS 3.2 and later releases.
`Encryption Technologies Available in NSS 3.11 <https://www-archive.mozilla.org/projects/security/pki/nss/nss-3.11/nss-3.11-algorithms.html>`__
   **Archived version.** Lists the cryptographic algorithms used by NSS 3.11.
`NSS 3.1 Loadable Root Certificates <https://www-archive.mozilla.org/projects/security/pki/nss/loadable_certs.html>`__
   **Archived version.** Describes the scheme for loading root CA certificates.
`cert7.db <https://www-archive.mozilla.org/projects/security/pki/nss/db_formats.html>`__
   **Archived version.** General format of the cert7.db database.

.. _PKCS_11_information:

PKCS #11 information
~~~~~~~~~~~~~~~~~~~~

-  `Documentation on PKCS #11 modules </en-US/docs/PKCS11>`__
-  `Implementing PKCS #11 for NSS </en-US/docs/PKCS11_Implement>`__
-  `The strings NSS uses to load PKCS #11 modules </en-US/docs/PKCS11_Module_Specs>`__
-  `PKCS #11 FAQ </en-US/docs/PKCS11_FAQ>`__
-  `Using the JAR Installation Manager to Install a PKCS #11 Cryptographic
   Module </en-US/docs/PKCS11_Jar_Install>`__
-  `PKCS #11 Conformance Testing - Archived
   version <https://www-archive.mozilla.org/projects/security/pki/pkcs11/>`__

.. _CA_certificates_pre-loaded_into_NSS:

CA certificates pre-loaded into NSS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  `Mozilla CA certificate policy <https://www.mozilla.org/projects/security/certs/policy/>`__
-  `List of pre-loaded CA certificates <https://wiki.mozilla.org/CA/Included_Certificates>`__

   -  Consumers of this list must consider the trust bit setting for each included root certificate.
      `More Information <https://www.imperialviolet.org/2012/01/30/mozillaroots.html>`__,
      `Extracting roots and their trust bits <https://github.com/agl/extract-nss-root-certs>`__

.. _NSS_is_built_on_top_of_Netscape_Portable_Runtime_NSPR:

NSS is built on top of Netscape Portable Runtime (NSPR)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`Netscape Portable Runtime <NSPR>`__
   NSPR project page.
:ref:`Mozilla_Projects_NSPR_Reference`
   NSPR API documentation.

.. _Additional_Information:

Additional Information
~~~~~~~~~~~~~~~~~~~~~~

-  `Using the window.crypto object from JavaScript </en-US/docs/JavaScript_crypto>`__
-  `Delegation of HTTP download for OCSP </en-US/docs/HTTP_Delegation>`__
-  `TLS Cipher Suite Discovery </en-US/docs/TLS_Cipher_Suite_Discovery>`__
-  `NSS Certificate Download Specification </en-US/docs/NSS_Certificate_Download_Specification>`__
-  `FIPS Mode - an explanation </en-US/docs/NSS/FIPS_Mode_-_an_explanation>`__
-  `Format of key log files </en-US/docs/NSS_Key_Log_Format>`__

.. _Planning:

Planning
~~~~~~~~

Information on NSS planning can be found at `wiki.mozilla.org <https://wiki.mozilla.org/NSS>`__,
including:

-  `FIPS Validation <https://wiki.mozilla.org/FIPS_Validation>`__
-  `NSS Roadmap page <https://wiki.mozilla.org/NSS:Roadmap>`__
-  `NSS Improvement Project <https://fedoraproject.org/wiki/User:Mitr/NSS:DeveloperFriendliness>`__

.. _Community:

Community
---------

-  View Mozilla Security forums...

{{ DiscussionList("dev-security", "mozilla.dev.security") }}

-  View Mozilla Cryptography forums...

{{ DiscussionList("dev-tech-crypto", "mozilla.dev.tech.crypto") }}

.. _Related_Topics:

Related Topics
--------------

-  `Security </en-US/docs/Security>`__