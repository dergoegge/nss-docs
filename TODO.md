# TODO

1. Replace occurences of {{ x }} (some of these are spread accross multiple lines, how do i hndle that with sed?)
- x = DiscussionList; links to https://groups.google.com/g/mozilla.dev.tech.crypto
- x = mediawiki.external("y"); can just replace with "y" ???
- x = rfc(num); links to https://tools.ietf.org/html/rfc{num}
- x = Bug(num); links to bugzilla bug
- x = interwiki(y); links to wiki.mozilla.org/y
- x = Index; ???
- x = page; is broken on live page as well so ignore. https://developer.mozilla.org/en-US/docs/Mozilla/Projects/NSS/Reference/NSS_functions

2. The table in index.html is not converted correctly. The rst version has weird line breaks and is not very readable in a text editor.

3. Cut of the yaml at the top of the html files.

4. Turn Bug {num} in to links.

5. Extract "title" from yaml and create correct rst titles for each page.

6. Some files are not UTF-8 and sed is complaining.
