.. _Mozilla_Projects_NSS_Deprecated_SSL_functions:

========================
Deprecated SSL functions
========================
The following SSL functions have been replaced with newer versions. The
deprecated functions are not supported by the new SSL shared libraries.
Applications that want to use the SSL shared libraries must convert to
calling the new replacement functions listed below.

Each function name is linked to its entry in the `old SSL
Reference </NSS/SSL_functions/OLD_SSL_Reference>`__. The `Mozilla Cross
Reference <http://mxr.mozilla.org/>`__ (MXR) link for each function
provides access to the function definition, prototype definition, and
source code references.

+--------------------------+-------------+--------------------------+
| Function                 | Source code | Replacement in NSS 3.2   |
| name/documentation       |             |                          |
+--------------------------+-------------+--------------------------+
| ```SSL_Enab              | MXR         | ```SSL_OptionS           |
| le`` </NSS/SSL_functions |             | et`` </NSS/SSL_functions |
| /sslfnc.html#1220189>`__ |             | /sslfnc.html#1086543>`__ |
+--------------------------+-------------+--------------------------+
| ```SSL_EnableCiph        | MXR         | `                        |
| er`` </NSS/SSL_functions |             | ``SSL_CipherPrefSetDefau |
| /sslfnc.html#1207298>`__ |             | lt`` </NSS/SSL_functions |
|                          |             | /sslfnc.html#1084747>`__ |
+--------------------------+-------------+--------------------------+
| ```SSL_EnableDefau       | MXR         | ```SSL_OptionSetDefau    |
| lt`` </NSS/SSL_functions |             | lt`` </NSS/SSL_functions |
| /sslfnc.html#1206365>`__ |             | /sslfnc.html#1068466>`__ |
+--------------------------+-------------+--------------------------+
| ```SSL_RedoHandsha       | MXR         | ```SSL_ReHandsha         |
| ke`` </NSS/SSL_functions |             | ke`` </NSS/SSL_functions |
| /sslfnc.html#1231825>`__ |             | /sslfnc.html#1232052>`__ |
+--------------------------+-------------+--------------------------+
| ```SSL_SetPoli           | MXR         | ```SSL_CipherPolicyS     |
| cy`` </NSS/SSL_functions |             | et`` </NSS/SSL_functions |
| /sslfnc.html#1207350>`__ |             | /sslfnc.html#1104647>`__ |
+--------------------------+-------------+--------------------------+