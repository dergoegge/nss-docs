====================
NSS Tools dbck-tasks
====================
.. _NSS_Security_Tools_dbck_Tasks:

NSS Security Tools: dbck Tasks
------------------------------

Newsgroup:
`mozilla.dev.tech.crypto <news://news.mozilla.org/mozilla.dev.tech.crypto>`__

.. _Task_List:

Task List
~~~~~~~~~

#. In analyze mode, there should be an option to create a file
   containing a graph of the certificate database without any
   information about the user's certificates (no common names, email
   addresses, etc.). This file could be mailed to a mail alias to assist
   in finding the source of database corruption.
#. The dbck tool should be able to repair a currupted database. There
   should be command-line options and, perhaps, an interactive mode to
   allow determine which certificates to keep.
#. The dbck tool should be able to update a databa
