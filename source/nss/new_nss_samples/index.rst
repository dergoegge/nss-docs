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

#. `Sample Code 1:
   Hashing </en-US/docs/Mozilla/Projects/NSS/NSS_Sample_Code/Sample1_-_Hashing>`__
#. `Sample Code 2: Init NSS
   database </en-US/docs/Mozilla/Projects/NSS/NSS_Sample_Code/Sample2_-_Initialize_NSS_Database>`__
#. `Sample Code 3: Encrypt/Decrypt and Mac Using
   Token </en-US/docs/Mozilla/Projects/NSS/Encrypt_Decrypt_MAC_Using_Token>`__
#. `Sample Code 4: Encrypt/Decrypt and Mac Using Session
   Objects </en-US/docs/Mozilla/Projects/NSS/Encrypt_Decrypt_MAC_Keys_As_Session_Objects>`__
#. `Sample Code 5: Encrypt/Decrypt/MAC Output Public Key as a
   CSR </en-US/docs/Mozilla/Projects/NSS/NSS_Sample_Code/Enc_Dec_MAC_Output_Plblic_Key_as_CSR>`__
#. `Sample Code 6: Encrypt/Decrypt/MAC Generating a PKCS#11
   CSR </en-US/docs/Mozilla/Projects/NSS/NSS_Sample_Code/Enc_Dec_MAC_Using_Key_Wrap_CertReq_PKCS10_CSR>`__

Common code used by these samples:

#. `Sample Code 0:
   Utilities </en-US/docs/Mozilla/Projects/NSS/NSS_Sample_Code/Utiltiies_for_nss_samples>`__

Thanks are due to Shailendra Jain, Mozilla Community member, who is the
principal author of these samples.
