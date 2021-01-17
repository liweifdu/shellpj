find -type d | grep .svn$ | xargs rm -r
find . -name '*.exe' -type f -print -exec rm -rf {}
grep "\*E" . -rn
du -sh *  
find . -name '*.sv' | xargs perl -pi -e 's/formal/latter/g'
