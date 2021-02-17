.. _Mozilla_Projects_NSS_Deprecated_SSL_functions:

========================
Deprecated SSL functions
========================
The following SSL functions have been replaced with newer versions. The deprecated functions are not
supported by the new SSL shared libraries. Applications that want to use the SSL shared libraries
must convert to calling the new replacement functions listed below.

Each function name is linked to its entry in the `old SSL
Reference </NSS/SSL_functions/OLD_SSL_Reference>`__. The `Mozilla Cross
Reference <http://mxr.mozilla.org/>`__ (MXR) link for each function provides access to the function
definition, prototype definition, and source code references.

+-----------------------------------------+-------------+-----------------------------------------+
| Function name/documentation             | Source code | Replacement in NSS 3.2                  |
+-----------------------------------------+-------------+-----------------------------------------+
| ```SSL_Enable`` </NS                    | MXR         | ```SSL_OptionSet`` </NS                 |
| S/SSL_functions/sslfnc.html#1220189>`__ |             | S/SSL_functions/sslfnc.html#1086543>`__ |
+-----------------------------------------+-------------+-----------------------------------------+
| ```SSL_EnableCipher`` </NS              | MXR         | ```SSL_CipherPrefSetDefault`` </NS      |
| S/SSL_functions/sslfnc.html#1207298>`__ |             | S/SSL_functions/sslfnc.html#1084747>`__ |
+-----------------------------------------+-------------+-----------------------------------------+
| ```SSL_EnableDefault`` </NS             | MXR         | ```SSL_OptionSetDefault`` </NS          |
| S/SSL_functions/sslfnc.html#1206365>`__ |             | S/SSL_functions/sslfnc.html#1068466>`__ |
+-----------------------------------------+-------------+-----------------------------------------+
| ```SSL_RedoHandshake`` </NS             | MXR         | ```SSL_ReHandshake`` </NS               |
| S/SSL_functions/sslfnc.html#1231825>`__ |             | S/SSL_functions/sslfnc.html#1232052>`__ |
+-----------------------------------------+-------------+-----------------------------------------+
| ```SSL_SetPolicy`` </NS                 | MXR         | ```SSL_CipherPolicySet`` </NS           |
| S/SSL_functions/sslfnc.html#1207350>`__ |             | S/SSL_functions/sslfnc.html#1104647>`__ |
+-----------------------------------------+-------------+-----------------------------------------+