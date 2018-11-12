# vendor_berkeley
Apply all patches used to build and run AOSP Pie with one simple script!

### Instructions
Just add the repo to your local_manifest after first sync:
```
<project path="vendor/berkeley" name="berkeley-pie/vendor_berkeley" revision="pie" remote="github" />
```

Then execute `repo sync` again and apply all patches with the following command in your tree:
```
vendor/berkeley/setup-cherrypick.sh
```

Now you can build your ROM!
