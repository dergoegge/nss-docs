.. _Mozilla_Projects_NSS_New_NSS_Samples:

===============
New NSS Samples
===============
.. _New_NSS_Sample_Code:

New NSS Sample Code
-------------------

This collection of sample code demonstrates how NSS can be used for
cryptographic operations, certificate handling, SSL, etc. It also
demonstrates some best practices in the application of cryptography.

| 
| These new examples are a work in progress. See
  https://bugzilla.mozilla.org/show_bug.cgi?id=490238

How to download the samples:

.. code:: bz_comment_text

   hg clone https://hg.mozilla.org/projects/nss; cd nss; hg update SAMPLES_BRANCH

Samples list:

#. :ref:`Mozilla_Projects_NSS_NSS_Sample_Code_Sample1_-_Hashing`
#. :ref:`Mozilla_Projects_NSS_NSS_Sample_Code_Sample2_-_Initialize_NSS_Database`
#. :ref:`Mozilla_Projects_NSS_Encrypt_Decrypt_MAC_Using_Token`
#. :ref:`Mozilla_Projects_NSS_Encrypt_Decrypt_MAC_Keys_As_Session_Objects`
#. :ref:`Mozilla_Projects_NSS_NSS_Sample_Code_Enc_Dec_MAC_Output_Plblic_Key_as_CSR`
#. :ref:`Mozilla_Projects_NSS_NSS_Sample_Code_Enc_Dec_MAC_Using_Key_Wrap_CertReq_PKCS10_CSR`

Common code used by these samples:

#. :ref:`Mozilla_Projects_NSS_NSS_Sample_Code_Utiltiies_for_nss_samples`

Thanks are due to Shailendra Jain, Mozilla Community member, who is the
principal author of these samples.