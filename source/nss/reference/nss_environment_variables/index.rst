=========================
NSS environment variables
=========================
.. note::

   **Note: NSS Environment Variables are subject to be changed and/or
   removed from NSS.**

.. _Run-Time_Environment_Variables:

Run-Time Environment Variables
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These environment variables affect the RUN TIME behavior of NSS shared
libraries. There is a separate set of environment variables that affect
how NSS is built, documented below.

+-----------------+-----------------+-----------------+-----------------+
| Variable        | Type            | Description     | Introduced in   |
|                 |                 |                 | version         |
+-----------------+-----------------+-----------------+-----------------+
| ``NSRANDCOUNT`` | Integer         | Sets the        | 3.12.3          |
|                 | (byte count)    | maximum number  |                 |
|                 |                 | of bytes to     |                 |
|                 |                 | read from the   |                 |
|                 |                 | file named in   |                 |
|                 |                 | the environment |                 |
|                 |                 | variable        |                 |
|                 |                 | NSRANDFILE (see |                 |
|                 |                 | below).  Makes  |                 |
|                 |                 | NSRANDFILE      |                 |
|                 |                 | usable with     |                 |
|                 |                 | /dev/urandom.   |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``NSRANDFILE``  | String          | Uses this file  | Before 3.0      |
|                 | (file name)     | to seed the     |                 |
|                 |                 | Pseudo Random   |                 |
|                 |                 | Number          |                 |
|                 |                 | Generator.      |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``              | Boolean         | Enables the use | 3.12.3          |
| NSS_ALLOW_WEAK_ | (any non-empty  | of MD2 and MD4  |                 |
| SIGNATURE_ALG`` | value to        | inside          |                 |
|                 | enable)         | signatures.     |                 |
|                 |                 | This was        |                 |
|                 |                 | allowed by      |                 |
|                 |                 | default before  |                 |
|                 |                 | NSS 3.12.3.     |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``NSS_DEBUG_    | String          | Name the        | 3.6             |
| PKCS11_MODULE`` | (module name)   | PKCS#11 module  |                 |
|                 |                 | to be traced.   |                 |
|                 |                 | `PKCS #11       |                 |
|                 |                 | Module          |                 |
|                 |                 | Logger </en-US  |                 |
|                 |                 | /docs/Mozilla/P |                 |
|                 |                 | rojects/NSS/NSS |                 |
|                 |                 | _Tech_Notes/nss |                 |
|                 |                 | _tech_note2>`__ |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``NSS_DE        | String          | Determines the  | 3.12            |
| FAULT_DB_TYPE`` | ("dbm", "sql",  | default         |                 |
|                 | or "extern")    | Database type   |                 |
|                 |                 | to open if the  |                 |
|                 |                 | app does not    |                 |
|                 |                 | specify.        |                 |
|                 |                 | `NSS_Shared_    |                 |
|                 |                 | DB <http://wiki |                 |
|                 |                 | .mozilla.org/NS |                 |
|                 |                 | S_Shared_DB>`__ |                 |
+-----------------+-----------------+-----------------+-----------------+
| `               | String          | Define this     | 3.4             |
| `NSS_DISABLE_AR | (any non-empty  | variable to get |                 |
| ENA_FREE_LIST`` | value)          | accurate leak   |                 |
|                 |                 | allocation      |                 |
|                 |                 | stacks when     |                 |
|                 |                 | using leak      |                 |
|                 |                 | reporting       |                 |
|                 |                 | software.       |                 |
|                 |                 | `NSS_Memory     |                 |
|                 |                 | _allocation </e |                 |
|                 |                 | n-US/NSS_Memory |                 |
|                 |                 | _allocation>`__ |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``NSS_D         | String          | Disable         | 3.11.8          |
| ISABLE_UNLOAD`` | (any non-empty  | unloading of    |                 |
|                 | value)          | dynamically     |                 |
|                 |                 | loaded NSS      |                 |
|                 |                 | shared          |                 |
|                 |                 | libraries       |                 |
|                 |                 | during          |                 |
|                 |                 | shutdown.       |                 |
|                 |                 | Necessary on    |                 |
|                 |                 | some platforms  |                 |
|                 |                 | to get correct  |                 |
|                 |                 | function names  |                 |
|                 |                 | when using leak |                 |
|                 |                 | reporting       |                 |
|                 |                 | software.       |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``NSS           | Boolean         | Enable auditing | 3.11.2          |
| _ENABLE_AUDIT`` | (1 to enable)   | of activities   |                 |
|                 |                 | of the NSS      |                 |
|                 |                 | cryptographic   |                 |
|                 |                 | module in FIPS  |                 |
|                 |                 | mode. `Audit    |                 |
|                 |                 | Da              |                 |
|                 |                 | ta <http://wiki |                 |
|                 |                 | .mozilla.org/FI |                 |
|                 |                 | PS_Operational_ |                 |
|                 |                 | Environment>`__ |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``NSS_ENABL     | Boolean         | Use libPKIX,    | 3.12            |
| E_PKIX_VERIFY`` | (any non-empty  | rather than the |                 |
|                 | value to        | old cert        |                 |
|                 | enable)         | library, to     |                 |
|                 |                 | verify          |                 |
|                 |                 | certificates.   |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``NSS_FIPS``    | String          | Will start NSS  | 3.12.5          |
|                 | ("fips","       | in FIPS mode.   |                 |
|                 | true","on","1") |                 |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``NSS_HAS       | String          | Specifies       | 3.12.3          |
| H_ALG_SUPPORT`` |                 | agorithms       |                 |
|                 |                 | allowed to be   |                 |
|                 |                 | used in certain |                 |
|                 |                 | applications,   |                 |
|                 |                 | such as in      |                 |
|                 |                 | signatures on   |                 |
|                 |                 | certificates    |                 |
|                 |                 | and CRLs. See   |                 |
|                 |                 | documentation   |                 |
|                 |                 | at `this        |                 |
|                 |                 | link            |                 |
|                 |                 | <https://bugzil |                 |
|                 |                 | la.mozilla.org/ |                 |
|                 |                 | show_bug.cgi?id |                 |
|                 |                 | =483113#c0>`__. |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``NS            | String          | Output file     | 3.7             |
| S_OUTPUT_FILE`` | (filename)      | path name for   |                 |
|                 |                 | the `PKCS #11   |                 |
|                 |                 | Module          |                 |
|                 |                 | Logger </en-US/ |                 |
|                 |                 | docs/Mozilla/Pr |                 |
|                 |                 | ojects/NSS/NSS_ |                 |
|                 |                 | Tech_Notes/nss_ |                 |
|                 |                 | tech_note2>`__. |                 |
|                 |                 | Default is      |                 |
|                 |                 | stdout.         |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``NSS_          | String          | Controls        | 3.12            |
| SDB_USE_CACHE`` | ("no            | whether NSS     |                 |
|                 | ","yes","auto") | uses a local    |                 |
|                 |                 | cache of SQL    |                 |
|                 |                 | database        |                 |
|                 |                 | contents.       |                 |
|                 |                 | Default is      |                 |
|                 |                 | "auto". See     |                 |
|                 |                 | `the            |                 |
|                 |                 | sour            |                 |
|                 |                 | ce <http://bons |                 |
|                 |                 | ai.mozilla.org/ |                 |
|                 |                 | cvsblame.cgi?fi |                 |
|                 |                 | le=/mozilla/sec |                 |
|                 |                 | urity/nss/lib/s |                 |
|                 |                 | oftoken/sdb.c&r |                 |
|                 |                 | ev=1.6#1797>`__ |                 |
|                 |                 | for more        |                 |
|                 |                 | information.    |                 |
+-----------------+-----------------+-----------------+-----------------+
| `               | String ("0",    | Controls the    |                 |
| NSS_SSL_CBC_RAN | "1")            | workaround for  |                 |
| DOM_IV <https:/ |                 | the             |                 |
| /dxr.mozilla.or |                 | `BEA            |                 |
| g/security/sear |                 | ST <https://en. |                 |
| ch?q=NSS_SSL_CB |                 | wikipedia.org/w |                 |
| C_RANDOM_IV>`__ |                 | iki/Transport_L |                 |
|                 |                 | ayer_Security#B |                 |
|                 |                 | EAST_attack>`__ |                 |
|                 |                 | attack on SSL   |                 |
|                 |                 | 3.0 and TLS     |                 |
|                 |                 | 1.0. "0"        |                 |
|                 |                 | disables it,    |                 |
|                 |                 | "1" enables it. |                 |
|                 |                 | It is also      |                 |
|                 |                 | known as 1/n-1  |                 |
|                 |                 | record          |                 |
|                 |                 | splitting.      |                 |
|                 |                 | Default is "1". |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``              | String          | (Definition for | 3.12.5          |
| NSS_SSL_ENABLE_ | ([0|n|N],       | NSS 3.12.6 and  | Modified in     |
| RENEGOTIATION`` | [1|u|U],        | above)          | 3.12.6          |
|                 | [2|r|R],        | Sets how TLS    |                 |
|                 | [3|t|T])        | renegotiation   |                 |
|                 |                 | is handled      |                 |
|                 |                 |                 |                 |
|                 |                 | -  [1|u|U]:     |                 |
|                 |                 |                 |                 |
|                 |                 |   SSL_RENEGOTIA |                 |
|                 |                 | TE_UNRESTRICTED |                 |
|                 |                 |                 |                 |
|                 |                 | | Server and    |                 |
|                 |                 |   client are    |                 |
|                 |                 |   allowed to    |                 |
|                 |                 |   renegotiate   |                 |
|                 |                 |   without any   |                 |
|                 |                 |   restrictions. |                 |
|                 |                 | | This setting  |                 |
|                 |                 |   was the       |                 |
|                 |                 |   default prior |                 |
|                 |                 |   3.12.5 and    |                 |
|                 |                 |   makes         |                 |
|                 |                 |   products      |                 |
|                 |                 |   vulnerable.   |                 |
|                 |                 |                 |                 |
|                 |                 | -  [0|n|N]:     |                 |
|                 |                 |    SSL_RE       |                 |
|                 |                 | NEGOTIATE_NEVER |                 |
|                 |                 |                 |                 |
|                 |                 | Never allow     |                 |
|                 |                 | renegotiation - |                 |
|                 |                 | That was the    |                 |
|                 |                 | default for     |                 |
|                 |                 | 3.12.5 release. |                 |
|                 |                 |                 |                 |
|                 |                 | -  [3|t|T]:     |                 |
|                 |                 |                 |                 |
|                 |                 |   SSL_RENEGOTIA |                 |
|                 |                 | TE_TRANSITIONAL |                 |
|                 |                 |                 |                 |
|                 |                 | Disallows       |                 |
|                 |                 | unsafe          |                 |
|                 |                 | renegotiation   |                 |
|                 |                 | in server       |                 |
|                 |                 | sockets only,   |                 |
|                 |                 | but allows      |                 |
|                 |                 | clients to      |                 |
|                 |                 | continue to     |                 |
|                 |                 | renegotiate     |                 |
|                 |                 | with vulnerable |                 |
|                 |                 | servers. This   |                 |
|                 |                 | value should    |                 |
|                 |                 | only be used    |                 |
|                 |                 | during the      |                 |
|                 |                 | transition      |                 |
|                 |                 | period when few |                 |
|                 |                 | servers have    |                 |
|                 |                 | been upgraded.  |                 |
|                 |                 |                 |                 |
|                 |                 | -  [2|r|R]:     |                 |
|                 |                 |                 |                 |
|                 |                 |   SSL_RENEGOTIA |                 |
|                 |                 | TE_REQUIRES_XTN |                 |
|                 |                 |    (default)    |                 |
|                 |                 |                 |                 |
|                 |                 | | Only allows   |                 |
|                 |                 |   renegotiation |                 |
|                 |                 |   if the peer's |                 |
|                 |                 |   hello bears   |                 |
|                 |                 |   the TLS       |                 |
|                 |                 |   ren           |                 |
|                 |                 | egotiation_info |                 |
|                 |                 |   extension.    |                 |
|                 |                 | | This is the   |                 |
|                 |                 |   safe          |                 |
|                 |                 |                 |                 |
|                 |                 |  renegotiation. |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``NSS_          | Boolean         | It controls     | 3.12.5          |
| SSL_REQUIRE_SAF | (1 to enable)   | whether safe    |                 |
| E_NEGOTIATION`` |                 | renegotiation   |                 |
|                 |                 | indication is   |                 |
|                 |                 | required for    |                 |
|                 |                 | initial         |                 |
|                 |                 | handshake. In   |                 |
|                 |                 | other words a   |                 |
|                 |                 | connection will |                 |
|                 |                 | be dropped at   |                 |
|                 |                 | initial         |                 |
|                 |                 | handshake if a  |                 |
|                 |                 | server or       |                 |
|                 |                 | client do not   |                 |
|                 |                 | support safe    |                 |
|                 |                 | renegotiation.  |                 |
|                 |                 | The default     |                 |
|                 |                 | setting for     |                 |
|                 |                 | this option is  |                 |
|                 |                 | FALSE.          |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``NSS_SS        | Integer         | Timeout time to | 3.4             |
| L_SERVER_CACHE_ | (seconds)       | detect dead or  |                 |
| MUTEX_TIMEOUT`` |                 | hung process in |                 |
|                 |                 | multi-process   |                 |
|                 |                 | SSL server.     |                 |
|                 |                 | Default is 30   |                 |
|                 |                 | seconds.        |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``NSS_          | String          | It is an error  | 3.12.3          |
| STRICT_NOFORK`` | ("1",           | to try to use a |                 |
|                 | "DISABLED",     | PKCS#11 crypto  |                 |
|                 | or any other    | module in a     |                 |
|                 | non-empty       | process before  |                 |
|                 | value)          | it has been     |                 |
|                 |                 | initialized in  |                 |
|                 |                 | that process,   |                 |
|                 |                 | even if the     |                 |
|                 |                 | module was      |                 |
|                 |                 | initialized in  |                 |
|                 |                 | the parent      |                 |
|                 |                 | process.        |                 |
|                 |                 | Beginning in    |                 |
|                 |                 | NSS 3.12.3,     |                 |
|                 |                 | Softoken will   |                 |
|                 |                 | detect this     |                 |
|                 |                 | error. This     |                 |
|                 |                 | environment     |                 |
|                 |                 | variable        |                 |
|                 |                 | controls        |                 |
|                 |                 | Softoken's      |                 |
|                 |                 | response to     |                 |
|                 |                 | that error.     |                 |
|                 |                 |                 |                 |
|                 |                 | -  If set to    |                 |
|                 |                 |    "1" or       |                 |
|                 |                 |    unset,       |                 |
|                 |                 |    Softoken     |                 |
|                 |                 |    will trigger |                 |
|                 |                 |    an assertion |                 |
|                 |                 |    failure in   |                 |
|                 |                 |    debug        |                 |
|                 |                 |    builds, and  |                 |
|                 |                 |    will report  |                 |
|                 |                 |    an error in  |                 |
|                 |                 |    non-DEBUG    |                 |
|                 |                 |    builds.      |                 |
|                 |                 | -  If set  to   |                 |
|                 |                 |    "DISABLED",  |                 |
|                 |                 |    Softoken     |                 |
|                 |                 |    will ignore  |                 |
|                 |                 |    forks, and   |                 |
|                 |                 |    behave as it |                 |
|                 |                 |    did in older |                 |
|                 |                 |    versions.    |                 |
|                 |                 | -  If set to    |                 |
|                 |                 |    any other    |                 |
|                 |                 |    non-empty    |                 |
|                 |                 |    value,       |                 |
|                 |                 |    Softoken     |                 |
|                 |                 |    will report  |                 |
|                 |                 |    an error in  |                 |
|                 |                 |    both DEBUG   |                 |
|                 |                 |    and          |                 |
|                 |                 |    non-DEBUG    |                 |
|                 |                 |    builds.      |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``NSS_ST        | String          | will trigger an | 3.5             |
| RICT_SHUTDOWN`` | (any non-empty  | assertion       |                 |
|                 | value)          | failure in      |                 |
|                 |                 | debug builds    |                 |
|                 |                 | when a program  |                 |
|                 |                 | tries to        |                 |
|                 |                 | shutdown NSS    |                 |
|                 |                 | before freeing  |                 |
|                 |                 | all the         |                 |
|                 |                 | resources it    |                 |
|                 |                 | acquired from   |                 |
|                 |                 | NSS while       |                 |
|                 |                 | NSS was         |                 |
|                 |                 | initialized.    |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``N             | Boolean         | Enables OCSP    | 3.12            |
| SS_TRACE_OCSP`` | (any value to   | tracing.        |                 |
|                 | enable)         | The trace       |                 |
|                 |                 | information is  |                 |
|                 |                 | written to the  |                 |
|                 |                 | file pointed by |                 |
|                 |                 | NSPR_LOG_FILE   |                 |
|                 |                 | (default        |                 |
|                 |                 | stderr). See    |                 |
|                 |                 | `NSS            |                 |
|                 |                 | tra             |                 |
|                 |                 | cing <http://wi |                 |
|                 |                 | ki.mozilla.org/ |                 |
|                 |                 | NSS:Tracing>`__ |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``              | Boolean         | Tells NSS to    | 3.12.3          |
| NSS_USE_DECODED | (any value to   | send EC key     |                 |
| _CKA_EC_POINT`` | enable)         | points across   |                 |
|                 |                 | the PKCS#11     |                 |
|                 |                 | interface in    |                 |
|                 |                 | the             |                 |
|                 |                 | non-standard    |                 |
|                 |                 | unencoded       |                 |
|                 |                 | format that was |                 |
|                 |                 | used by default |                 |
|                 |                 | before          |                 |
|                 |                 | NSS 3.12.3.     |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``NSS_USE_SHEXP | Boolean         | Tells NSS to    | 3.12.3          |
| _IN_CERT_NAME`` | (any value to   | allow           |                 |
|                 | enable)         | shell-style     |                 |
|                 |                 | wildcard        |                 |
|                 |                 | patterns in     |                 |
|                 |                 | certificates to |                 |
|                 |                 | match SSL       |                 |
|                 |                 | server host     |                 |
|                 |                 | names. This     |                 |
|                 |                 | behavior was    |                 |
|                 |                 | the default     |                 |
|                 |                 | before NSS      |                 |
|                 |                 | 3.12.3.         |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``PKIX_OB       | String          | Debug variable  | 3.12            |
| JECT_LEAK_TEST_ | (any non-empty  | for PKIX leak   |                 |
| ABORT_ON_LEAK`` | value)          | checking. Note: |                 |
|                 |                 | *The code must  |                 |
|                 |                 | be built with   |                 |
|                 |                 | PKIX_O          |                 |
|                 |                 | BJECT_LEAK_TEST |                 |
|                 |                 | defined to use  |                 |
|                 |                 | this            |                 |
|                 |                 | functionality.* |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``SOCKETTRACE`` | Boolean         | Controls        | 3.12            |
|                 | (1 to enable)   | tracing of      |                 |
|                 |                 | socket activity |                 |
|                 |                 | by libPKIX.     |                 |
|                 |                 | Messages sent   |                 |
|                 |                 | and received    |                 |
|                 |                 | will be         |                 |
|                 |                 | timestamped and |                 |
|                 |                 | dumped (to      |                 |
|                 |                 | stdout) in      |                 |
|                 |                 | standard        |                 |
|                 |                 | hex-dump        |                 |
|                 |                 | format.         |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``SQLITE_FORCE_ | Boolean         | 1 means force   | 3.12.6          |
| PROXY_LOCKING`` | (1 to enable)   | always use      |                 |
|                 |                 | proxy, 0 means  |                 |
|                 |                 | never use       |                 |
|                 |                 | proxy, NULL     |                 |
|                 |                 | means use proxy |                 |
|                 |                 | for non-local   |                 |
|                 |                 | files only.     |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``SSLBYPASS``   | Boolean         | Uses PKCS#11    | 3.11            |
|                 | (1 to enable)   | bypass for      |                 |
|                 |                 | performance     |                 |
|                 |                 | improvement.    |                 |
|                 |                 | Do not set this |                 |
|                 |                 | variable if     |                 |
|                 |                 | FIPS is         |                 |
|                 |                 | enabled.        |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``SSLDEBUG``    | Integer         | Debug level     | Before 3.0      |
|                 |                 | Note: *The code |                 |
|                 |                 | must be built   |                 |
|                 |                 | with DEBUG      |                 |
|                 |                 | defined to use  |                 |
|                 |                 | this            |                 |
|                 |                 | functionality.* |                 |
+-----------------+-----------------+-----------------+-----------------+
| `               | String          | File where      | 3.12            |
| `SSLDEBUGFILE`` | (file name)     | debug or trace  |                 |
|                 |                 | information is  |                 |
|                 |                 | written.        |                 |
|                 |                 | If not set, the |                 |
|                 |                 | debug or trace  |                 |
|                 |                 | information is  |                 |
|                 |                 | written to      |                 |
|                 |                 | stderr.         |                 |
|                 |                 |                 |                 |
|                 |                 | Note: *SSLDEBUG |                 |
|                 |                 | or SSLTRACE     |                 |
|                 |                 | have to be set  |                 |
|                 |                 | to use this     |                 |
|                 |                 | functionality.* |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``              | Boolean         | Forces NSS to   | 3.11            |
| SSLFORCELOCKS`` | (1 to enable)   | use locks for   |                 |
|                 |                 | protection.     |                 |
|                 |                 | Overrides the   |                 |
|                 |                 | effect of       |                 |
|                 |                 | SSL_NO_LOCKS    |                 |
|                 |                 | (see ssl.h).    |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``              | String          | Key log file.   | 3.12.6          |
| SSLKEYLOGFILE`` | (file name)     | If set, NSS     |                 |
|                 |                 | logs RSA        |                 |
|                 |                 | pre-master      |                 |
|                 |                 | secrets to this |                 |
|                 |                 | file. This      |                 |
|                 |                 | allows packet   |                 |
|                 |                 | sniffers to     |                 |
|                 |                 | decrypt TLS     |                 |
|                 |                 | connections.    |                 |
|                 |                 | See             |                 |
|                 |                 | `               |                 |
|                 |                 | documentation < |                 |
|                 |                 | /en-US/NSS_Key_ |                 |
|                 |                 | Log_Format>`__. |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``SSLTRACE``    | Integer         | Tracing level   | Before 3.0      |
|                 |                 | Note: *The code |                 |
|                 |                 | must be built   |                 |
|                 |                 | with TRACE      |                 |
|                 |                 | defined to use  |                 |
|                 |                 | this            |                 |
|                 |                 | functionality.* |                 |
+-----------------+-----------------+-----------------+-----------------+

.. _Build-Time_Environment_Variables:

Build-Time Environment Variables
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These environment variables affect the build (compilation) of NSS.

.. note::

   **Note: This section is a work in progress and is not yet complete.**

+-----------------+-----------------+-----------------+-----------------+
| Variable        | Type            | Description     | Introduced in   |
|                 |                 |                 | version         |
+-----------------+-----------------+-----------------+-----------------+
| ``BUILD_OPT``   | Boolean         | Do an optimized | Before 3.0      |
|                 | (1 to enable)   | (not DEBUG)     |                 |
|                 |                 | build. Default  |                 |
|                 |                 | is to do a      |                 |
|                 |                 | DEBUG build.    |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``MOZ_          | Boolean         | Needed on       | 3.11            |
| DEBUG_SYMBOLS`` | (1 to enable)   | Windows to      |                 |
|                 |                 | build with      |                 |
|                 |                 | versions of     |                 |
|                 |                 | MSVC (such as   |                 |
|                 |                 | VC8 and VC9)    |                 |
|                 |                 | that do not     |                 |
|                 |                 | understand      |                 |
|                 |                 | /PDB:NONE       |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``MO            | String          | When            | 3.12.8          |
| Z_DEBUG_FLAGS`` |                 | ``MOZ_          |                 |
|                 |                 | DEBUG_SYMBOLS`` |                 |
|                 |                 | is set, you may |                 |
|                 |                 | use             |                 |
|                 |                 | ``MO            |                 |
|                 |                 | Z_DEBUG_FLAGS`` |                 |
|                 |                 | to specify      |                 |
|                 |                 | alternative     |                 |
|                 |                 | compiler flags  |                 |
|                 |                 | to produce      |                 |
|                 |                 | symbolic        |                 |
|                 |                 | debugging       |                 |
|                 |                 | information in  |                 |
|                 |                 | a particular    |                 |
|                 |                 | format.         |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``NSDISTMODE``  | String          | On operating    | Before 3.0      |
|                 |                 | systems other   |                 |
|                 |                 | than Windows,   |                 |
|                 |                 | this controls   |                 |
|                 |                 | whether copies, |                 |
|                 |                 | absolute        |                 |
|                 |                 | symlinks, or    |                 |
|                 |                 | relative        |                 |
|                 |                 | symlinks of the |                 |
|                 |                 | output files    |                 |
|                 |                 | should be       |                 |
|                 |                 | published to    |                 |
|                 |                 | mozilla/dist.   |                 |
|                 |                 | The possible    |                 |
|                 |                 | values are:     |                 |
|                 |                 |                 |                 |
|                 |                 | -  copy: copies |                 |
|                 |                 |    of files are |                 |
|                 |                 |    published    |                 |
|                 |                 | -  ab           |                 |
|                 |                 | solute_symlink: |                 |
|                 |                 |    symlinks     |                 |
|                 |                 |    whose        |                 |
|                 |                 |    targets are  |                 |
|                 |                 |    absolute     |                 |
|                 |                 |    pathnames    |                 |
|                 |                 |    are          |                 |
|                 |                 |    published    |                 |
|                 |                 |                 |                 |
|                 |                 | If not          |                 |
|                 |                 | specified,      |                 |
|                 |                 | default to      |                 |
|                 |                 | relative        |                 |
|                 |                 | symlinks        |                 |
|                 |                 | (symlinks whose |                 |
|                 |                 | targets are     |                 |
|                 |                 | relative        |                 |
|                 |                 | pathnames).     |                 |
|                 |                 | On Windows,     |                 |
|                 |                 | copies of files |                 |
|                 |                 | are always      |                 |
|                 |                 | published.      |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``NS_USE_GCC``  | Boolean         | On systems      | Before 3.0      |
|                 | (1 to enable)   | where GCC is    |                 |
|                 |                 | not the default |                 |
|                 |                 | compiler, this  |                 |
|                 |                 | tells NSS to    |                 |
|                 |                 | build with gcc. |                 |
+-----------------+-----------------+-----------------+-----------------+
| `NSS_ALLOW_SSLK | Boolean         | Enable NSS      | 3.24            |
| EYLOGFILE <http | (1 to enable)   | support in      |                 |
| s://dxr.mozilla |                 | optimized       |                 |
| .org/nss/search |                 | builds for      |                 |
| ?q=NSS_ALLOW_SS |                 | logging SSL/TLS |                 |
| LKEYLOGFILE>`__ |                 | key material to |                 |
|                 |                 | a logfile if    |                 |
|                 |                 | the             |                 |
|                 |                 | SSLKEYLOGFILE   |                 |
|                 |                 | environment     |                 |
|                 |                 | variable. As of |                 |
|                 |                 | NSS 3.24 this   |                 |
|                 |                 | is disabled by  |                 |
|                 |                 | default.        |                 |
+-----------------+-----------------+-----------------+-----------------+
| `               | Boolean         | Continue        | 3.12.4          |
| `NSS_BUILD_CONT | (1 to enable)   | building NSS    |                 |
| INUE_ON_ERROR`` |                 | source          |                 |
|                 |                 | directories     |                 |
|                 |                 | when a build    |                 |
|                 |                 | error occurs.   |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``NSS_USE_      | Boolean         | Use the system  | 3.12.6          |
| SYSTEM_SQLITE`` | (1 to enable)   | installed       |                 |
|                 |                 | sqlite library  |                 |
|                 |                 | instead of the  |                 |
|                 |                 | in-tree         |                 |
|                 |                 | version.        |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``              | Boolean         | Disable         | 3.16            |
| NSS_DISABLE_ECC | (1 to disable)  | Elliptic Curve  |                 |
|  (deprecated)`` |                 | Cryptography    |                 |
|                 |                 | features. As of |                 |
|                 |                 | NSS 3.16, ECC   |                 |
|                 |                 | features are    |                 |
|                 |                 | enabled by      |                 |
|                 |                 | default. As of  |                 |
|                 |                 | NSS 3.33 this   |                 |
|                 |                 | variable has no |                 |
|                 |                 | effect.         |                 |
+-----------------+-----------------+-----------------+-----------------+
| `               | Boolean         | Enable building | Before 3.16;    |
| `NSS_ENABLE_ECC | (1 to enable)   | of code that    | since 3.11.     |
|  (deprecated)`` |                 | uses Elliptic   |                 |
|                 |                 | Curve           |                 |
|                 |                 | Cryptography.   |                 |
|                 |                 | Unused as of    |                 |
|                 |                 | NSS 3.16; see   |                 |
|                 |                 | N               |                 |
|                 |                 | SS_DISABLE_ECC. |                 |
+-----------------+-----------------+-----------------+-----------------+
| `               | | Boolean       | Allows enabling | 3.24            |
| ``NSS_FORCE_FIP | | (1 to enable) | FIPS mode using |                 |
| S`` <https://dx |                 | ``NSS_FIPS``    |                 |
| r.mozilla.org/n |                 |                 |                 |
| ss/search?q=NSS |                 |                 |                 |
| _FORCE_FIPS>`__ |                 |                 |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``OS_TARGET``   | String          | For             | Before 3.0      |
|                 | (target OS)     | cr              |                 |
|                 |                 | oss-compilation |                 |
|                 |                 | environments    |                 |
|                 |                 | only, when the  |                 |
|                 |                 | target OS is    |                 |
|                 |                 | not the default |                 |
|                 |                 | for the system  |                 |
|                 |                 | on which the    |                 |
|                 |                 | build is        |                 |
|                 |                 | performed.      |                 |
|                 |                 | Values          |                 |
|                 |                 | understood:     |                 |
|                 |                 | WIN95           |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``USE_64``      | Boolean         | On platforms    | Before 3.0      |
|                 | (1 to enable)   | that has        |                 |
|                 |                 | separate 32-bit |                 |
|                 |                 | and 64-bit      |                 |
|                 |                 | ABIs, NSS       |                 |
|                 |                 | builds for the  |                 |
|                 |                 | 32-bit ABI by   |                 |
|                 |                 | default. This   |                 |
|                 |                 | tells NSS to    |                 |
|                 |                 | build for the   |                 |
|                 |                 | 64-bit ABI.     |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``              | Boolean         | On Windows,     | Before 3.0      |
| USE_DEBUG_RTL`` | (1 to enable)   | MSVC has        |                 |
|                 |                 | options to      |                 |
|                 |                 | build with a    |                 |
|                 |                 | normal Run Time |                 |
|                 |                 | Library or a    |                 |
|                 |                 | debug Run Time  |                 |
|                 |                 | Library. This   |                 |
|                 |                 | tells NSS to    |                 |
|                 |                 | build with the  |                 |
|                 |                 | Debug Run Time  |                 |
|                 |                 | Library.        |                 |
+-----------------+-----------------+-----------------+-----------------+
| `               | Boolean         | On platforms    | Before 3.0      |
| `USE_PTHREADS`` | (1 to enable)   | where POSIX     |                 |
|                 |                 | threads are     |                 |
|                 |                 | available, but  |                 |
|                 |                 | are not the     |                 |
|                 |                 | OS'es preferred |                 |
|                 |                 | threads         |                 |
|                 |                 | library, this   |                 |
|                 |                 | tells NSS and   |                 |
|                 |                 | NSPR to build   |                 |
|                 |                 | using pthreads. |                 |
+-----------------+-----------------+-----------------+-----------------+
| ``NSS_NO_       | String          | Disables at     | Before 3.15     |
| PKCS11_BYPASS`` | (1 to enable)   | compile-time    |                 |
|                 |                 | the NS ssl code |                 |
|                 |                 | to bypass the   |                 |
|                 |                 | pkcs11 layer.   |                 |
|                 |                 | When set the    |                 |
|                 |                 | SSLBYPASS       |                 |
|                 |                 | run-time        |                 |
|                 |                 | variable won't  |                 |
|                 |                 | take effect     |                 |
+-----------------+-----------------+-----------------+-----------------+
