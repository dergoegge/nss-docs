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

+-------------------------------------------------+-------------------------------------------------+
| .. rubric:: Documentation                       | .. rubric:: Community                           |
|    :name: Documentation                         |    :name: Community                             |
|                                                 |                                                 |
| .. rubric:: Background Information              | -  View Mozilla Security forums...              |
|    :name: Background_Information                |                                                 |
|                                                 | {{ DiscussionList("dev-security",               |
| `Overview of NSS                                | "mozilla.dev.security") }}                      |
|  </en-US/docs/Mozilla/Projects/NSS/Overview>`__ |                                                 |
|    Provides a brief summary of NSS and its      | -  View Mozilla Cryptography forums...          |
|    capabilities.                                |                                                 |
| `NS                                             | {{ DiscussionList("dev-tech-crypto",            |
| S FAQ </en-US/docs/Mozilla/Projects/NSS/FAQ>`__ | "mozilla.dev.tech.crypto") }}                   |
|    Answers basic questions about NSS.           |                                                 |
| `Introduction to Pub                            | .. rubric:: Related Topics                      |
| lic-Key Cryptography </en-US/docs/Archive/Secur |    :name: Related_Topics                        |
| ity/Introduction_to_Public-Key_Cryptography>`__ |                                                 |
|    Explains the basic concepts of public-key    | -  `Security </en-US/docs/Security>`__          |
|    cryptography that underlie NSS.              |                                                 |
| `Introduction to SSL </en-U                     |                                                 |
| S/docs/Archive/Security/Introduction_to_SSL>`__ |                                                 |
|    Introduces the SSL protocol, including       |                                                 |
|    information about cryptographic ciphers      |                                                 |
|    supported by SSL and the steps involved in   |                                                 |
|    the SSL handshake.                           |                                                 |
|                                                 |                                                 |
| .. rubric:: Getting Started                     |                                                 |
|    :name: Getting_Started                       |                                                 |
|                                                 |                                                 |
| `NSS Releases </e                               |                                                 |
| n-US/docs/Mozilla/Projects/NSS/NSS_Releases>`__ |                                                 |
|    This page contains information about the     |                                                 |
|    current and past releases of NSS.            |                                                 |
| `Get the source code and Build i                |                                                 |
| t </en-US/docs/NSS_Sources_Building_Testing>`__ |                                                 |
|    Instructions on how to build NSS on the      |                                                 |
|    different supported platforms.               |                                                 |
| `Get Mozi                                       |                                                 |
| lla Source Code Using Mercurial </en-US/docs/Mo |                                                 |
| zilla/Developer_guide/Source_Code/Mercurial>`__ |                                                 |
|    Information about with working with          |                                                 |
|    Mercurial.                                   |                                                 |
| `Get Mozil                                      |                                                 |
| la Source Code Using CVS (deprecated) </en-US/d |                                                 |
| ocs/Mozilla/Developer_guide/Source_Code/CVS>`__ |                                                 |
|    Old deprecated CVS documentation.            |                                                 |
|                                                 |                                                 |
| .. rubric:: NSS APIs                            |                                                 |
|    :name: NSS_APIs                              |                                                 |
|                                                 |                                                 |
| `Introd                                         |                                                 |
| uction to Network Security Services </en-US/doc |                                                 |
| s/Introduction_to_Network_Security_Services>`__ |                                                 |
|    Provides an overview of the NSS libraries    |                                                 |
|    and what you need to know to use them.       |                                                 |
| `                                               |                                                 |
| NSS SSL Public Functions <NSS/SSL_functions>`__ |                                                 |
|    Summarizes the SSL APIs exported by the NSS  |                                                 |
|    shared libraries.                            |                                                 |
| `N                                              |                                                 |
| SS SSL Reference </en-US/docs/NSS_reference>`__ |                                                 |
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
| `Build Instructions for NSS                     |                                                 |
|  </en-US/docs/Mozilla/Projects/NSS/Building>`__ |                                                 |
|    Describe how to check out and build NSS      |                                                 |
|    releases.                                    |                                                 |
|                                                 |                                                 |
| `NSS Developer Tutorial </en-US/docs/           |                                                 |
| Mozilla/Projects/NSS/NSS_Developer_Tutorial>`__ |                                                 |
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
| -  `Documentation on PKCS #11                   |                                                 |
|    modules </en-US/docs/PKCS11>`__              |                                                 |
| -  `Implementing PKCS #11 for                   |                                                 |
|    NSS </en-US/docs/PKCS11_Implement>`__        |                                                 |
| -  `The strings NSS uses to load PKCS #11       |                                                 |
|    modules </en-US/docs/PKCS11_Module_Specs>`__ |                                                 |
| -  `PKCS #11 FAQ </en-US/docs/PKCS11_FAQ>`__    |                                                 |
| -  `Using the JAR Installation Manager to       |                                                 |
|    Install a PKCS #11 Cryptographic             |                                                 |
|    Module </en-US/docs/PKCS11_Jar_Install>`__   |                                                 |
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
| `NSPR Reference <                               |                                                 |
| /en-US/docs/Mozilla/Projects/NSPR/Reference>`__ |                                                 |
|    NSPR API documentation.                      |                                                 |
|                                                 |                                                 |
| .. rubric:: Additional Information              |                                                 |
|    :name: Additional_Information                |                                                 |
|                                                 |                                                 |
| -  `Using the window.crypto object from         |                                                 |
|                                                 |                                                 |
|   JavaScript </en-US/docs/JavaScript_crypto>`__ |                                                 |
| -  `Delegation of HTTP download for             |                                                 |
|    OCSP </en-US/docs/HTTP_Delegation>`__        |                                                 |
| -  `TLS Cipher Suite                            |                                                 |
|    Discov                                       |                                                 |
| ery </en-US/docs/TLS_Cipher_Suite_Discovery>`__ |                                                 |
| -  `NSS Certificate Download                    |                                                 |
|    Specification </en-US/                       |                                                 |
| docs/NSS_Certificate_Download_Specification>`__ |                                                 |
| -  `FIPS Mode - an                              |                                                 |
|    explanation                                  |                                                 |
| </en-US/docs/NSS/FIPS_Mode_-_an_explanation>`__ |                                                 |
| -  `Format of key log                           |                                                 |
|    files </en-US/docs/NSS_Key_Log_Format>`__    |                                                 |
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