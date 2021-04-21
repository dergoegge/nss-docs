.. _Mozilla_Projects_NSS:

Network Security Services
=========================

`Documentation <#documentation>`__
----------------------------------

.. container::

   **Network Security Services** (**NSS**) is a set of libraries designed to support cross-platform
   development of security-enabled client and server applications. Applications built with NSS can
   support SSL v3, TLS, PKCS #5, PKCS #7, PKCS #11, PKCS #12, S/MIME, X.509 v3 certificates, and
   other security standards.

   For detailed information on standards supported, see :ref:`Mozilla_Projects_NSS_Overview`. For a
   list of frequently asked questions, see the :ref:`Mozilla_Projects_NSS_FAQ`.

   NSS is available under the Mozilla Public License. For information on downloading NSS releases as
   tar files, see :ref:`Mozilla_Projects_NSS_NSS_Sources_Building_Testing`.

   If you're a developer and would like to contribute to NSS, you might want to read the documents
   :ref:`Mozilla_Projects_NSS_An_overview_of_NSS_Internals` and
   :ref:`Mozilla_Projects_NSS_Getting_started_with_NSS`.

   +-------------------------------------------------+-------------------------------------------------+
   | .. rubric:: Background Information              | .. rubric:: Community                           |
   |    :name: Background_Information                |    :name: Community                             |
   |                                                 |                                                 |
   | :ref:`Mozilla_Projects_NSS_Overview`            | -  View Mozilla Security forums...              |
   |    Provides a brief summary of NSS and its      |                                                 |
   |    capabilities.                                | -  `Mailing                                     |
   | :ref:`Mozilla_Projects_NSS_FAQ`                 |    list <http                                   |
   |    Answers basic questions about NSS.           | s://lists.mozilla.org/listinfo/dev-security>`__ |
   | `I                                              | -  `Newsgroup <http://g                         |
   | ntroduction to Public-Key Cryptography <https:/ | roups.google.com/group/mozilla.dev.security>`__ |
   | /developer.mozilla.org/en-US/docs/Archive/Secur | -  `RSS                                         |
   | ity/Introduction_to_Public-Key_Cryptography>`__ |    feed <http://groups.                         |
   |    Explains the basic concepts of public-key    | google.com/group/mozilla.dev.security/feeds>`__ |
   |    cryptography that underlie NSS.              |                                                 |
   | `Introduc                                       | -  View Mozilla Cryptography forums...          |
   | tion to SSL <https://developer.mozilla.org/en-U |                                                 |
   | S/docs/Archive/Security/Introduction_to_SSL>`__ | -  `Mailing                                     |
   |    Introduces the SSL protocol, including       |    list <https:/                                |
   |    information about cryptographic ciphers      | /lists.mozilla.org/listinfo/dev-tech-crypto>`__ |
   |    supported by SSL and the steps involved in   | -  `Newsgroup <http://grou                      |
   |    the SSL handshake.                           | ps.google.com/group/mozilla.dev.tech.crypto>`__ |
   |                                                 | -  `RSS                                         |
   | .. rubric:: Getting Started                     |    feed <http://groups.goo                      |
   |    :name: Getting_Started                       | gle.com/group/mozilla.dev.tech.crypto/feeds>`__ |
   |                                                 |                                                 |
   | :ref:`Mozilla_Projects_NSS_NSS_Releases`        | .. rubric:: Related Topics                      |
   |    This page contains information about the     |    :name: Related_Topics                        |
   |    current and past releases of NSS.            |                                                 |
   | :ref:`Moz                                       | -  `Security <https:                            |
   | illa_Projects_NSS_NSS_Sources_Building_Testing` | //developer.mozilla.org/en-US/docs/Security>`__ |
   |    Instructions on how to build NSS on the      |                                                 |
   |    different supported platforms.               |                                                 |
   | `Get Mozilla Source Code Using Mercuri          |                                                 |
   | al <https://developer.mozilla.org/en-US/docs/Mo |                                                 |
   | zilla/Developer_guide/Source_Code/Mercurial>`__ |                                                 |
   |    Information about with working with          |                                                 |
   |    Mercurial.                                   |                                                 |
   | `Get Mozilla Source Code Using CVS (dep         |                                                 |
   | recated) <https://developer.mozilla.org/en-US/d |                                                 |
   | ocs/Mozilla/Developer_guide/Source_Code/CVS>`__ |                                                 |
   |    Old deprecated CVS documentation.            |                                                 |
   |                                                 |                                                 |
   | .. rubric:: NSS APIs                            |                                                 |
   |    :name: NSS_APIs                              |                                                 |
   |                                                 |                                                 |
   | :ref:`Mozilla_Projects                          |                                                 |
   | _NSS_Introduction_to_Network_Security_Services` |                                                 |
   |    Provides an overview of the NSS libraries    |                                                 |
   |    and what you need to know to use them.       |                                                 |
   | `                                               |                                                 |
   | NSS SSL Public Functions <NSS/SSL_functions>`__ |                                                 |
   |    Summarizes the SSL APIs exported by the NSS  |                                                 |
   |    shared libraries.                            |                                                 |
   | :ref:`Mozilla_Projects_NSS_Reference`           |                                                 |
   |    API used to invoke SSL operations.           |                                                 |
   | `NSS API Guidelines <NSS/NSS_API_GUIDELINES>`__ |                                                 |
   |    Explains how the libraries and code are      |                                                 |
   |    organized, and guidelines for developing     |                                                 |
   |    code (naming conventions, error handling,    |                                                 |
   |    thread safety, etc.)                         |                                                 |
   | `NSS Technical Notes <NSS/nss_tech_notes>`__    |                                                 |
   |    Links to NSS technical notes, which provide  |                                                 |
   |    latest information about new NSS features    |                                                 |
   |    and supplementary documentation for advanced |                                                 |
   |    topics in programming with NSS.              |                                                 |
   |                                                 |                                                 |
   | .. rubric:: Tools, testing, and other technical |                                                 |
   |    details                                      |                                                 |
   |    :                                            |                                                 |
   | name: Tools_testing_and_other_technical_details |                                                 |
   |                                                 |                                                 |
   | :ref:`Mozilla_Projects_NSS_Building`            |                                                 |
   |    Describe how to check out and build NSS      |                                                 |
   |    releases.                                    |                                                 |
   |                                                 |                                                 |
   | :re                                             |                                                 |
   | f:`Mozilla_Projects_NSS_NSS_Developer_Tutorial` |                                                 |
   |    How to make changes in NSS. Coding style,    |                                                 |
   |    maintaining ABI compatibility.               |                                                 |
   |                                                 |                                                 |
   | `NSS Tools <NSS/Tools>`__                       |                                                 |
   |    Tools for developing, debugging, and         |                                                 |
   |    managing applications that use NSS.          |                                                 |
   | `Sample Code <NSS/NSS_Sample_Code>`__           |                                                 |
   |    Demonstrates how NSS can be used for         |                                                 |
   |    cryptographic operations, certificate        |                                                 |
   |    handling, SSL, etc.                          |                                                 |
   | `Third-Party Code <NSS/NSS_Third-Party_Code>`__ |                                                 |
   |    A list of third-party code included in the   |                                                 |
   |    NSS library.                                 |                                                 |
   | `NSS                                            |                                                 |
   |  3.2 Test Suite <https://www-archive.mozilla.or |                                                 |
   | g/projects/security/pki/nss/testnss_32.html>`__ |                                                 |
   |    **Archived version.** Describes how to run   |                                                 |
   |    the standard NSS tests.                      |                                                 |
   | `NSS Performance R                              |                                                 |
   | eports <https://www-archive.mozilla.org/project |                                                 |
   | s/security/pki/nss/performance_reports.html>`__ |                                                 |
   |    **Archived version.** Links to performance   |                                                 |
   |    reports for NSS 3.2 and later releases.      |                                                 |
   | `E                                              |                                                 |
   | ncryption Technologies Available in NSS 3.11 <h |                                                 |
   | ttps://www-archive.mozilla.org/projects/securit |                                                 |
   | y/pki/nss/nss-3.11/nss-3.11-algorithms.html>`__ |                                                 |
   |    **Archived version.** Lists the              |                                                 |
   |    cryptographic algorithms used by NSS 3.11.   |                                                 |
   | `NSS 3.1 Loadable Root C                        |                                                 |
   | ertificates <https://www-archive.mozilla.org/pr |                                                 |
   | ojects/security/pki/nss/loadable_certs.html>`__ |                                                 |
   |    **Archived version.** Describes the scheme   |                                                 |
   |    for loading root CA certificates.            |                                                 |
   | `cert7.db <https://www-archive.mozilla.or       |                                                 |
   | g/projects/security/pki/nss/db_formats.html>`__ |                                                 |
   |    **Archived version.** General format of the  |                                                 |
   |    cert7.db database.                           |                                                 |
   |                                                 |                                                 |
   | .. rubric:: PKCS #11 information                |                                                 |
   |    :name: PKCS_11_information                   |                                                 |
   |                                                 |                                                 |
   | -  :ref:`Mozilla_Projects_NSS_PKCS11`           |                                                 |
   | -  :ref:`Mozilla_Projects_NSS_PKCS11_Implement` |                                                 |
   | -                                               |                                                 |
   | :ref:`Mozilla_Projects_NSS_PKCS11_Module_Specs` |                                                 |
   | -  :ref:`Mozilla_Projects_NSS_PKCS11_FAQ`       |                                                 |
   | -  `Using the JAR Installation Manager to       |                                                 |
   |    Install a PKCS #11 Cryptographic             |                                                 |
   |    Module <https://develope                     |                                                 |
   | r.mozilla.org/en-US/docs/PKCS11_Jar_Install>`__ |                                                 |
   | -  `PKCS #11 Conformance Testing - Archived     |                                                 |
   |    version <https://www-archiv                  |                                                 |
   | e.mozilla.org/projects/security/pki/pkcs11/>`__ |                                                 |
   |                                                 |                                                 |
   | .. rubric:: CA certificates pre-loaded into NSS |                                                 |
   |    :name: CA_certificates_pre-loaded_into_NSS   |                                                 |
   |                                                 |                                                 |
   | -  `Mozilla CA certificate                      |                                                 |
   |    policy <https://www.                         |                                                 |
   | mozilla.org/projects/security/certs/policy/>`__ |                                                 |
   | -  `List of pre-loaded CA                       |                                                 |
   |    certificates <https:                         |                                                 |
   | //wiki.mozilla.org/CA/Included_Certificates>`__ |                                                 |
   |                                                 |                                                 |
   |    -  Consumers of this list must consider the  |                                                 |
   |       trust bit setting for each included root  |                                                 |
   |       certificate. `More                        |                                                 |
   |       Information <https://www.imper            |                                                 |
   | ialviolet.org/2012/01/30/mozillaroots.html>`__, |                                                 |
   |       `Extracting roots and their trust         |                                                 |
   |       bits <ht                                  |                                                 |
   | tps://github.com/agl/extract-nss-root-certs>`__ |                                                 |
   |                                                 |                                                 |
   | .. rubric:: NSS is built on top of Netscape     |                                                 |
   |    Portable Runtime (NSPR)                      |                                                 |
   |    :name: NSS_is                                |                                                 |
   | _built_on_top_of_Netscape_Portable_Runtime_NSPR |                                                 |
   |                                                 |                                                 |
   | `Netscape Portable Runtime <NSPR>`__            |                                                 |
   |    NSPR project page.                           |                                                 |
   | `NSPR Reference <https://developer.mozilla.org  |                                                 |
   | /en-US/docs/Mozilla/Projects/NSPR/Reference>`__ |                                                 |
   |    NSPR API documentation.                      |                                                 |
   |                                                 |                                                 |
   | .. rubric:: Additional Information              |                                                 |
   |    :name: Additional_Information                |                                                 |
   |                                                 |                                                 |
   | -  `Using the window.crypto object from         |                                                 |
   |    JavaScript <https://develop                  |                                                 |
   | er.mozilla.org/en-US/docs/JavaScript_crypto>`__ |                                                 |
   | -  :ref:`Mozilla_Projects_NSS_HTTP_delegation`  |                                                 |
   | -  :ref:`M                                      |                                                 |
   | ozilla_Projects_NSS_TLS_Cipher_Suite_Discovery` |                                                 |
   | -  :ref:`Mozilla_P                              |                                                 |
   | rojects_NSS_Certificate_Download_Specification` |                                                 |
   | -  :ref:`M                                      |                                                 |
   | ozilla_Projects_NSS_FIPS_Mode_-_an_explanation` |                                                 |
   | -  :ref:`Mozilla_Projects_NSS_Key_Log_Format`   |                                                 |
   |                                                 |                                                 |
   | .. rubric:: Planning                            |                                                 |
   |    :name: Planning                              |                                                 |
   |                                                 |                                                 |
   | Information on NSS planning can be found at     |                                                 |
   | `wiki                                           |                                                 |
   | .mozilla.org <https://wiki.mozilla.org/NSS>`__, |                                                 |
   | including:                                      |                                                 |
   |                                                 |                                                 |
   | -  `FIPS                                        |                                                 |
   |    Validatio                                    |                                                 |
   | n <https://wiki.mozilla.org/FIPS_Validation>`__ |                                                 |
   | -  `NSS Roadmap                                 |                                                 |
   |                                                 |                                                 |
   |  page <https://wiki.mozilla.org/NSS:Roadmap>`__ |                                                 |
   | -  `NSS Improvement                             |                                                 |
   |    Project <https://fedoraproject.o             |                                                 |
   | rg/wiki/User:Mitr/NSS:DeveloperFriendliness>`__ |                                                 |
   +-------------------------------------------------+-------------------------------------------------+