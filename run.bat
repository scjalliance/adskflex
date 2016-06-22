@echo off

REM docker run -it --rm --hostname=oly-lic1-svr --mac-address=00:11:22:33:44:55 -v "%CD%\my.lic:/opt/my.lic:ro" -v "%CD%\lmgrd.log:/tmp/lmgrd.log:rw" scjalliance/flexnet %*
echo docker run -it --rm --hostname=oly-lic1-svr --mac-address=be:05:6b:d1:fa:d0 -p 0.0.0.0:2080:2080 -p 0.0.0.0:27000:27000 -v c:/Users/dusty.wilson/Documents/nlm/my.lic:/opt/my.lic:ro scjalliance/flexnet %*
docker run -it --rm --hostname=oly-lic1-svr --mac-address=be:05:6b:d1:fa:d0 -p 0.0.0.0:2080:2080 -p 0.0.0.0:27000:27000 -v c:/Users/dusty.wilson/Documents/nlm/my.lic:/opt/my.lic:ro scjalliance/flexnet %*
REM docker run -it --rm --hostname=oly-lic1-svr --mac-address=00:11:22:33:44:55 -v "%CD%/my.lic:/opt/my.lic:ro" scjalliance/flexnet %*
REM docker run -it --rm --hostname=oly-lic1-svr --mac-address=00:11:22:33:44:55 scjalliance/flexnet %*