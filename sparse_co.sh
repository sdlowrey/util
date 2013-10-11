#!/bin/bash
# 
# See http://core-dev.dev/wiki/index.php/User:Cmarshall/subversion/sparse_checkouts

branch=$1
wtree=$2
if [ -z "$2" ] ; then
   echo "usage: <branch> <working tree>"
   exit 1
fi

if [ -z "$URL" ] ; then
   echo "set URL to your svn credentials (export URL=svn+ssh://username@dev-svn.dev.sciencelogic.local/svn), and try again"
   exit 1
fi

svn checkout ${URL}/${branch} $wtree --depth immediates

for dir in $(ls $wtree) ; do
   if [ "$dir" == "G3code" ] ; then
      svn update ${wtree}/${dir} --set-depth immediates
      for dir2 in $(ls ${wtree}/${dir}); do
         if [ "$dir2" != "powerpacks" ] ; then
            svn update ${wtree}/${dir}/${dir2} --set-depth infinity
         else
            svn update ${wtree}/${dir}/${dir2} --set-depth immediates
         fi
      done
   else
      svn update ${wtree}/${dir} --set-depth infinity
   fi
done
