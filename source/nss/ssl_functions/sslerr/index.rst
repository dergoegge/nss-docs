======
sslerr
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

.. _NSS_and_SSL_Error_Codes:

NSS and SSL Error Codes
=======================

--------------

.. _Chapter_8_NSS_and_SSL_Error_Codes:

Chapter 8
NSS and SSL Error Codes
-----------------------

NSS error codes are retrieved using the NSPR function
`PR_GetError <../../../../../nspr/reference/html/prerr.html#PR_GetError>`__.
In addition to the `error codes defined by
NSPR <https://dxr.mozilla.org/mozilla-central/source/nsprpub/pr/include/prerr.h>`__,
PR_GetError retrieves the error codes described in this chapter.

| `SSL Error Codes <#1040263>`__
| `SEC Error Codes <#1039257>`__

.. _SSL_Error_Codes:

SSL Error Codes
---------------

**Table 8.1 Error codes defined in sslerr.h**

+-----------------------+-----------------------+-----------------------+
| **Constant**          | **Value**             | **Description**       |
+-----------------------+-----------------------+-----------------------+
| SSL_ERR               | -12288                | "Unable to            |
| OR_EXPORT_ONLY_SERVER |                       | communicate securely. |
|                       |                       | Peer does not support |
|                       |                       | high-grade            |
|                       |                       | encryption."          |
|                       |                       |                       |
|                       |                       | The local system was  |
|                       |                       | configured to support |
|                       |                       | the cipher suites     |
|                       |                       | permitted for         |
|                       |                       | domestic use. The     |
|                       |                       | remote system was     |
|                       |                       | configured to support |
|                       |                       | only the cipher       |
|                       |                       | suites permitted for  |
|                       |                       | export use.           |
+-----------------------+-----------------------+-----------------------+
| SSL                   | -12287                | "Unable to            |
| _ERROR_US_ONLY_SERVER |                       | communicate securely. |
|                       |                       | Peer requires         |
|                       |                       | high-grade encryption |
|                       |                       | which is not          |
|                       |                       | supported."           |
|                       |                       |                       |
|                       |                       | The remote system was |
|                       |                       | configured to support |
|                       |                       | the cipher suites     |
|                       |                       | permitted for         |
|                       |                       | domestic use. The     |
|                       |                       | local system was      |
|                       |                       | configured to support |
|                       |                       | only the cipher       |
|                       |                       | suites permitted for  |
|                       |                       | export use.           |
+-----------------------+-----------------------+-----------------------+
| SSL_ER                | -12286                | "Cannot communicate   |
| ROR_NO_CYPHER_OVERLAP |                       | securely with peer:   |
|                       |                       | no common encryption  |
|                       |                       | algorithm(s)."        |
|                       |                       |                       |
|                       |                       | The local and remote  |
|                       |                       | systems share no      |
|                       |                       | cipher suites in      |
|                       |                       | common. This can be   |
|                       |                       | due to a              |
|                       |                       | misconfiguration at   |
|                       |                       | either end. It can be |
|                       |                       | due to a server being |
|                       |                       | misconfigured to use  |
|                       |                       | a non-RSA certificate |
|                       |                       | with the RSA key      |
|                       |                       | exchange algorithm.   |
+-----------------------+-----------------------+-----------------------+
| SSL                   | -12285                | "Unable to find the   |
| _ERROR_NO_CERTIFICATE |                       | certificate or key    |
|                       |                       | necessary for         |
|                       |                       | authentication."      |
|                       |                       |                       |
|                       |                       | This error has many   |
|                       |                       | potential causes; for |
|                       |                       | example:              |
|                       |                       |                       |
|                       |                       | Certificate or key    |
|                       |                       | not found in          |
|                       |                       | database.             |
|                       |                       |                       |
|                       |                       | Certificate not       |
|                       |                       | marked trusted in     |
|                       |                       | database and          |
|                       |                       | Certificate's issuer  |
|                       |                       | not marked trusted in |
|                       |                       | database.             |
|                       |                       |                       |
|                       |                       | Wrong password for    |
|                       |                       | key database.         |
|                       |                       |                       |
|                       |                       | Missing database.     |
+-----------------------+-----------------------+-----------------------+
| SSL_                  | -12284                | "Unable to            |
| ERROR_BAD_CERTIFICATE |                       | communicate securely  |
|                       |                       | with peer: peers's    |
|                       |                       | certificate was       |
|                       |                       | rejected."            |
|                       |                       |                       |
|                       |                       | A certificate was     |
|                       |                       | received from the     |
|                       |                       | remote system and was |
|                       |                       | passed to the         |
|                       |                       | certificate           |
|                       |                       | authentication        |
|                       |                       | callback function     |
|                       |                       | provided by the local |
|                       |                       | application. That     |
|                       |                       | callback function     |
|                       |                       | returned SECFailure,  |
|                       |                       | and the bad           |
|                       |                       | certificate callback  |
|                       |                       | function either was   |
|                       |                       | not configured or did |
|                       |                       | not choose to         |
|                       |                       | override the error    |
|                       |                       | code returned by the  |
|                       |                       | certificate           |
|                       |                       | authentication        |
|                       |                       | callback function.    |
+-----------------------+-----------------------+-----------------------+
|                       | -12283                | (unused)              |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_BAD_CLIENT  | -12282                | "The server has       |
|                       |                       | encountered bad data  |
|                       |                       | from the client."     |
|                       |                       |                       |
|                       |                       | This error code       |
|                       |                       | should occur only on  |
|                       |                       | sockets that are      |
|                       |                       | acting as servers. It |
|                       |                       | is a generic error,   |
|                       |                       | used when none of the |
|                       |                       | other more specific   |
|                       |                       | error codes defined   |
|                       |                       | in this file applies. |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_BAD_SERVER  | -12281                | "The client has       |
|                       |                       | encountered bad data  |
|                       |                       | from the server."     |
|                       |                       |                       |
|                       |                       | This error code       |
|                       |                       | should occur only on  |
|                       |                       | sockets that are      |
|                       |                       | acting as clients. It |
|                       |                       | is a generic error,   |
|                       |                       | used when none of the |
|                       |                       | other more specific   |
|                       |                       | error codes defined   |
|                       |                       | in this file applies. |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_UNSUPPO     | -12280                | "Unsupported          |
| RTED_CERTIFICATE_TYPE |                       | certificate type."    |
|                       |                       |                       |
|                       |                       | The operation         |
|                       |                       | encountered a         |
|                       |                       | certificate that was  |
|                       |                       | not one of the well   |
|                       |                       | known certificate     |
|                       |                       | types handled by the  |
|                       |                       | certificate library.  |
+-----------------------+-----------------------+-----------------------+
| SSL_ERRO              | -12279                | "Peer using           |
| R_UNSUPPORTED_VERSION |                       | unsupported version   |
|                       |                       | of security           |
|                       |                       | protocol."            |
|                       |                       |                       |
|                       |                       | On a client socket,   |
|                       |                       | this means the remote |
|                       |                       | server has attempted  |
|                       |                       | to negotiate the use  |
|                       |                       | of a version of SSL   |
|                       |                       | that is not supported |
|                       |                       | by the NSS library,   |
|                       |                       | probably an invalid   |
|                       |                       | version number. On a  |
|                       |                       | server socket, this   |
|                       |                       | means the remote      |
|                       |                       | client has requested  |
|                       |                       | the use of a version  |
|                       |                       | of SSL older than     |
|                       |                       | version 2.            |
+-----------------------+-----------------------+-----------------------+
|                       | -12278                | (unused)              |
+-----------------------+-----------------------+-----------------------+
| SSL_ER                | -12277                | "Client               |
| ROR_WRONG_CERTIFICATE |                       | authentication        |
|                       |                       | failed: private key   |
|                       |                       | in key database does  |
|                       |                       | not correspond to     |
|                       |                       | public key in         |
|                       |                       | certificate           |
|                       |                       | database."            |
+-----------------------+-----------------------+-----------------------+
| SSL_                  | -12276                | "Unable to            |
| ERROR_BAD_CERT_DOMAIN |                       | communicate securely  |
|                       |                       | with peer: requested  |
|                       |                       | domain name does not  |
|                       |                       | match the server's    |
|                       |                       | certificate."         |
|                       |                       |                       |
|                       |                       | This error code       |
|                       |                       | should be returned by |
|                       |                       | the certificate       |
|                       |                       | authentication        |
|                       |                       | callback function     |
|                       |                       | when it detects that  |
|                       |                       | the Common Name in    |
|                       |                       | the remote server's   |
|                       |                       | certificate does not  |
|                       |                       | match the hostname    |
|                       |                       | sought by the local   |
|                       |                       | client, according to  |
|                       |                       | the matching rules    |
|                       |                       | specified for         |
|                       |                       | `CERT                 |
|                       |                       | _VerifyCertName <sslc |
|                       |                       | rt.html#1050342>`__.  |
+-----------------------+-----------------------+-----------------------+
| S                     | -12275                | (unused)              |
| SL_ERROR_POST_WARNING |                       |                       |
+-----------------------+-----------------------+-----------------------+
| SS                    | -12274                | "Peer only supports   |
| L_ERROR_SSL2_DISABLED |                       | SSL version 2, which  |
|                       |                       | is locally disabled." |
|                       |                       |                       |
|                       |                       | The remote server has |
|                       |                       | asked to use SSL      |
|                       |                       | version 2, and SSL    |
|                       |                       | version 2 is disabled |
|                       |                       | in the local client's |
|                       |                       | configuration.        |
+-----------------------+-----------------------+-----------------------+
| S                     | -12273                | "SSL received a       |
| SL_ERROR_BAD_MAC_READ |                       | record with an        |
|                       |                       | incorrect Message     |
|                       |                       | Authentication Code." |
|                       |                       |                       |
|                       |                       | This usually          |
|                       |                       | indicates that the    |
|                       |                       | client and server     |
|                       |                       | have failed to come   |
|                       |                       | to agreement on the   |
|                       |                       | set of keys used to   |
|                       |                       | encrypt the           |
|                       |                       | application data and  |
|                       |                       | to check message      |
|                       |                       | integrity. If this    |
|                       |                       | occurs frequently on  |
|                       |                       | a server, an active   |
|                       |                       | attack (such as the   |
|                       |                       | "million question"    |
|                       |                       | attack) may be        |
|                       |                       | underway against the  |
|                       |                       | server.               |
+-----------------------+-----------------------+-----------------------+
| SS                    | -12272                | "SSL peer reports     |
| L_ERROR_BAD_MAC_ALERT |                       | incorrect Message     |
|                       |                       | Authentication Code." |
|                       |                       | The remote system has |
|                       |                       | reported that it      |
|                       |                       | received a message    |
|                       |                       | with a bad Message    |
|                       |                       | Authentication Code   |
|                       |                       | from the local        |
|                       |                       | system. This may      |
|                       |                       | indicate that an      |
|                       |                       | attack on that server |
|                       |                       | is underway.          |
+-----------------------+-----------------------+-----------------------+
| SSL                   | -12271                | "SSL peer cannot      |
| _ERROR_BAD_CERT_ALERT |                       | verify your           |
|                       |                       | certificate."         |
|                       |                       |                       |
|                       |                       | The remote system has |
|                       |                       | received a            |
|                       |                       | certificate from the  |
|                       |                       | local system, and has |
|                       |                       | rejected it for some  |
|                       |                       | reason.               |
+-----------------------+-----------------------+-----------------------+
| SSL_ERR               | -12270                | "SSL peer rejected    |
| OR_REVOKED_CERT_ALERT |                       | your certificate as   |
|                       |                       | revoked."             |
|                       |                       |                       |
|                       |                       | The remote system has |
|                       |                       | received a            |
|                       |                       | certificate from the  |
|                       |                       | local system, and has |
|                       |                       | determined that the   |
|                       |                       | certificate has been  |
|                       |                       | revoked.              |
+-----------------------+-----------------------+-----------------------+
| SSL_ERR               | -12269                | "SSL peer rejected    |
| OR_EXPIRED_CERT_ALERT |                       | your certificate as   |
|                       |                       | expired."             |
|                       |                       |                       |
|                       |                       | The remote system has |
|                       |                       | received a            |
|                       |                       | certificate from the  |
|                       |                       | local system, and has |
|                       |                       | determined that the   |
|                       |                       | certificate has       |
|                       |                       | expired.              |
+-----------------------+-----------------------+-----------------------+
| S                     | -12268                | "Cannot connect: SSL  |
| SL_ERROR_SSL_DISABLED |                       | is disabled."         |
|                       |                       |                       |
|                       |                       | The local socket is   |
|                       |                       | configured in such a  |
|                       |                       | way that it cannot    |
|                       |                       | use any of the SSL    |
|                       |                       | cipher suites.        |
|                       |                       | Possible causes       |
|                       |                       | include: (a) both     |
|                       |                       | SSL2 and SSL3 are     |
|                       |                       | disabled, (b) All the |
|                       |                       | individual SSL cipher |
|                       |                       | suites are disabled,  |
|                       |                       | or (c) the socket is  |
|                       |                       | configured to         |
|                       |                       | handshake as a        |
|                       |                       | server, but the       |
|                       |                       | certificate           |
|                       |                       | associated with that  |
|                       |                       | socket is             |
|                       |                       | inappropriate for the |
|                       |                       | Key Exchange          |
|                       |                       | Algorithm selected.   |
+-----------------------+-----------------------+-----------------------+
| S                     | -12267                | "Cannot connect: SSL  |
| SL_ERROR_FORTEZZA_PQG |                       | peer is in another    |
|                       |                       | FORTEZZA domain."     |
|                       |                       |                       |
|                       |                       | The local system and  |
|                       |                       | the remote system are |
|                       |                       | in different FORTEZZA |
|                       |                       | domains. They must be |
|                       |                       | in the same domain to |
|                       |                       | communicate.          |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR             | -12266                | "An unknown SSL       |
| _UNKNOWN_CIPHER_SUITE |                       | cipher suite has been |
|                       |                       | requested."           |
|                       |                       |                       |
|                       |                       | The application has   |
|                       |                       | attempted to          |
|                       |                       | configure SSL to use  |
|                       |                       | an unknown cipher     |
|                       |                       | suite.                |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR             | -12265                | "No cipher suites are |
| _NO_CIPHERS_SUPPORTED |                       | present and enabled   |
|                       |                       | in this program."     |
|                       |                       |                       |
|                       |                       | Possible causes: (a)  |
|                       |                       | all cipher suites     |
|                       |                       | have been configured  |
|                       |                       | to be disabled, (b)   |
|                       |                       | the only cipher       |
|                       |                       | suites that are       |
|                       |                       | configured to be      |
|                       |                       | enabled are those     |
|                       |                       | that are disallowed   |
|                       |                       | by cipher export      |
|                       |                       | policy, (c) the       |
|                       |                       | socket is configured  |
|                       |                       | to handshake as a     |
|                       |                       | server, but the       |
|                       |                       | certificate           |
|                       |                       | associated with that  |
|                       |                       | socket is             |
|                       |                       | inappropriate for the |
|                       |                       | Key Exchange          |
|                       |                       | Algorithm selected.   |
+-----------------------+-----------------------+-----------------------+
| SSL_ER                | -12264                | "SSL received a       |
| ROR_BAD_BLOCK_PADDING |                       | record with bad block |
|                       |                       | padding."             |
|                       |                       |                       |
|                       |                       | SSL was using a Block |
|                       |                       | cipher, and the last  |
|                       |                       | block in an SSL       |
|                       |                       | record had incorrect  |
|                       |                       | padding information   |
|                       |                       | in it. This usually   |
|                       |                       | indicates that the    |
|                       |                       | client and server     |
|                       |                       | have failed to come   |
|                       |                       | to agreement on the   |
|                       |                       | set of keys used to   |
|                       |                       | encrypt the           |
|                       |                       | application data and  |
|                       |                       | to check message      |
|                       |                       | integrity. If this    |
|                       |                       | occurs frequently on  |
|                       |                       | a server, an active   |
|                       |                       | attack (such as the   |
|                       |                       | "million question"    |
|                       |                       | attack) may be        |
|                       |                       | underway against the  |
|                       |                       | server.               |
+-----------------------+-----------------------+-----------------------+
| SSL_ERR               | -12263                | "SSL received a       |
| OR_RX_RECORD_TOO_LONG |                       | record that exceeded  |
|                       |                       | the maximum           |
|                       |                       | permissible length."  |
|                       |                       |                       |
|                       |                       | This generally        |
|                       |                       | indicates that the    |
|                       |                       | remote peer system    |
|                       |                       | has a flawed          |
|                       |                       | implementation of     |
|                       |                       | SSL, and is violating |
|                       |                       | the SSL               |
|                       |                       | specification.        |
+-----------------------+-----------------------+-----------------------+
| SSL_ERR               | -12262                | "SSL attempted to     |
| OR_TX_RECORD_TOO_LONG |                       | send a record that    |
|                       |                       | exceeded the maximum  |
|                       |                       | permissible length."  |
|                       |                       |                       |
|                       |                       | This error should     |
|                       |                       | never occur. If it    |
|                       |                       | does, it indicates a  |
|                       |                       | flaw in the NSS SSL   |
|                       |                       | library.              |
+-----------------------+-----------------------+-----------------------+
| SSL_ERR               | -12230                | "SSL peer has closed  |
| OR_CLOSE_NOTIFY_ALERT |                       | this connection."     |
|                       |                       |                       |
|                       |                       | The local socket      |
|                       |                       | received an SSL3      |
|                       |                       | alert record from the |
|                       |                       | remote peer,          |
|                       |                       | reporting that the    |
|                       |                       | remote peer has       |
|                       |                       | chosen to end the     |
|                       |                       | connection. The       |
|                       |                       | receipt of this alert |
|                       |                       | is an error only if   |
|                       |                       | it occurs while a     |
|                       |                       | handshake is in       |
|                       |                       | progress.             |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_PUB_KE      | -12210                | "SSL Server attempted |
| Y_SIZE_LIMIT_EXCEEDED |                       | to use domestic-grade |
|                       |                       | public key with       |
|                       |                       | export cipher suite." |
|                       |                       |                       |
|                       |                       | On a client socket,   |
|                       |                       | this error reports    |
|                       |                       | that the remote       |
|                       |                       | server has failed to  |
|                       |                       | perform an "SSL Step  |
|                       |                       | down" for an export   |
|                       |                       | cipher. It has sent a |
|                       |                       | certificate bearing a |
|                       |                       | domestic-grade public |
|                       |                       | key, but has not sent |
|                       |                       | a ServerKeyExchange   |
|                       |                       | message containing an |
|                       |                       | export-grade public   |
|                       |                       | key for the key       |
|                       |                       | exchange algorithm.   |
|                       |                       | Such a connection     |
|                       |                       | cannot be permitted   |
|                       |                       | without violating     |
|                       |                       | U.S. export policies. |
|                       |                       | On a server socket,   |
|                       |                       | this indicates a      |
|                       |                       | failure of the local  |
|                       |                       | library.              |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_            | -12206                | "Server has no key    |
| NO_SERVER_KEY_FOR_ALG |                       | for the attempted key |
|                       |                       | exchange algorithm."  |
|                       |                       |                       |
|                       |                       | An SSL client has     |
|                       |                       | requested an SSL      |
|                       |                       | cipher suite that     |
|                       |                       | uses a Key Exchange   |
|                       |                       | Algorithm for which   |
|                       |                       | the local server has  |
|                       |                       | no appropriate public |
|                       |                       | key. This indicates a |
|                       |                       | configuration error   |
|                       |                       | on the local server.  |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_TO          | -12205                | "PKCS #11 token was   |
| KEN_INSERTION_REMOVAL |                       | inserted or removed   |
|                       |                       | while operation was   |
|                       |                       | in progress."         |
|                       |                       |                       |
|                       |                       | A cryptographic       |
|                       |                       | operation required to |
|                       |                       | complete the          |
|                       |                       | handshake failed      |
|                       |                       | because the token     |
|                       |                       | that was performing   |
|                       |                       | it was removed while  |
|                       |                       | the handshake was     |
|                       |                       | underway. Another     |
|                       |                       | token may also have   |
|                       |                       | been inserted into    |
|                       |                       | the same slot.        |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR             | -12204                | "No PKCS#11 token     |
| _TOKEN_SLOT_NOT_FOUND |                       | could be found to do  |
|                       |                       | a required            |
|                       |                       | operation."           |
|                       |                       |                       |
|                       |                       | A cryptographic       |
|                       |                       | operation required a  |
|                       |                       | PKCS#11 token with    |
|                       |                       | specific abilities,   |
|                       |                       | and no token could be |
|                       |                       | found in any slot,    |
|                       |                       | including the "soft   |
|                       |                       | token" in the         |
|                       |                       | internal virtual      |
|                       |                       | slot, that could do   |
|                       |                       | the job. May indicate |
|                       |                       | a server              |
|                       |                       | configuration error,  |
|                       |                       | such as having a      |
|                       |                       | certificate that is   |
|                       |                       | inappropriate for the |
|                       |                       | Key Exchange          |
|                       |                       | Algorithm selected.   |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_N           | -12203                | "Cannot communicate   |
| O_COMPRESSION_OVERLAP |                       | securely with peer:   |
|                       |                       | no common compression |
|                       |                       | algorithm(s)."        |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_HA          | -12202                | "Cannot initiate      |
| NDSHAKE_NOT_COMPLETED |                       | another SSL handshake |
|                       |                       | until current         |
|                       |                       | handshake is          |
|                       |                       | complete."            |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_BAD         | -12201                | "Received incorrect   |
| _HANDSHAKE_HASH_VALUE |                       | handshakes hash       |
|                       |                       | values from peer."    |
+-----------------------+-----------------------+-----------------------+
| SSL_ER                | -12200                | "The certificate      |
| ROR_CERT_KEA_MISMATCH |                       | provided cannot be    |
|                       |                       | used with the         |
|                       |                       | selected key exchange |
|                       |                       | algorithm."           |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_NO_         | -12199                | "No certificate       |
| TRUSTED_SSL_CLIENT_CA |                       | authority is trusted  |
|                       |                       | for SSL client        |
|                       |                       | authentication."      |
+-----------------------+-----------------------+-----------------------+
| SSL_ER                | -12198                | "Client's SSL session |
| ROR_SESSION_NOT_FOUND |                       | ID not found in       |
|                       |                       | server's session      |
|                       |                       | cache."               |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_SERVER      | -12185                | "SSL server cache not |
| _CACHE_NOT_CONFIGURED |                       | configured and not    |
|                       |                       | disabled for this     |
|                       |                       | socket."              |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RENE        | -12176                | "Renegotiation is not |
| GOTIATION_NOT_ALLOWED |                       | allowed on this SSL   |
|                       |                       | socket."              |
+-----------------------+-----------------------+-----------------------+
| **Received a          |                       |                       |
| malformed (too long   |                       |                       |
| or short or invalid   |                       |                       |
| content) SSL          |                       |                       |
| handshake: **         |                       |                       |
|                       |                       |                       |
| All the error codes   |                       |                       |
| in the following      |                       |                       |
| block indicate that   |                       |                       |
| the local socket      |                       |                       |
| received an           |                       |                       |
| improperly formatted  |                       |                       |
| SSL3 handshake        |                       |                       |
| message from the      |                       |                       |
| remote peer. This     |                       |                       |
| probably indicates a  |                       |                       |
| flaw in the remote    |                       |                       |
| peer's                |                       |                       |
| implementation.       |                       |                       |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX_MA       | -12261                | "SSL received a       |
| LFORMED_HELLO_REQUEST |                       | malformed Hello       |
|                       |                       | Request handshake     |
|                       |                       | message."             |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX_M        | -12260                | "SSL received a       |
| ALFORMED_CLIENT_HELLO |                       | malformed Client      |
|                       |                       | Hello handshake       |
|                       |                       | message."             |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX_M        | -12259                | "SSL received a       |
| ALFORMED_SERVER_HELLO |                       | malformed Server      |
|                       |                       | Hello handshake       |
|                       |                       | message."             |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX_         | -12258                | "SSL received a       |
| MALFORMED_CERTIFICATE |                       | malformed Certificate |
|                       |                       | handshake message."   |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX_MALFO    | -12257                | "SSL received a       |
| RMED_SERVER_KEY_EXCH  |                       | malformed Server Key  |
|                       |                       | Exchange handshake    |
|                       |                       | message."             |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX_M        | -12256                | "SSL received a       |
| ALFORMED_CERT_REQUEST |                       | malformed Certificate |
|                       |                       | Request handshake     |
|                       |                       | message."             |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX          | -12255                | "SSL received a       |
| _MALFORMED_HELLO_DONE |                       | malformed Server      |
|                       |                       | Hello Done handshake  |
|                       |                       | message."             |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX_         | -12254                | "SSL received a       |
| MALFORMED_CERT_VERIFY |                       | malformed Certificate |
|                       |                       | Verify handshake      |
|                       |                       | message."             |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX_MALFO    | -12253                | "SSL received a       |
| RMED_CLIENT_KEY_EXCH  |                       | malformed Client Key  |
|                       |                       | Exchange handshake    |
|                       |                       | message."             |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_            | -12252                | "SSL received a       |
| RX_MALFORMED_FINISHED |                       | malformed Finished    |
|                       |                       | handshake message."   |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX_MALFORM  | -12178                | "SSL received a       |
| ED_NEW_SESSION_TICKET |                       | malformed New Session |
|                       |                       | Ticket handshake      |
|                       |                       | message."             |
+-----------------------+-----------------------+-----------------------+
| **Received a          |                       |                       |
| malformed (too long   |                       |                       |
| or short) SSL         |                       |                       |
| record:**             |                       |                       |
|                       |                       |                       |
| All the error codes   |                       |                       |
| in the following      |                       |                       |
| block indicate that   |                       |                       |
| the local socket      |                       |                       |
| received an           |                       |                       |
| improperly formatted  |                       |                       |
| SSL3 record from the  |                       |                       |
| remote peer. This     |                       |                       |
| probably indicates a  |                       |                       |
| flaw in the remote    |                       |                       |
| peer's                |                       |                       |
| implementation.       |                       |                       |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX_MA       | -12251                | "SSL received a       |
| LFORMED_CHANGE_CIPHER |                       | malformed Change      |
|                       |                       | Cipher Spec record."  |
+-----------------------+-----------------------+-----------------------+
| SSL_ERR               | -12250                | "SSL received a       |
| OR_RX_MALFORMED_ALERT |                       | malformed Alert       |
|                       |                       | record."              |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_R           | -12249                | "SSL received a       |
| X_MALFORMED_HANDSHAKE |                       | malformed Handshake   |
|                       |                       | record."              |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX_MALFOR   | -12248                | "SSL received a       |
| MED_APPLICATION_DATA  |                       | malformed Application |
|                       |                       | Data record."         |
+-----------------------+-----------------------+-----------------------+
| **Received an SSL     |                       |                       |
| handshake that was    |                       |                       |
| inappropriate for the |                       |                       |
| current state:**      |                       |                       |
|                       |                       |                       |
| All the error codes   |                       |                       |
| in the following      |                       |                       |
| block indicate that   |                       |                       |
| the local socket      |                       |                       |
| received an SSL3      |                       |                       |
| handshake message     |                       |                       |
| from the remote peer  |                       |                       |
| at a time when it was |                       |                       |
| inappropriate for the |                       |                       |
| peer to have sent     |                       |                       |
| this message. For     |                       |                       |
| example, a server     |                       |                       |
| received a message    |                       |                       |
| from another server.  |                       |                       |
| This probably         |                       |                       |
| indicates a flaw in   |                       |                       |
| the remote peer's     |                       |                       |
| implementation.       |                       |                       |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX_UNE      | -12247                | "SSL received an      |
| XPECTED_HELLO_REQUEST |                       | unexpected Hello      |
|                       |                       | Request handshake     |
|                       |                       | message."             |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX_UN       | -12246                | "SSL received an      |
| EXPECTED_CLIENT_HELLO |                       | unexpected Client     |
|                       |                       | Hello handshake       |
|                       |                       | message."             |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX_UN       | -12245                | "SSL received an      |
| EXPECTED_SERVER_HELLO |                       | unexpected Server     |
|                       |                       | Hello handshake       |
|                       |                       | message."             |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX_U        | -12244                | "SSL received an      |
| NEXPECTED_CERTIFICATE |                       | unexpected            |
|                       |                       | Certificate handshake |
|                       |                       | message."             |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX_UNEXPE   | -12243                | "SSL received an      |
| CTED_SERVER_KEY_EXCH  |                       | unexpected Server Key |
|                       |                       | Exchange handshake    |
|                       |                       | message."             |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX_UN       | -12242                | "SSL received an      |
| EXPECTED_CERT_REQUEST |                       | unexpected            |
|                       |                       | Certificate Request   |
|                       |                       | handshake message."   |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX_         | -12241                | "SSL received an      |
| UNEXPECTED_HELLO_DONE |                       | unexpected Server     |
|                       |                       | Hello Done handshake  |
|                       |                       | message."             |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX_U        | -12240                | "SSL received an      |
| NEXPECTED_CERT_VERIFY |                       | unexpected            |
|                       |                       | Certificate Verify    |
|                       |                       | handshake message."   |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX_UNEXPE   | -12239                | "SSL received an      |
| CTED_CLIENT_KEY_EXCH  |                       | unexpected Client Key |
|                       |                       | Exchange handshake    |
|                       |                       | message."             |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_R           | -12238                | "SSL received an      |
| X_UNEXPECTED_FINISHED |                       | unexpected Finished   |
|                       |                       | handshake message."   |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX_UNEXPECT | -12179                | "SSL received an      |
| ED_NEW_SESSION_TICKET |                       | unexpected New        |
|                       |                       | Session Ticket        |
|                       |                       | handshake message."   |
+-----------------------+-----------------------+-----------------------+
| **Received an SSL     |                       |                       |
| record that was       |                       |                       |
| inappropriate for the |                       |                       |
| current state:**      |                       |                       |
|                       |                       |                       |
| All the error codes   |                       |                       |
| in the following      |                       |                       |
| block indicate that   |                       |                       |
| the local socket      |                       |                       |
| received an SSL3      |                       |                       |
| record from the       |                       |                       |
| remote peer at a time |                       |                       |
| when it was           |                       |                       |
| inappropriate for the |                       |                       |
| peer to have sent     |                       |                       |
| this message. This    |                       |                       |
| probably indicates a  |                       |                       |
| flaw in the remote    |                       |                       |
| peer's                |                       |                       |
| implementation.       |                       |                       |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX_UNE      | -12237                | "SSL received an      |
| XPECTED_CHANGE_CIPHER |                       | unexpected Change     |
|                       |                       | Cipher Spec record."  |
+-----------------------+-----------------------+-----------------------+
| SSL_ERRO              | -12236                | "SSL received an      |
| R_RX_UNEXPECTED_ALERT |                       | unexpected Alert      |
|                       |                       | record."              |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX          | -12235                | "SSL received an      |
| _UNEXPECTED_HANDSHAKE |                       | unexpected Handshake  |
|                       |                       | record."              |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_RX_UNEXPE   | -12234                | "SSL received an      |
| CTED_APPLICATION_DATA |                       | unexpected            |
|                       |                       | Application Data      |
|                       |                       | record."              |
+-----------------------+-----------------------+-----------------------+
| **Received            |                       |                       |
| record/message with   |                       |                       |
| unknown               |                       |                       |
| discriminant:**       |                       |                       |
|                       |                       |                       |
| All the error codes   |                       |                       |
| in the following      |                       |                       |
| block indicate that   |                       |                       |
| the local socket      |                       |                       |
| received an SSL3      |                       |                       |
| record or handshake   |                       |                       |
| message from the      |                       |                       |
| remote peer that it   |                       |                       |
| was unable to         |                       |                       |
| interpret because the |                       |                       |
| byte that identifies  |                       |                       |
| the type of record or |                       |                       |
| message contained an  |                       |                       |
| unrecognized value.   |                       |                       |
| This probably         |                       |                       |
| indicates a flaw in   |                       |                       |
| the remote peer's     |                       |                       |
| implementation.       |                       |                       |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_R           | -12233                | "SSL received a       |
| X_UNKNOWN_RECORD_TYPE |                       | record with an        |
|                       |                       | unknown content       |
|                       |                       | type."                |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR             | -12232                | "SSL received a       |
| _RX_UNKNOWN_HANDSHAKE |                       | handshake message     |
|                       |                       | with an unknown       |
|                       |                       | message type."        |
+-----------------------+-----------------------+-----------------------+
| SSL_E                 | -12231                | "SSL received an      |
| RROR_RX_UNKNOWN_ALERT |                       | alert record with an  |
|                       |                       | unknown alert         |
|                       |                       | description."         |
+-----------------------+-----------------------+-----------------------+
| **Received an alert   |                       |                       |
| report:**             |                       |                       |
|                       |                       |                       |
| | All the error codes |                       |                       |
|   in the following    |                       |                       |
|   block indicate that |                       |                       |
|   the local socket    |                       |                       |
|   received an SSL3 or |                       |                       |
|   TLS alert record    |                       |                       |
|   from the remote     |                       |                       |
|   peer, reporting     |                       |                       |
|   some issue that it  |                       |                       |
|   had with an SSL     |                       |                       |
|   record or handshake |                       |                       |
|   message it          |                       |                       |
|   received. (Some     |                       |                       |
|   \_Alert codes are   |                       |                       |
|   listed in other     |                       |                       |
|   blocks.)            |                       |                       |
| |                     |                       |                       |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_HANDS       | -12229                | "SSL peer was not     |
| HAKE_UNEXPECTED_ALERT |                       | expecting a handshake |
|                       |                       | message it received." |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_DECOMP      | -12228                | "SSL peer was unable  |
| RESSION_FAILURE_ALERT |                       | to successfully       |
|                       |                       | decompress an SSL     |
|                       |                       | record it received."  |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_HA          | -12227                | "SSL peer was unable  |
| NDSHAKE_FAILURE_ALERT |                       | to negotiate an       |
|                       |                       | acceptable set of     |
|                       |                       | security parameters." |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_IL          | -12226                | "SSL peer rejected a  |
| LEGAL_PARAMETER_ALERT |                       | handshake message for |
|                       |                       | unacceptable          |
|                       |                       | content."             |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_U           | -12225                | "SSL peer does not    |
| NSUPPORTED_CERT_ALERT |                       | support certificates  |
|                       |                       | of the type it        |
|                       |                       | received."            |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_CERT        | -12224                | "SSL peer had some    |
| IFICATE_UNKNOWN_ALERT |                       | unspecified issue     |
|                       |                       | with the certificate  |
|                       |                       | it received."         |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_DE          | -12197                | "Peer was unable to   |
| CRYPTION_FAILED_ALERT |                       | decrypt an SSL record |
|                       |                       | it received."         |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_            | -12196                | "Peer received an SSL |
| RECORD_OVERFLOW_ALERT |                       | record that was       |
|                       |                       | longer than is        |
|                       |                       | permitted."           |
+-----------------------+-----------------------+-----------------------+
| SSL_E                 | -12195                | "Peer does not        |
| RROR_UNKNOWN_CA_ALERT |                       | recognize and trust   |
|                       |                       | the CA that issued    |
|                       |                       | your certificate."    |
+-----------------------+-----------------------+-----------------------+
| SSL_ERRO              | -12194                | "Peer received a      |
| R_ACCESS_DENIED_ALERT |                       | valid certificate,    |
|                       |                       | but access was        |
|                       |                       | denied."              |
+-----------------------+-----------------------+-----------------------+
| SSL_ERR               | -12193                | "Peer could not       |
| OR_DECODE_ERROR_ALERT |                       | decode an SSL         |
|                       |                       | handshake message."   |
+-----------------------+-----------------------+-----------------------+
| SSL_ERRO              | -12192                | "Peer reports failure |
| R_DECRYPT_ERROR_ALERT |                       | of signature          |
|                       |                       | verification or key   |
|                       |                       | exchange."            |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_EXP         | -12191                | "Peer reports         |
| ORT_RESTRICTION_ALERT |                       | negotiation not in    |
|                       |                       | compliance with       |
|                       |                       | export regulations."  |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_P           | -12190                | "Peer reports         |
| ROTOCOL_VERSION_ALERT |                       | incompatible or       |
|                       |                       | unsupported protocol  |
|                       |                       | version."             |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_INSUFF      | -12189                | "Server requires      |
| ICIENT_SECURITY_ALERT |                       | ciphers more secure   |
|                       |                       | than those supported  |
|                       |                       | by client."           |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR             | -12188                | "Peer reports it      |
| _INTERNAL_ERROR_ALERT |                       | experienced an        |
|                       |                       | internal error."      |
+-----------------------+-----------------------+-----------------------+
| SSL_ERRO              | -12187                | "Peer user canceled   |
| R_USER_CANCELED_ALERT |                       | handshake."           |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_N           | -12186                | "Peer does not permit |
| O_RENEGOTIATION_ALERT |                       | renegotiation of SSL  |
|                       |                       | security parameters." |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_UNSUPP      | -12184                | "SSL peer does not    |
| ORTED_EXTENSION_ALERT |                       | support requested TLS |
|                       |                       | hello extension."     |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_CERTIFICA   | -12183                | "SSL peer could not   |
| TE_UNOBTAINABLE_ALERT |                       | obtain your           |
|                       |                       | certificate from the  |
|                       |                       | supplied URL."        |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_UN          | -12182                | "SSL peer has no      |
| RECOGNIZED_NAME_ALERT |                       | certificate for the   |
|                       |                       | requested DNS name."  |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_BAD_CERT_   | -12181                | "SSL peer was unable  |
| STATUS_RESPONSE_ALERT |                       | to get an OCSP        |
|                       |                       | response for its      |
|                       |                       | certificate."         |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_BAD_        | -12180                | "SSL peer reported    |
| CERT_HASH_VALUE_ALERT |                       | bad certificate hash  |
|                       |                       | value."               |
+-----------------------+-----------------------+-----------------------+
| **Unspecified errors  |                       |                       |
| that occurred while   |                       |                       |
| attempting some       |                       |                       |
| operation:**          |                       |                       |
|                       |                       |                       |
| All the error codes   |                       |                       |
| in the following      |                       |                       |
| block describe the    |                       |                       |
| operation that was    |                       |                       |
| being attempted at    |                       |                       |
| the time of the       |                       |                       |
| unspecified failure.  |                       |                       |
| These failures may be |                       |                       |
| caused by the system  |                       |                       |
| running out of        |                       |                       |
| memory, or errors     |                       |                       |
| returned by PKCS#11   |                       |                       |
| routines that did not |                       |                       |
| provide meaningful    |                       |                       |
| error codes of their  |                       |                       |
| own. These should     |                       |                       |
| rarely be seen.       |                       |                       |
| (Certain of these     |                       |                       |
| error codes have more |                       |                       |
| specific meanings, as |                       |                       |
| described.)           |                       |                       |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_GE          | -12223                | "SSL experienced a    |
| NERATE_RANDOM_FAILURE |                       | failure of its random |
|                       |                       | number generator."    |
+-----------------------+-----------------------+-----------------------+
| SSL_ERRO              | -12222                | "Unable to digitally  |
| R_SIGN_HASHES_FAILURE |                       | sign data required to |
|                       |                       | verify your           |
|                       |                       | certificate."         |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_EXTRA       | -12221                | "SSL was unable to    |
| CT_PUBLIC_KEY_FAILURE |                       | extract the public    |
|                       |                       | key from the peer's   |
|                       |                       | certificate."         |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_SERVER      | -12220                | "Unspecified failure  |
| _KEY_EXCHANGE_FAILURE |                       | while processing SSL  |
|                       |                       | Server Key Exchange   |
|                       |                       | handshake."           |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_CLIENT      | -12219                | "Unspecified failure  |
| _KEY_EXCHANGE_FAILURE |                       | while processing SSL  |
|                       |                       | Client Key Exchange   |
|                       |                       | handshake."           |
+-----------------------+-----------------------+-----------------------+
| SSL_ERR               | -12218                | "Bulk data encryption |
| OR_ENCRYPTION_FAILURE |                       | algorithm failed in   |
|                       |                       | selected cipher       |
|                       |                       | suite."               |
+-----------------------+-----------------------+-----------------------+
| SSL_ERR               | -12217                | "Bulk data decryption |
| OR_DECRYPTION_FAILURE |                       | algorithm failed in   |
|                       |                       | selected cipher       |
|                       |                       | suite."               |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR             | -12216                | "Attempt to write     |
| _SOCKET_WRITE_FAILURE |                       | encrypted data to     |
|                       |                       | underlying socket     |
|                       |                       | failed."              |
|                       |                       |                       |
|                       |                       | After the data to be  |
|                       |                       | sent was encrypted,   |
|                       |                       | the attempt to send   |
|                       |                       | it out the socket     |
|                       |                       | failed. Likely causes |
|                       |                       | include that the peer |
|                       |                       | has closed the        |
|                       |                       | connection.           |
+-----------------------+-----------------------+-----------------------+
| SSL_ERR               | -12215                | "MD5 digest function  |
| OR_MD5_DIGEST_FAILURE |                       | failed."              |
+-----------------------+-----------------------+-----------------------+
| SSL_ERR               | -12214                | "SHA-1 digest         |
| OR_SHA_DIGEST_FAILURE |                       | function failed."     |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_MA          | -12213                | "Message              |
| C_COMPUTATION_FAILURE |                       | Authentication Code   |
|                       |                       | computation failed."  |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_SY          | -12212                | "Failure to create    |
| M_KEY_CONTEXT_FAILURE |                       | Symmetric Key         |
|                       |                       | context."             |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_S           | -12211                | "Failure to unwrap    |
| YM_KEY_UNWRAP_FAILURE |                       | the Symmetric key in  |
|                       |                       | Client Key Exchange   |
|                       |                       | message."             |
+-----------------------+-----------------------+-----------------------+
| SSL_E                 | -12209                | "PKCS11 code failed   |
| RROR_IV_PARAM_FAILURE |                       | to translate an IV    |
|                       |                       | into a param."        |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_INIT        | -12208                | "Failed to initialize |
| _CIPHER_SUITE_FAILURE |                       | the selected cipher   |
|                       |                       | suite."               |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_SE          | -12207                | "Failed to generate   |
| SSION_KEY_GEN_FAILURE |                       | session keys for SSL  |
|                       |                       | session."             |
|                       |                       |                       |
|                       |                       | On a client socket,   |
|                       |                       | indicates a failure   |
|                       |                       | of the PKCS11 key     |
|                       |                       | generation function.  |
|                       |                       | On a server socket,   |
|                       |                       | indicates a failure   |
|                       |                       | of one of the         |
|                       |                       | following: (a) to     |
|                       |                       | unwrap the pre-master |
|                       |                       | secret from the       |
|                       |                       | ClientKeyExchange     |
|                       |                       | message, (b) to       |
|                       |                       | derive the master     |
|                       |                       | secret from the       |
|                       |                       | premaster secret, (c) |
|                       |                       | to derive the MAC     |
|                       |                       | secrets,              |
|                       |                       | cryptographic keys,   |
|                       |                       | and initialization    |
|                       |                       | vectors from the      |
|                       |                       | master secret. If     |
|                       |                       | encountered           |
|                       |                       | repeatedly on a       |
|                       |                       | server socket, this   |
|                       |                       | can indicate that the |
|                       |                       | server is actively    |
|                       |                       | under a "million      |
|                       |                       | question" attack.     |
+-----------------------+-----------------------+-----------------------+
| SSL_ERROR_            | -12177                | "SSL received a       |
| DECOMPRESSION_FAILURE |                       | compressed record     |
|                       |                       | that could not be     |
|                       |                       | decompressed."        |
+-----------------------+-----------------------+-----------------------+

.. _SEC_Error_Codes:

SEC Error Codes
---------------

**Table 8.2 Security error codes defined in secerr.h**

+-----------------------+-----------------------+-----------------------+
| **Constant**          | **Value**             | **Description**       |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_IO          | -8192                 | An I/O error occurred |
|                       |                       | during                |
|                       |                       | authentication; or    |
|                       |                       | an error occurred     |
|                       |                       | during crypto         |
|                       |                       | operation (other than |
|                       |                       | signature             |
|                       |                       | verification).        |
+-----------------------+-----------------------+-----------------------+
| SEC_                  | -8191                 | Security library      |
| ERROR_LIBRARY_FAILURE |                       | failure.              |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_BAD_DATA    | -8190                 | Security library:     |
|                       |                       | received bad data.    |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_OUTPUT_LEN  | -8189                 | Security library:     |
|                       |                       | output length error.  |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_INPUT_LEN   | -8188                 | Security library:     |
|                       |                       | input length error.   |
+-----------------------+-----------------------+-----------------------+
| S                     | -8187                 | Security library:     |
| EC_ERROR_INVALID_ARGS |                       | invalid arguments.    |
+-----------------------+-----------------------+-----------------------+
| SEC_ER                | -8186                 | Security library:     |
| ROR_INVALID_ALGORITHM |                       | invalid algorithm.    |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_INVALID_AVA | -8185                 | Security library:     |
|                       |                       | invalid AVA.          |
+-----------------------+-----------------------+-----------------------+
| S                     | -8184                 | Security library:     |
| EC_ERROR_INVALID_TIME |                       | invalid time.         |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_BAD_DER     | -8183                 | Security library:     |
|                       |                       | improperly formatted  |
|                       |                       | DER-encoded message.  |
+-----------------------+-----------------------+-----------------------+
| SE                    | -8182                 | Peer's certificate    |
| C_ERROR_BAD_SIGNATURE |                       | has an invalid        |
|                       |                       | signature.            |
+-----------------------+-----------------------+-----------------------+
| SEC_ERRO              | -8181                 | Peer's certificate    |
| R_EXPIRED_CERTIFICATE |                       | has expired.          |
+-----------------------+-----------------------+-----------------------+
| SEC_ERRO              | -8180                 | Peer's certificate    |
| R_REVOKED_CERTIFICATE |                       | has been revoked.     |
+-----------------------+-----------------------+-----------------------+
| SEC                   | -8179                 | Peer's certificate    |
| _ERROR_UNKNOWN_ISSUER |                       | issuer is not         |
|                       |                       | recognized.           |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_BAD_KEY     | -8178                 | Peer's public key is  |
|                       |                       | invalid               |
+-----------------------+-----------------------+-----------------------+
| S                     | -8177                 | The password entered  |
| EC_ERROR_BAD_PASSWORD |                       | is incorrect.         |
+-----------------------+-----------------------+-----------------------+
| SEC                   | -8176                 | New password entered  |
| _ERROR_RETRY_PASSWORD |                       | incorrectly.          |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_NO_NODELOCK | -8175                 | Security library: no  |
|                       |                       | nodelock.             |
+-----------------------+-----------------------+-----------------------+
| S                     | -8174                 | Security library: bad |
| EC_ERROR_BAD_DATABASE |                       | database.             |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_NO_MEMORY   | -8173                 | Security library:     |
|                       |                       | memory allocation     |
|                       |                       | failure.              |
+-----------------------+-----------------------+-----------------------+
| SEC_E                 | -8172                 | Peer's certificate    |
| RROR_UNTRUSTED_ISSUER |                       | issuer has been       |
|                       |                       | marked as not trusted |
|                       |                       | by the user.          |
+-----------------------+-----------------------+-----------------------+
| SEC                   | -8171                 | Peer's certificate    |
| _ERROR_UNTRUSTED_CERT |                       | has been marked as    |
|                       |                       | not trusted by the    |
|                       |                       | user.                 |
+-----------------------+-----------------------+-----------------------+
| SEC                   | -8170                 | Certificate already   |
| _ERROR_DUPLICATE_CERT |                       | exists in your        |
|                       |                       | database.             |
+-----------------------+-----------------------+-----------------------+
| SEC_ERRO              | -8169                 | Downloaded            |
| R_DUPLICATE_CERT_NAME |                       | certificate's name    |
|                       |                       | duplicates one        |
|                       |                       | already in your       |
|                       |                       | database.             |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_ADDING_CERT | -8168                 | Error adding          |
|                       |                       | certificate to        |
|                       |                       | database.             |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_FILING_KEY  | -8167                 | Error refiling the    |
|                       |                       | key for this          |
|                       |                       | certificate.          |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_NO_KEY      | -8166                 | The private key for   |
|                       |                       | this certificate      |
|                       |                       | cannot be found in    |
|                       |                       | key database.         |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_CERT_VALID  | -8165                 | This certificate is   |
|                       |                       | valid.                |
+-----------------------+-----------------------+-----------------------+
| SEC                   | -8164                 | This certificate is   |
| _ERROR_CERT_NOT_VALID |                       | not valid.            |
+-----------------------+-----------------------+-----------------------+
| SEC_E                 | -8163                 | Certificate library:  |
| RROR_CERT_NO_RESPONSE |                       | no response.          |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_EXPIR       | -8162                 | The certificate       |
| ED_ISSUER_CERTIFICATE |                       | issuer's certificate  |
|                       |                       | has expired.          |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_CRL_EXPIRED | -8161                 | The CRL for the       |
|                       |                       | certificate's issuer  |
|                       |                       | has expired.          |
+-----------------------+-----------------------+-----------------------+
| SEC_ER                | -8160                 | The CRL for the       |
| ROR_CRL_BAD_SIGNATURE |                       | certificate's issuer  |
|                       |                       | has an invalid        |
|                       |                       | signature.            |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_CRL_INVALID | -8159                 | New CRL has an        |
|                       |                       | invalid format.       |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_EX          | -8158                 | Certificate extension |
| TENSION_VALUE_INVALID |                       | value is invalid.     |
+-----------------------+-----------------------+-----------------------+
| SEC_ERRO              | -8157                 | Certificate extension |
| R_EXTENSION_NOT_FOUND |                       | not found.            |
+-----------------------+-----------------------+-----------------------+
| SEC_                  | -8156                 | Issuer certificate is |
| ERROR_CA_CERT_INVALID |                       | invalid.              |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_PATH_L      | -8155                 | Certificate path      |
| EN_CONSTRAINT_INVALID |                       | length constraint is  |
|                       |                       | invalid.              |
+-----------------------+-----------------------+-----------------------+
| SEC_ERRO              | -8154                 | Certificate usages    |
| R_CERT_USAGES_INVALID |                       | field is invalid.     |
+-----------------------+-----------------------+-----------------------+
| SEC_INTERNAL_ONLY     | -8153                 | Internal-only module. |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_INVALID_KEY | -8152                 | The key does not      |
|                       |                       | support the requested |
|                       |                       | operation.            |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_UNKNO       | -8151                 | Certificate contains  |
| WN_CRITICAL_EXTENSION |                       | unknown critical      |
|                       |                       | extension.            |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_OLD_CRL     | -8150                 | New CRL is not later  |
|                       |                       | than the current one. |
+-----------------------+-----------------------+-----------------------+
| SE                    | -8149                 | Not encrypted or      |
| C_ERROR_NO_EMAIL_CERT |                       | signed: you do not    |
|                       |                       | yet have an email     |
|                       |                       | certificate.          |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_NO_         | -8148                 | Not encrypted: you do |
| RECIPIENT_CERTS_QUERY |                       | not have certificates |
|                       |                       | for each of the       |
|                       |                       | recipients.           |
+-----------------------+-----------------------+-----------------------+
| SEC_                  | -8147                 | Cannot decrypt: you   |
| ERROR_NOT_A_RECIPIENT |                       | are not a recipient,  |
|                       |                       | or matching           |
|                       |                       | certificate and       |
|                       |                       | private key not       |
|                       |                       | found.                |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_            | -8146                 | Cannot decrypt: key   |
| PKCS7_KEYALG_MISMATCH |                       | encryption algorithm  |
|                       |                       | does not match your   |
|                       |                       | certificate.          |
+-----------------------+-----------------------+-----------------------+
| SEC_ERRO              | -8145                 | Signature             |
| R_PKCS7_BAD_SIGNATURE |                       | verification failed:  |
|                       |                       | no signer found, too  |
|                       |                       | many signers found,   |
|                       |                       | \\                    |
|                       |                       | or improper or        |
|                       |                       | corrupted data.       |
+-----------------------+-----------------------+-----------------------+
| SEC_ERR               | -8144                 | Unsupported or        |
| OR_UNSUPPORTED_KEYALG |                       | unknown key           |
|                       |                       | algorithm.            |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_            | -8143                 | Cannot decrypt:       |
| DECRYPTION_DISALLOWED |                       | encrypted using a     |
|                       |                       | disallowed algorithm  |
|                       |                       | or key size.          |
+-----------------------+-----------------------+-----------------------+
| XP_                   | -8142                 | FORTEZZA card has not |
| SEC_FORTEZZA_BAD_CARD |                       | been properly         |
|                       |                       | initialized.          |
+-----------------------+-----------------------+-----------------------+
| XP                    | -8141                 | No FORTEZZA cards     |
| _SEC_FORTEZZA_NO_CARD |                       | found.                |
+-----------------------+-----------------------+-----------------------+
| XP_SEC_F              | -8140                 | No FORTEZZA card      |
| ORTEZZA_NONE_SELECTED |                       | selected.             |
+-----------------------+-----------------------+-----------------------+
| XP_S                  | -8139                 | Please select a       |
| EC_FORTEZZA_MORE_INFO |                       | personality to get    |
|                       |                       | more info on.         |
+-----------------------+-----------------------+-----------------------+
| XP_SEC_FORT           | -8138                 | Personality not found |
| EZZA_PERSON_NOT_FOUND |                       |                       |
+-----------------------+-----------------------+-----------------------+
| XP_SEC_               | -8137                 | No more information   |
| FORTEZZA_NO_MORE_INFO |                       | on that personality.  |
+-----------------------+-----------------------+-----------------------+
| XP                    | -8136                 | Invalid PIN.          |
| _SEC_FORTEZZA_BAD_PIN |                       |                       |
+-----------------------+-----------------------+-----------------------+
| XP_SEC_               | -8135                 | Couldn't initialize   |
| FORTEZZA_PERSON_ERROR |                       | FORTEZZA              |
|                       |                       | personalities.        |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_NO_KRL      | -8134                 | No KRL for this       |
|                       |                       | site's certificate    |
|                       |                       | has been found.       |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_KRL_EXPIRED | -8133                 | The KRL for this      |
|                       |                       | site's certificate    |
|                       |                       | has expired.          |
+-----------------------+-----------------------+-----------------------+
| SEC_ER                | -8132                 | The KRL for this      |
| ROR_KRL_BAD_SIGNATURE |                       | site's certificate    |
|                       |                       | has an invalid        |
|                       |                       | signature.            |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_REVOKED_KEY | -8131                 | The key for this      |
|                       |                       | site's certificate    |
|                       |                       | has been revoked.     |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_KRL_INVALID | -8130                 | New KRL has an        |
|                       |                       | invalid format.       |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_NEED_RANDOM | -8129                 | Security library:     |
|                       |                       | need random data.     |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_NO_MODULE   | -8128                 | Security library: no  |
|                       |                       | security module can   |
|                       |                       | perform the requested |
|                       |                       | operation.            |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_NO_TOKEN    | -8127                 | The security card or  |
|                       |                       | token does not exist, |
|                       |                       | needs to be           |
|                       |                       | initialized, or has   |
|                       |                       | been removed.         |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_READ_ONLY   | -8126                 | Security library:     |
|                       |                       | read-only database.   |
+-----------------------+-----------------------+-----------------------+
| SEC_E                 | -8125                 | No slot or token was  |
| RROR_NO_SLOT_SELECTED |                       | selected.             |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_CE          | -8124                 | A certificate with    |
| RT_NICKNAME_COLLISION |                       | the same nickname     |
|                       |                       | already exists.       |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_K           | -8123                 | A key with the same   |
| EY_NICKNAME_COLLISION |                       | nickname already      |
|                       |                       | exists.               |
+-----------------------+-----------------------+-----------------------+
| SEC_E                 | -8122                 | Error while creating  |
| RROR_SAFE_NOT_CREATED |                       | safe object.          |
+-----------------------+-----------------------+-----------------------+
| SEC_ERRO              | -8121                 | Error while creating  |
| R_BAGGAGE_NOT_CREATED |                       | baggage object.       |
+-----------------------+-----------------------+-----------------------+
| XP_JAVA_R             | -8120                 | Couldn't remove the   |
| EMOVE_PRINCIPAL_ERROR |                       | principal.            |
+-----------------------+-----------------------+-----------------------+
| XP_JAVA_D             | -8119                 | Couldn't delete the   |
| ELETE_PRIVILEGE_ERROR |                       | privilege             |
+-----------------------+-----------------------+-----------------------+
| XP_JAVA_              | -8118                 | This principal        |
| CERT_NOT_EXISTS_ERROR |                       | doesn't have a        |
|                       |                       | certificate.          |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR             | -8117                 | Required algorithm is |
| _BAD_EXPORT_ALGORITHM |                       | not allowed.          |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_E           | -8116                 | Error attempting to   |
| XPORTING_CERTIFICATES |                       | export certificates.  |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_I           | -8115                 | Error attempting to   |
| MPORTING_CERTIFICATES |                       | import certificates.  |
+-----------------------+-----------------------+-----------------------+
| SEC_ERRO              | -8114                 | Unable to import.     |
| R_PKCS12_DECODING_PFX |                       | Decoding error. File  |
|                       |                       | not valid.            |
+-----------------------+-----------------------+-----------------------+
| SEC_ERR               | -8113                 | Unable to import.     |
| OR_PKCS12_INVALID_MAC |                       | Invalid MAC.          |
|                       |                       | Incorrect password or |
|                       |                       | corrupt file.         |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_PKCS12_UNSU | -8112                 | Unable to import. MAC |
| PPORTED_MAC_ALGORITHM |                       | algorithm not         |
|                       |                       | supported.            |
+-----------------------+-----------------------+-----------------------+
| S                     | -8111                 | Unable to import.     |
| EC_ERROR_PKCS12_UNSUP |                       | Only password         |
| PORTED_TRANSPORT_MODE |                       | integrity and privacy |
|                       |                       | modes supported.      |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_PKCS12_C    | -8110                 | Unable to import.     |
| ORRUPT_PFX_STRUCTURE  |                       | File structure is     |
|                       |                       | corrupt.              |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_PKCS12_UNSU | -8109                 | Unable to import.     |
| PPORTED_PBE_ALGORITHM |                       | Encryption algorithm  |
|                       |                       | not supported.        |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_PKCS1       | -8108                 | Unable to import.     |
| 2_UNSUPPORTED_VERSION |                       | File version not      |
|                       |                       | supported.            |
+-----------------------+-----------------------+-----------------------+
| S                     | -8107                 | Unable to import.     |
| EC_ERROR_PKCS12_PRIVA |                       | Incorrect privacy     |
| CY_PASSWORD_INCORRECT |                       | password.             |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_            | -8106                 | Unable to import.     |
| PKCS12_CERT_COLLISION |                       | Same nickname already |
|                       |                       | exists in database.   |
+-----------------------+-----------------------+-----------------------+
| SEC                   | -8105                 | The user clicked      |
| _ERROR_USER_CANCELLED |                       | cancel.               |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_            | -8104                 | Not imported, already |
| PKCS12_DUPLICATE_DATA |                       | in database.          |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR             | -8103                 | Message not sent.     |
| _MESSAGE_SEND_ABORTED |                       |                       |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR             | -8102                 | Certificate key usage |
| _INADEQUATE_KEY_USAGE |                       | inadequate for        |
|                       |                       | attempted operation.  |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR             | -8101                 | Certificate type not  |
| _INADEQUATE_CERT_TYPE |                       | approved for          |
|                       |                       | application.          |
+-----------------------+-----------------------+-----------------------+
| SEC_ERR               | -8100                 | Address in signing    |
| OR_CERT_ADDR_MISMATCH |                       | certificate does not  |
|                       |                       | match address in      |
|                       |                       | message headers.      |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_PKCS12      | -8099                 | Unable to import.     |
| _UNABLE_TO_IMPORT_KEY |                       | Error attempting to   |
|                       |                       | import private key.   |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_PKCS12      | -8098                 | Unable to import.     |
| _IMPORTING_CERT_CHAIN |                       | Error attempting to   |
|                       |                       | import certificate    |
|                       |                       | chain.                |
+-----------------------+-----------------------+-----------------------+
| SEC_ER                | -8097                 | Unable to export.     |
| ROR_PKCS12_UNABLE_TO_ |                       | Unable to locate      |
| LOCATE_OBJECT_BY_NAME |                       | certificate or key by |
|                       |                       | nickname.             |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_PKCS12_     | -8096                 | Unable to export.     |
| UNABLE_TO_EXPORT_KEY  |                       | Private key could not |
|                       |                       | be located and        |
|                       |                       | exported.             |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_P           | -8095                 | Unable to export.     |
| KCS12_UNABLE_TO_WRITE |                       | Unable to write the   |
|                       |                       | export file.          |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_            | -8094                 | Unable to import.     |
| PKCS12_UNABLE_TO_READ |                       | Unable to read the    |
|                       |                       | import file.          |
+-----------------------+-----------------------+-----------------------+
| SEC                   | -8093                 | Unable to export. Key |
| _ERROR_PKCS12_KEY_DAT |                       | database corrupt or   |
| ABASE_NOT_INITIALIZED |                       | deleted.              |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_KEYGEN_FAIL | -8092                 | Unable to generate    |
|                       |                       | public-private key    |
|                       |                       | pair.                 |
+-----------------------+-----------------------+-----------------------+
| SEC_E                 | -8091                 | Password entered is   |
| RROR_INVALID_PASSWORD |                       | invalid.              |
+-----------------------+-----------------------+-----------------------+
| SEC_ERR               | -8090                 | Old password entered  |
| OR_RETRY_OLD_PASSWORD |                       | incorrectly.          |
+-----------------------+-----------------------+-----------------------+
| S                     | -8089                 | Certificate nickname  |
| EC_ERROR_BAD_NICKNAME |                       | already in use.       |
+-----------------------+-----------------------+-----------------------+
| SEC_ERRO              | -8088                 | Peer FORTEZZA chain   |
| R_NOT_FORTEZZA_ISSUER |                       | has a non-FORTEZZA    |
|                       |                       | Certificate.          |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_CANN        | -8087                 | "A sensitive key      |
| OT_MOVE_SENSITIVE_KEY |                       | cannot be moved to    |
|                       |                       | the slot where it is  |
|                       |                       | needed."              |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_J           | -8086                 | Invalid module name.  |
| S_INVALID_MODULE_NAME |                       |                       |
+-----------------------+-----------------------+-----------------------+
| SEC                   | -8085                 | Invalid module        |
| _ERROR_JS_INVALID_DLL |                       | path/filename.        |
+-----------------------+-----------------------+-----------------------+
| SEC_ERR               | -8084                 | Unable to add module. |
| OR_JS_ADD_MOD_FAILURE |                       |                       |
+-----------------------+-----------------------+-----------------------+
| SEC_ERR               | -8083                 | Unable to delete      |
| OR_JS_DEL_MOD_FAILURE |                       | module.               |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_OLD_KRL     | -8082                 | New KRL is not later  |
|                       |                       | than the current one. |
+-----------------------+-----------------------+-----------------------+
| S                     | -8081                 | New CKL has different |
| EC_ERROR_CKL_CONFLICT |                       | issuer than current   |
|                       |                       | CKL.                  |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_C           | -8080                 | Certificate issuer is |
| ERT_NOT_IN_NAME_SPACE |                       | not permitted to      |
|                       |                       | issue a certificate   |
|                       |                       | with this name.       |
+-----------------------+-----------------------+-----------------------+
| SEC_ER                | -8079                 | "The key revocation   |
| ROR_KRL_NOT_YET_VALID |                       | list for this         |
|                       |                       | certificate is not    |
|                       |                       | yet valid."           |
+-----------------------+-----------------------+-----------------------+
| SEC_ER                | -8078                 | "The certificate      |
| ROR_CRL_NOT_YET_VALID |                       | revocation list for   |
|                       |                       | this certificate is   |
|                       |                       | not yet valid."       |
+-----------------------+-----------------------+-----------------------+
| S                     | -8077                 | "The requested        |
| EC_ERROR_UNKNOWN_CERT |                       | certificate could not |
|                       |                       | be found."            |
+-----------------------+-----------------------+-----------------------+
| SEC                   | -8076                 | "The signer's         |
| _ERROR_UNKNOWN_SIGNER |                       | certificate could not |
|                       |                       | be found."            |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_CER         | -8075                 | "The location for the |
| T_BAD_ACCESS_LOCATION |                       | certificate status    |
|                       |                       | server has invalid    |
|                       |                       | format."              |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_OCSP_       | -8074                 | "The OCSP response    |
| UNKNOWN_RESPONSE_TYPE |                       | cannot be fully       |
|                       |                       | decoded; it is of an  |
|                       |                       | unknown type."        |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_O           | -8073                 | "The OCSP server      |
| CSP_BAD_HTTP_RESPONSE |                       | returned              |
|                       |                       | unexpected/invalid    |
|                       |                       | HTTP data."           |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_O           | -8072                 | "The OCSP server      |
| CSP_MALFORMED_REQUEST |                       | found the request to  |
|                       |                       | be corrupted or       |
|                       |                       | improperly formed."   |
+-----------------------+-----------------------+-----------------------+
| SEC_ER                | -8071                 | "The OCSP server      |
| ROR_OCSP_SERVER_ERROR |                       | experienced an        |
|                       |                       | internal error."      |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_            | -8070                 | "The OCSP server      |
| OCSP_TRY_SERVER_LATER |                       | suggests trying again |
|                       |                       | later."               |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_O           | -8069                 | "The OCSP server      |
| CSP_REQUEST_NEEDS_SIG |                       | requires a signature  |
|                       |                       | on this request."     |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_OCSP        | -8068                 | "The OCSP server has  |
| _UNAUTHORIZED_REQUEST |                       | refused this request  |
|                       |                       | as unauthorized."     |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_OCSP_UN     | -8067                 | "The OCSP server      |
| KNOWN_RESPONSE_STATUS |                       | returned an           |
|                       |                       | unrecognizable        |
|                       |                       | status."              |
+-----------------------+-----------------------+-----------------------+
| SEC_ER                | -8066                 | "The OCSP server has  |
| ROR_OCSP_UNKNOWN_CERT |                       | no status for the     |
|                       |                       | certificate."         |
+-----------------------+-----------------------+-----------------------+
| SEC_E                 | -8065                 | "You must enable OCSP |
| RROR_OCSP_NOT_ENABLED |                       | before performing     |
|                       |                       | this operation."      |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_OCSP        | -8064                 | "You must set the     |
| _NO_DEFAULT_RESPONDER |                       | OCSP default          |
|                       |                       | responder before      |
|                       |                       | performing this       |
|                       |                       | operation."           |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_OC          | -8063                 | "The response from    |
| SP_MALFORMED_RESPONSE |                       | the OCSP server was   |
|                       |                       | corrupted or          |
|                       |                       | improperly formed."   |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_OCSP_       | -8062                 | "The signer of the    |
| UNAUTHORIZED_RESPONSE |                       | OCSP response is not  |
|                       |                       | authorized to give    |
|                       |                       | status for this       |
|                       |                       | certificate."         |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR             | -8061                 | "The OCSP response is |
| _OCSP_FUTURE_RESPONSE |                       | not yet valid         |
|                       |                       | (contains a date in   |
|                       |                       | the future)."         |
+-----------------------+-----------------------+-----------------------+
| SEC_ER                | -8060                 | "The OCSP response    |
| ROR_OCSP_OLD_RESPONSE |                       | contains out-of-date  |
|                       |                       | information."         |
+-----------------------+-----------------------+-----------------------+
| SEC_E                 | -8059                 | "The CMS or PKCS #7   |
| RROR_DIGEST_NOT_FOUND |                       | Digest was not found  |
|                       |                       | in signed message."   |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_UNS         | -8058                 | "The CMS or PKCS #7   |
| UPPORTED_MESSAGE_TYPE |                       | Message type is       |
|                       |                       | unsupported."         |
+-----------------------+-----------------------+-----------------------+
| S                     | -8057                 | "PKCS #11 module      |
| EC_ERROR_MODULE_STUCK |                       | could not be removed  |
|                       |                       | because it is still   |
|                       |                       | in use."              |
+-----------------------+-----------------------+-----------------------+
| S                     | -8056                 | "Could not decode     |
| EC_ERROR_BAD_TEMPLATE |                       | ASN.1 data. Specified |
|                       |                       | template was          |
|                       |                       | invalid."             |
+-----------------------+-----------------------+-----------------------+
| SE                    | -8055                 | "No matching CRL was  |
| C_ERROR_CRL_NOT_FOUND |                       | found."               |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_REU         | -8054                 | "You are attempting   |
| SED_ISSUER_AND_SERIAL |                       | to import a cert with |
|                       |                       | the same              |
|                       |                       | issuer/serial as an   |
|                       |                       | existing cert, but    |
|                       |                       | that is not the same  |
|                       |                       | cert."                |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_BUSY        | -8053                 | "NSS could not        |
|                       |                       | shutdown. Objects are |
|                       |                       | still in use."        |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_EXTRA_INPUT | -8052                 | "DER-encoded message  |
|                       |                       | contained extra       |
|                       |                       | unused data."         |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_UNSUP       | -8051                 | "Unsupported elliptic |
| PORTED_ELLIPTIC_CURVE |                       | curve."               |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_UNSU        | -8050                 | "Unsupported elliptic |
| PPORTED_EC_POINT_FORM |                       | curve point form."    |
+-----------------------+-----------------------+-----------------------+
| SEC_E                 | -8049                 | "Unrecognized Object  |
| RROR_UNRECOGNIZED_OID |                       | IDentifier."          |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_OCSP        | -8048                 | "Invalid OCSP signing |
| _INVALID_SIGNING_CERT |                       | certificate in OCSP   |
|                       |                       | response."            |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_RE          | -8047                 | "Certificate is       |
| VOKED_CERTIFICATE_CRL |                       | revoked in issuer's   |
|                       |                       | certificate           |
|                       |                       | revocation list."     |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_REV         | -8046                 | "Issuer's OCSP        |
| OKED_CERTIFICATE_OCSP |                       | responder reports     |
|                       |                       | certificate is        |
|                       |                       | revoked."             |
+-----------------------+-----------------------+-----------------------+
| SEC_ERRO              | -8045                 | "Issuer's Certificate |
| R_CRL_INVALID_VERSION |                       | Revocation List has   |
|                       |                       | an unknown version    |
|                       |                       | number."              |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_CRL_        | -8044                 | "Issuer's V1          |
| V1_CRITICAL_EXTENSION |                       | Certificate           |
|                       |                       | Revocation List has a |
|                       |                       | critical extension."  |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_CRL_UNKNO   | -8043                 | "Issuer's V2          |
| WN_CRITICAL_EXTENSION |                       | Certificate           |
|                       |                       | Revocation List has   |
|                       |                       | an unknown critical   |
|                       |                       | extension."           |
+-----------------------+-----------------------+-----------------------+
| SEC_ERRO              | -8042                 | "Unknown object type  |
| R_UNKNOWN_OBJECT_TYPE |                       | specified."           |
+-----------------------+-----------------------+-----------------------+
| SEC_ERRO              | -8041                 | "PKCS #11 driver      |
| R_INCOMPATIBLE_PKCS11 |                       | violates the spec in  |
|                       |                       | an incompatible way." |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_NO_EVENT    | -8040                 | "No new slot event is |
|                       |                       | available at this     |
|                       |                       | time."                |
+-----------------------+-----------------------+-----------------------+
| SEC_ERR               | -8039                 | "CRL already exists." |
| OR_CRL_ALREADY_EXISTS |                       |                       |
+-----------------------+-----------------------+-----------------------+
| SEC_                  | -8038                 | "NSS is not           |
| ERROR_NOT_INITIALIZED |                       | initialized."         |
+-----------------------+-----------------------+-----------------------+
| SEC_ERRO              | -8037                 | "The operation failed |
| R_TOKEN_NOT_LOGGED_IN |                       | because the PKCS#11   |
|                       |                       | token is not logged   |
|                       |                       | in."                  |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_OCSP_R      | -8036                 | "The configured OCSP  |
| ESPONDER_CERT_INVALID |                       | responder's           |
|                       |                       | certificate is        |
|                       |                       | invalid."             |
+-----------------------+-----------------------+-----------------------+
| SEC_ERR               | -8035                 | "OCSP response has an |
| OR_OCSP_BAD_SIGNATURE |                       | invalid signature."   |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR             | -8034                 | "Certification        |
| _OUT_OF_SEARCH_LIMITS |                       | validation search is  |
|                       |                       | out of search         |
|                       |                       | limits."              |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_I           | -8033                 | "Policy mapping       |
| NVALID_POLICY_MAPPING |                       | contains any-policy." |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_POL         | -8032                 | "Certificate chain    |
| ICY_VALIDATION_FAILED |                       | fails policy          |
|                       |                       | validation."          |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_UNKN        | -8031                 | "Unknown location     |
| OWN_AIA_LOCATION_TYPE |                       | type in certificate   |
|                       |                       | AIA extension."       |
+-----------------------+-----------------------+-----------------------+
| SEC_ER                | -8030                 | "Server returned a    |
| ROR_BAD_HTTP_RESPONSE |                       | bad HTTP response."   |
+-----------------------+-----------------------+-----------------------+
| SEC_ER                | -8029                 | "Server returned a    |
| ROR_BAD_LDAP_RESPONSE |                       | bad LDAP response."   |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_            | -8028                 | "Failed to encode     |
| FAILED_TO_ENCODE_DATA |                       | data with ASN.1       |
|                       |                       | encoder."             |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_BAD         | -8027                 | "Bad information      |
| _INFO_ACCESS_LOCATION |                       | access location in    |
|                       |                       | certificate           |
|                       |                       | extension."           |
+-----------------------+-----------------------+-----------------------+
| SEC_E                 | -8026                 | "Libpkix internal     |
| RROR_LIBPKIX_INTERNAL |                       | error occurred during |
|                       |                       | cert validation."     |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR             | -8025                 | "A PKCS #11 module    |
| _PKCS11_GENERAL_ERROR |                       | returned              |
|                       |                       | CKR_GENERAL_ERROR,    |
|                       |                       | indicating that an    |
|                       |                       | unrecoverable error   |
|                       |                       | has occurred."        |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_P           | -8024                 | "A PKCS #11 module    |
| KCS11_FUNCTION_FAILED |                       | returned              |
|                       |                       | CKR_FUNCTION_FAILED,  |
|                       |                       | indicating that the   |
|                       |                       | requested function    |
|                       |                       | could not be          |
|                       |                       | performed. Trying the |
|                       |                       | same operation again  |
|                       |                       | might succeed."       |
+-----------------------+-----------------------+-----------------------+
| SEC_ERRO              | -8023                 | "A PKCS #11 module    |
| R_PKCS11_DEVICE_ERROR |                       | returned              |
|                       |                       | CKR_DEVICE_ERROR,     |
|                       |                       | indicating that a     |
|                       |                       | problem has occurred  |
|                       |                       | with the token or     |
|                       |                       | slot."                |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR_B           | -8022                 | "Unknown information  |
| AD_INFO_ACCESS_METHOD |                       | access method in      |
|                       |                       | certificate           |
|                       |                       | extension."           |
+-----------------------+-----------------------+-----------------------+
| SEC_ER                | -8021                 | "Error attempting to  |
| ROR_CRL_IMPORT_FAILED |                       | import a CRL."        |
+-----------------------+-----------------------+-----------------------+
| SEC_ERROR             | -8018                 | "Unknown PKCS #11     |
| _UNKNOWN_PKCS11_ERROR |                       | error." (unknown      |
|                       |                       | error value mapping)  |
+-----------------------+-----------------------+-----------------------+