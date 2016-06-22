#!/bin/bash

runuser -l lmuser -c '/opt/lmgrd -c /opt/my.lic' | tee /tmp/lmgrd.log