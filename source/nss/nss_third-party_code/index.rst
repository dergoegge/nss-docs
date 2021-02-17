====================
NSS Third-Party Code
====================
This is a list of third-party code included in the NSS repository,
broken into two lists: Code that can be compiled into the NSS libraries,
and code that is only used for testing.

Note that not all code that can be compiled into the NSS libraries
necessarily *is*. Often this is configurable at build time, with various
trade-offs.

.. _Compiled_In:

Compiled In
-----------

-  sqlite [/lib/sqlite]
-  BerkleyDB [/lib/dbm]
-  zlib [/lib/zlib]
-  libjar [/lib/jar]
-  Fiat-Crypto, Ring [lib/freebl/ecl]

.. _Used_for_Tests:

Used for Tests
--------------

-  GTest [/gtests]

.. _Downloaded_by_certain_test_tooling:

Downloaded by certain test tooling
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  TLSFuzzer [/tests/tlsfuzzer]
-  BoGo tests [/tests/bogo]
-  BoringSSL, OpenSSL [/tests/interop]
