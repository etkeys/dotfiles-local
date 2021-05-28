
## Note about file formatting

For `fstab.nfs-my-home`, we use `grep -F -f` options to determine if we need
to add the contents to the system *fstab* file. `fstab.nfs-my-home` must
contain only what we want to match. Any leading or trailing newlines will
be interpretted as separate patterns to match, causing false positives.
