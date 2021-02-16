# TODO

1. Replace occurences of {{ x }} (some of these are spread accross multiple lines, how do i hndle that with sed?)
- x = DiscussionList; links to https://groups.google.com/g/mozilla.dev.tech.crypto
- x = interwiki(y); links to wiki.mozilla.org/y
- x = Index; ???
- x = page; is broken on live page as well so ignore. https://developer.mozilla.org/en-US/docs/Mozilla/Projects/NSS/Reference/NSS_functions

2. The table in index.html is not converted correctly. The rst version has weird line breaks and is not very readable in a text editor.

3. Cut of the yaml at the top of the html files.

4. Turn Bug {num} in to links.

5. Links to other parts of the docs are broken

6. Some files are not UTF-8 and sed is complaining.

7. Line wrapping messes up a lot. See index.html/index.rst.
