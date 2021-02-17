==================
NSS API Guidelines
==================
.. _NSS_API_Guidelines:

NSS API Guidelines
==================

Newsgroup:
`mozilla.dev.tech.crypto <news://news.mozilla.org/mozilla.dev.tech.crypto>`__

.. _Introduction:

Introduction
------------

This document describes how the NSS code is organized, the libraries
that get built from the NSS sources, and guidelines for writing NSS
code. These guidelines will familiarize you with some of the ways things
can be done in the NSS code. This will help you understand existing NSS
code. It should also help you understand how to write new code, and
where to place it.

Some of the guidelines in this document, are more forward-looking than
documentary. These rules are here to help us all immediately achieve
more consistent and usable code, but some existing code won't follow all
these rules.

.. _NSS_API_Structure:

NSS API Structure
-----------------

This section explains the structure and relationships of the NSS
libraries. The `Layering <#layering>`__ section explains how the NSS
code is layered, and how higher-level functions wrap low-level
functions. The `Libraries <#libraries>`__ section describes the NSS
libraries, the functionality each provides, and the layer in which the
library (mostly) operates.

.. _Layering:

Layering
~~~~~~~~

Each separate component of the API should live in its own layer. The
functions in these APIs should never call API layers above them. In
addition, some low-level APIs may be completely opaque to higher level
layers. That is, access to these functions should only be provided by
the API directly above them. The NSS APIs are layered, as shown in this
diagram:

.. image:: layer.gif
   :alt: A diagram of the different layers that collectively make up
   "NSS". Dependencies are only permitted between siblings and layers
   below them.

The boxes in the gray section, towards the center, are exported only
through PKCS #11. PKCS #11 is only exported through the Wrappers. The
areas which need the most work (both here and throughout the code) is:

#. The relationship of the Certificate library with just about every
   other component (most noticeably PKCS #12, PKCS #7, and PKCS #11)
#. Splitting Low Key and High Key components more clearly
#. The Crypto wrappers (PKCS #11 Wrappers) and High Key
#. PKCS #12 and PKCS #5

.. _Libraries:

Libraries
~~~~~~~~~

NSS compiles into the libraries described below. The Layer indicates the
main layer, seen in the previous diagram, in which the library operates.
The Directory is the location of the library code in the NSS source
tree. The Public Headers is a list of header files that contain types,
and functions, that are publicly available to higer-level APIs.

+----------+-------------+-------------+-------------+-------------+
| Library  | Description | Layer       | Directory   | Public      |
|          |             |             |             | Headers     |
+----------+-------------+-------------+-------------+-------------+
| certdb   | Provides    | Low Cert    | lib/certdb  | cdbhdl.h,   |
|          | all         |             |             | certdb.h,   |
|          | certificate |             |             | cert.h,     |
|          | handling    |             |             | certt.h     |
|          | functions   |             |             |             |
|          | and types.  |             |             |             |
|          | The certdb  |             |             |             |
|          | library     |             |             |             |
|          | manipulates |             |             |             |
|          | the         |             |             |             |
|          | certificate |             |             |             |
|          | database    |             |             |             |
|          | (add,       |             |             |             |
|          | create,     |             |             |             |
|          | delete      |             |             |             |
|          | c           |             |             |             |
|          | ertificates |             |             |             |
|          | and CRLs).  |             |             |             |
|          | It also     |             |             |             |
|          | provides    |             |             |             |
|          | general     |             |             |             |
|          | certifica   |             |             |             |
|          | te-handling |             |             |             |
|          | routines    |             |             |             |
|          | (create a   |             |             |             |
|          | c           |             |             |             |
|          | ertificate, |             |             |             |
|          | verify,     |             |             |             |
|          | add/check   |             |             |             |
|          | certificate |             |             |             |
|          | e           |             |             |             |
|          | xtensions). |             |             |             |
+----------+-------------+-------------+-------------+-------------+
| certhi   | Provides    | High Cert   | l           | ocsp.h,     |
|          | high-level  |             | ib/certhigh | ocspt.h     |
|          | certific    |             |             |             |
|          | ate-related |             |             |             |
|          | functions,  |             |             |             |
|          | that do not |             |             |             |
|          | access the  |             |             |             |
|          | certificate |             |             |             |
|          | database,   |             |             |             |
|          | nor         |             |             |             |
|          | individual  |             |             |             |
|          | certificate |             |             |             |
|          | data        |             |             |             |
|          | directly.   |             |             |             |
|          | Currently,  |             |             |             |
|          | OCSP        |             |             |             |
|          | checking    |             |             |             |
|          | settings    |             |             |             |
|          | are         |             |             |             |
|          | exported    |             |             |             |
|          | through     |             |             |             |
|          | certhi.     |             |             |             |
+----------+-------------+-------------+-------------+-------------+
| crmf     | Provides    | Same Level  | lib/crmf    | cmmf.h,     |
|          | functions,  | as SSL      |             | crmf.h,     |
|          | and data    |             |             | crmft.h,    |
|          | types, to   |             |             | cmmft.h,    |
|          | handle      |             |             | crmffut.h   |
|          | Certificate |             |             |             |
|          | Management  |             |             |             |
|          | Message     |             |             |             |
|          | Format      |             |             |             |
|          | (CMMF) and  |             |             |             |
|          | Certificate |             |             |             |
|          | Request     |             |             |             |
|          | Message     |             |             |             |
|          | Format      |             |             |             |
|          | (CRMF, see  |             |             |             |
|          | `RFC        |             |             |             |
|          | 25          |             |             |             |
|          | 11 <https:/ |             |             |             |
|          | /tools.ietf |             |             |             |
|          | .org/html/r |             |             |             |
|          | fc2511>`__) |             |             |             |
|          | data. CMMF  |             |             |             |
|          | no longer   |             |             |             |
|          | exists as a |             |             |             |
|          | proposed    |             |             |             |
|          | standard;   |             |             |             |
|          | CMMF        |             |             |             |
|          | functions   |             |             |             |
|          | have been   |             |             |             |
|          | i           |             |             |             |
|          | ncorporated |             |             |             |
|          | into the    |             |             |             |
|          | proposal    |             |             |             |
|          | for         |             |             |             |
|          | `           |             |             |             |
|          | Certificate |             |             |             |
|          | Management  |             |             |             |
|          | Protocols   |             |             |             |
|          | (CM         |             |             |             |
|          | P) <https:/ |             |             |             |
|          | /tools.ietf |             |             |             |
|          | .org/html/r |             |             |             |
|          | fc2510>`__. |             |             |             |
+----------+-------------+-------------+-------------+-------------+
| cryptohi | Provides    | Sign/Verify | l           | cryptohi.h, |
|          | high-level  |             | ib/cryptohi | cryptoht.h, |
|          | cr          |             |             | hasht.h,    |
|          | yptographic |             |             | keyhi.h,    |
|          | support     |             |             | keythi.h,   |
|          | operations: |             |             | key.h,      |
|          | such as     |             |             | keyt.h,     |
|          | signing,    |             |             | sechash.h   |
|          | verifying   |             |             |             |
|          | signatures, |             |             |             |
|          | key         |             |             |             |
|          | generation, |             |             |             |
|          | key         |             |             |             |
|          | ma          |             |             |             |
|          | nipulation, |             |             |             |
|          | hashing;    |             |             |             |
|          | and data    |             |             |             |
|          | types. This |             |             |             |
|          | code is     |             |             |             |
|          | above the   |             |             |             |
|          | PKCS #11    |             |             |             |
|          | layer.      |             |             |             |
+----------+-------------+-------------+-------------+-------------+
| fort     | Provides a  | PKCS #11    | li          | cryptint.h, |
|          | PKCS #11    |             | b/fortcrypt | fmutex.h,   |
|          | interface,  |             |             | fortsock.h, |
|          | to Fortezza |             |             | fpkcs11.h,  |
|          | crypto      |             |             | fpkcs11f.h, |
|          | services.   |             |             | fpkcs11t.h, |
|          | Fortezza is |             |             | fpkmem.h,   |
|          | a set of    |             |             | fpkstrs.h,  |
|          | security    |             |             | genci.h,    |
|          | algorithms, |             |             | maci.h      |
|          | used by the |             |             |             |
|          | U.S.        |             |             |             |
|          | government. |             |             |             |
|          | There is    |             |             |             |
|          | also a SWFT |             |             |             |
|          | library     |             |             |             |
|          | that        |             |             |             |
|          | provides a  |             |             |             |
|          | so          |             |             |             |
|          | ftware-only |             |             |             |
|          | imp         |             |             |             |
|          | lementation |             |             |             |
|          | of a PKCS   |             |             |             |
|          | #11         |             |             |             |
|          | Fortezza    |             |             |             |
|          | token.      |             |             |             |
+----------+-------------+-------------+-------------+-------------+
| freebl   | Provides    | Within PKCS | lib/freebl  | blapi.h,    |
|          | the API to  | #11, wraps  |             | blapit.h    |
|          | actual      | Crypto      |             |             |
|          | cr          |             |             |             |
|          | yptographic |             |             |             |
|          | operations. |             |             |             |
|          | The freebl  |             |             |             |
|          | is a        |             |             |             |
|          | wrapper     |             |             |             |
|          | API. You    |             |             |             |
|          | must supply |             |             |             |
|          | a library   |             |             |             |
|          | that        |             |             |             |
|          | implements  |             |             |             |
|          | the         |             |             |             |
|          | cr          |             |             |             |
|          | yptographic |             |             |             |
|          | operations, |             |             |             |
|          | such as     |             |             |             |
|          | BSAFE from  |             |             |             |
|          | RSA         |             |             |             |
|          | Security.   |             |             |             |
|          | This is     |             |             |             |
|          | also known  |             |             |             |
|          | as the      |             |             |             |
|          | "bottom     |             |             |             |
|          | layer" API, |             |             |             |
|          | or BLAPI.   |             |             |             |
+----------+-------------+-------------+-------------+-------------+
| jar      | Provides    | Port        | lib/jar     | jar-ds.h,   |
|          | support for |             |             | jar.h,      |
|          | reading and |             |             | jarfile.h   |
|          | writing     |             |             |             |
|          | data in     |             |             |             |
|          | Java        |             |             |             |
|          | Archive     |             |             |             |
|          | (jar)       |             |             |             |
|          | format,     |             |             |             |
|          | including   |             |             |             |
|          | zlib        |             |             |             |
|          | c           |             |             |             |
|          | ompression. |             |             |             |
+----------+-------------+-------------+-------------+-------------+
| nss      | Provides    | Above High  | lib/nss     | nss.h       |
|          | high-level  | Cert, High  |             |             |
|          | init        | Key         |             |             |
|          | ialiazation |             |             |             |
|          | and         |             |             |             |
|          | shutdown of |             |             |             |
|          | security    |             |             |             |
|          | services.   |             |             |             |
|          | Sp          |             |             |             |
|          | ecifically, |             |             |             |
|          | this        |             |             |             |
|          | library     |             |             |             |
|          | provides    |             |             |             |
|          | NSS_Init()  |             |             |             |
|          | for         |             |             |             |
|          | e           |             |             |             |
|          | stablishing |             |             |             |
|          | default     |             |             |             |
|          | c           |             |             |             |
|          | ertificate, |             |             |             |
|          | key, module |             |             |             |
|          | databases,  |             |             |             |
|          | and         |             |             |             |
|          | i           |             |             |             |
|          | nitializing |             |             |             |
|          | a default   |             |             |             |
|          | random      |             |             |             |
|          | number      |             |             |             |
|          | generator.  |             |             |             |
|          | NSS         |             |             |             |
|          | _Shutdown() |             |             |             |
|          | closes      |             |             |             |
|          | these       |             |             |             |
|          | databases,  |             |             |             |
|          | to prevent  |             |             |             |
|          | further     |             |             |             |
|          | access by   |             |             |             |
|          | an          |             |             |             |
|          | a           |             |             |             |
|          | pplication. |             |             |             |
+----------+-------------+-------------+-------------+-------------+
| pk11wrap | Provides    | Crypto      | l           | pk11func.h, |
|          | access to   | Wrapper     | ib/pk11wrap | secmod.h,   |
|          | PKCS #11    |             |             | secmodt.h   |
|          | modules,    |             |             |             |
|          | through a   |             |             |             |
|          | unified     |             |             |             |
|          | interface.  |             |             |             |
|          | The         |             |             |             |
|          | pkcs11wrap  |             |             |             |
|          | library     |             |             |             |
|          | provides    |             |             |             |
|          | functions   |             |             |             |
|          | for         |             |             |             |
|          | select      |             |             |             |
|          | ing/finding |             |             |             |
|          | PKCS #11    |             |             |             |
|          | modules and |             |             |             |
|          | slots. It   |             |             |             |
|          | also        |             |             |             |
|          | provides    |             |             |             |
|          | functions   |             |             |             |
|          | that invoke |             |             |             |
|          | operations  |             |             |             |
|          | in selected |             |             |             |
|          | modules and |             |             |             |
|          | slots, such |             |             |             |
|          | as key      |             |             |             |
|          | selection   |             |             |             |
|          | and         |             |             |             |
|          | generation, |             |             |             |
|          | signing,    |             |             |             |
|          | encryption  |             |             |             |
|          | and         |             |             |             |
|          | decryption, |             |             |             |
|          | etc.        |             |             |             |
+----------+-------------+-------------+-------------+-------------+
| pkcs12   | Provides    | PKCS #12    | lib/pkcs12  | pkcs12t.h,  |
|          | functions   |             |             | pkcs12.h,   |
|          | and types   |             |             | p12plcy.h,  |
|          | for         |             |             | p12.h,      |
|          | encoding    |             |             | p12t.h      |
|          | and         |             |             |             |
|          | decoding    |             |             |             |
|          | PKCS #12    |             |             |             |
|          | data. PKCS  |             |             |             |
|          | #12 can be  |             |             |             |
|          | used to     |             |             |             |
|          | encode      |             |             |             |
|          | keys, and   |             |             |             |
|          | ce          |             |             |             |
|          | rtificates, |             |             |             |
|          | for export  |             |             |             |
|          | or import   |             |             |             |
|          | into other  |             |             |             |
|          | ap          |             |             |             |
|          | plications. |             |             |             |
+----------+-------------+-------------+-------------+-------------+
| pkcs7    | Provides    | PKCS #7     | lib/pkcs7   | secmime.h,  |
|          | functions   |             |             | secpkcs7.h, |
|          | and types   |             |             | pkcs7t.h    |
|          | for         |             |             |             |
|          | encoding    |             |             |             |
|          | and         |             |             |             |
|          | decoding    |             |             |             |
|          | encrypted   |             |             |             |
|          | data in     |             |             |             |
|          | PKCS #7     |             |             |             |
|          | format. For |             |             |             |
|          | example,    |             |             |             |
|          | PKCS #7 is  |             |             |             |
|          | used to     |             |             |             |
|          | encrypt     |             |             |             |
|          | certificate |             |             |             |
|          | data to     |             |             |             |
|          | exchange    |             |             |             |
|          | between     |             |             |             |
|          | ap          |             |             |             |
|          | plications, |             |             |             |
|          | or to       |             |             |             |
|          | encrypt     |             |             |             |
|          | S/MIME      |             |             |             |
|          | message     |             |             |             |
|          | data.       |             |             |             |
+----------+-------------+-------------+-------------+-------------+
| softoken | Provides a  | PKCS #11:   | l           | keydbt.h,   |
|          | software    | imp         | ib/softoken | keylow.h,   |
|          | imp         | lementation |             | keytboth.h, |
|          | lementation |             |             | keytlow.h,  |
|          | of a PKCS   |             |             | secpkcs5.h, |
|          | #11 module. |             |             | pkcs11.h,   |
|          |             |             |             | pkcs11f.h,  |
|          |             |             |             | pkcs11p.h,  |
|          |             |             |             | pkcs11t.h,  |
|          |             |             |             | pkcs11u.h   |
+----------+-------------+-------------+-------------+-------------+
| ssl      | Provides an | SSL         | lib/ssl     | ssl.h,      |
|          | imp         |             |             | sslerr.h,   |
|          | lementation |             |             | sslproto.h, |
|          | of the SSL  |             |             | preenc.h    |
|          | protocol    |             |             |             |
|          | using NSS   |             |             |             |
|          | and NSPR.   |             |             |             |
+----------+-------------+-------------+-------------+-------------+
| secutil  | Provides    | Utility for | lib/util    | base64.h,   |
|          | utility     | any Layer   |             | ciferfam.h, |
|          | functions   |             |             | nssb64.h,   |
|          | and data    |             |             | nssb64t.h,  |
|          | types used  |             |             | nsslocks.h, |
|          | by other    |             |             | nssrwlk.h,  |
|          | libraries.  |             |             | nssrwlkt.h, |
|          | The library |             |             | portreg.h,  |
|          | supports    |             |             | pqgutil.h,  |
|          | base-64     |             |             | secasn1.h,  |
|          | encodin     |             |             | secasn1t.h, |
|          | g/decoding, |             |             | seccomon.h, |
|          | re          |             |             | secder.h,   |
|          | ader-writer |             |             | secdert.h,  |
|          | locks, the  |             |             | secdig.h,   |
|          | SECItem     |             |             | secdigt.h,  |
|          | data type,  |             |             | secitem.h,  |
|          | DER         |             |             | secoid.h,   |
|          | encodin     |             |             | secoidt.h,  |
|          | g/decoding, |             |             | secport.h,  |
|          | error types |             |             | secrng.h,   |
|          | and         |             |             | secrngt.h,  |
|          | numbers,    |             |             | secerr.h,   |
|          | OID         |             |             | watcomfx.h  |
|          | handling,   |             |             |             |
|          | and secure  |             |             |             |
|          | random      |             |             |             |
|          | number      |             |             |             |
|          | generation. |             |             |             |
+----------+-------------+-------------+-------------+-------------+

.. _Naming_Conventions:

Naming Conventions
------------------

This section describes the rules that (ideally) should be followed for
naming and identifying new files, functions, and data types.

.. _CVS_ID:

CVS ID
~~~~~~

Each file should include a CVS ID string for identification. The
preferred format is:

::

           "@(#) $RCSfile: nss-guidelines.html,
               v $ $Revision: 48936 $ $Date: 2009-08-11 07:45:57 -0700 (Tue, 11 Aug 2009) $ $Name$"

You can put the string in a comment or in a static char array. Use
#ifdef DEBUG to include the array in debug builds only. The advantage of
using an array is that you can use strings(1) to pull the ID tags out of
a (debug) compiled library. You can even put them in header files; the
header files are protected from double inclusion. The only catch is that
you have to determine the name of the array.

Here is an example from lib/base/baset.h:

::

       #ifdef DEBUG
       static const char BASET_CVS_ID[] = "@(#) $RCSfile: nss-guidelines.html,
               v $ $Revision: 48936 $ $Date: 2009-08-11 07:45:57 -0700 (Tue, 11 Aug 2009) $ $Name$";
       #endif /* DEBUG */

The difference, between this and Id, is that Id has some useless
information (*every* file is "experimental"), and doesn't have Name.
Name is the tag (if any) from which this file was pulled. If you're good
with tagging your releases, and then checking out (or exporting!) from
the tag for your build, this saves you from messing around with specific
files revision numbers.

.. _Header_Files:

Header Files
~~~~~~~~~~~~

| We have a preferred naming system for include files. We had been
  moving towards one, for some time, but for the NSS 3.0 project we
  finally wrote it down.
|  

========================= =========== ===================
\                         Data Types  Function Prototypes
Public                    nss____t.h  nss____.h
Friend (only if required) nss____tf.h nss____f.h
NSS-private               \____t.h    \____.h
Module-private            \____tm.h   \____m.h
========================= =========== ===================

The files on the right include the files to their left; the files in a
row include the files directly above them. Header files always include
what they need; the files are protected against double inclusion (and
even double opening by the compiler).

.. note::

   Note: It's not necessary all eight files exist. Further, this is a
   simple ideal, and often reality is more complex.

We would like to keep names to 8.3, even if we no longer support win16.
This usually gives us four characters to identify a module of NSS.

In short:

#. Header files for consumption outside NSS start with "nss."
#. Header files with types have a trailing "t", header files with
   prototypes don't. "extern" declarations of data also go in the
   prototypes files.
#. "Friend" headers are for things that we really wish weren't used by
   non-NSS code, but which are. Those files have a trailing "f," and
   their use should be deprecated.
#. "Module" headers are for things used only within a specific subset of
   NSS; things which would have been "static" if we had combined
   separate C source files together. These header files have a trailing
   "m."

.. _Functions_and_Types:

Functions and Types
~~~~~~~~~~~~~~~~~~~

There are a number of ways of doing things in our API, as well as naming
decisions for functions that can affect the usefulness of our library.
If our library is self-consistent with how we accomplish these tasks, it
makes it easier for the developer to learn how to use our functions.
This section of the document should grow as we develop our API.

First some general rules. These rules are derived from existing coding
practices inside the security library, since consistency is more
important than debates about what might look nice.

#. **Public functions** should have the form LAYER_Body(), where LAYER
   is an all caps prefix for what layer the function lives in, and Body
   is concatenated English words, where the beginning letter of each
   word is capitalized (also known as
   `CamelCase <https://en.wikipedia.org/wiki/Camel_case>`__). For
   Example: LAYER_CapitalizedEnglishWords() or
   CERT_DestroyCertificate().
#. **Data types** and typdefs should have the Form LAYERBody, with the
   same definitions for LAYER as public functions, and Body in camel
   case English words. For example: LAYERCapitalizedEnglishWords or
   SECKEYPrivateKey.
#. **Structures** should have the same name as their typedefs, with the
   string Str added to the end. For example
   LAYERCapitalizedEnglishWordsStr or SECKEYPrivateKeyStr.
#. **Private functions** should have the form layer_Body(), where layer
   is the all lower case prefix for what layer the function lives in,
   and Body is camel case English words. Private functions include
   functions that may be "public" in a C sense, but are not exported out
   of the layer. For example: layer_CapitalizedEnglishWords() or
   pk11_GenerateKeyID().
#. **Public macros** should have the form LAYER_BODY(), where LAYER is
   an all caps prefix for what layer the macro lives in, and BODY is
   English words, all in upper case, separated by underscores. For
   example: LAYER_UPPER_CASE_ENGLISH_WORDS() or
   DER_CONVERT_BIT_STRING().
#. **Structure members** for exposed data structures should have the
   form capitalizedEnglishWords (the first letter uncapitalized). For
   example: PK11RSAGenParamsStr.\ **keySizeInBits**
#. For **members of enums**, our current API has no standard (typedefs
   for enums should follow the Data types standard). There seem to be
   three reasonable options:

   #. Enum members have the same standard as exposed data structure
      members.
   #. Enum members have the same standard as data types.
   #. Enum members have the same standard as public macros (minus the
      '()' of course).

   Options 2 and 3 are the more preferred options. Option 1, currently
   the most common used for enums, actually creates namespace pollution.
#. **Callback functions**, and functions used in function tables, should
   have a typedef used to define the complete signature of the given
   function. Function typedefs should have the following format:
   LAYERBody(), with the same definitions for LAYER as public functions,
   and Body is camel case English words. For example:
   LAYERCapitalizedEnglishWords or SECKEYPrivateKey.

.. _Opaque_Data_Structures:

Opaque Data Structures
----------------------

There are many data structures in the security library whose definition
is effectively private, to the portion of the security library that
defines and operates on those data structures. External code does not
have access to these definitions. The goal here is to increase the
opaqueness of these structures. This will allow us to modify the size,
definition, and format of these data structures in future releases,
without interfering with the operation of existing applications that use
the security library.

The first task is to ensure the data structure definition lives in a
private header file, while its declaration lives in the public. The
current standard in the security library is to typedef the data
structure name, the easiest way to accomplish this would be to add the
typedef to the public header file.

For example, for the structure SECMyOpaqueData you would add:

::

       typedef struct SECMyOpaqueDataStr SECMyOpaqueData;

and add the actual structure definition to the private header file. In
this same example:

::

       struct SECMyOpaqueDataStr {
           unsigned long myPrivateData1;
           unsigned long myPrivateData2;
           char *myName;
       };

the second task is to determine if individual data fields, within the
data structure, are part of the API. One example may be the peerCert
field, in an SSL data structure. Accessor functions, for these data
elements, should be added to the API.

There can be legitimate exceptions to this 'make everything opaque'
rule. For example, in container structures, such as SECItem, or maybe
linked list data structures. These data structures need to be examined
on a case by case basis, to determine if

#. They are truly stable and will not change in future release
#. It is necessary for the callers of the API to know the size of these
   structures, as they may allocate new ones and pass them down.

.. _Memory_Allocation_with_Arenas:

Memory Allocation with Arenas
-----------------------------

This section discusses memory allocation using arenas. NSS code uses
arenas, and this section explains some of the improvements we are
making.

NSS makes use of traditional memory allocation functions, wrapping
NSPR's PR_Alloc in a util function called PORT_Alloc. Though NSS makes
further use of an NSPR memory-allocation facility which uses 'Arenas'
and 'ArenaPools'. This was added via javascript; a fast, lightweight,
non-thread-safe (though 'free-threaded') implementation.

Experience shows that users of the security library expect arenas to be
threadsafe, so we added locking, and other useful changes.

-  There has always been confusion as to the difference between Arenas
   and ArenaPools. We will simplify down to one logical 'memory bucket'
   type. Consensus called this type NSSArena.
-  We have lots of code which takes an optional arena pointer, using the
   arena if there is one, or alternatively the heap if there isn't.
   Therefore, we wrap that logic into the allocators. Knowing what to
   then free does takes discipline not to leak memory, but it simplifies
   things a lot. Also, the implementation of free works (doesn't crash),
   no matter if from an arena, or the heap, as long as from our
   allocators. Combined with purify, this also helps us catch cases
   where things being allocated by one allocator are freed by another,
   which is a common Windows pitfall.
-  The security code often wants to be sure to zero memory, when it's
   being freed; we'll add it to the primitives to deal with.

The ARENA_THREADMARK preprocessor definition (default in debug builds),
and code it encloses, will add some checking for the following
situation:

#. Thread A marks the arena, and allocates some memory from it.
#. Thread B allocates some memory from the arena.
#. Thread A releases the arena back to the mark.
#. Thread B now finds itself with a pointer to released data.
#. Some thread -- doesn't matter which -- allocates some data from the
   arena; this may overlap the chunk thread B has.
#. Boom!

Threadmark code notes the thread ID, whenever an arena is marked, and
disallows any allocations or marks by any other thread. (Frees are
allowed.)

The ARENA_DESTRUCTOR_LIST preprocessor definition, and the code it
encloses, are an effort to make the following work together:

#. Arenas, letting you allocate stuff and then removing them all at once
#. Lazy creation of pure-memory objects from ASN.1 blobs, for example
   use of NSSPKIXCertificate doesn't drag all the code in for all
   constituent objects, unless they're actually being used
#. Our agressive pointer-tracking facility

All these are useful, but they don't combine well. Now some of the
pointer-tracking pressure has eased off, we can drop its use when it
becomes too difficult.

Many routines are defined to take an NSSArena \*arenaOpt argument. This
means if an arena is specified (non-null), it is used, otherwise (null)
the routine uses the heap. You can think of the heap as a default arena
you can't destroy.

.. _Error_Handling:

Error Handling
--------------

NSS 3.0 introduces the concept of an error stack. When something goes
wrong, the call stack unwinds, with routines returning an error
indication. Each level which flags a problem, adds its own error number
to the stack. At the bottom of the stack is the fundamental error, for
example: file not found, and on top is an error precisely relating to
what you are doing.

.. note::

   Note: Error stacks are vertical, and never horizontal. If multiple
   things go wrong simultaneously, and you want to report them all, use
   another mechanism.

Errors, though not integers, are done as external constants, instead of
preprocessor definitions. This is so any additional error doesn't
trigger the entire tree to rebuild. Likewise, the external references to
errors are made in the prototypes files, with the functions which can
return them.  Error stacks are thread-private.

The usual semantic is that public routines clear the stack first,
private routines don't. Usually, every public routine has a private
counterpart, and the implementation of the public routine looks like
this:

::

       NSSImplement rv *
       NSSType_Method
       (
           NSSType *t,
           NSSFoo *arg1,
           NSSBar *arg2
       )
       {
           nss_ClearErrorStack();

           #ifdef DEBUG
               if( !nssFoo_verifyPointer(arg1) ) return (rv *)NULL;
               if( !nssBar_verifyPointer(arg2) ) return (rv *)NULL;
           #endif /* DEBUG */

           return nssType_Method(t, arg1, arg2);
       }

Aside from error cases, all documented entry points should check
pointers in a debug, wherever possible. Pointers to user-supplied
buffers, and templates, should be checked against NULL. Pointers to
context-style functions should be checked using special debug macros.
These macros only define code when DEBUG is turned on, providing a way
for systems to register, deregister, and check valid pointers.

SECPORT_DECL_PTR_CLASS(*classname*, *size*) - declare a class of
pointers (labelled *classname*) this object file needs to check. This
class is local only to this object file. *Size* is the expected number
of pointers of type *classname*.

SECPORT_DECL_GLOBAL_PTR_CLASS(*classname*, *size*) - same as above
except *classname* can be used in other object files.

SECPORT_ADD_POINTER(*classname*, *pointer*) - Add *pointer* as a valid
pointer for class\ *classname*. This is usually called by a Create
function.

SECPORT_VERIFY_POINTER(*classname*, *pointer*, *secError*,
*returnValue*)- Check if a given *pointer* really belongs to the
requested class. If it doesn't set the error *secError* and return the
value *returnValue*.

SECPORT_REMOVE_POINTER(*classname*, *pointer*) - Remove a pointer from
the valid list. Usually called by a destroy function.

Finally, error logging should be added an documented when debug is
turned on. Interfaces for these are in NSPR.

.. _Thread_Safety:

Thread Safety
-------------

Code developed using the NSS APIs needs to make use of thread safety
features. First to examine is **object creation** and **deletion**.

Object creation is usually not a problem. No other threads have access
to allocated memory just created. Exceptions to this include objects
which are created on the fly, or as global objects.

Deletion, on the other hand, may be trickier. Threads may be referencing
the object at the same time a another thread tries to delete it. The
semantics depend on the way the application uses the object, also how
and when the application wants to destroy it. For some data structures,
this problem can be removed by protected reference counting. The object
does not disappear until all users have released it.

Next we examine **global data**, including function local static
structures. Just initialized, and never to be changed global data, does
not need to protection from mutexes. We should also determine if global
data should be moved to a session context (see `session
context <#sessioncontext>`__ and `global effects <#globaleffects>`__
below).

.. note::

   Note: Permanent objects, like data in files, databases, tokens, etc.
   should be treated as global data. Global data which is changed
   rarely, should be protected by reader/writer locks.

Aside from global data, **allocated data** that gets modified needs to
be examined. Data that's just been allocated, within a function, is safe
to modify. No other code has access to that data pointer. Once that data
pointer is made visible to the 'outside', either by returning the
pointer, or attaching the pointer to an existing visible data structure,
access to the data should be protected. Data structures that are read
only, like SECKEYPublicKeys or PK11SymKeys, need not be protected.

Many of the data structures in the security code contain some sort of
**session state** or **session context**. These data structures may be
accessed without data protection as long as:

#. This semantic is documented in the functions which use these data
   structures.
#. These data structures are used for single streams, and not reused.

Examples of these data in structures may include things like the PKCS #7
ContentInfo structure. Example code should be included in the
documentation, to show how to safely use these data objects.

A major type of global and allocated data that should be examined is
various **data on lists**. Queued, linked, and hash table stored objects
should be examined with special care. Make sure adding, removing,
accessing, and destroying these objects are all safe operations.

There are a number of strategies, and entire books about how to safely
access data on lists. Some simple strategies and their issues:

-  **Use hash tables:** Hash table lookups are usually quite fast,
   limiting the contention on the lock. This is best for large lists of
   objects. Be sure to calculate the hash value first, then only lock
   over the hash table value itself. Be sure to increment the reference
   count, on the returned object, before unlocking. Examples of hash
   tables can be found in security/nss/lib/certdb/pcertdb.c
-  **Lock over the entire search:** For small linked listed, queues, or
   arrays, you can lock over the entire search. This strategy is best
   when lists are short, or even better if lists are relatively read
   only (they don't change very often) and using reader/writer locks.
-  **Copy the linked list:** Instead of operating on the global list,
   you can copy the list. This also requires small lists.
-  **Lock over single element with retry:** For medium sized lists, you
   can secure the reference to each element, complete a test, then
   detect if the given element has been removed from the list. In the
   case of removal, the search can either be either restarted, or
   terminated. This method is a more complicated than the other methods:
   requiring the calling of search code tolerant to often repeated
   element inspection.
-  Examples of the previous strategies can be found in
   `security/nss/lib/pk11wrap/pk11slot.c. <https://searchfox.org/mozilla-central/source/security/nss/lib/pk11wrap/pk11slot.c>`__

Where possible use the NSPR list primitives. From these you can even set
up SECUtil style thread-safe lists that use some combination of the
above strategies.

In order to be fully thread safe, your code must understand the
semantics of the **service functions** it calls, and whether they are
thread safe. For now, we should internally document which service
functions we call, and how we expect them to behave in a threaded
environment.

Finally, from an API point of view, we should examine functions which
have **global effects**. Functions like XXX_SetDefaultYYY(); should not
operate on global data, particularly if they may be called multiple
times, to provide different semantics for different operations. For
example, the following should be avoided :

-  SEC_SetKey(keyForOperation);
   SEC_Encrypt(Data,Length);

Instead, a context handle should be created, and the SEC_SetKey()
function, above, made on that handle. Fortunately most of the existing
API has the correct semantics.

The exception to this global effects rule may be functions which set
global state for an application at initialization time.

.. _MethodsFunctions_Design:

Methods/Functions Design
------------------------

.. _Init_Shutdown_Functions:

Init, Shutdown Functions
~~~~~~~~~~~~~~~~~~~~~~~~

If a layer has some global initialization tasks, which need to be
completed before the layer can be used, that layer should supply an
initialization function of the form LAYER_Init(). If an initialization
function is supplied, a corresponding LAYER_Shutdown() function should
also be supplied. LAYER_INIT() should increment a count of the number of
times it is called, and LAYER_Shutdown() should decrement that count,
and shutdown when the count reaches '0'.

.. _Open_Close_Functions:

Open, Close Functions
~~~~~~~~~~~~~~~~~~~~~

Open functions should have a corresponding close function. Open and
close function are not reference counted, like init and shutdown
functions.

.. _Creation_Functions:

Creation Functions
~~~~~~~~~~~~~~~~~~

In general, data objects should all have functions which create them.
These functions should have the form
LAYER_CreateDataType[FromDataType](). For instance generating a new key
would change from PK11_KeyGen() to PK11_CreateSymKey().

.. _Destruction_Functions:

Destruction Functions
~~~~~~~~~~~~~~~~~~~~~

In the security library we have 3 different ways of saying 'get rid of
this data object': Free, Delete, and Destroy.

It turns out there are several different semantics of getting rid of a
data object too:

#. decrement the reference count, and when the object goes to '0'
   free/delete/destroy it
#. destroy it right now, this very instance, not matter what
#. make any permanent objects associated with this data object go away
#. a combination of 1 and 3, or 2 and 3

Unfortunately, within the security library Free, Delete, and Destroy are
all used interchangeably, for all sorts of object destruction. For
instance, CERT_DestroyCertificate() is type 1, PK11_DestroySlot() is
type 2, and PK11_DestroyTokenObject() is type 3.

.. note::

   Note: In non-reference counted functions, types 1 and 2 are the same.

We are standardizing on the following definitions:

Destroy - means #1 for reference counted objects, #2 for non reference
counted objects.

Delete - means #3.

This has the advantage of *not* surfacing the reference countedness of a
data object. If you own a pointer to an object, you must always destroy
it. There is no way to destroy an object by bypassing it's reference
count. Also, the signature of public destruction functions do not have
the 'freeit' PRBool, since the structures being freed are opaque.

.. _Dup_Copy_and_Reference_Functions:

Dup, Copy, and Reference Functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Functions that return a new reference or copy of a given object should
have the form LAYER_DupDataType(). For instance, CERT_DupCertifiate()
will remain the same, but PK11_ReferenceSlot() will become
PK11_DupSlot(), and PK11_CloneContext() will become PK11_DupContext().

.. _Search_Functions:

Search Functions
~~~~~~~~~~~~~~~~

There are several different kinds of searches done via the security
library. The first is a search for exactly one object, meeting a given
criteria. These types of searches include CERT_FindCertByDERCert(),
PK11_FindAnyCertFromDERCert(), PK11_FindKeyByCert(), PK11_GetBestSlot().
These functions should all have the form
LAYER_FindDataType[ByDataType]().

The second kind of search, looks for all the objects that match a given
criteria. These functions operate on a variety of levels. Some return
allocated arrays of data, some return linked lists of data, others use
callbacks to return data elements one at a time. Unfortunately, there
are good reasons to maintain all these types. So here are some
guidelines to make them more manageable:

All callback operating search functions should be in the low level of
the API, if exposed at all. Developers dealing with SSL and PKCS #7
layers should not have to see any of these functions. These functions
should have the form LAYER_TraverseStorageObjectOrList().

List and Array returning functions should be available at the higher
layers of the API, most wrapping  LAYER_Traverse() functions. They
should have the form LAYER_LookupDataType{List|Array}[ByDataType]().

.. _Accesssor_Functions:

Accesssor Functions
~~~~~~~~~~~~~~~~~~~

Accessor Functions should take the following formats:

| LAYER_DataTypeGetElement() -- Get a specific element of a data
  structure.
| LAYER_DataTypeSetElement() -- Set a specific element of a data
  structure.
| LAYER_DataTypeExtractDataType() -- Get a pointer to the second data
  type which was derived for elements of the first data type.

Examples: PK11_SlotGetSeries(), PK11_SymKeyGetSeries(),
CERT_CertificateExtractPublicKey()

.. _Parameter_ordering:

Parameter ordering
~~~~~~~~~~~~~~~~~~

Most functions will have a 'Natural' ordering for parameters. To keep
consistency we should have some minimal parameter consistency. For most
functions, they can be seen as operating on a particular object. This
object, that the function is operating on, should come first. For
instance, in most SSL functions this is the NSPR Socket, or the SSL
Socket structure: Update, final, encrypt, decrypt type functions
operating on their state contexts, etc.

All encrypt and decrypt functions, which return data inline, should have
a consistent signature:

::

   SECStatus MY_FunctionName(MyContext *context,
                         unsigned char *outBuf,
                          SECBufferLen *outLen,
                          SECBufferLenmaxOutLength,
                         unsigned char *inBuf,
                          SECBufferLeninLen)

Encrypt and decrypt like functions which have different properties,
additional parameters, callbacks, etc., should insert their additional
parameters between the context (first parameter) and the output buffer.

All hashing update, MACing update, and encrypt/decrypt functions which
act like filters should have a consistent signature:

::

   SECStatus PK11_DigestOp(PK11Context *context,
                         unsigned char *inBuf,
                          SECBufferLeninLen)

Functions like these which have different properties, for example,
additional parameters, callbacks, etc., should insert their additional
parameters between the context (first parameter) and the input buffer.

Within your layer, multiple similar functions should have consistent
parameter order.

.. _Callback_Functions:

Callback Functions
~~~~~~~~~~~~~~~~~~

Callback functions should all contain an opaque parameter (void \*) as
their first argument, passed by the original caller. Callbacks which are
set, like SSL callbacks, should have defaults which provide generally
useful semantics.
