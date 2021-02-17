.. _Mozilla_Projects_NSS_SSL_functions_sslfnc:

======
sslfnc
======
.. note::

   -  This page is part of the `SSL
      Reference </en-US/docs/NSS/SSL_functions/OLD_SSL_Reference>`__
      that we are migrating into the format described in the `MDN Style
      Guide </en-US/docs/Project:MDC_style_guide>`__. If you are
      inclined to help with this migration, your help would be very much
      appreciated.

   -  Upgraded documentation may be found in the `Current NSS
      Reference </NSS_reference>`__

.. _SSL_Functions:

SSL Functions
=============

--------------

.. _Chapter_4_SSL_Functions:

Chapter 4
SSL Functions
-------------

This chapter describes the core SSL functions.

-  `SSL Initialization Functions <#ssl_initialization_functions>`__
-  `SSL Export Policy Functions <#ssl_export_policy_functions>`__
-  `SSL Configuration Functions <#ssl_configuration_functions>`__
-  `SSL Communication Functions <#ssl_communication_functions>`__
-  `SSL Functions Used by
   Callbacks <#ssl_functions_used_by_callbacks>`__
-  `SSL Handshake Functions <#ssl_handshake_functions>`__
-  `NSS Shutdown Function <#nss_shutdown_function>`__
-  `Deprecated Functions <#deprecated_functions>`__

.. _SSL_Initialization_Functions:

SSL Initialization Functions
----------------------------

This section describes the initialization functions that are specific to
SSL. For a complete list of NSS initialization functions, see
`Initialization <sslintro.html#1027662>`__.

Note that at least one of the functions listed in `SSL Export Policy
Functions <#1098841>`__ must also be called during NSS initialization.

|  ```NSS_Init`` <#1067601>`__
| ```NSS_InitReadWrite`` <#1237143>`__
| ```NSS_NoDB_Init`` <#1234224>`__
| ```SSL_OptionSetDefault`` <#1068466>`__
| ```SSL_OptionGetDefault`` <#1204897>`__
| ```SSL_CipherPrefSetDefault`` <#1084747>`__
| ```SSL_CipherPrefGetDefault`` <#1208119>`__
| ```SSL_ClearSessionCache`` <#1138601>`__
| ```SSL_ConfigServerSessionIDCache`` <#1143851>`__
| ```SSL_ConfigMPServerSIDCache`` <#1142625>`__
| ```SSL_InheritMPServerSIDCache`` <#1162055>`__

.. _NSS_Init:

NSS_Init
^^^^^^^^

Sets up configuration files and performs other tasks required to run
Network Security Services. Database files are opened read-only.

.. _Syntax:

Syntax
''''''

::

   #include "nss.h" 

::

   SECStatus NSS_Init(char *configdir);

.. _Parameter:

Parameter
'''''''''

This function has the following parameter:

+---------------+-----------------------------------------------------+
| ``configdir`` | A pointer to a string containing the pathname of    |
|               | the directory where the certificate, key, and       |
|               | security module databases reside.                   |
+---------------+-----------------------------------------------------+

.. _Returns:

Returns
'''''''

The function returns one of these value\ ``s``:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use ``PR_GetError`` to retrieve the
   error code.

.. _Description:

Description
'''''''''''

``NSS_Init`` opens the ``cert``\ *N*\ ``.db``, ``key``\ *N*\ ``.db``,
and ``secmod.db`` files (where\ *N* is a numeric digit) in the specified
directory. ``NSS_Init`` is\ *not* idempotent, so call it only once.

``NSS_Init`` opens the database files read-only. If you are performing
operations that require write permission, for example S/MIME operations
such as adding a certificate, use ```NSS_InitReadWrite`` <#1237143>`__
instead.

Before calling ``NSS_Init``, your program must call ``PR_Init``.

The policy flags for all cipher suites are turned off by default,
disallowing all cipher suites. Therefore, an application cannot use NSS
to perform any cryptographic operations until after it enables
appropriate cipher suites by calling one of the `SSL Export Policy
Functions <#1098841>`__:

-   ```NSS_SetDomesticPolicy`` <#1228530>`__,
   ```NSS_SetExportPolicy`` <#1100285>`__, and
   ```NSS_SetFrancePolicy`` <#1105952>`__ configure the cipher suites
   for domestic, international, and French versions of software products
   with encryption features.
-   ```SSL_CipherPolicySet`` <#1104647>`__ sets policy flags for
   individual cipher suites, one at a time. This may be helpful if you
   have an export license that permits more or fewer capabilities than
   those allowed by the other export policy functions.

.. _NSS_InitReadWrite:

NSS_InitReadWrite
^^^^^^^^^^^^^^^^^

Sets up configuration files and performs other tasks required to run
Network Security Services. Unlike ```NSS_Init`` <#1067601>`__,
``NSS_InitReadWrite`` provides both read and write access to database
files.

.. _Syntax_2:

Syntax
''''''

::

   #include "nss.h" 

::

   SECStatus NSS_InitReadWrite(char *configdir);

.. _Parameter_2:

Parameter
'''''''''

This function has the following parameter:

+---------------+-----------------------------------------------------+
| ``configdir`` | A pointer to a string containing the pathname of    |
|               | the directory where the certificate, key, and       |
|               | security module databases reside.                   |
+---------------+-----------------------------------------------------+

.. _Returns_2:

Returns
'''''''

The function returns one of these value\ ``s``:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use ``PR_GetError`` to retrieve the
   error code.

.. _Description_2:

Description
'''''''''''

``NSS_InitReadWrite`` opens the ``cert``\ *N*\ ``.db``,
``key``\ *N*\ ``.db``, and ``secmod.db`` files (where\ *N* is a numeric
digit) with both read and write permission in the specified directory.
``NSS_InitReadWrite`` is\ *not* idempotent, so call it only once.

Use ``NSS_InitReadWrite`` rather than ```NSS_Init`` <#1067601>`__ if you
are performing operations that require write permission, such as some
S/MIME operations.

Before calling ``NSS_InitReadWrite``, your program must call
``PR_Init``.

The policy flags for all cipher suites are turned off by default,
disallowing all cipher suites. Therefore, an application cannot use NSS
to perform any cryptographic operations until after it enables
appropriate cipher suites by calling one of the `SSL Export Policy
Functions <#1098841>`__.

.. _NSS_NoDB_Init:

NSS_NoDB_Init
^^^^^^^^^^^^^

Performs tasks required to run Network Security Services without setting
up configuration files. **Important:** This NSS function is not intended
for use with SSL, which requires that the certificate and key database
files be opened.

.. _Syntax_3:

Syntax
''''''

::

   #include "nss.h" 

::

   SECStatus NSS_NoDB_Init(char *reserved);

.. _Parameter_3:

Parameter
'''''''''

This function has the following parameter:

============ ====================
``reserved`` Should be ``NULL``..
============ ====================

.. _Returns_3:

Returns
'''''''

The function returns one of these value\ ``s``:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use ``PR_GetError`` to retrieve the
   error code.

.. _Description_3:

Description
'''''''''''

``NSS_NoDB_Init`` opens only the temporary database and the internal
PKCS #112 module. Unlike ``NSS_Init``, ``NSS_NoDB_Init`` allows
applications that do not have access to storage for databases to run raw
crypto, hashing, and certificate functions.

``NSS_NoDB_Init`` is\ *not* idempotent, so call it only once.

Before calling ``NSS_NoDB_Init``, your program must call ``PR_Init``.

The policy flags for all cipher suites are turned off by default,
disallowing all cipher suites. Therefore, an application cannot use NSS
to perform any cryptographic operations until after it enables
appropriate cipher suites by calling one of the `SSL Export Policy
Functions <#1098841>`__.

.. _SSL_OptionSetDefault:

SSL_OptionSetDefault
^^^^^^^^^^^^^^^^^^^^

Changes the default value of a specified SSL option for all subsequently
opened sockets as long as the current application program is running.

``SSL_OptionSetDefault`` replaces the deprecated function
```SSL_EnableDefault`` <#1206365>`__.

.. _Syntax_4:

Syntax
''''''

::

   #include "ssl.h"

::

   SECStatus SSL_OptionSetDefault(PRInt32 option, PRBool on);

.. _Parameters:

Parameters
''''''''''

This function has the following parameters:

+-----------------------------------+-----------------------------------+
| ``option``                        | One of the following values       |
|                                   | (except as noted, the factory     |
|                                   | setting is "off"):                |
|                                   |                                   |
|                                   | -  ``SSL_SECURITY`` enables use   |
|                                   |    of security protocol. Factory  |
|                                   |    setting is on. WARNING: If you |
|                                   |    turn this option off, the      |
|                                   |    session will not be an SSL     |
|                                   |    session and will not have      |
|                                   |    certificate-based              |
|                                   |    authentication, tamper         |
|                                   |    detection, or encryption.      |
|                                   | -  ``SSL_REQUEST_CERTIFICATE`` is |
|                                   |    a server option that requests  |
|                                   |    a client to authenticate       |
|                                   |    itself.                        |
|                                   | -  ``SSL_REQUIRE_CERTIFICATE`` is |
|                                   |    a server option that requires  |
|                                   |    a client to authenticate       |
|                                   |    itself (only if                |
|                                   |    ``SSL_REQUEST_CERTIFICATE`` is |
|                                   |    also on). If client does not   |
|                                   |    provide certificate, the       |
|                                   |    connection terminates. Default |
|                                   |    state is a third state similar |
|                                   |    to on, that provides backward  |
|                                   |    compatibility with older       |
|                                   |    Netscape server products.      |
|                                   | -  ``SSL_HANDSHAKE_AS_CLIENT``    |
|                                   |    controls the behavior of       |
|                                   |    ``PR_Accept``,. If this option |
|                                   |    is off, the ``PR_Accept``      |
|                                   |    configures the SSL socket to   |
|                                   |    handshake as a server. If it   |
|                                   |    is on, then ``PR_Accept``      |
|                                   |    configures the SSL socket to   |
|                                   |    handshake as a client, even    |
|                                   |    though it accepted the         |
|                                   |    connection as a TCP server.    |
|                                   | -  ``SSL_HANDSHAKE_AS_SERVER``    |
|                                   |    controls the behavior of       |
|                                   |    ``PR_Connect``. If this option |
|                                   |    is off, then ``PR_Connect``    |
|                                   |    configures the SSL socket to   |
|                                   |    handshake as a client. If it   |
|                                   |    is on, then ``PR_Connect``     |
|                                   |    configures the SSL socket to   |
|                                   |    handshake as a server, even    |
|                                   |    though it connected as a TCP   |
|                                   |    client.                        |
|                                   | -  ``SSL_ENABLE_FDX`` tells the   |
|                                   |    SSL library whether the        |
|                                   |    application will have two      |
|                                   |    threads, one reading and one   |
|                                   |    writing, or just one thread    |
|                                   |    doing reads and writes         |
|                                   |    alternately. The factory       |
|                                   |    setting for this option (which |
|                                   |    is the default, unless the     |
|                                   |    application changes the        |
|                                   |    default) is off                |
|                                   |    (``PR_FALSE``), which means    |
|                                   |    that the application will not  |
|                                   |    do simultaneous reads and      |
|                                   |    writes. An application that    |
|                                   |    wishes to do sumultaneous      |
|                                   |    reads and writes should set    |
|                                   |    this to ``PR_TRUE``.           |
|                                   |                                   |
|                                   | In NSS 2.8, the                   |
|                                   | ``SSL_ENABLE_FDX`` option only    |
|                                   | affects the behavior of           |
|                                   | non-blocking SSL sockets. See the |
|                                   | description below for more        |
|                                   | information on this option.       |
+-----------------------------------+-----------------------------------+
|                                   | -  ``SSL_ENABLE_SSL3`` enables    |
|                                   |    the application to communicate |
|                                   |    with SSL v3. Factory setting   |
|                                   |    is on. If you turn this option |
|                                   |    off, an attempt to establish a |
|                                   |    connection with a peer that    |
|                                   |    only understands SSL v3 will   |
|                                   |    fail.                          |
|                                   | -  ``SSL_ENABLE_SSL2`` enables    |
|                                   |    the application to communicate |
|                                   |    with SSL v2. Factory setting   |
|                                   |    is on. If you turn this option |
|                                   |    off, an attempt to establish a |
|                                   |    connection with a peer that    |
|                                   |    only understands SSL v2 will   |
|                                   |    fail.                          |
|                                   | -  ``SSL_ENABLE_TLS`` is a peer   |
|                                   |    of the ``SSL_ENABLE_SSL2`` and |
|                                   |    ``SSL_ENABLE_SSL3`` options.   |
|                                   |    The IETF standard Transport    |
|                                   |    Layer Security (TLS) protocol, |
|                                   |    RFC 2246, is a modified        |
|                                   |    version of SSL3. It uses the   |
|                                   |    SSL version number 3.1,        |
|                                   |    appearing to be a "minor"      |
|                                   |    revision of SSL 3.0. NSS 2.8   |
|                                   |    supports TLS in addition to    |
|                                   |    SSL2 and SSL3. You can think   |
|                                   |    of it as                       |
|                                   |    "``SSL_ENABLE_SSL3.1``". See   |
|                                   |    the description below for more |
|                                   |    information about this option. |
|                                   | -  ``SSL_V2_COMPATIBLE_HELLO``    |
|                                   |    tells the SSL library whether  |
|                                   |    or not to send SSL3 client     |
|                                   |    hello messages in              |
|                                   |    SSL2-compatible format. If set |
|                                   |    to ``PR_TRUE``, it will;       |
|                                   |    otherwise, it will not.        |
|                                   |    Factory setting is on          |
|                                   |    (``PR_TRUE``). See the         |
|                                   |    description below for more     |
|                                   |    information on this option.    |
|                                   | -  ``SSL_NO_CACHE`` disallows use |
|                                   |    of the session cache. Factory  |
|                                   |    setting is off. If you turn    |
|                                   |    this option on, this socket    |
|                                   |    will be unable to resume a     |
|                                   |    session begun by another       |
|                                   |    socket. When this socket's     |
|                                   |    session is finished, no other  |
|                                   |    socket will be able to resume  |
|                                   |    the session begun by this      |
|                                   |    socket.                        |
|                                   | -  ``SSL_ROLLBACK_DETECTION``     |
|                                   |    disables detection of a        |
|                                   |    rollback attack. Factory       |
|                                   |    setting is on. You must turn   |
|                                   |    this option off to             |
|                                   |    interoperate with TLS clients  |
|                                   |    ( such as certain versions of  |
|                                   |    Microsoft Internet Explorer)   |
|                                   |    that do not conform to the TLS |
|                                   |    specification regarding        |
|                                   |    rollback attacks. Important:   |
|                                   |    turning this option off means  |
|                                   |    that your code will not comply |
|                                   |    with the TLS 3.1 and SSL 3.0   |
|                                   |    specifications regarding       |
|                                   |    rollback attack and will       |
|                                   |    therefore be vulnerable to     |
|                                   |    this form of attack.           |
+-----------------------------------+-----------------------------------+
| ``on``                            | ``PR_TRUE`` turns option on;      |
|                                   | ``PR_FALSE`` turns option off.    |
+-----------------------------------+-----------------------------------+

.. _Returns_4:

Returns
'''''''

The function returns one of these values:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_4:

Description
'''''''''''

This function changes the default values for all subsequently opened
sockets as long as the current application program is running. This
function must be called once for each default value you want to change
from the factory setting. To change a value in a socket that is already
open, use ```SSL_OptionSet`` <#1086543>`__.

Keep the following in mind when deciding on the operating parameters you
want to use with a particular socket:

Enabling the ``SSL_REQUIRE_CERTIFICATE`` option is not recommended. If
the client has no certificate and this option is enabled, the client's
connection terminates with an error. The user is likely to think
something is wrong with either the client or the server, and is unlikely
to realize that the problem is the lack of a certificate. It is better
to allow the SSL handshake to complete and then have your application
return an error message to the client that informs the user of the need
for a certificate.

-  As mentioned in `Communication <sslintro.html#1027816>`__, when an
   application imports a socket into SSL after the TCP connection on
   that socket has already been established, it must call
   ``SSL_ResetHandshake`` to determine whether the socket is for a
   client or server. At first glance this may seem unnecessary, since
   ``SSL_Enable`` can set ``SSL_HANDSHAKE_AS_CLIENT`` or
   ``SSL_HANDSHAKE_AS_SERVER``. However, these settings control the
   behavior of
   ```PR_Connect`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_Connect>`__
   and
   ```PR_Accept`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_Accept>`__
   only; if you don't call one of those functions after importing a
   non-SSL socket with ``SSL_Import`` (as in the case of an already
   established TCP connection), SSL still needs to know whether the
   application is functioning as a client or server. For a complete
   discussion of the use of ``SSL_HANDSHAKE_AS_CLIENT`` and
   ``SSL_HANDSHAKE_AS_SERVER`` with ``SSL_EnableDefault`` and
   ``SSL_Enable``, see `SSL_OptionSet <#1086543>`__.
-  The SSL protocol is defined to be able to handle simultaneous two-way
   communication between applications at each end of an SSL connection.
   Two-way simultaneous communication is also known as "Full Duplex",
   abbreviated FDX. However, most application protocols that use SSL are
   not two-way simultaneous, but two-way alternate, also known as "Half
   Dupled"; that is, each end takes turns sending, and each end is
   either sending, or receiving, but not both at the same time.

For an application to do full duplex, it would typically have two
threads sharing the socket; one doing all the reading and the other
doing all the writing.

The ``SSL_ENABLE_FDX`` option tells the SSL library whether the
application will have two threads, one reading and one writing, or just
one thread doing reads and writes alternately.

-  ``SSL_V2_COMPATIBLE_HELLO`` tells the SSL library whether or not to
   send SSL3 client hello messages in SSL2-compatible format. If an SSL3
   client hello message is sent to a server that only understands SSL2
   and not SSL3, then the server will interpret the SSL3 client hello as
   a very large message, and the connection will usually seem to "hang"
   while the SSL2 server expects more data that will never arrive. For
   this reason, the SSL3 spec allows SSL3 client hellos to be sent in
   SSL2 format, and it recommends that SSL3 servers all accept SSL3
   client hellos in SSL2 format. When an SSL2-only server receives an
   SSL3 client hello in SSL2 format, it can (and probably will)
   negotiate the protocol version correctly, not causing a "hang".

Some applications may wish to force SSL3 client hellos to be sent in
SSL3 format, not in SSL2-compatible format. They might wish to do this
if they knew, somehow, that the server does not understand
SSL2-compatible client hello messages.

Note that calling ``SSL_Enable`` to set ``SSL_V2_COMPATIBLE_HELLO`` to
``PR_FALSE`` implicitly also sets the ``SSL_ENABLE_SSL2`` option to
``PR_FALSE`` for that SSL socket. Calling ``SSL_EnableDefault`` to
change the application default setting for ``SSL_V2_COMPATIBLE_HELLO``
to ``PR_FALSE`` implicitly also sets the default value for
``SSL_ENABLE_SSL2`` option to ``PR_FALSE`` for that application.

-  The options ``SSL_ENABLE_SSL2``, ``SSL_ENABLE_SSL3``, and
   ``SSL_ENABLE_TLS``\ can each be set to ``PR_TRUE`` or ``PR_FALSE``
   independently of each other. NSS 2.8 will negotiate the higest
   protocol version with the peer application from among the set of
   protocols that are commonly enabled in both applications.

Note that SSL3 and TLS share the same set of cipher suites. When both
SSL3 and TLS are enabled, all SSL3/TLS ciphersuites that are enabled are
enabled for both SSL3 and TLS.

.. _SSL_OptionGetDefault:

SSL_OptionGetDefault
^^^^^^^^^^^^^^^^^^^^

Gets the value of a specified SSL default option.

``SSL_OptionGetDefault`` is the complementary function for
```SSL_OptionSetDefault`` <#1068466>`__.

.. _Syntax_5:

Syntax
''''''

::

   #include "ssl.h"

::

   SECStatus SSL_OptionGetDefault(PRInt32 option, PRBool *on)

.. _Parameters_2:

Parameters
''''''''''

This function has the parameters listed below.

+------------+--------------------------------------------------------+
| ``option`` | The value of the option whose default setting you wish |
|            | to get. For information about the options available    |
|            | and the possible values to pass in this parameter, see |
|            | the description of the ``option`` parameter under      |
|            | ```SSL_OptionSetDefault`` <#1068466>`__.               |
+------------+--------------------------------------------------------+
| ``on``     | A pointer to the value of the option specified in the  |
|            | option parameter. ``PR_TRUE`` indicates that the       |
|            | option is on; ``PR_FALSE`` indicates that the option   |
|            | is off.                                                |
+------------+--------------------------------------------------------+

.. _Returns_5:

Returns
'''''''

The function returns one of these value\ ``s``:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain error code.

.. _Description_5:

Description
'''''''''''

``SSL_CipherPrefGetDefault`` gets the application default preference for
the specified SSL2, SSL3, or TLS cipher A cipher suite is used only if
the policy allows it and the preference for it is set to ``PR_TRUE``.

.. _SSL_CipherPrefSetDefault:

SSL_CipherPrefSetDefault
^^^^^^^^^^^^^^^^^^^^^^^^

Enables or disables SSL2 or SSL3 cipher suites (subject to which cipher
suites are permitted or disallowed by previous calls to one or more of
the `SSL Export Policy Functions <#1098841>`__). This function must be
called once for each cipher you want to enable or disable by default.

.. _Syntax_6:

Syntax
''''''

::

   #include "ssl.h"

::

   SECStatus SSL_CipherPrefSetDefault(PRInt32 cipher, PRBool enabled);

.. _Parameters_3:

Parameters
''''''''''

This function has the following parameters:

+-----------------------------------+-----------------------------------+
| ``cipher``                        | One of the following values for   |
|                                   | SSL2 (factory settings for all    |
|                                   | are enabled):                     |
|                                   |                                   |
|                                   | ``SSL_EN_RC4                      |
|                                   | _128_WITH_MD5      SSL_EN_RC4_128 |
|                                   | _EXPORT40_WITH_MD5      SSL_EN_RC |
|                                   | 2_128_CBC_WITH_MD5      SSL_EN_RC |
|                                   | 2_128_CBC_EXPORT40_WITH_MD5       |
|                                   | SSL_EN_DES_64_CBC_WITH_MD5      S |
|                                   | SL_EN_DES_192_EDE3_CBC_WITH_MD5`` |
|                                   |                                   |
|                                   | Or one of the following values    |
|                                   | for SSL3/TLS (unless indicated    |
|                                   | otherwise, factory settings for   |
|                                   | all are enabled):                 |
|                                   |                                   |
|                                   | ``T                               |
|                                   | LS_DHE_RSA_WITH_AES_256_CBC_SHA`` |
|                                   | (not enabled by default; client   |
|                                   | side only)                        |
|                                   | ``T                               |
|                                   | LS_DHE_DSS_WITH_AES_256_CBC_SHA`` |
|                                   | (not enabled by default; client   |
|                                   | side only)                        |
|                                   | ``TLS_RSA_WITH_AES_256_CBC_SHA``  |
|                                   | (not enabled by default)          |
|                                   | ``SS                              |
|                                   | L_FORTEZZA_DMS_WITH_RC4_128_SHA`` |
|                                   | ``TLS_DHE_DSS_WITH_RC4_128_SHA``  |
|                                   | (not enabled by default; client   |
|                                   | side only)                        |
|                                   | ``T                               |
|                                   | LS_DHE_RSA_WITH_AES_128_CBC_SHA`` |
|                                   | (not enabled by default; client   |
|                                   | side only)                        |
|                                   | ``T                               |
|                                   | LS_DHE_DSS_WITH_AES_128_CBC_SHA`` |
|                                   | (not enabled by default; client   |
|                                   | side only)                        |
|                                   | ``SSL_RSA_WITH_RC4_128_MD5``      |
|                                   | ``SSL_RSA_WITH_RC4_128_SHA`` (not |
|                                   | enabled by default)               |
|                                   | ``TLS_RSA_WITH_AES_128_CBC_SHA``  |
|                                   | (not enabled by default)          |
|                                   | ``SS                              |
|                                   | L_DHE_RSA_WITH_3DES_EDE_CBC_SHA`` |
|                                   | (not enabled by default; client   |
|                                   | side only)                        |
|                                   | ``SS                              |
|                                   | L_DHE_DSS_WITH_3DES_EDE_CBC_SHA`` |
|                                   | (not enabled by default; client   |
|                                   | side only)                        |
|                                   | ``SSL                             |
|                                   | _RSA_FIPS_WITH_3DES_EDE_CBC_SHA`` |
|                                   | ``SSL_RSA_WITH_3DES_EDE_CBC_SHA`` |
|                                   | ``SSL_FOR                         |
|                                   | TEZZA_DMS_WITH_FORTEZZA_CBC_SHA`` |
|                                   | ``SSL_DHE_RSA_WITH_DES_CBC_SHA``  |
|                                   | (not enabled by default; client   |
|                                   | side only)                        |
|                                   | ``SSL_DHE_DSS_WITH_DES_CBC_SHA``  |
|                                   | (not enabled by default; client   |
|                                   | side only)                        |
|                                   | ``SSL_RSA_FIPS_WITH_DES_CBC_SHA`` |
|                                   | ``SSL_RSA_WITH_DES_CBC_SHA``      |
|                                   | ``TLS                             |
|                                   | _RSA_EXPORT1024_WITH_RC4_56_SHA`` |
|                                   | ``TLS_                            |
|                                   | RSA_EXPORT1024_WITH_DES_CBC_SHA`` |
|                                   | `                                 |
|                                   | `SSL_RSA_EXPORT_WITH_RC4_40_MD5`` |
|                                   | ``SSL                             |
|                                   | _RSA_EXPORT_WITH_RC2_CBC_40_MD5`` |
|                                   | `                                 |
|                                   | `SSL_FORTEZZA_DMS_WITH_NULL_SHA`` |
|                                   | ``SSL_RSA_WITH_NULL_SHA`` (not    |
|                                   | enabled by default)               |
|                                   | ``SSL_RSA_WITH_NULL_MD5`` (not    |
|                                   | enabled by default)               |
+-----------------------------------+-----------------------------------+
| ``enabled``                       | If nonzero, the specified cipher  |
|                                   | is enabled. If zero, the cipher   |
|                                   | is disabled.                      |
+-----------------------------------+-----------------------------------+

.. _Returns_6:

Returns
'''''''

The function returns one of these values:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_6:

Description
'''''''''''

The CipherPrefSetDefault function enables or disables individual cipher
suites globally. You typically call this in response to changes in
user-controlled settings. You must call this function once for each
cipher you want to enable or disable. To enable or disable cipher suites
for an individual socket, use ```SSL_CipherPrefSet`` <#1214758>`__.

The set of available SSL cipher suites may grow from release to release
of NSS. Applications will find it desirable to determine, at run time,
what SSL2 cipher kinds and SSL3 cipher suites are actually implememted
in a particular release. Applications may disable any cipher suites that
they don't know about (for example, that they cannot present to the user
via a GUI). To that end, NSS provides a table that can be examined at
run time. All aspects of this table are declared in ``ssl.h``.

``SSL_ImplementedCiphers[]`` is an external array of unsigned 16-bit
integers whose values are either SSL2 cipher kinds or SSL3 cipher
suites. The values are the same as the values used to enable or disable
a cipher suite via calls to ```SSL_CipherPrefSetDefault`` <#1084747>`__,
and are defined in ``sslproto.h``. The number of values in the table is
contained in an external 16-bit integer named
``SSL_NumImplementedCiphers``. The macro ``SSL_IS_SSL2_CIPHER`` can be
used to determine whether a particular value is an SSL2 or an SSL3
cipher.

**WARNING**: Using the external array ``SSL_ImplementedCiphers[]``
directly is deprecated.  It causes dynamic linking issues at run-time
after an update of NSS because the actual size of the array changes
between releases.  The recommended way of accessing the array is through
the ``SSL_GetImplementedCiphers()`` and
``SSL_GetNumImplementedCiphers()`` accessors.

By default, all SSL2 and 12 SSL3/TLS cipher suites are enabled. However,
this does not necessarily mean that they are all permitted. The
``SSL_CipherPrefSetDefault`` function cannot override cipher suite
policy settings that are not permitted; see `SSL Export Policy
Functions <#1098841>`__ for details. Your application must call one of
the export policy functions before it can perform any cryptographic
operations.

The ``TLS_RSA_EXPORT1024_WITH_DES_CBC_SHA`` and
``TLS_RSA_EXPORT1024_WITH_RC4_56_SHA`` cipher suites are defined in RFC
2246. They work with both SSL3 and TLS. They use symmetric ciphers with
an effective key size of 56 bits. The so-called 56-bit export browsers
and servers use these cipher suites.

The cipher suite numbers for the ``SSL_RSA_FIPS_WITH_3DES_EDE_CBC_SHA``
and ``SSL_RSA_FIPS_WITH_DES_CBC_SHA`` cipher suites have been changed so
that they are no longer "experimental" values. If an application
attempts to set or set the policy or preference for one of the old FIPS
cipher suite numbers, the library recognizes the old number and sets or
gets the value for the new cipher suite number instead.

In this release, the three ``SSL_FORTEZZA_`` cipher suites cannot be
enabled unless there is a PKCS #11 module available with a
FORTEZZA-enabled token. The ``SSL_FORTEZZA_`` cipher suites will be
removed in NSS 3.11.

.. _SSL_CipherPrefGetDefault:

SSL_CipherPrefGetDefault
^^^^^^^^^^^^^^^^^^^^^^^^

Gets the current default preference setting for a specified SSL2 or SSL3
cipher suite.

.. _Syntax_7:

Syntax
''''''

::

   #include "ssl.h"

::

   SECStatus SSL_CipherPrefSetDefault(PRInt32 cipher, PRBool *enabled);

.. _Parameters_4:

Parameters
''''''''''

This function has the parameters listed below.

+---------+-----------------------------------------------------------+
| cipher  | The cipher suite whose default preference setting you     |
|         | want to get. For a list of the cipher suites you can      |
|         | specify, see ```SSL_CipherPrefSetDefault`` <#1084747>`__. |
+---------+-----------------------------------------------------------+
| enabled | A pointer to the default value associated with the cipher |
|         | specified in the ``cipher`` parameter. If nonzero, the    |
|         | specified cipher is enabled. If zero, the cipher is       |
|         | disabled.                                                 |
+---------+-----------------------------------------------------------+

.. _Returns_7:

Returns
'''''''

The function returns one of these value\ ``s``:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain error code.

.. _Description_7:

Description
'''''''''''

``SSL_CipherPrefGetDefault`` performs the complementary function to
``SSL_CipherPrefSetDefault``. It returns the application process'
current default preference value for the specified cipher suite. If the
application has not previously set the default preference,
``SSL_CipherPrefGetDefault`` returns the factory setting.

.. _SSL_ClearSessionCache:

SSL_ClearSessionCache
^^^^^^^^^^^^^^^^^^^^^

Empties the SSL client session ID cache.

.. _Syntax_8:

Syntax
''''''

::

   #include "ssl.h"

::

   void SSL_ClearSessionCache(void);

.. _Description_8:

Description
'''''''''''

You must call ``SSL_ClearSessionCache`` after you use one of the `SSL
Export Policy Functions <#1098841>`__ to change cipher suite policy
settings or use ```SSL_CipherPrefSetDefault`` <#1084747>`__ to enable or
disable any cipher suite. Otherwise, the old settings remain in the
session cache and will be used instead of the new settings.

This function clears only the client cache. The client cache is not
configurable. It is located in RAM (not on disk), and has the following
characteristics:

-  maximum number of entries: unlimited
-  SSL 2.0 timeout value: 100 seconds
-  SSL 3.0 timeout value: 24 hours

..

   **NOTE:** If an SSL client application does not call
   ``SSL_ClearSessionCache`` before shutdown,
   ```NSS_Shutdown`` <#1061858>`__ fails with the error code
   ``SEC_ERROR_BUSY``.

.. _SSL_ConfigServerSessionIDCache:

SSL_ConfigServerSessionIDCache
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Sets up parameters for and opens the server session cache for a
single-process application.

.. _Syntax_9:

Syntax
''''''

::

   #include "ssl.h"

::

   SECStatus SSL_ConfigServerSessionIDCache(
      int maxCacheEntries,
      PRUint32 timeout,
      PRUint32 ssl3_timeout,
      const char *directory); 

.. _Parameters_5:

Parameters
''''''''''

This function has the parameters listed below.

+---------------------+-----------------------------------------------+
| ``maxCacheEntries`` | The maximum number of entries in the cache.   |
|                     | If a ``NULL`` value is passed, the server     |
|                     | default value of 10,000 is used.              |
+---------------------+-----------------------------------------------+
| ``timeout``         | The lifetime in seconds of an SSL2 session.   |
|                     | The minimum timeout value is 5 seconds and    |
|                     | the maximum is 24 hours. Values outside this  |
|                     | range are replaced by the server default      |
|                     | value of 100 seconds.                         |
+---------------------+-----------------------------------------------+
| ``ssl3_timeout``    | The lifetime in seconds of an SSL3 session.   |
|                     | The minimum timeout value is 5 seconds and    |
|                     | the maximum is 24 hours. Values outside this  |
|                     | range are replaced by the server default      |
|                     | value of 24 hours.                            |
+---------------------+-----------------------------------------------+
| ``directory``       | A pointer to a string specifying the pathname |
|                     | of the directory that will contain the        |
|                     | session cache. If a ``NULL`` value is passed, |
|                     | the server default value is used: ``/tmp``    |
|                     | (Unix) or ``\\temp`` (NT).                    |
+---------------------+-----------------------------------------------+

.. _Returns_8:

Returns
'''''''

The function returns one of these value\ ``s``:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain error code.

.. _Description_9:

Description
'''''''''''

If you are writing an application that will use SSL sockets that
handshake as a server, you must call ``SSL_ConfigServerSessionIDCache``
to configure additional session caches for *server* sessions. If your
server application uses multiple processes (instead of or in addition to
multiple threads), use ```SSL_ConfigMPServerSIDCache`` <#1142625>`__
instead. You must use one of these functions to create a server cache.
This function creates two caches: the\ *server session ID cache* (also
called the server session cache, or server cache), and the\ *client-auth
certificate cache* (also called the client cert cache, or client auth
cache). Both caches are used only for sessions where the program
handshakes as a server. The client-auth certificate cache is used to
remember the certificates previously presented by clients for client
certificate authentication.

Passing a ``NULL`` value or a value that is out of range for any of the
parameters causes the server default value to be used in the server
cache. The values that you pass affect only the server cache, not the
client cache.

.. _Initializing_Multi-Processing_with_a_Shared_SSL_Server_Cache:

Initializing Multi-Processing with a Shared SSL Server Cache
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To start a multi-processing application, the initial parent process
calls ```SSL_ConfigMPServerSIDCache`` <#1142625>`__, and then creates
child processes, by one of these methods:

-  Call ``fork`` and then ``exec`` (Unix)
-  Call ``CreateProcess`` (Win32)
-  Call ``PR_CreateProcess`` (both Unix and Win32)

It is essential that the parent allow the child to inherit the file
descriptors. WIN32's ``CreateProcess`` takes an argument that tells it
whether or not to permit files to be inherited; this argument must be
``TRUE``.

When a new child that has been created by either ``CreateProcess`` or
``exec`` begins, it may have inherited file descriptors (FDs), but not
the parent's memory. Therefore, to find out what FDs it has inherited,
it must be told about them. To that end, the function
```SSL_ConfigMPServerSIDCache`` <#1142625>`__ sets an environment
variable named ``SSL_INHERITANCE``. The value of the variable is a
printable ASCII string, containing all the information needed to set up
and use the inherited FDs.

There are two ways to transfer the content of ``SSL_INHERITANCE`` from
parent to child:

-  The child inherits the parent's environment, which must include the
   ``SSL_INHERITANCE`` variable. For the child to inherit the parent's
   environment you must set a specific argument to ``CreateProcess`` or
   ``PR_CreateProcess``.
-  The parent transmits the content of ``SSL_INHERITANCE`` to the child
   by some other means, such as on the command line, or in another file
   or pipe.

In either case, the child must call
```SSL_InheritMPServerSIDCache`` <#1162055>`__ to complete the
inheritance of the shared cache FDs/handles.

.. _SSL_ConfigMPServerSIDCache:

SSL_ConfigMPServerSIDCache
^^^^^^^^^^^^^^^^^^^^^^^^^^

Sets up parameters for and opens the server session cache for a
multi-process application.

.. _Syntax_10:

Syntax
''''''

::

   #include "ssl.h"

::

   SECStatus SSL_ConfigMPServerSIDCache(
      int maxCacheEntries,
      PRUint32 timeout,
      PRUint32 ssl3_timeout,
      const char *directory); 

.. _Parameters_6:

Parameters
''''''''''

This function has the parameters listed below.

+---------------------+-----------------------------------------------+
| ``maxCacheEntries`` | The maximum number of entries in the cache.   |
|                     | If a ``NULL`` value is passed, the server     |
|                     | default value of 10,000 is used.              |
+---------------------+-----------------------------------------------+
| ``timeout``         | The lifetime in seconds of an SSL2 session.   |
|                     | The minimum timeout value is 5 seconds and    |
|                     | the maximum is 24 hours. Values outside this  |
|                     | range are replaced by the server default      |
|                     | value of 100 seconds.                         |
+---------------------+-----------------------------------------------+
| ``ssl3_timeout``    | The lifetime in seconds of an SSL3 session.   |
|                     | The minimum timeout value is 5 seconds and    |
|                     | the maximum is 24 hours. Values outside this  |
|                     | range are replaced by the server default      |
|                     | value of 24 hours.                            |
+---------------------+-----------------------------------------------+
| ``directory``       | A pointer to a string specifying the pathname |
|                     | of the directory that will contain the        |
|                     | session cache. If a ``NULL`` value is passed, |
|                     | the server default value is used: ``/tmp``    |
|                     | (Unix) or ``\\temp`` (NT).                    |
+---------------------+-----------------------------------------------+

.. _Returns_9:

Returns
'''''''

The function returns one of these value\ ``s``:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain error code.

.. _Description_10:

Description
'''''''''''

This function is identical to
```SSL_ConfigServerSessionIDCache`` <#1143851>`__, except that it is for
use with applications that use multiple processes. You must use one or
the other of these functions to create a server cache, not both.

If your application will use multiple processes (instead of, or in
addition to, multiple threads), and all of the processes appear to be on
the same server (same IP address and port number), then those processes
must share a common SSL session cache. The common parent of all the
processes must call this function to create the cache before creating
the other processes.

An application uses multiple processes\ *only* if it uses the Unix
function ``fork``, or the Win32 function ``CreateProcess``. This is not
the same as using multiple threads or multiple processors. Note that an
SSL server that uses Fortezza hardware devices is limited to a single
process. It can use multiple threads, and thereby make use of multiple
processors, but this must all be done from a single process.

This function creates two caches: the\ *server session ID cache* (also
called the server session cache, or server cache), and the\ *client-auth
certificate cache* (also called the client cert cache, or client auth
cache). Both caches are used only for sessions where the program
handshakes as a server. The client-auth certificate cache is used to
remember the certificates previously presented by clients for client
certificate authentication.

Passing a ``NULL`` value or a value that is out of range for any of the
parameters causes the server default value to be used in the server
cache. The values that you pass affect only the server cache, not the
client cache. Before the cache can be used in the child process, the
child process must complete its initialization using
```SSL_InheritMPServerSIDCache`` <#1162055>`__.

.. _SSL_InheritMPServerSIDCache:

SSL_InheritMPServerSIDCache
^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ensures the inheritance of file descriptors to a child process.

.. _Syntax_11:

Syntax
''''''

::

   #include "ssl.h"

::

   SECStatus SSL_InheritMPServerSIDCache (const char *envString);

.. _Parameters_7:

Parameters
''''''''''

This function has the following parameter:

+-----------------------------------+-----------------------------------+
| ``envString``                     | A pointer to the location of the  |
|                                   | inheritance information. The      |
|                                   | value depends on how you are      |
|                                   | passing the information.          |
|                                   |                                   |
|                                   | If a ``NULL`` value is passed,    |
|                                   | the function looks for the        |
|                                   | ``SSL_INHERITANCE`` variable that |
|                                   | has been inherited as part of the |
|                                   | child's environment.              |
+-----------------------------------+-----------------------------------+

.. _Returns_10:

Returns
'''''''

The function returns one of these values:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_11:

Description
'''''''''''

This function completes the inheritance of file descriptors from a
parent to a child process. After the child process is created, it must
call this function to complete its initialization.

The value of the ``envString`` argument depends on which of the two
possible inheritance schemes you have used. (See `Initializing
Multi-Processing with a Shared SSL Server Cache <#1154189>`__.)

-  If the ``SSL_INHERITANCE`` variable has been inherited as part of the
   child's environment, the child must pass a ``NULL`` pointer as the
   ``envString`` argument. This causes the function to look in the
   environment for the variable.
-  If the parent has transmitted the value of the ``SSL_INHERITANCE``
   variable to the child by some other means, the child must pass a
   pointer to that string as the ``envString`` argument to complete the
   inheritance.

When this function returns ``SECSuccess``, the server cache is ready to
be used by the SSL code.

.. _SSL_Export_Policy_Functions:

SSL Export Policy Functions
---------------------------

The SSL export policy functions determine which cipher suites
are\ *permitted* for use in an SSL session. They do not determine which
cipher suites are actually\ *enabled*--that is, turned on and ready to
use. To enable or disable a permitted cipher suite, use
```SSL_CipherPrefSetDefault`` <#1084747>`__; but bear in mind that
```SSL_CipherPrefSetDefault`` <#1084747>`__ can't enable any cipher
suite that is not explicitly permitted as a result of a call to one of
the export policy functions.

By default, none of the cipher suites supported by SSL are permitted.
The functions ```NSS_SetDomesticPolicy`` <#1228530>`__,
```NSS_SetExportPolicy`` <#1100285>`__, and
```NSS_SetFrancePolicy`` <#1105952>`__ permit the use of approved cipher
suites for domestic, international, and French versions, respectively,
of software products with encryption features. The policy settings
permitted by these functions conform with current U.S. export
regulations as understood by Netscape (for products with and without
"retail status" as defined by the `latest U.S. Export
Regulations <http://w3.access.gpo.gov/bxa/ear/ear_data.html>`__) and
French import regulations.

Under some circumstances, you may be required to abide by the terms of
an export license that permits more or fewer capabilities than those
allowed by these three functions. In such cases, use
```SSL_CipherPolicySet`` <#1104647>`__ to explicitly enable those cipher
suites you may legally export.

For descriptions of cipher suites supported by SSL, see `Introduction to
SSL </en-US/docs/Archive/Security/Introduction_to_SSL>`__.

Applications must call one of the export policy functions before
attempting to perform any cryptographic operations:

|  ```NSS_SetDomesticPolicy`` <#1228530>`__
| ```NSS_SetExportPolicy`` <#1100285>`__
| ```NSS_SetFrancePolicy`` <#1105952>`__
| ```SSL_CipherPolicySet`` <#1104647>`__

The following function is also described in this section:

```SSL_CipherPolicyGet`` <#1210463>`__

.. _NSS_SetDomesticPolicy:

NSS_SetDomesticPolicy
^^^^^^^^^^^^^^^^^^^^^

Configures cipher suites to conform with current U.S. export regulations
related to domestic software products with encryption features.

.. _Syntax_12:

Syntax
''''''

::

   #include "ssl.h"

::

   extern SECStatus NSS_SetDomesticPolicy(void);

.. _Returns_11:

Returns
'''''''

The function returns one of these values:

-  If successful, ``SECSuccess``.
-  If unsuccessful, returns ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_12:

Description
'''''''''''

``NSS_SetDomesticPolicy`` configures all the cipher suites listed under
```SSL_CipherPolicySet`` <#1104647>`__ for software that is\ *not*
intended for export, and is thus not required to conform with U.S.
export regulations related to domestic software products with encryption
features. After calling this function, all cipher suites listed are
permitted (but not necessarily enabled; see `SSL Export Policy
Functions <#1098841>`__) for the calling application.

When an SSL connection is established, SSL permits the use of the
strongest cipher suites that are both permitted and enabled for the
software on both ends of the connection. For example, if a client that
has called ``NSS_SetDomesticPolicy`` establishes an SSL connection with
a server for which some cipher suites are either not permitted or not
enabled (such as an international version of Netscape server software),
SSL uses the strongest cipher suites supported by the server that are
also supported by the client.

Under some circumstances, you may be required to abide by the terms of
an export license that permits more or fewer capabilities than those
allowed by ``NSS_SetDomesticPolicy``. In that case, first call
```NSS_SetDomesticPolicy`` <#1228530>`__,
```NSS_SetExportPolicy`` <#1100285>`__, or
```NSS_SetFrancePolicy`` <#1105952>`__, then call
```SSL_CipherPolicySet`` <#1104647>`__ repeatedly to explicitly allow or
disallow cipher suites until only those that you may legally export are
permitted.

.. _Important:

Important
'''''''''

If you call ``NSS_SetDomesticPolicy`` sometime after initialization to
change cipher suite policy settings, you must also call
``SSL_ClearSessionCache``. Otherwise, the old settings remain in the
session cache and will be used instead of the new settings.

.. _NSS_SetExportPolicy:

NSS_SetExportPolicy
^^^^^^^^^^^^^^^^^^^

Configures the SSL cipher suites to conform with current U.S. export
regulations related to international software products with encryption
features.

.. _Syntax_13:

Syntax
''''''

::

   #include "ssl.h"

::

   extern SECStatus NSS_SetExportPolicy(void);

.. _Returns_12:

Returns
'''''''

The function returns one of these values:

-  If successful, ``SECSuccess``.
-  If unsuccessful, returns ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_13:

Description
'''''''''''

``NSS_SetExportPolicy`` configures all the cipher suites listed under
```SSL_CipherPolicySet`` <#1104647>`__ to conform with current U.S.
export regulations related to international software products with
encryption features (as Netscape understands them). Calling this
function permits use of cipher suites listed below (but doesn't
necessarily enable them; see `SSL Export Policy
Functions <#1098841>`__). Policy for these suites is set to
``SSL_ALLOWED`` unless otherwise indicated. ``SSL_RESTRICTED`` means the
suite can be used by clients only when they are communicating with
domestic server software or with international server software that
presents a Global ID certificate. For more details on policy settings,
see ```SSL_CipherPolicySet`` <#1104647>`__.

For SSL 2.0:

-  ``SSL_EN_RC4_128_EXPORT40_WITH_MD5``
-  ``SSL_EN_RC2_128_CBC_EXPORT40_WITH_MD5``

For SSL 3.0:

-  ``SSL_RSA_WITH_NULL_MD5``
-  ``SSL_RSA_WITH_RC4_128_MD5 (SSL_RESTRICTED)``
-  ``SSL_RSA_WITH_3DES_EDE_CBC_SHA (SSL_RESTRICTED)``
-  ``SSL_RSA_EXPORT_WITH_RC4_40_MD5``
-  ``SSL_RSA_EXPORT_WITH_RC2_CBC_40_MD5``

Under some circumstances, you may be required to abide by the terms of
an export license that permits more or fewer capabilities than those
allowed by ``NSS_SetExportPolicy``. In that case, you should first call
```NSS_SetDomesticPolicy`` <#1228530>`__,
```NSS_SetExportPolicy`` <#1100285>`__, or
```NSS_SetFrancePolicy`` <#1105952>`__, then call
```SSL_CipherPolicySet`` <#1104647>`__ repeatedly to explicitly allow or
disallow cipher suites until only those that you may legally export are
permitted.

.. _Important_2:

Important
'''''''''

If you call ``NSS_SetExportPolicy`` sometime after initialization to
change cipher suite policy settings, you must also call
``SSL_ClearSessionCache``. Otherwise, the old settings remain in the
session cache and will be used instead of the new settings.

.. _NSS_SetFrancePolicy:

NSS_SetFrancePolicy
^^^^^^^^^^^^^^^^^^^

Configures the SSL cipher suites to conform with French import
regulations related to software products with encryption features.

.. _Syntax_14:

Syntax
''''''

::

   #include "ssl.h"

::

   SECStatus NSS_SetFrancePolicy(void);

.. _Returns_13:

Returns
'''''''

The function returns one of these values:

-  If successful, ``SECSuccess``.
-  If unsuccessful, returns ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_14:

Description
'''''''''''

``NSS_SetFrancePolicy`` configures all the cipher suites listed under
```SSL_CipherPolicySet`` <#1104647>`__ to conform with current U.S.
export regulations and French import regulations (as Netscape
understands them) related to software products with encryption features.
Calling this function permits use of cipher suites listed below (but
doesn't necessarily enable them; see `SSL Export Policy
Functions <#1098841>`__). Policy for these suites is set to
``SSL_ALLOWED``. For more details on policy settings, see
```SSL_CipherPolicySet`` <#1104647>`__.

For SSL 2.0:

-  ``SSL_EN_RC4_128_EXPORT40_WITH_MD5``
-  ``SSL_EN_RC2_128_CBC_EXPORT40_WITH_MD5``

For SSL 3.0:

-  ``SSL_RSA_WITH_NULL_MD5``
-  ``SSL_RSA_EXPORT_WITH_RC4_40_MD5``
-  ``SSL_RSA_EXPORT_WITH_RC2_CBC_40_MD5``

Under some circumstances, you may be required to abide by the terms of
an export license that permits more or fewer capabilities than those
allowed by ``NSS_SetFrancePolicy``. In that case, you should first call
```NSS_SetDomesticPolicy`` <#1228530>`__,
```NSS_SetExportPolicy`` <#1100285>`__, or
```NSS_SetFrancePolicy`` <#1105952>`__, then call
```SSL_CipherPolicySet`` <#1104647>`__ repeatedly to explicitly allow or
disallow cipher suites until only those that you may legally export are
permitted.

.. _Important_3:

Important
'''''''''

If you call ``NSS_SetFrancePolicy`` sometime after initialization to
change cipher suite policy settings, you must also call
``SSL_ClearSessionCache``. Otherwise, the old settings remain in the
session cache and will be used instead of the new settings.

.. _SSL_CipherPolicySet:

SSL_CipherPolicySet
^^^^^^^^^^^^^^^^^^^

Sets policy for the use of individual cipher suites.

``SSL_CipherPolicySet`` replaces the deprecated function
```SSL_SetPolicy`` <#1207350>`__.

.. _Syntax_15:

Syntax
''''''

::

   #include "ssl.h"
   #include "proto.h"

::

   SECStatus SSL_CipherPolicySet(PRInt32 cipher, PRInt32 policy);

.. _Parameters_8:

Parameters
''''''''''

This function has the following parameters:

+-----------------------------------+-----------------------------------+
| ``cipher``                        | A value from one of the following |
|                                   | lists.                            |
|                                   |                                   |
|                                   | Values for SSL2 (all are          |
|                                   | disallowed by default):           |
|                                   |                                   |
|                                   | ``SSL_EN_RC4                      |
|                                   | _128_WITH_MD5      SSL_EN_RC4_128 |
|                                   | _EXPORT40_WITH_MD5      SSL_EN_RC |
|                                   | 2_128_CBC_WITH_MD5      SSL_EN_RC |
|                                   | 2_128_CBC_EXPORT40_WITH_MD5       |
|                                   | SSL_EN_DES_64_CBC_WITH_MD5      S |
|                                   | SL_EN_DES_192_EDE3_CBC_WITH_MD5`` |
|                                   |                                   |
|                                   | Values for SSL3/TLS (all are      |
|                                   | disallowed by default):           |
|                                   |                                   |
|                                   | ``T                               |
|                                   | LS_DHE_RSA_WITH_AES_256_CBC_SHA`` |
|                                   | (client side only)                |
|                                   | ``T                               |
|                                   | LS_DHE_DSS_WITH_AES_256_CBC_SHA`` |
|                                   | (client side only)                |
|                                   | ``TLS_RSA_WITH_AES_256_CBC_SHA``  |
|                                   | ``SS                              |
|                                   | L_FORTEZZA_DMS_WITH_RC4_128_SHA`` |
|                                   | ``TLS_DHE_DSS_WITH_RC4_128_SHA``  |
|                                   | (client side only)                |
|                                   | ``T                               |
|                                   | LS_DHE_RSA_WITH_AES_128_CBC_SHA`` |
|                                   | (client side only)                |
|                                   | ``T                               |
|                                   | LS_DHE_DSS_WITH_AES_128_CBC_SHA`` |
|                                   | (client side only)                |
|                                   | ``SSL_RSA_WITH_RC4_128_MD5``      |
|                                   | ``SSL_RSA_WITH_RC4_128_SHA``      |
|                                   | ``TLS_RSA_WITH_AES_128_CBC_SHA``  |
|                                   | ``SS                              |
|                                   | L_DHE_RSA_WITH_3DES_EDE_CBC_SHA`` |
|                                   | (client side only)                |
|                                   | ``SS                              |
|                                   | L_DHE_DSS_WITH_3DES_EDE_CBC_SHA`` |
|                                   | (client side only)                |
|                                   | ``SSL                             |
|                                   | _RSA_FIPS_WITH_3DES_EDE_CBC_SHA`` |
|                                   | ``SSL_RSA_WITH_3DES_EDE_CBC_SHA`` |
|                                   | ``SSL_FOR                         |
|                                   | TEZZA_DMS_WITH_FORTEZZA_CBC_SHA`` |
|                                   | ``SSL_DHE_RSA_WITH_DES_CBC_SHA``  |
|                                   | (client side only)                |
|                                   | ``SSL_DHE_DSS_WITH_DES_CBC_SHA``  |
|                                   | (client side only)                |
|                                   | ``SSL_RSA_FIPS_WITH_DES_CBC_SHA`` |
|                                   | ``SSL_RSA_WITH_DES_CBC_SHA``      |
|                                   | ``TLS                             |
|                                   | _RSA_EXPORT1024_WITH_RC4_56_SHA`` |
|                                   | ``TLS_                            |
|                                   | RSA_EXPORT1024_WITH_DES_CBC_SHA`` |
|                                   | `                                 |
|                                   | `SSL_RSA_EXPORT_WITH_RC4_40_MD5`` |
|                                   | ``SSL                             |
|                                   | _RSA_EXPORT_WITH_RC2_CBC_40_MD5`` |
|                                   | `                                 |
|                                   | `SSL_FORTEZZA_DMS_WITH_NULL_SHA`` |
|                                   | ``SSL_RSA_WITH_NULL_SHA``         |
|                                   | ``SSL_RSA_WITH_NULL_MD5``         |
+-----------------------------------+-----------------------------------+
| ``policy``                        | One of the following values:      |
|                                   |                                   |
|                                   | -  ``SSL_ALLOWED``. Cipher is     |
|                                   |    always allowed by U.S.         |
|                                   |    government policy.             |
|                                   | -  ``SSL_RESTRICTED``. Cipher is  |
|                                   |    allowed by U.S. government     |
|                                   |    policy for servers with Global |
|                                   |    ID certificates.               |
|                                   | -  ``SSL_NOT_ALLOWED``. Cipher is |
|                                   |    never allowed by U.S.          |
|                                   |    government policy.             |
+-----------------------------------+-----------------------------------+

.. _Returns_14:

Returns
'''''''

The function returns one of these values:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_15:

Description
'''''''''''

``SSL_CipherPolicySet`` tells the SSL library that the specified cipher
suite is allowed by the application's export license, or is not allowed
by the application's export license, or is allowed to be used only with
a Step-Up certificate. It overrides the factory default policy for that
cipher suite. The default policy for all cipher suites is
``SSL_NOT_ALLOWED``, meaning that the application's export license does
not approve the use of this cipher suite. A U.S. "domestic" version of a
product typically sets all cipher suites to ``SSL_ALLOWED``. This
setting is used to separate export and domestic versions of a product,
and is not intended to express user cipher preferences. This setting
affects all SSL sockets in the application process that are opened after
a call to ``SSL_CipherPolicySet``.

Under some circumstances, you may be required to abide by the terms of
an export license that permits more or fewer capabilities than those
allowed by ```NSS_SetDomesticPolicy`` <#1228530>`__,
```NSS_SetExportPolicy`` <#1100285>`__, or
```NSS_SetFrancePolicy`` <#1105952>`__. In that case, first call
```NSS_SetDomesticPolicy`` <#1228530>`__,
```NSS_SetExportPolicy`` <#1100285>`__, or
```NSS_SetFrancePolicy`` <#1105952>`__, then call
``SSL_CipherPolicySet`` repeatedly to explicitly allow or disallow
cipher suites until only those that you may legally export are
permitted.

In a domestic US product, all the cipher suites are (presently) allowed.
In an export client product, some cipher suites are always allowed (such
as those with 40-bit keys), some are never allowed (such as triple-DES),
and some are allowed (such as RC4_128) for use with approved servers,
typically servers owned by banks with special Global ID certificates.
(For details, see ```NSS_SetExportPolicy`` <#1100285>`__ and
```NSS_SetFrancePolicy`` <#1105952>`__.) When an SSL connection is
established, SSL uses only cipher suites that have previously been
explicitly permitted by a call to one of the SSL export policy
functions.

Note that the value ``SSL_RESTRICTED`` (passed in the ``policy``
parameter) is currently used only by SSL clients, which can use it to
set policy for connections with servers that have SSL step-up
certificates.

.. _Important_4:

Important
'''''''''

If you call ``SSL_CipherPolicySet`` sometime after initialization to
change cipher suite policy settings, you must also call
``SSL_ClearSessionCache``. Otherwise, the old settings remain in the
session cache and will be used instead of the new settings.

.. _See_Also:

See Also
''''''''

Permitting a cipher suite is not necessarily the same as enabling it.
For details, see `SSL Export Policy Functions <#1098841>`__.

For descriptions of cipher suites supported by SSL, see `Introduction to
SSL </en-US/docs/Archive/Security/Introduction_to_SSL>`__.

.. _SSL_CipherPolicyGet:

SSL_CipherPolicyGet
^^^^^^^^^^^^^^^^^^^

Gets the current policy setting for a specified cipher suite.

``SSL_CipherPolicyGet`` is the complementary function for
```SSL_CipherPolicySet`` <#1104647>`__.

.. _Syntax_16:

Syntax
''''''

::

   #include "ssl.h"
   #include "proto.h"

::

   SECStatus SSL_CipherPolicyGet(PRInt32 cipher, PRInt32 *policy);

.. _Parameters_9:

Parameters
''''''''''

This function has the following parameters:

+-----------------------------------+-----------------------------------+
| ``cipher``                        | A value identifying a cipher      |
|                                   | suite. For a list of possible     |
|                                   | values, see                       |
|                                   | ```SSL                            |
|                                   | _CipherPolicySet`` <#1104647>`__. |
+-----------------------------------+-----------------------------------+
| policy                            | A pointer to one of the following |
|                                   | values:                           |
|                                   |                                   |
|                                   | -  ``SSL_ALLOWED``. Cipher is     |
|                                   |    always allowed by U.S.         |
|                                   |    government policy.             |
|                                   | -  ``SSL_RESTRICTED``. Cipher is  |
|                                   |    allowed by U.S. government     |
|                                   |    policy for servers with Global |
|                                   |    ID certificates.               |
|                                   | -  ``SSL_NOT_ALLOWED``. Cipher is |
|                                   |    never allowed by U.S.          |
|                                   |    government policy.             |
+-----------------------------------+-----------------------------------+

.. _Description_16:

Description
'''''''''''

See the description above for ```SSL_CipherPolicySet`` <#1104647>`__.

.. _SSL_Configuration_Functions:

SSL Configuration Functions
---------------------------

SSL configuration involves several NSPR functions in addition to the SSL
functions listed here. For a complete list of configuration functions,
see `Configuration <sslintro.html#1027742>`__.

|  `SSL Configuration <#1090577>`__
| `Callback Configuration <#1089578>`__

.. _SSL_Configuration:

SSL Configuration
~~~~~~~~~~~~~~~~~

|  ```SSL_ImportFD`` <#1085950>`__
| ```SSL_OptionSet`` <#1086543>`__
| ```SSL_OptionGet`` <#1194921>`__
| ```SSL_CipherPrefSet`` <#1214758>`__
| ```SSL_CipherPrefGet`` <#1214800>`__
| ```SSL_ConfigSecureServer`` <#1217647>`__
| ```SSL_SetURL`` <#1087792>`__
| ```SSL_SetPKCS11PinArg`` <#1088040>`__

.. _SSL_ImportFD:

SSL_ImportFD
^^^^^^^^^^^^

Imports an existing NSPR file descriptor into SSL and returns a new SSL
socket.

.. _Syntax_17:

Syntax
''''''

::

   #include "ssl.h"

::

   PRFileDesc *SSL_ImportFD(
      PRFileDesc *model,
      PRFileDesc *fd);

.. _Parameters_10:

Parameters
''''''''''

This function has the following parameters:

========= ========================================================
``model`` A pointer to the model file descriptor.
``fd``    A pointer to the file descriptor for the new SSL socket.
========= ========================================================

.. _Returns_15:

Returns
'''''''

The function returns one of these values:

-  If successful, a pointer to a new socket file descriptor.
-  If unsuccessful, ``NULL``.

.. _Description_17:

Description
'''''''''''

Any SSL function that takes a pointer to a file descriptor (socket) as a
parameter will have no effect (even though the SSL function may return
``SECSuccess``) if the socket is not an SSL socket. Sockets do not
automatically become secure SSL sockets when they are created by the
NSPR functions. You must pass an NSPR socket's file descriptor to
``SSL_ImportFD`` to make it an SSL socket before you call any other SSL
function that takes the socket's file descriptor as a parameter

``SSL_ImportFD`` imports an existing NSPR file descriptor into SSL and
returns a new SSL socket file descriptor. If the ``model`` parameter is
not ``NULL``, the configuration of the new file descriptor is copied
from the model. If the ``model`` parameter is ``NULL``, then the default
SSL configuration is used.

The new file descriptor returned by ``SSL_ImportFD`` is not necessarily
equal to the original NSPR file descriptor. If, after calling
``SSL_ImportFD``, the file descriptors are not equal, you should perform
all operations on the new ``PRFileDesc`` structure, never the old one.
Even when it's time to close the file descriptor, always close the new
``PRFileDesc`` structure, never the old one.

.. _SSL_OptionSet:

SSL_OptionSet
^^^^^^^^^^^^^

Sets a single configuration parameter of a specified socket. Call once
for each parameter you want to change.

``SSL_OptionSet`` replaces the deprecated function
```SSL_Enable`` <#1220189>`__.

.. _Syntax_18:

Syntax
''''''

::

   #include "ssl.h"

::

   SECStatus SSL_OptionSet(
      PRFileDesc *fd,
      PRInt32 option,
      PRBool on);

.. _Parameters_11:

Parameters
''''''''''

This function has the following parameters:

+-----------------------------------+-----------------------------------+
| ``fd``                            | Pointer to the NSPR file          |
|                                   | descriptor for the SSL socket.    |
+-----------------------------------+-----------------------------------+
| ``option``                        | One of the following values       |
|                                   | (default values are determined by |
|                                   | the use of                        |
|                                   | ```SSL_O                          |
|                                   | ptionSetDefault`` <#1068466>`__): |
|                                   |                                   |
|                                   | -  ``SSL_SECURITY`` enables use   |
|                                   |    of security protocol. WARNING: |
|                                   |    If you turn this option off,   |
|                                   |    the session will not be an SSL |
|                                   |    session and will not have      |
|                                   |    certificate-based              |
|                                   |    authentication, tamper         |
|                                   |    detection, or encryption.      |
|                                   | -  ``SSL_REQUEST_CERTIFICATE`` is |
|                                   |    a server option that requests  |
|                                   |    a client to authenticate       |
|                                   |    itself.                        |
|                                   | -  ``SSL_REQUIRE_CERTIFICATE`` is |
|                                   |    a server option that requires  |
|                                   |    a client to authenticate       |
|                                   |    itself (only if                |
|                                   |    ``SSL_REQUEST_CERTIFICATE`` is |
|                                   |    also on). If client does not   |
|                                   |    provide certificate, the       |
|                                   |    connection terminates.         |
|                                   | -  ``SSL_HANDSHAKE_AS_CLIENT``    |
|                                   |    controls the behavior of       |
|                                   |    ``PR_Accept``,. If this option |
|                                   |    is off, the ``PR_Accept``      |
|                                   |    configures the SSL socket to   |
|                                   |    handshake as a server. If it   |
|                                   |    is on, then ``PR_Accept``      |
|                                   |    configures the SSL socket to   |
|                                   |    handshake as a client, even    |
|                                   |    though it accepted the         |
|                                   |    connection as a TCP server.    |
|                                   | -  ``SSL_HANDSHAKE_AS_SERVER``    |
|                                   |    controls the behavior of       |
|                                   |    ``PR_Connect``. If this option |
|                                   |    is off, then ``PR_Connect``    |
|                                   |    configures the SSL socket to   |
|                                   |    handshake as a client. If it   |
|                                   |    is on, then ``PR_Connect``     |
|                                   |    configures the SSL socket to   |
|                                   |    handshake as a server, even    |
|                                   |    though it connected as a TCP   |
|                                   |    client.                        |
|                                   | -  ``SSL_ENABLE_FDX`` tells the   |
|                                   |    SSL library whether the        |
|                                   |    application will have two      |
|                                   |    threads, one reading and one   |
|                                   |    writing, or just one thread    |
|                                   |    doing reads and writes         |
|                                   |    alternately. The factory       |
|                                   |    setting for this option (which |
|                                   |    is the default, unless the     |
|                                   |    application changes the        |
|                                   |    default) is off                |
|                                   |    (``PR_FALSE``), which means    |
|                                   |    that the application will not  |
|                                   |    do simultaneous reads and      |
|                                   |    writes. An application that    |
|                                   |    needs to do simultaneous reads |
|                                   |    and writes should set this to  |
|                                   |    ``PR_TRUE``.                   |
|                                   |                                   |
|                                   | In NSS 2.8, the                   |
|                                   | ``SSL_ENABLE_FDX`` option only    |
|                                   | affects the behavior of           |
|                                   | nonblocking SSL sockets. See the  |
|                                   | description below for more        |
|                                   | information on this option.       |
+-----------------------------------+-----------------------------------+
|                                   | -  ``SSL_ENABLE_SSL3`` enables    |
|                                   |    the application to communicate |
|                                   |    with SSL v3. If you turn this  |
|                                   |    option off, an attempt to      |
|                                   |    establish a connection with a  |
|                                   |    peer that understands only SSL |
|                                   |    v3 will fail.                  |
|                                   | -  ``SSL_ENABLE_SSL2`` enables    |
|                                   |    the application to communicate |
|                                   |    with SSL v2. If you turn this  |
|                                   |    option off, an attempt to      |
|                                   |    establish a connection with a  |
|                                   |    peer that understands only SSL |
|                                   |    v2 will fail.                  |
|                                   | -  ``SSL_ENABLE_TLS`` is a peer   |
|                                   |    of the ``SSL_ENABLE_SSL2`` and |
|                                   |    ``SSL_ENABLE_SSL3`` options.   |
|                                   |    The IETF standard Transport    |
|                                   |    Layer Security (TLS) protocol, |
|                                   |    RFC 2246, is a modified        |
|                                   |    version of SSL3. It uses the   |
|                                   |    SSL version number 3.1,        |
|                                   |    appearing to be a "minor"      |
|                                   |    revision of SSL3.0. NSS 2.8    |
|                                   |    supports TLS in addition to    |
|                                   |    SSL2 and SSL3. You can think   |
|                                   |    of it as                       |
|                                   |    "``SSL_ENABLE_SSL3.1``." See   |
|                                   |    the description below for more |
|                                   |    information about this option. |
|                                   | -  ``SSL_V2_COMPATIBLE_HELLO``    |
|                                   |    tells the SSL library whether  |
|                                   |    or not to send SSL3 client     |
|                                   |    hello messages in              |
|                                   |    SSL2-compatible format. If set |
|                                   |    to ``PR_TRUE``, it will;       |
|                                   |    otherwise, it will not. See    |
|                                   |    the description below for more |
|                                   |    information on this option.    |
|                                   | -  ``SSL_NO_CACHE`` disallows use |
|                                   |    of the session cache. Factory  |
|                                   |    setting is off. If you turn    |
|                                   |    this option on, this socket    |
|                                   |    will be unable to resume a     |
|                                   |    session begun by another       |
|                                   |    socket. When this socket's     |
|                                   |    session is finished, no other  |
|                                   |    socket will be able to resume  |
|                                   |    the session begun by this      |
|                                   |    socket.                        |
|                                   | -  ``SSL_ROLLBACK_DETECTION``     |
|                                   |    disables detection of a        |
|                                   |    rollback attack. Factory       |
|                                   |    setting is on. You must turn   |
|                                   |    this option off to             |
|                                   |    interoperate with TLS clients  |
|                                   |    ( such as certain versions of  |
|                                   |    Microsoft Internet Explorer)   |
|                                   |    that do not conform to the TLS |
|                                   |    specification regarding        |
|                                   |    rollback attacks. Important:   |
|                                   |    turning this option off means  |
|                                   |    that your code will not comply |
|                                   |    with the TLS 3.1 and SSL 3.0   |
|                                   |    specifications regarding       |
|                                   |    rollback attack and will       |
|                                   |    therefore be vulnerable to     |
|                                   |    this form of attack.           |
+-----------------------------------+-----------------------------------+
| ``on``                            | ``PR_TRUE`` turns option on;      |
|                                   | ``PR_FALSE`` turns option off.    |
+-----------------------------------+-----------------------------------+

.. _Returns_16:

Returns
'''''''

The function returns one of these values:

-  If successful, ``SECSuccess``.
-  If unsuccessful, returns ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_18:

Description
'''''''''''

Keep the following in mind when deciding on the operating parameters you
want to use with a particular socket:

-  Turning on ``SSL_REQUIRE_CERTIFICATE`` will have no effect unless
   ``SSL_REQUEST_CERTIFICATE`` is also turned on. If you enable
   ``SSL_REQUEST_CERTIFICATE``, then you should explicitly enable or
   disable ``SSL_REQUIRE_CERTIFICATE`` rather than allowing it to
   default. Enabling the ``SSL_REQUIRE_CERTIFICATE`` option is not
   recommended. If the client has no certificate and this option is
   enabled, the client's connection terminates with an error. The user
   is likely to think something is wrong with either the client or the
   server, and is unlikely to realize that the problem is the lack of a
   certificate. It is better to allow the SSL handshake to complete and
   then return an error message to the client that informs the user of
   the need for a certificate.

Some applications may wish to force SSL3 client hellos to be sent in
SSL3 format, not in SSL2-compatible format. They might wish to do this
if they knew, somehow, that the server does not understand
SSL2-compatible client hello messages.

``SSL_V2_COMPATIBLE_HELLO`` tells the SSL library whether or not to send
SSL3 client hello messages in SSL2-compatible format. Note that calling
``SSL_OptionSet`` to set ``SSL_V2_COMPATIBLE_HELLO`` to ``PR_FALSE``
implicitly also sets the ``SSL_ENABLE_SSL2`` option to ``PR_FALSE`` for
that SSL socket. Calling ``SSL_EnableDefault`` to change the application
default setting for ``SSL_V2_COMPATIBLE_HELLO`` to ``PR_FALSE``
implicitly also sets the default value for ``SSL_ENABLE_SSL2`` option to
``PR_FALSE`` for that application.

-  The options ``SSL_ENABLE_SSL2``, ``SSL_ENABLE_SSL3``, and
   ``SSL_ENABLE_TLS``\ can each be set to ``PR_TRUE`` or ``PR_FALSE``
   independently of each other. NSS 2.8 and later versions will
   negotiate the highest protocol version with the peer application from
   among the set of protocols that are commonly enabled in both
   applications.

Note that SSL3 and TLS share the same set of cipher suites. When both
SSL3 and TLS are enabled, all SSL3/TLS cipher suites that are enabled
are enabled for both SSL3 and TLS.

As mentioned in `Communication <sslintro.html#1027816>`__, when an
application imports a socket into SSL after the TCP connection on that
socket has already been established, it must call
`SSL_ResetHandshake <#1058001>`__ to indicate whether the socket is for
a client or server. At first glance this may seem unnecessary, since
``SSL_OptionSet`` can set ``SSL_HANDSHAKE_AS_CLIENT`` or
``SSL_HANDSHAKE_AS_SERVER``. However, these settings control the
behavior of
```PR_Connect`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_Connect>`__
and
```PR_Accept`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_Accept>`__
only; if you don't call one of those functions after importing a non-SSL
socket with ``SSL_Import`` (as in the case of an already established TCP
connection), SSL still needs to know whether the application is
functioning as a client or server.

If a socket file descriptor is imported as an SSL socket before it is
connected, it is implicitly configured to handshake as a client or
handshake as a server when the connection is made. If the application
calls ``PR_Connect`` (connecting as a TCP client), then the SSL socket
is (by default) configured to handshake as an SSL client. If the
application calls ``PR_Accept`` (connecting the socket as a TCP server)
then the SSL socket is (by default) configured to handshake as an SSL
server. ``SSL_HANDSHAKE_AS_CLIENT`` and ``SSL_HANDSHAKE_AS_SERVER``
control this implicit configuration.

Both ``SSL_HANDSHAKE_AS_CLIENT`` and ``SSL_HANDSHAKE_AS_SERVER`` are
initially set to off--that is, the process default for both values is
``PR_FALSE`` when the process begins. The process default can be changed
from the initial values by using ``SSL_EnableDefault``, and the value
for a particular socket can be changed by using ``SSL_OptionSet``.

When you import a new SSL socket with ``SSL_ImportFD`` using a model
file descriptor, the new SSL socket inherits its values for
``SSL_HANDSHAKE_AS_CLIENT`` and ``SSL_HANDSHAKE_AS_SERVER`` from the
model file descriptor.

When ``PR_Accept`` accepts a new connection from a listen file
descriptor and creates a new file descriptor for the new connection, the
listen file descriptor also acts as a model for the new file descriptor,
and the new file descriptor inherits its values from the model.

``SSL_HANDSHAKE_AS_CLIENT`` and ``SSL_HANDSHAKE_AS_SERVER`` cannot both
be turned on simultaneously. If you use ``SSL_OptionSet`` to turn one of
these on when the other one is already turned on for a particular
socket, the function returns with the error code set to
``SEC_ERROR_INVALID_ARGS``. Likewise, using ``SSL_EnableDefault`` to
turn on the global default for one of these when the global default for
the other one is already turned for a particular socket generates the
same error. However, there is no good reason for these to be mutually
exclusive. This restirction will be removed in future releases.

If a socket that is already connected gets imported into SSL after it
has been connected (that is, after ``PR_Accept`` or ``PR_Connect`` has
returned), then no implicit SSL handshake configuration as a client or
server will have been done by ``PR_Connect`` or ``PR_Accept`` on that
socket. In this case, a call to ``SSL_ResetHandshake`` is required to
explicitly configure the socket to handshake as a client or as a server.
If ``SSL_ResetHandshake`` is not called to explicitly configure the
socket handshake, a crash is likely to occur when the first I/O
operation is done on the socket after it is imported into SSL.

.. _SSL_OptionGet:

SSL_OptionGet
^^^^^^^^^^^^^

``SSL_OptionGet`` gets the value of a specified SSL option on a
specified SSL socket.

.. _Syntax_19:

Syntax
''''''

::

   #include "ssl.h"

::

   SECStatus SSL_OptionGet(
      PRFileDesc *fd,
      PRInt32 option,
      PRBool *on);

.. _Parameters_12:

Parameters
''''''''''

This function has the following parameters:

+------------+--------------------------------------------------------+
| ``fd``     | Pointer to the file descriptor for the SSL socket.     |
+------------+--------------------------------------------------------+
| ``option`` | The value of the option whose default setting you wish |
|            | to get. For information about the options available    |
|            | and the possible values to pass in this parameter, see |
|            | the description of the ``option`` parameter under      |
|            | ```SSL_OptionSet`` <#1086543>`__.                      |
+------------+--------------------------------------------------------+
| ``on``     | ``PR_TRUE`` indicates the specified option is on;      |
|            | ``PR_FALSE`` indicates it is off.                      |
+------------+--------------------------------------------------------+

.. _Returns_17:

Returns
'''''''

The function returns one of these values:

-  If successful, ``SECSuccess``.
-  If unsuccessful, returns ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_19:

Description
'''''''''''

See the description above for ```SSL_OptionSet`` <#1086543>`__.

.. _SSL_CipherPrefSet:

SSL_CipherPrefSet
^^^^^^^^^^^^^^^^^

``SSL_CipherPrefSet`` specifies the use of a specified cipher suite on a
specified SSL socket.

.. _Syntax_20:

Syntax
''''''

::

   #include "ssl.h"
   #include "proto.h"

::

   SECStatus SSL_CipherPrefSet(
      PRFileDesc *fd,
      PRInt32 cipher,
      PRBool enabled);

.. _Parameters_13:

Parameters
''''''''''

This function has the following parameters:

+-----------------------------------+-----------------------------------+
| ``fd``                            | Pointer to the file descriptor    |
|                                   | for the SSL socket.               |
+-----------------------------------+-----------------------------------+
| ``cipher``                        | One of the following values for   |
|                                   | SSL2 (all are enabled by          |
|                                   | default):                         |
|                                   |                                   |
|                                   | ``SSL_EN_RC4                      |
|                                   | _128_WITH_MD5      SSL_EN_RC4_128 |
|                                   | _EXPORT40_WITH_MD5      SSL_EN_RC |
|                                   | 2_128_CBC_WITH_MD5      SSL_EN_RC |
|                                   | 2_128_CBC_EXPORT40_WITH_MD5       |
|                                   | SSL_EN_DES_64_CBC_WITH_MD5      S |
|                                   | SL_EN_DES_192_EDE3_CBC_WITH_MD5`` |
|                                   |                                   |
|                                   | Or one of the following values    |
|                                   | for SSL3/TLS (unless indicated    |
|                                   | otherwise, all are enabled by     |
|                                   | default):                         |
|                                   |                                   |
|                                   | ``T                               |
|                                   | LS_DHE_RSA_WITH_AES_256_CBC_SHA`` |
|                                   | (not enabled by default; client   |
|                                   | side only)                        |
|                                   | ``T                               |
|                                   | LS_DHE_DSS_WITH_AES_256_CBC_SHA`` |
|                                   | (not enabled by default; client   |
|                                   | side only)                        |
|                                   | ``TLS_RSA_WITH_AES_256_CBC_SHA``  |
|                                   | (not enabled by default)          |
|                                   | ``SS                              |
|                                   | L_FORTEZZA_DMS_WITH_RC4_128_SHA`` |
|                                   | ``TLS_DHE_DSS_WITH_RC4_128_SHA``  |
|                                   | (not enabled by default; client   |
|                                   | side only)                        |
|                                   | ``T                               |
|                                   | LS_DHE_RSA_WITH_AES_128_CBC_SHA`` |
|                                   | (not enabled by default; client   |
|                                   | side only)                        |
|                                   | ``T                               |
|                                   | LS_DHE_DSS_WITH_AES_128_CBC_SHA`` |
|                                   | (not enabled by default; client   |
|                                   | side only)                        |
|                                   | ``SSL_RSA_WITH_RC4_128_MD5``      |
|                                   | ``SSL_RSA_WITH_RC4_128_SHA`` (not |
|                                   | enabled by default)               |
|                                   | ``TLS_RSA_WITH_AES_128_CBC_SHA``  |
|                                   | (not enabled by default)          |
|                                   | ``SS                              |
|                                   | L_DHE_RSA_WITH_3DES_EDE_CBC_SHA`` |
|                                   | (not enabled by default; client   |
|                                   | side only)                        |
|                                   | ``SS                              |
|                                   | L_DHE_DSS_WITH_3DES_EDE_CBC_SHA`` |
|                                   | (not enabled by default; client   |
|                                   | side only)                        |
|                                   | ``SSL                             |
|                                   | _RSA_FIPS_WITH_3DES_EDE_CBC_SHA`` |
|                                   | ``SSL_RSA_WITH_3DES_EDE_CBC_SHA`` |
|                                   | ``SSL_FOR                         |
|                                   | TEZZA_DMS_WITH_FORTEZZA_CBC_SHA`` |
|                                   | ``SSL_DHE_RSA_WITH_DES_CBC_SHA``  |
|                                   | (not enabled by default; client   |
|                                   | side only)                        |
|                                   | ``SSL_DHE_DSS_WITH_DES_CBC_SHA``  |
|                                   | (not enabled by default; client   |
|                                   | side only)                        |
|                                   | ``SSL_RSA_FIPS_WITH_DES_CBC_SHA`` |
|                                   | ``SSL_RSA_WITH_DES_CBC_SHA``      |
|                                   | ``TLS                             |
|                                   | _RSA_EXPORT1024_WITH_RC4_56_SHA`` |
|                                   | ``TLS_                            |
|                                   | RSA_EXPORT1024_WITH_DES_CBC_SHA`` |
|                                   | `                                 |
|                                   | `SSL_RSA_EXPORT_WITH_RC4_40_MD5`` |
|                                   | ``SSL                             |
|                                   | _RSA_EXPORT_WITH_RC2_CBC_40_MD5`` |
|                                   | `                                 |
|                                   | `SSL_FORTEZZA_DMS_WITH_NULL_SHA`` |
|                                   | ``SSL_RSA_WITH_NULL_SHA`` (not    |
|                                   | enabled by default)               |
|                                   | ``SSL_RSA_WITH_NULL_MD5`` (not    |
|                                   | enabled by default)               |
+-----------------------------------+-----------------------------------+
| ``enabled``                       | If nonzero, the specified cipher  |
|                                   | is enabled. If zero, the cipher   |
|                                   | is disabled.                      |
+-----------------------------------+-----------------------------------+

.. _Description_20:

Description
'''''''''''

``SSL_CipherPrefSet`` is a new function in NSS 2.6 and later. It allows
the application to set the user preferences for cipher suites on an
individual socket, overriding the default value for the preference
(which can be set with ```SSL_CipherPrefSetDefault`` <#1084747>`__). If
an application needs to set the cipher preferences on an individual
socket, it should do so before initiating an SSL handshake, not during
an SSL handshake.

For more information on the use of the TLS and FIPS cipher suites, see
```SSL_CipherPrefSetDefault`` <#1084747>`__.

.. _SSL_CipherPrefGet:

SSL_CipherPrefGet
^^^^^^^^^^^^^^^^^

Gets the current preference setting for a specified SSL2 or SSL3 cipher
suite.

.. _Syntax_21:

Syntax
''''''

::

   #include "ssl.h"
   #include "proto.h"

::

   SECStatus SSL_CipherPrefGet(
      PRFileDesc *fd,
      PRInt32 cipher,
      PRBool *enabled);

.. _Parameters_14:

Parameters
''''''''''

This function has the parameters listed below.

+---------+-----------------------------------------------------------+
| ``fd``  | Pointer to the file descriptor for the SSL socket.        |
+---------+-----------------------------------------------------------+
| cipher  | The cipher suite whose default preference setting you     |
|         | want to get. For a list of the cipher suites you can      |
|         | specify, see ```SSL_CipherPrefSet`` <#1214758>`__.        |
+---------+-----------------------------------------------------------+
| enabled | A pointer to the default value associated with the cipher |
|         | specified in the ``cipher`` parameter. If nonzero, the    |
|         | specified cipher is enabled. If zero, the cipher is       |
|         | disabled.                                                 |
+---------+-----------------------------------------------------------+

.. _Description_21:

Description
'''''''''''

``SSL_CipherPrefGet`` performs the complementary function to
``SSL_CipherPrefSet``. It returns the current preference setting for the
SSL cipher suite for the socket. If the application has not previously
set the cipher preference for this cipher on this socket, the value will
be either the process default value or the value inherited from a listen
socket or a model socket.

.. _SSL_ConfigSecureServer:

SSL_ConfigSecureServer
^^^^^^^^^^^^^^^^^^^^^^

Configures a listen socket with the information needed to handshake as
an SSL server. ``SSL_ConfigSecureServer`` requires the certificate for
the server and the server's private key. The arguments are copied.

.. _Syntax_22:

Syntax
''''''

::

   #include "ssl.h"

::

   SECStatus SSL_ConfigSecureServer(
      PRFileDesc *fd,
      CERTCertificate *cert,
      SECKEYPrivateKey *key,
      SSLKEAType keaType);

.. _Parameters_15:

Parameters
''''''''''

This function has the following parameters:

+-----------------------------------+-----------------------------------+
| ``fd``                            | A pointer to the file descriptor  |
|                                   | for the SSL listen socket.        |
+-----------------------------------+-----------------------------------+
| ``cert``                          | A pointer to the server's         |
|                                   | certificate structure.            |
+-----------------------------------+-----------------------------------+
| ``key``                           | A pointer to the server's private |
|                                   | key structure.                    |
+-----------------------------------+-----------------------------------+
| ``keaType``                       | Key exchange type for use with    |
|                                   | specified certificate and key.    |
|                                   | These values are currently valid: |
|                                   |                                   |
|                                   | -  ``kt_rsa``                     |
|                                   | -  ``kt_dh``                      |
|                                   | -  ``kt_fortezza``                |
+-----------------------------------+-----------------------------------+

.. _Returns_18:

Returns
'''''''

The function returns one of these values:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_22:

Description
'''''''''''

Before SSL can handshake as a server on a socket, it must be configured
to do so with a call to SSL_ConfigSecureServer (among other things).
This function configures a listen socket. Child sockets created by
```PR_Accept`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_Accept>`__
inherit the configuration.

Servers can be configured with more than one certificate for a given
port, and different certificates can support different key-exchange
algorithms. To find out what key-exchange algorithm a particular
certificate supports, pass the certificate structure to
```NSS_FindCertKEAType`` <sslcrt.html#1056950>`__. You can then pass the
``SSLKEAType`` value returned by ``NSS_FindCertKEAType`` in the
``keaType`` parameter of ``SSL_ConfigSecureServer``. The server uses the
specified key-exchange algorithm with the specified certificate and key.

When the ``keaType`` is ``kt_rsa``, this function generates a step-down
key that is supplied as part of the handshake if needed. (A step-down
key is needed when the server's public key is stronger than is allowed
for export ciphers.) In this case, if the server is expected to continue
running for a long time, you should call this function periodically
(once a day, for example) to generate a new step-down key.

SSL makes and keeps internal copies (or increments the reference counts,
as appropriate) of certificate and key structures. The application
should destroy its copies when it has no further use for them by calling
```CERT_DestroyCertificate`` <sslcrt.html#1050532>`__ and
```SECKEY_DestroyPrivateKey`` <sslkey.html#1051017>`__.

.. _SSL_SetURL:

SSL_SetURL
^^^^^^^^^^

Sets the domain name of the intended server in the client's SSL socket.

.. _Syntax_23:

Syntax
''''''

::

   #include "ssl.h"

::

   int SSL_SetURL(
      PRFileDesc *fd,
      char *url);

.. _Parameters_16:

Parameters
''''''''''

This function has the following parameters:

+---------+-----------------------------------------------------------+
| ``fd``  | A pointer to a file descriptor.                           |
+---------+-----------------------------------------------------------+
| ``url`` | A pointer to a string specifying the desired server's     |
|         | domain name.                                              |
+---------+-----------------------------------------------------------+

.. _Returns_19:

Returns
'''''''

The function returns one of the following values:

-  If successful, zero.
-  If unsuccessful, ``-1``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_23:

Description
'''''''''''

The client application's certificate authentication callback function
needs to compare the domain name in the server's certificate against the
domain name of the server the client was attempting to contact. This
step is vital because it is the client's\ *only* protection against a
man-in-the-middle attack.

The client application uses ``SSL_SetURL`` to set the domain name of the
desired server before performing the first SSL handshake. The client
application's certificate authentication callback function gets this
string by calling ```SSL_RevealURL`` <#1081175>`__.

.. _SSL_SetPKCS11PinArg:

SSL_SetPKCS11PinArg
^^^^^^^^^^^^^^^^^^^

Sets the argument passed to the password callback function specified by
a call to ```PK11_SetPasswordFunc`` <pkfnc.html#1023128>`__.

.. _Syntax_24:

Syntax
''''''

::

   #include "ssl.h"

::

   int SSL_SetPKCS11PinArg(PRFileDesc *fd, void *a); 

.. _Parameters_17:

Parameters
''''''''''

This function has the following parameters:

+--------+------------------------------------------------------------+
| ``fd`` | A pointer to the file descriptor for the SSL socket.       |
+--------+------------------------------------------------------------+
| ``a``  | A pointer supplied by the application that can be used to  |
|        | pass state information. This value is passed as the third  |
|        | argument of the application's password function. The       |
|        | meaning is determined solely by the application.           |
+--------+------------------------------------------------------------+

.. _Returns_20:

Returns
'''''''

The function returns one of the following values:

-  If successful, zero.
-  If unsuccessful, ``-1``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_24:

Description
'''''''''''

During the course of an SSL operation, it may be necessary for the user
to log in to a PKCS #11 token (either a smart card or soft token) to
access protected information, such as a private key. Such information is
protected with a password that can be retrieved by calling an
application-supplied callback function. The callback function is
specified in a call to ```PK11_SetPasswordFunc`` <pkfnc.html#1023128>`__
that takes place during NSS initialization.

Several functions in the NSS libraries use the password callback
function to obtain the password before performing operations that
involve the protected information. When NSS libraries call the password
callback function, the value they pass in as the third parameter is the
value of the ``a`` argument to ``PK11_SetPKCS11PinArg``. The third
parameter to the password callback function is application-defined and
can be used for any purpose. For example, Communicator uses the
parameter to pass information about which window is associated with the
modal dialog box requesting the password from the user.

You can obtain the PIN argument by calling
```SSL_RevealPinArg`` <#1123385>`__.

.. _Callback_Configuration:

Callback Configuration
~~~~~~~~~~~~~~~~~~~~~~

At the beginning of an SSL application, it is often necessary to set up
callback functions for the SSL API to use when it needs to call the
application. These functions are used to request authentication
information from the application or to inform the application when a
handshake is completed.

|  ```SSL_AuthCertificateHook`` <#1088805>`__
| ```SSL_AuthCertificate`` <#1088888>`__
| ```SSL_BadCertHook`` <#1088928>`__
| ```SSL_GetClientAuthDataHook`` <#1126622>`__
| ```NSS_GetClientAuthData`` <#1106762>`__
| ```SSL_HandshakeCallback`` <#1112702>`__

Setting up the callback functions described in this section may be
optional for some applications. However, all applications must use
```PK11_SetPasswordFunc`` <pkfnc.html#1023128>`__ to set up the password
callback function during NSS initialization.

For examples of the callback functions listed here, see `Chapter 2,
"Getting Started With SSL." <gtstd.html#1005439>`__

.. _SSL_AuthCertificateHook:

SSL_AuthCertificateHook
^^^^^^^^^^^^^^^^^^^^^^^

Specifies a certificate authentication callback function called to
authenticate an incoming certificate.

.. _Syntax_25:

Syntax
''''''

::

   #include "ssl.h"

::

   SECStatus SSL_AuthCertificateHook(
      PRFileDesc *fd,
      SSLAuthCertificate f,
      void *arg);

.. _Parameters_18:

Parameters
''''''''''

This function has the following parameters:

+---------+-----------------------------------------------------------+
| ``fd``  | A pointer to the file descriptor for the SSL socket.      |
+---------+-----------------------------------------------------------+
| ``f``   | A pointer to the callback function. If ``NULL``, the      |
|         | default callback function,                                |
|         | ```SSL_AuthCertificate`` <#1088888>`__, will be used.     |
+---------+-----------------------------------------------------------+
| ``arg`` | A pointer supplied by the application that can be used to |
|         | pass state information. Can be ``NULL``.                  |
+---------+-----------------------------------------------------------+

.. _Returns_21:

Returns
'''''''

The function returns one of the following values:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_25:

Description
'''''''''''

The callback function set up by ``SSL_AuthCertificateHook`` is called to
authenticate an incoming certificate. If the ``checksig`` parameter is
set to ``PR_TRUE``, the callback function also verifies the digital
signature.

   **NOTE:** If you do not call\ ``SSL_AuthCertificateHook`` to supply a
   certificate authentication callback function, SSL uses the default
   callback function, ```SSL_AuthCertificate`` <#1088888>`__.

The callback function has the following prototype:

::

   typedef SECStatus (*SSLAuthCertificate) (
      void *arg,
      PRFileDesc *fd,
      PRBool checksig,
      PRBool isServer);

This callback function has the following parameters:

+--------------+------------------------------------------------------+
| ``arg``      | A pointer supplied by the application (in the call   |
|              | to ``SSL_AuthCertificateHook``) that can be used to  |
|              | pass state information. Can be ``NULL``.             |
+--------------+------------------------------------------------------+
| ``fd``       | A pointer to the file descriptor for the SSL socket. |
+--------------+------------------------------------------------------+
| ``checksig`` | ``PR_TRUE``\ means signatures are to be checked and  |
|              | the certificate chain is to be validated.            |
|              | ``PR_FALSE`` means they are not to be checked. (The  |
|              | value is normally ``PR_TRUE``.)                      |
+--------------+------------------------------------------------------+
| ``isServer`` | ``PR_TRUE`` means the callback function should       |
|              | evaluate the certificate as a server does, treating  |
|              | the remote end as a client. ``PR_FALSE`` means the   |
|              | callback function should evaluate the certificate as |
|              | a client does, treating the remote end as a server.  |
+--------------+------------------------------------------------------+

The callback function returns one of these values:

-  If authentication is successful, ``SECSuccess``.
-  If authentication is not successful, ``SECFailure``. If the callback
   returns ``SECFailure``, the callback should indicate the reason for
   the failure (if possible) by calling
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   with the appropriate error code.

The callback function obtains the certificate to be authenticated by
calling ```SSL_PeerCertificate`` <#1096168>`__.

If ``isServer`` is false, the callback should also check that the domain
name in the remote server's certificate matches the desired domain name
specified in a previous call to ```SSL_SetURL`` <#1087792>`__. To obtain
that domain name, the callback calls ```SSL_RevealURL`` <#1081175>`__.

The callback may need to call one or more PK11 functions to obtain the
services of a PKCS #11 module. Some of the PK11 functions require a PIN
argument (see ```SSL_SetPKCS11PinArg`` <#1088040>`__ for details). To
obtain the value that was set with
```SSL_SetPKCS11PinArg`` <#1088040>`__, the callback calls
```SSL_RevealPinArg`` <#1123385>`__.

If the callback returns ``SECFailure``, the SSL connection is terminated
immediately unless the application has supplied a bad-certificate
callback function by having previously called
```SSL_BadCertHook`` <#1088928>`__. A bad-certificate callback function
gives the application the opportunity to choose to accept the
certificate as authentic and authorized even though it failed the check
performed by the certificate authentication callback function.

.. _See_Also_2:

See Also
''''''''

For examples of certificate authentication callback functions, see the
sample code referenced from `Chapter 2, "Getting Started With
SSL." <gtstd.html#1005439>`__

.. _SSL_AuthCertificate:

SSL_AuthCertificate
^^^^^^^^^^^^^^^^^^^

Default callback function used to authenticate certificates received
from the remote end of an SSL connection if the application has not
previously called ```SSL_AuthCertificateHook`` <#1088805>`__ to specify
its own certificate authentication callback function.

.. _Syntax_26:

Syntax
''''''

::

   #include "ssl.h"

::

   SECStatus SSL_AuthCertificate(
      void *arg,
      PRFileDesc *fd,
      PRBool checksig,
      PRBool isServer);

.. _Parameters_19:

Parameters
''''''''''

This function has the following parameters:

+--------------+------------------------------------------------------+
| ``arg``      | A pointer to the handle of the certificate database  |
|              | to be used in validating the certificate's           |
|              | signature. (This use of the ``arg`` parameter is     |
|              | required for ``SSL_AuthCertificate``, but not for    |
|              | all implementations of a certificate authentication  |
|              | callback function.)                                  |
+--------------+------------------------------------------------------+
| ``fd``       | A pointer to the file descriptor for the SSL socket. |
+--------------+------------------------------------------------------+
| ``checksig`` | ``PR_TRUE``\ means signatures are to be checked and  |
|              | the certificate chain is to be validated.            |
|              | ``PR_FALSE`` means they are not to be checked. (The  |
|              | value is normally ``PR_TRUE``.)                      |
+--------------+------------------------------------------------------+
| ``isServer`` | ``PR_TRUE`` means the callback function should       |
|              | evaluate the certificate as a server does, treating  |
|              | the remote end is a client. ``PR_FALSE`` means the   |
|              | callback function should evaluate the certificate as |
|              | a client does, treating the remote end as a server.  |
+--------------+------------------------------------------------------+

.. _Returns_22:

Returns
'''''''

The function returns one of these values:

-  If authentication is successful, ``SECSuccess``.
-  If authentication is not successful, ``SECFailure``.

.. _Description_26:

Description
'''''''''''

SSL calls ``SSL_AuthCertificate`` by default (if no other callback
function is provided) to authenticate an incoming certificate. If the
``checksig`` parameter is set to ``PR_TRUE`` (which is normally the
case), the function also verifies the digital signature and the
certificate chain.

If the socket is a client socket, ``SSL_AuthCertificate`` tests the
domain name in the SSL socket against the domain name in the server
certificate's subject DN:

-  If the domain name in the SSL socket doesn't match the domain name in
   the server certificate's subject DN, the function fails.
-  If the SSL socket has not had a domain name set (that is, if
   ```SSL_SetURL`` <#1087792>`__ has not been called) or its domain name
   is set to an empty string, the function fails.

SSL_BadCertHook

Sets up a callback function to deal with a situation where the
```SSL_AuthCertificate`` <#1088888>`__ callback function has failed.
This callback function allows the application to override the decision
made by the certificate authorization callback and authorize the
certificate for use in the SSL connection.

.. _Syntax_27:

Syntax
''''''

::

   #include "ssl.h"

::

   SECStatus SSL_BadCertHook(
      PRFileDesc *fd,
      SSLBadCertHandler f,
      void *arg);

.. _Parameters_20:

Parameters
''''''''''

This function has the following parameters:

+---------+-----------------------------------------------------------+
| ``fd``  | A pointer to the file descriptor for the SSL socket.      |
+---------+-----------------------------------------------------------+
| ``f``   | A pointer to the application's callback function.         |
+---------+-----------------------------------------------------------+
| ``arg`` | A pointer supplied by the application that can be used to |
|         | pass state information. Can be ``NULL``.                  |
+---------+-----------------------------------------------------------+

.. _Returns_23:

Returns
'''''''

The function returns one of these value\ ``s``:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_27:

Description
'''''''''''

The bad-certificate callback function gives the program an opportunity
to do something (for example, log the attempt or authorize the
certificate) when certificate authentication is not successful. If such
a callback function is not provided by the application, the SSL
connection simply fails when certificate authentication is not
successful.

The callback function set up by ``SSL_BadCertHook`` has the following
prototype:

::

   typedef SECStatus (*SSLBadCertHandler)(
      void *arg,
      PRFileDesc *fd);

This callback function has the following parameters:

+---------+-----------------------------------------------------------+
| ``arg`` | The ``arg`` parameter passed to                           |
|         | ```SSL_BadCertHook`` <#1088928>`__.                       |
+---------+-----------------------------------------------------------+
| ``fd``  | A pointer to the file descriptor for the SSL socket.      |
+---------+-----------------------------------------------------------+

The callback function returns one of these values:

-  ``SECSuccess``: The callback has chosen to authorize the certificate
   for use in this SSL connection, despite the fact that it failed the
   examination by the certificate authentication callback.
-  ``SECFailure``: The certificate is not authorized for this SSL
   connection. The SSL connection will be terminated immediately.

To obtain the certificate that was rejected by the certificate
authentication callback, the bad-certificate callback function calls
```SSL_PeerCertificate`` <#1096168>`__. Since it is called immediately
after the certificate authentication callback returns, the
bad-certificate callback function can obtain the error code set by the
certificate authentication callback by calling
```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
immediately, as the first operation it performs. Note: once the
bad-certificate callback function returns, the peer certificate is
destroyed, and SSL_PeerCertificate will fail.

The callback may need to call one or more PK11 functions to obtain the
services of a PKCS #11 module. Some of the PK11 functions require a PIN
argument (see ```SSL_SetPKCS11PinArg`` <#1088040>`__ for details). To
obtain the value previously passed, the callback calls
```SSL_RevealPinArg`` <#1123385>`__

.. _See_Also_3:

See Also
''''''''

SSL_GetClientAuthDataHook

Defines a callback function for SSL to use in a client application when
a server asks for client authentication information. This callback
function is required if your client application is going to support
client authentication.

.. _Syntax_28:

Syntax
''''''

::

   #include "ssl.h"

::

   SECStatus SSL_GetClientAuthDataHook(
      PRFileDesc *fd,
      SSLGetClientAuthData f,
      void *a);

.. _Parameters_21:

Parameters
''''''''''

This function has the following parameters:

+---------+-----------------------------------------------------------+
| ``fd``  | A pointer to the file descriptor for the SSL socket.      |
+---------+-----------------------------------------------------------+
| ``f``   | A pointer to the application's callback function that     |
|         | delivers the key and certificate.                         |
+---------+-----------------------------------------------------------+
| ``arg`` | A pointer supplied by the application that can be used to |
|         | pass state information. Can be ``NULL``.                  |
+---------+-----------------------------------------------------------+

.. _Returns_24:

Returns
'''''''

The function returns one of these values:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_28:

Description
'''''''''''

The callback function set with ``SSL_GetClientAuthDataHook`` is used to
get information from a client application when authentication is
requested by the server. The callback function retrieves the client's
private key and certificate.

SSL provides an implementation of this callback function; see
```NSS_GetClientAuthData`` <#1106762>`__ for details. Unlike
```SSL_AuthCertificate`` <#1088888>`__,
```NSS_GetClientAuthData`` <#1106762>`__ is not a default callback
function. You must set it explicitly with ``SSL_GetClientAuthDataHook``
if you want to use it.

The callback function has the following prototype:

::

   typedef SECStatus (*SSLGetClientAuthData)(
      void *arg,
      PRFileDesc *fd,
      CertDistNames *caNames,
      CERTCertificate **pRetCert,
      SECKEYPrivateKey **pRetKey);

This callback function has the following parameters:

+--------------+------------------------------------------------------+
| ``arg``      | The ``arg`` parameter passed to                      |
|              | ``SSL_GetClientAuthDataHook``.                       |
+--------------+------------------------------------------------------+
| ``fd``       | A pointer to the file descriptor for the SSL socket. |
+--------------+------------------------------------------------------+
| ``caNames``  | A pointer to distinguished names of CAs that the     |
|              | server accepts.                                      |
+--------------+------------------------------------------------------+
| ``pRetCert`` | A pointer to a pointer to a certificate structure,   |
|              | for returning the certificate.                       |
+--------------+------------------------------------------------------+
| ``pRetKey``  | A pointer to a pointer to a key structure, for       |
|              | returning the private key.                           |
+--------------+------------------------------------------------------+

The callback function returns one of these values:

-  If data returned is valid, ``SECSuccess``.
-  If the function cannot obtain a certificate, ``SECFailure``.

.. _NSS_GetClientAuthData:

NSS_GetClientAuthData
^^^^^^^^^^^^^^^^^^^^^

Callback function that a client application can use to get the client's
private key and certificate when authentication is requested by a remote
server.

.. _Syntax_29:

Syntax
''''''

::

   #include "ssl.h"

::

   SECStatus NSS_GetClientAuthData(
      void * arg,
      PRFileDesc *socket,
      struct CERTDistNamesStr *caNames,
      struct CERTCertificateStr **pRetCert,
      struct SECKEYPrivateKeyStr **pRetKey);

.. _Parameters_22:

Parameters
''''''''''

This function has the following parameters:

+--------------+------------------------------------------------------+
| ``arg``      | The ``arg`` parameter passed to                      |
|              | ``SSL_GetClientAuthDataHook``, which should be a     |
|              | pointer to a ``NULL``-terminated string containing   |
|              | the nickname of the certificate and key pair to use. |
|              | If ``arg`` is ``NULL``, ``NSS_GetClientAuthData``    |
|              | searches the certificate and key databases for a     |
|              | suitable match and uses the certificate and key pair |
|              | it finds, if any.                                    |
+--------------+------------------------------------------------------+
| ``socket``   | A pointer to the file descriptor for the SSL socket. |
+--------------+------------------------------------------------------+
| ``caNames``  | A pointer to distinguished names of CAs that the     |
|              | server accepts.                                      |
+--------------+------------------------------------------------------+
| ``pRetCert`` | A pointer to a pointer to a certificate structure,   |
|              | for returning the certificate.                       |
+--------------+------------------------------------------------------+
| ``pRetKey``  | A pointer to a pointer to a key structure, for       |
|              | returning the private key.                           |
+--------------+------------------------------------------------------+

.. _Returns_25:

Returns
'''''''

The function returns one of these values:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_29:

Description
'''''''''''

Unlike ```SSL_AuthCertificate`` <#1088888>`__, ``NSS_GetClientAuthData``
is not a default callback function. You must set it explicitly with
```SSL_GetClientAuthDataHook`` <#1126622>`__ for each SSL client socket.

Once ``NSS_GetClientAuthData`` has been set for a client socket, SSL
invokes it whenever SSL needs to know what certificate and private key
(if any) to use to respond to a request for client authentication.

.. _SSL_HandshakeCallback:

SSL_HandshakeCallback
^^^^^^^^^^^^^^^^^^^^^

Sets up a callback function used by SSL to inform either a client
application or a server application when the handshake is completed.

.. _Syntax_30:

Syntax
''''''

::

   #include "ssl.h"

::

   SECStatus SSL_HandshakeCallback(
      PRFileDesc *fd,
      SSLHandshakeCallback cb,
      void *client_data);

.. _Parameters_23:

Parameters
''''''''''

This function has the following parameters:

+-----------------+---------------------------------------------------+
| ``fd``          | A pointer to the file descriptor for the SSL      |
|                 | socket.                                           |
+-----------------+---------------------------------------------------+
| ``cb``          | A pointer to the application's callback function. |
+-----------------+---------------------------------------------------+
| ``client_data`` | A pointer to the value of the ``client_data``     |
|                 | argument that was passed to                       |
|                 | ``SSL_HandshakeCallback``.                        |
+-----------------+---------------------------------------------------+

.. _Returns_26:

Returns
'''''''

The function returns one of these values:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_30:

Description
'''''''''''

The callback function set by ``SSL_HandshakeCallback`` has the following
prototype:

::

   typedef void (*SSLHandshakeCallback)(
      PRFileDesc *fd,
      void *client_data);

This callback function has the following parameters:

+-----------------+---------------------------------------------------+
| ``fd``          | A pointer to the file descriptor for the SSL      |
|                 | socket.                                           |
+-----------------+---------------------------------------------------+
| ``client_data`` | A pointer supplied by the application that can be |
|                 | used to pass state information. Can be ``NULL``.  |
+-----------------+---------------------------------------------------+

.. _See_Also_4:

See Also
''''''''

.. _SSL_Communication_Functions:

SSL Communication Functions
---------------------------

Most communication functions are described in the `NSPR
Reference <../../../../../nspr/reference/html/index.html>`__. For a
complete list of communication functions used by SSL-enabled
applications, see `Communication <sslintro.html#1027816>`__.

|  ```SSL_InvalidateSession`` <#1089420>`__
| ```SSL_DataPending`` <#1092785>`__
| ```SSL_SecurityStatus`` <#1092805>`__
| ```SSL_GetSessionID`` <#1092869>`__
| ```SSL_SetSockPeerID`` <#1124562>`__

.. _SSL_InvalidateSession:

SSL_InvalidateSession
^^^^^^^^^^^^^^^^^^^^^

Removes the current session on a particular SSL socket from the session
cache.

.. _Syntax_31:

Syntax
''''''

::

   #include "ssl.h"

::

   int SSL_InvalidateSession(PRFileDesc *fd);

.. _Parameter_4:

Parameter
'''''''''

This function has the following parameter:

====== ====================================================
``fd`` A pointer to the file descriptor for the SSL socket.
====== ====================================================

.. _Returns_27:

Returns
'''''''

The function returns one of these values:

-  If successful, zero.
-  If unsuccessful, -1. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_31:

Description
'''''''''''

After you call ``SSL_InvalidateSession``, the existing connection using
the session can continue, but no new connections can resume this SSL
session.

.. _SSL_DataPending:

SSL_DataPending
^^^^^^^^^^^^^^^

Returns the number of bytes waiting in internal SSL buffers to be read
by the local application from the SSL socket.

.. _Syntax_32:

Syntax
''''''

::

   #include "ssl.h"

::

   int SSL_DataPending(PRFileDesc *fd);

.. _Parameter_5:

Parameter
'''''''''

This function has the following parameter:

====== ==========================================================
``fd`` A pointer to a file descriptor for a connected SSL socket.
====== ==========================================================

.. _Returns_28:

Returns
'''''''

The function returns an integer:

-  If successful, the function returns the number of bytes waiting in
   internal SSL buffers for the specified socket.
-  If ``SSL_SECURITY`` has not been enabled with a call to
   ```SSL_OptionSetDefault`` <#1068466>`__ or
   ```SSL_OptionSet`` <#1086543>`__, the function returns zero.

.. _Description_32:

Description
'''''''''''

The ``SSL_DataPending`` function determines whether there is any
received and decrypted application data remaining in the SSL socket's
receive buffers after a prior read operation. This function does not
reveal any information about data that has been received but has not yet
been decrypted. Hence, if this function returns zero, that does not
necessarily mean that a subsequent call to
```PR_Read`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_Read>`__
would block.

.. _SSL_SecurityStatus:

SSL_SecurityStatus
^^^^^^^^^^^^^^^^^^

Gets information about the security parameters of the current
connection.

.. _Syntax_33:

Syntax
''''''

::

   #include "ssl.h"

::

   SECStatus SSL_SecurityStatus(
      PRFileDesc *fd,
      int *on,
      char **cipher,
      int *keysize,
      int *secretKeySize,
      char **issuer,
      char **subject);

.. _Parameters_24:

Parameters
''''''''''

This function has the following parameters:

+-----------------------------------+-----------------------------------+
| ``fd``                            | The file descriptor for the SSL   |
|                                   | socket.                           |
+-----------------------------------+-----------------------------------+
| ``on``                            | A pointer to an integer. On       |
|                                   | output, the integer will be one   |
|                                   | of these values:                  |
|                                   |                                   |
|                                   | -  `                              |
|                                   | `SSL_SECURITY_STATUS_ OFF (= 0)`` |
|                                   | -  ``SSL                          |
|                                   | _SECURITY_STATUS_ ON_HIGH (= 1)`` |
|                                   | -  ``S                            |
|                                   | SL_SECURITY_STATUS_ON_LOW (= 2)`` |
+-----------------------------------+-----------------------------------+
| ``cipher``                        | A pointer to a string pointer. On |
|                                   | output, the string pointer        |
|                                   | references a newly allocated      |
|                                   | string specifying the name of the |
|                                   | cipher. For SSL v2, the string is |
|                                   | one of the following:             |
|                                   |                                   |
|                                   | ``RC4``                           |
|                                   | ``RC4-Export``                    |
|                                   |                                   |
|                                   | ``RC2-CBC``                       |
|                                   |                                   |
|                                   | ``RC2-CBC-Export``                |
|                                   |                                   |
|                                   | ``DES-CBC``                       |
|                                   |                                   |
|                                   | ``DES-EDE3-CBC``                  |
|                                   |                                   |
|                                   | For SSL v3, the string is one of  |
|                                   | the following:                    |
|                                   |                                   |
|                                   | ``RC4``                           |
|                                   | ``RC4-40``                        |
|                                   |                                   |
|                                   | ``RC2-CBC``                       |
|                                   |                                   |
|                                   | ``RC2-CBC-40``                    |
|                                   |                                   |
|                                   | ``DES-CBC``                       |
|                                   |                                   |
|                                   | ``3DES-EDE-CBC``                  |
|                                   |                                   |
|                                   | ``DES-CBC-40``                    |
|                                   |                                   |
|                                   | ``FORTEZZA``                      |
+-----------------------------------+-----------------------------------+
| ``keySize``                       | A pointer to an integer. On       |
|                                   | output, the integer is the        |
|                                   | session key size used, in bits.   |
+-----------------------------------+-----------------------------------+
| ``secretKeySize``                 | A pointer to an integer. On       |
|                                   | output, the integer indicates the |
|                                   | size, in bits, of the secret      |
|                                   | portion of the session key used   |
|                                   | (also known as the "effective key |
|                                   | size"). The secret key size is    |
|                                   | never greater than the session    |
|                                   | key size.                         |
+-----------------------------------+-----------------------------------+
| ``issuer``                        | A pointer to a string pointer. On |
|                                   | output, the string pointer        |
|                                   | references a newly allocated      |
|                                   | string specifying the DN of the   |
|                                   | issuer of the certificate at the  |
|                                   | other end of the connection, in   |
|                                   | RFC1485 format. If no certificate |
|                                   | is supplied, the string is        |
|                                   | "``no certificate``."             |
+-----------------------------------+-----------------------------------+
| ``subject``                       | A pointer to a string pointer     |
|                                   | specifying the distinguished name |
|                                   | of the certificate at the other   |
|                                   | end of the connection, in RFC1485 |
|                                   | format. If no certificate is      |
|                                   | supplied, the string is           |
|                                   | "``no certificate``."             |
+-----------------------------------+-----------------------------------+

.. _Returns_29:

Returns
'''''''

The function returns one of these values:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_33:

Description
'''''''''''

The ``SSL_SecurityStatus`` function fills in values only if you supply
pointers to values of the appropriate type. Pointers passed can be
``NULL``, in which case the function does not supply values. When you
are finished with them, you should free all the returned values using
```PR_Free`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_Free>`__.

.. _SSL_GetSessionID:

SSL_GetSessionID
^^^^^^^^^^^^^^^^

Returns a ```SECItem`` <ssltyp.html#1026076>`__ structure containing the
SSL session ID associated with a file descriptor.

.. _Syntax_34:

Syntax
''''''

::

   #include "ssl.h"

::

   SECItem *SSL_GetSessionID(PRFileDesc *fd);

.. _Parameter_6:

Parameter
'''''''''

This function has the following parameter:

====== ====================================================
``fd`` A pointer to the file descriptor for the SSL socket.
====== ====================================================

.. _Returns_30:

Returns
'''''''

The function returns one of these values:

If unsuccessful, ``NULL``.

.. _Description_34:

Description
'''''''''''

This function returns a ```SECItem`` <ssltyp.html#1026076>`__ structure
containing the SSL session ID associated with the file descriptor
``fd``. When the application is finished with the ``SECItem`` structure
returned by this function, it should free the structure by calling
``SECITEM_FreeItem(item, PR_TRUE)``.

.. _SSL_SetSockPeerID:

SSL_SetSockPeerID
^^^^^^^^^^^^^^^^^

Associates a peer ID with a socket to facilitate looking up the SSL
session when it is tunneling through a proxy.

.. _Syntax_35:

Syntax
''''''

::

   #include "ssl.h"

::

   int SSL_SetSockPeerID(PRFileDesc *fd, char *peerID);

.. _Parameters_25:

Parameters
''''''''''

This function has the following parameters:

+------------+--------------------------------------------------------+
| ``fd``     | A pointer to the file descriptor for the SSL socket.   |
+------------+--------------------------------------------------------+
| ``peerID`` | An ID number assigned by the application to keep track |
|            | of the SSL session associated with the peer.           |
+------------+--------------------------------------------------------+

.. _Returns_31:

Returns
'''''''

The function returns one of these values:

-  If successful, zero.
-  If unsuccessful, -1. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_35:

Description
'''''''''''

SSL peers frequently reconnect after a relatively short time has passed.
To avoid the overhead of repeating the full SSL handshake in situations
like this, the SSL protocol supports the use of a session cache, which
retains information about each connection for some predetermined length
of time. For example, a client session cache includes the hostname and
port number of each server the client connects with, plus additional
information such as the master secret generated during the SSL
handshake.

For a direct connection with a server, the hostname and port number are
sufficient for the client to identify the server as one for which it has
an entry in its session cache. However, the situation is more
complicated if the client is on an intranet and is connecting to a
server on the Internet through a proxy. In this case, the client first
connects to the proxy, and the client and proxy exchange messages
specified by the proxy protocol that allow the proxy, in turn, to
connect to the requested server on behalf of the client. This
arrangement is known as SSL tunneling.

Client session cache entries for SSL connections that tunnel through a
particular proxy all have the same hostname and port number--that is,
the hostname and port number of the proxy. To determine whether a
particular server with which the client is attempting to connect has an
entry in the session cache, the session cache needs some additional
information that identifies that server. This additional identifying
information is known as a peer ID. The peer ID is associated with a
socket, and must be set before the SSL handshake occurs--that is, before
the SSL handshake is initiated by a call to a function such as
``PR_Read`` or ```SSL_ForceHandshake`` <#1133431>`__. To set the peer
ID, you use ``SSL_SetSockPeerID``.

In summary, SSL uses three pieces of information to identify a server's
entry in the client session cache: the hostname, port number, and peer
ID. In the case of a client that is tunneling through a proxy, the
hostname and port number identify the proxy, and the peer ID identifies
the desired server. Netscape recommends that the client set the peer ID
to a string that consists of the server's hostname and port number, like
this: "``www.hostname.com:387``". This convention guarantees that each
server has a unique entry in the client session cache.

.. _See_Also_5:

See Also
''''''''

For information about configuring the session cache for a server, see
```SSL_ConfigServerSessionIDCache`` <#1143851>`__.

.. _SSL_Functions_Used_by_Callbacks:

SSL Functions Used by Callbacks
-------------------------------

|  ```SSL_PeerCertificate`` <#1096168>`__
| ```SSL_RevealURL`` <#1081175>`__
| ```SSL_RevealPinArg`` <#1123385>`__

.. _SSL_PeerCertificate:

SSL_PeerCertificate
^^^^^^^^^^^^^^^^^^^

Returns a pointer to the certificate structure for the certificate
received from the remote end of the SSL connection.

.. _Syntax_36:

Syntax
''''''

::

   #include "ssl.h"

::

   CERTCertificate *SSL_PeerCertificate(PRFileDesc *fd); 

.. _Parameter_7:

Parameter
'''''''''

This function has the following parameter:

====== ====================================================
``fd`` A pointer to the file descriptor for the SSL socket.
====== ====================================================

.. _Returns_32:

Returns
'''''''

The function returns one of these values:

-  If successful, a pointer to a certificate structure.
-  If unsuccessful, ``NULL``.

.. _Description_36:

Description
'''''''''''

The ``SSL_PeerCertificate`` function is used by certificate
authentication and bad-certificate callback functions to obtain the
certificate under scrutiny. If the client calls ``SSL_PeerCertificate``,
it always returns the server's certificate. If the server calls
``SSL_PeerCertificate``, it may return ``NULL`` if client authentication
is not enabled or if the client had no certificate when asked.

SSL makes and keeps internal copies (or increments the reference counts,
as appropriate) of certificate and key structures. The application
should destroy its copies when it has no further use for them by calling
```CERT_DestroyCertificate`` <sslcrt.html#1050532>`__ and
```SECKEY_DestroyPrivateKey`` <sslkey.html#1051017>`__.

.. _SSL_RevealURL:

SSL_RevealURL
^^^^^^^^^^^^^

Returns a pointer to a newly allocated string containing the domain name
of the desired server.

.. _Syntax_37:

Syntax
''''''

::

   #include "ssl.h"

::

   char *SSL_RevealURL(PRFileDesc *fd); 

.. _Parameter_8:

Parameter
'''''''''

This function has the following parameter:

====== ====================================================
``fd`` A pointer to the file descriptor for the SSL socket.
====== ====================================================

.. _Returns_33:

Returns
'''''''

The function returns one of the following values:

-  If successful, returns a pointer to a newly allocated string
   containing the domain name of the desired server.
-  If unsuccessful, ``NULL``.

.. _Description_37:

Description
'''''''''''

The ``SSL_RevealURL`` function is used by certificate authentication
callback function to obtain the domain name of the desired SSL server
for the purpose of comparing it with the domain name in the certificate
presented by the server actually contacted. When the callback function
is finished with the string returned, the string should be freed with a
call to
```PR_Free`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_Free>`__.

.. _SSL_RevealPinArg:

SSL_RevealPinArg
^^^^^^^^^^^^^^^^

Returns the ``PKCS11PinArg`` value associated with the socket.

.. _Syntax_38:

Syntax
''''''

::

   #include "ssl.h"

::

   void *SSL_RevealPinArg(PRFileDesc *fd); 

.. _Parameter_9:

Parameter
'''''''''

This function has the following parameter:

====== ====================================================
``fd`` A pointer to the file descriptor for the SSL socket.
====== ====================================================

.. _Returns_34:

Returns
'''''''

The function returns one of the following values:

-  If successful, the ``PKCS11PinArg`` value associated with the socket.
-  If unsuccessful, ``NULL``.

.. _Description_38:

Description
'''''''''''

The ``SSL_RevealPinArg`` function is used by callback functions to
obtain the PIN argument that NSS passes to certain functions. The PIN
argument points to memory allocated by the application. The application
is responsible for managing the memory referred to by this pointer. For
more information about this argument, see
```SSL_SetPKCS11PinArg`` <#1088040>`__.

.. _SSL_Handshake_Functions:

SSL Handshake Functions
-----------------------

|  ```SSL_ForceHandshake`` <#1133431>`__
| ```SSL_ReHandshake`` <#1232052>`__
| ```SSL_ResetHandshake`` <#1058001>`__

.. _SSL_ForceHandshake:

SSL_ForceHandshake
^^^^^^^^^^^^^^^^^^

Drives a handshake for a specified SSL socket to completion on a socket
that has already been prepared to do a handshake or is in the middle of
doing a handshake.

.. _Syntax_39:

Syntax
''''''

::

   #include "ssl.h"

::

   SECStatus SSL_ForceHandshake(PRFileDesc *fd);

.. _Parameters_26:

Parameters
''''''''''

This function has the following parameter:

====== ==================================================
``fd`` Pointer to the file descriptor for the SSL socket.
====== ==================================================

.. _Returns_35:

Returns
'''''''

The function returns one of these values:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_39:

Description
'''''''''''

When you are forcing the initial handshake on a blocking socket, this
function returns when the handshake is complete. For subsequent
handshakes, the function can return either because the handshake is
complete, or because application data has been received on the
connection that must be processed (that is, the application must read
it) before the handshake can continue.

You can use ``SSL_ForceHandshake`` when a handshake is desired but
neither end has anything to say immediately. This occurs, for example,
when an HTTPS server has received a request and determines that before
it can answer the request, it needs to request an authentication
certificate from the client. At the HTTP protocol level, nothing more is
being said (that is, no HTTP request or response is being sent), so the
server uses ``SSL_ForceHandshake`` to make the handshake occur.

``SSL_ForceHandshake`` does not prepare a socket to do a handshake by
itself. The following functions prepare a socket (previously imported
into SSL and configured as necessary) to do a handshake:

-   ``PR_Connect``
-   ``PR_Accept``
-   ```SSL_ReHandshake`` <#1232052>`__ (after the first handshake is
   finished)
-   ```SSL_ResetHandshake`` <#1058001>`__ (for sockets that were
   connected or accepted prior to being imported)

A call to ``SSL_ForceHandshake`` will almost always be preceded by one
of those functions.

In versions prior to NSS 1.2, you cannot force a subsequent handshake.
If you use this function after the initial handshake, it returns
immediately without forcing a handshake.

.. _SSL_ReHandshake:

SSL_ReHandshake
^^^^^^^^^^^^^^^

Causes SSL to begin a new SSL 3.0 handshake on a connection that has
already completed one handshake.

``SSL_ReHandshake`` replaces the deprecated function
```SSL_RedoHandshake`` <#1231825>`__.

.. _Syntax_40:

Syntax
''''''

::

   #include "ssl.h"

::

   SECStatus SSL_RedoHandshake(PRFileDesc *fd, PRBool flushCache);

.. _Parameter_10:

Parameter
'''''''''

This function has the following parameters:

+-----------------------------------+-----------------------------------+
| ``fd``                            | A pointer to the file descriptor  |
|                                   | for the SSL socket.               |
+-----------------------------------+-----------------------------------+
| ``flushCache``                    | If ``flushCache`` is non-zero,    |
|                                   | the SSL3 cache entry will be      |
|                                   | flushed first, ensuring that a    |
|                                   | full SSL handshake from scratch   |
|                                   | will occur.                       |
|                                   |                                   |
|                                   | If ``flushCache`` is zero, and an |
|                                   | SSL connection is established, it |
|                                   | will do the much faster session   |
|                                   | restart handshake. This will      |
|                                   | regenerate the symmetric session  |
|                                   | keys without doing another        |
|                                   | private key operation.            |
+-----------------------------------+-----------------------------------+

.. _Returns_36:

Returns
'''''''

The function returns one of these values:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   ```PR_GetError`` <../../../../../nspr/reference/html/prerr.html#26127>`__
   to obtain the error code.

.. _Description_40:

Description
'''''''''''

If ``flushCache`` is non-zero, the ``SSL_ReHandshake`` function
invalidates the current SSL session associated with the specified ``fd``
from the session cache and starts another full SSL 3.0 handshake. It is
for use with SSL 3.0 only. You can call this function to redo the
handshake if you have changed one of the socket's configuration
parameters (for example, if you are going to request client
authentication).

Setting ``flushCache`` to zero can be useful, for example, if you are
using export ciphers and want to keep changing the symmetric keys to
foil potential attackers.

``SSL_ReHandshake`` only initiates the new handshake by sending the
first message of that handshake. To drive the new handshake to
completion, you must either call ``SSL_ForceHandshake`` or do another
I/O operation (read or write) on the socket. A call to
``SSL_ReHandshake`` is typically followed by a call to
``SSL_ForceHandshake``.

.. _SSL_ResetHandshake:

SSL_ResetHandshake
^^^^^^^^^^^^^^^^^^

Resets the handshake state for a specified socket.

.. _Syntax_41:

Syntax
''''''

::

   #include "ssl.h"

::

   SECStatus SSL_ResetHandshake(
      PRFileDesc *fd,
      PRBool asServer);

.. _Parameters_27:

Parameters
''''''''''

This function has the following parameters:

+--------------+------------------------------------------------------+
| ``fd``       | A pointer to the file descriptor for the SSL socket. |
+--------------+------------------------------------------------------+
| ``asServer`` | A Boolean value. ``PR_TRUE`` means the socket will   |
|              | attempt to handshake as a server the next time it    |
|              | tries, and ``PR_FALSE`` means the socket will        |
|              | attempt to handshake as a client the next time it    |
|              | tries.                                               |
+--------------+------------------------------------------------------+

.. _Returns_37:

Returns
'''''''

The function returns one of these values:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_41:

Description
'''''''''''

Calling ``SSL_ResetHandshake`` causes the SSL handshake protocol to
start from the beginning on the next I/O operation. That is, the
handshake starts with no cipher suite already in use, just as it does on
the first handshake on a new socket.

When an application imports a socket into SSL after the TCP connection
on that socket has already been established, it must call
``SSL_ResetHandshake`` to determine whether SSL should behave like an
SSL client or an SSL server. Note that this step would not be necessary
if the socket weren't already connected. For an SSL socket that is
configured before it is connected, SSL figures this out when the
application calls
```PR_Connect`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_Connect>`__
or
```PR_Accept`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_Accept>`__.
If the socket is already connected before SSL gets involved, you must
provide this extra hint.

.. _NSS_Shutdown_Function:

NSS Shutdown Function
---------------------

.. _NSS_Shutdown:

NSS_Shutdown
^^^^^^^^^^^^

Closes the key and certificate databases that were opened by
```NSS_Init`` <#1067601>`__.

.. _Syntax_42:

Syntax
''''''

::

   #include "nss.h"

::

   SECStatus NSS_Shutdown(void);

.. _Description_42:

Description
'''''''''''

Note that if any reference to an NSS object is leaked (for example, if
an SSL client application doesn't call
```SSL_ClearSessionCache`` <#1138601>`__ first), ``NSS_Shutdown`` fails
with the error code ``SEC_ERROR_BUSY``.

.. _Deprecated_Functions:

Deprecated Functions
--------------------

The following functions have been replaced with newer versions but are
still supported:

|  ```SSL_EnableDefault`` <#1206365>`__
| ```SSL_Enable`` <#1220189>`__
| ```SSL_EnableCipher`` <#1207298>`__
| ```SSL_SetPolicy`` <#1207350>`__

.. _SSL_EnableDefault:

SSL_EnableDefault
^^^^^^^^^^^^^^^^^

Changes a default value for all subsequently opened sockets as long as
the current application program is running.

``SSL_EnableDefault`` has been replaced by
```SSL_OptionSetDefault`` <#1068466>`__ and works the same way.

.. _Syntax_43:

Syntax
''''''

::

   #include "ssl.h"

::

   SECStatus SSL_EnableDefault(int which, PRBool on);

.. _Parameters_28:

Parameters
''''''''''

This function has the following parameters:

+-----------+---------------------------------------------------------+
| ``which`` | For information about the values that can be passed in  |
|           | the ``which`` parameter, see                            |
|           | ```SSL_OptionSetDefault`` <#1068466>`__.                |
+-----------+---------------------------------------------------------+
| ``on``    | ``PR_TRUE`` turns option on; ``PR_FALSE`` turns option  |
|           | off.                                                    |
+-----------+---------------------------------------------------------+

.. _Returns_38:

Returns
'''''''

The function returns one of these values:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_43:

Description
'''''''''''

For detailed information about using ``SSL_Enable``, see the description
of ```SSL_OptionSetDefault`` <#1068466>`__.

.. _SSL_Enable:

SSL_Enable
^^^^^^^^^^

Sets a single configuration parameter of a specified socket. Call once
for each parameter you want to change.

``SSL_Enable`` has been replaced by ```SSL_OptionSet`` <#1086543>`__ and
works the same way.

.. _Syntax_44:

Syntax
''''''

::

   #include "ssl.h"

::

   SECStatus SSL_Enable(
      PRFileDesc *fd,
      int which,
      PRBool on);

.. _Parameters_29:

Parameters
''''''''''

This function has the following parameters:

+-----------+---------------------------------------------------------+
| ``fd``    | Pointer to the file descriptor for the SSL socket.      |
+-----------+---------------------------------------------------------+
| ``which`` | For information about the values that can be passed in  |
|           | the ``which`` parameter, see the description of the     |
|           | ``option`` parameter under                              |
|           | ```SSL_OptionSet`` <#1086543>`__.                       |
+-----------+---------------------------------------------------------+
| ``on``    | ``PR_TRUE`` turns option on; ``PR_FALSE`` turns option  |
|           | off.                                                    |
+-----------+---------------------------------------------------------+

.. _Returns_39:

Returns
'''''''

The function returns one of these values:

-  If successful, ``SECSuccess``.
-  If unsuccessful, returns ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_44:

Description
'''''''''''

For detailed information about using ``SSL_Enable``, see the description
of ```SSL_OptionSet`` <#1086543>`__.

.. _SSL_EnableCipher:

SSL_EnableCipher
^^^^^^^^^^^^^^^^

Enables or disables cipher suites (subject to which cipher suites are
permitted or disallowed by previous calls to one or more of the `SSL
Export Policy Functions <#1098841>`__). This function must be called
once for each cipher you want to enable or disable.

``SSL_EnableCipher`` has been replaced by
```SSL_CipherPrefSetDefault`` <#1084747>`__ and works the same way.

.. _Syntax_45:

Syntax
''''''

::

   #include "ssl.h"
   #include "sslproto.h"

::

   SECStatus SSL_EnableCipher(long which, PRBool enabled);

.. _Parameters_30:

Parameters
''''''''''

This function has the following parameters:

+-------------+-------------------------------------------------------+
| ``which``   | The cipher suite whose default preference setting you |
|             | want to set. For a list of the cipher suites you can  |
|             | specify, see                                          |
|             | ```SSL_CipherPrefSetDefault`` <#1084747>`__.          |
+-------------+-------------------------------------------------------+
| ``enabled`` | If nonzero, the specified cipher is enabled. If zero, |
|             | the cipher is disabled.                               |
+-------------+-------------------------------------------------------+

.. _Returns_40:

Returns
'''''''

The function returns one of these values:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_45:

Description
'''''''''''

For detailed information about using ``SSL_EnableCipher``, see the
description of ```SSL_CipherPrefSetDefault`` <#1084747>`__.

.. _SSL_SetPolicy:

SSL_SetPolicy
^^^^^^^^^^^^^

Sets policy for the use of individual cipher suites.

``SSL_SetPolicy`` has been replaced by
```SSL_CipherPolicySet`` <#1104647>`__ and works the same way.

.. _Syntax_46:

Syntax
''''''

::

   #include <ssl.h>
   #include <sslproto.h>

::

   SECStatus SSL_SetPolicy(long which, int policy);

.. _Parameters_31:

Parameters
''''''''''

This function has the following parameters:

+-----------------------------------+-----------------------------------+
| ``which``                         | The cipher suite for which you    |
|                                   | want to set policy. For a list of |
|                                   | possible values, see              |
|                                   | ```SSL                            |
|                                   | _CipherPolicySet`` <#1104647>`__. |
+-----------------------------------+-----------------------------------+
| ``policy``                        | One of the following values:      |
|                                   |                                   |
|                                   | -  ``SSL_ALLOWED``. Cipher is     |
|                                   |    always allowed by U.S.         |
|                                   |    government policy.             |
|                                   | -  ``SSL_RESTRICTED``. Cipher is  |
|                                   |    allowed by U.S. government     |
|                                   |    policy for servers with Global |
|                                   |    ID certificates.               |
|                                   | -  ``SSL_NOT_ALLOWED``. Cipher is |
|                                   |    never allowed by U.S.          |
|                                   |    government policy.             |
+-----------------------------------+-----------------------------------+

.. _Returns_41:

Returns
'''''''

The function returns one of these values:

-  If successful, ``SECSuccess``.
-  If unsuccessful, ``SECFailure``. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_46:

Description
'''''''''''

For detailed information about using ``SSL_SetPolicy``, see the
description of ```SSL_CipherPolicySet`` <#1104647>`__.

.. _SSL_RedoHandshake:

SSL_RedoHandshake
^^^^^^^^^^^^^^^^^

Causes SSL to begin a full, new SSL 3.0 handshake from scratch on a
connection that has already completed one handshake.

.. _Syntax_47:

Syntax
''''''

::

   #include "ssl.h"

::

   int SSL_RedoHandshake(PRFileDesc *fd);

.. _Parameter_11:

Parameter
'''''''''

This function has the following parameter:

====== ====================================================
``fd`` A pointer to the file descriptor for the SSL socket.
====== ====================================================

.. _Returns_42:

Returns
'''''''

The function returns one of these values:

-  If successful, zero.
-  If unsuccessful, -1. Use
   ```PR_GetError`` </en-US/docs/Mozilla/Projects/NSPR/Reference/PR_GetError>`__
   to obtain the error code.

.. _Description_47:

Description
'''''''''''

The ``SSL_RedoHandshake`` function invalidates the current SSL session
associated with the ``fd`` parameter from the session cache and starts
another full SSL 3.0 handshake. It is for use with SSL 3.0 only. You can
call this function to redo the handshake if you have changed one of the
socket's configuration parameters (for example, if you are going to
request client authentication).

``SSL_RedoHandshake`` only initiates the new handshake by sending the
first message of that handshake. To drive the new handshake to
completion, you must either call ``SSL_ForceHandshake`` or do another
I/O operation (read or write) on the socket. A call to
``SSL_RedoHandshake`` is typically followed by a call to
``SSL_ForceHandshake``.