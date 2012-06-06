## These are the commands needed to make the svn-git bridge
##
git svn init http://code.opencv.org/svn/opencv/trunk/opencv/
git update-ref refs/remotes/git-svn refs/remotes/origin/master
git svn rebase
