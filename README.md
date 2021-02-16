# Convert docs
The `convert_mdn.sh` converts the mdn html docs to rst docs. It saves the rst files to `source/nss`.

```bash
 ./convert_mdn.sh ../content/files/en-us/mozilla/projects/nss # replace with your own path to the mdn docs.
```

# Build sphinx docs
``` 
make html
```
