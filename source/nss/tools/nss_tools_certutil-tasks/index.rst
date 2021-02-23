.. _Mozilla_Projects_NSS_tools_NSS_Tools_certutil-tasks:

========================
NSS Tools certutil-tasks
========================
.. _NSS_Security_Tools_certutil_Tasks:

NSS Security Tools: certutil Tasks
==================================

| Newsgroup:
  `mozilla.dev.tech.crypto <news://news.mozilla.org/mozilla.dev.tech.crypto>`__

.. _Task_List:

Task List
=========

#. Better error reporting. Most certutil errors provide no detail.
   Mistakes with command-line options just print a usage message.
#. Improve certificate listings. Allow for sorting by name and trust.
   Sorting by trust will return CA certs first.
#. Allow listing and lookup of keys by index and nickname.
#. Improve coherence of key and certificate nicknames.
#. Remove keys "stranded" without a certificate (except for the imminent
   (????) encryption key for password files).
#. Support importing keys from a file.
#. Improve hardware token support.
#. (bugfix) Some certificate extensions cause certutil to crash.
#. (bugfix) Certificate entries require a serial number; one should be
   generated automatically if not provided.
#. (bugfix) Null password is given to new ``key3.db``; should prompt
   user for an initial password.
#. (bugfix) Listing provate keys does not work: requires password
   authentication.
#. (bugfix) Listing certificate extensions has typos and does not
   provide much information.