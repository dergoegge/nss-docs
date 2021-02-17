.. _Mozilla_Projects_NSS_Building:

============
Building NSS
============
.. _Introduction:

Introduction
------------

This page has detailed information on how to build NSS. Because NSS is a cross-platform library that
builds on many different platforms and has many options, it may be complex to build. Please read
these instructions carefully before attempting to build.

.. _Build_environment:

Build environment
-----------------

NSS needs a C and C++ compiler.  It has minimal dependencies, including only standard C and C++
libraries, plus `zlib <https://www.zlib.net/>`__.

For building, you also need `make <https://www.gnu.org/software/make/>`__.  Ideally, also install
`gyp <https://gyp.gsrc.io/>`__ and `ninja <https://ninja-build.org/>`__ and put them on your path. 
This is recommended, as the build is faster and more reliable.

.. _Windows:

Windows
~~~~~~~

NSS compilation on Windows uses the same shared build system as Mozilla Firefox. You must first
install the `Windows
Prerequisites </en-US/docs/Mozilla/Developer_guide/Build_Instructions/Windows_Prerequisites>`__,
including **MozillaBuild**.

You can also build NSS on the Windows Subsystem for Linux, but the resulting binaries aren't usable
by other Windows applications.

.. _Get_the_source:

Get the source
--------------

NSS and NSPR use Mercurial for source control like other Mozilla projects. To check out the latest
sources for NSS and NSPR--which may not be part of a stable release--use the following commands:

::

   hg clone https://hg.mozilla.org/projects/nspr
   hg clone https://hg.mozilla.org/projects/nss

To get the source of a specific release, see `NSS
Releases </en-US/docs/Mozilla/Projects/NSS/NSS_Releases>`__.

.. _Build:

Build
-----

Build NSS using our build script:

::

   nss/build.sh

This builds both NSPR and NSS.

.. _Build_with_make:

Build with make
---------------

Alternatively, there is a ``make`` target called "nss_build_all", which produces a similar result. 
This supports some alternative options, but can be a lot slower.

::

   make -C nss nss_build_all USE_64=1

The make-based build system for NSS uses a variety of variables to control the build. Below are some
of the variables, along with possible values they may be set to.

BUILD_OPT
   0
      Build a debug (non-optimized) version of NSS. *This is the default.*
   1
      Build an optimized (non-debug) version of NSS.

USE_64
   0
      Build for a 32-bit environment/ABI. *This is the default.*
   1
      Build for a 64-bit environment/ABI. *This is recommended.*

USE_ASAN
   0
      Do not create an `AddressSanitizer <http://clang.llvm.org/docs/AddressSanitizer.html>`__
      build. *This is the default.*
   1
      Create an AddressSanitizer build.

.. _Unit_testing:

Unit testing
------------

NSS contains extensive unit tests.  Scripts to run these are found in the ``tests`` directory.  Run
the standard suite by:

::

   HOST=localhost DOMSUF=localdomain USE_64=1 nss/tests/all.sh

.. _Unit_test_configuration:

Unit test configuration
~~~~~~~~~~~~~~~~~~~~~~~

| NSS tests are configured using environment variables.
| The scripts will attempt to infer values for ``HOST`` and ``DOMSUF``, but can fail. Replace
  ``localhost`` and ``localdomain`` with the hostname and domain suffix for your host. You need to
  be able to connect to ``$HOST.$DOMSUF``.

If you don't have a domain suffix you can add an entry to ``/etc/hosts`` (on
Windows,\ ``c:\Windows\System32\drivers\etc\hosts``) as follows:

::

   127.0.0.1 localhost.localdomain

Validate this opening a command shell and typing: ``ping localhost.localdomain``.

Remove the ``USE_64=1`` override if using a 32-bit build.

.. _Test_results:

Test results
~~~~~~~~~~~~

Running all tests can take a considerable amount of time.

Test output is stored in ``tests_results/security/$HOST.$NUMBER/``.  The file ``results.html``
summarizes the results, ``output.log`` captures all the test output.

Other subdirectories of ``nss/tests`` contain scripts that run a subset of the full suite. Those can
be run directly instead of ``all.sh``, which might save some time at the cost of coverage.