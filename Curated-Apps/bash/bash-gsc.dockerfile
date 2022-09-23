# This template is used by `curation_script.sh` to create a wrapper dockerfile
# `redis-gsc.dockerfile` that includes user provided inputs such as `ca.cert`
# file and run-time arguments into the graminized Redis image.

From jk-bash

COPY ca.crt /ca.crt

# These two lines are required to incorporate runtime args with the image entrypoint and cmd
COPY entry_script_bash.sh /usr/local/bin/entry_script_bash.sh
ENTRYPOINT ["/bin/bash", "/usr/local/bin/entry_script_bash.sh"]
