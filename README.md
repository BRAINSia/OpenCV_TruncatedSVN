OpenCV_TruncatedSVN
===================

OpenCV_TruncatedSVN is a clone of the opencv/trunk/opencv from revision r8399

=== NOTES ON HOW THIS WAS CREATED ===

git  svn clone  -r8399:HEAD http://code.opencv.org/svn/opencv/trunk/opencv .
git remote add BRAINSia git@github.com:BRAINSia/OpenCV_TruncatedSVN.git
git push BRAINSia master:svn_r8579
git fetch BRAINSia
git checkout master
git checkout -b BRAINSCut_OpenCV
git cherry-pick <Original commit from the empty github generated branch.>
git push BRAINSia BRAINSCut_OpenCV:BRAINSCut_OpenCV

How to syncronize with latest svn
=====================================

git svn init http://code.opencv.org/svn/opencv/trunk/opencv
git update-ref refs/remotes/git-svn refs/remotes/origin/master
git svn rebase

## Ensure that the following is represented in your .git/config file
#[svn-remote "svn"]
#	url = http://code.opencv.org/svn/opencv/trunk/opencv
#	fetch = trunk:refs/remotes/trunk
#	branches = branches/*:refs/remotes/*
#	tags = tags/*:refs/remotes/tags/*

