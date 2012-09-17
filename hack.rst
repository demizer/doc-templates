.. -*- coding: utf-8 -*-

=====================================
doc-templates Developer Documentation
=====================================

:Contributors: Jesus Alvarez (github.com/demizer)
:Created: Sun Sep 16 23:29:39 PDT 2012
:Modified: Mon Sep 17 00:43:04 PDT 2012
:Copyright: This document has been placed in the public domain.
:Revision: 1.0.0

.. contents::

---------------
1. Introduction
---------------

Hello and welcome! Thank you for your interest in contributing to the
doc-templates project. In this document you will find the information you need
to get started working on the doc-templates project.

------------------------------------
2. Git Version Control with git-flow
------------------------------------

git_ is used to track changes within the source tree. github_ is used to host
the project as well as track issues. For an introduction to using git and
Github, see github-bootcamp_.

Workflow Overview
=================

gpup uses the git-flow_ branching model as outlined by `Vincent Driessen`_ and
provided by the git-flow_ extensions. You don't really need the extensions to
use the branching model, but they make things a little easier.

* There are two primary and permanent branches, *master* and *develop*.

* The *master* branch is production ready. It is only changed on every release.

* **Do not develop on the master branch.**

* Only official project members can contribute to the master branch.

* The *develop* branch is where the magic happens. It contains all the latest
  changes for next release version as outlined in spec.md_.

* For big feature additions, create a *feature branch* off of develop. The
  branch name must have the prefix ``feature/<feature>``.

* A feature branch should represent changes related to a single topic. If
  you decide to work on another topic, create another branch.

* Contributing members must use a forked repository and a pull request on their
  develop branch to commit changes to the official project.

* *Hotfixes* on production code should be branched from master and merged back
  into both develop and master on success. The hotfix branch name must have the
  prefix ``hotfix/<issue>``.

* Keep ``.gitignore`` clean. Don’t add test files to ``.gitignore`` that are
  specific to your environment.

* The first line in the commit message should be only 50 chars long. If more
  space is needed, use additional lines that can be 79 chars long. This is
  common practice for git commit messages.

* When making a release to the master branch, the tag on the master branch
  should be descriptive and include itemized changes made from the previous
  release.

The Workflow
============

Here is example workflow for the gpup project. These commands show the standard
git commands as well as the git-flow_ extensions.

1. Fork on GitHub (click Fork button)

2. Clone to your server

   ::

        $ git clone https://<you>@github.com/<you>/gpup.git

3. Change into the project directory

   ::

        $ cd gpup/

4. Initialize the develop branch

    a. Using git-flow

        ::

            $ git flow init -d

    b. Using git

        ::

            $ <optional> git branch -a

            $ git checkout -b develop origin/develop

5. Branch for new feature

    a. Using git-flow

        ::

            $ git flow feature start <new_feature>

    b. Using git

        ::

            $ git branch -b feature/<new_feature> develop

6. Edit / Commit

7. Push changes to remote/develop

    a. Using git-flow

        ::

            $ <optional> git flow feature pull <feature>

            $ git flow feature publish <feature>

            <Open pull request, and get changes merged>

            $ <optional> git flow feature finish <new_feature>

    b. Using git

        ::

            $ git checkout develop

            $ git merge --no-ff feature/<new_feature>

            $ git branch -d feature/<new_feature>

            $ git push origin develop

Master Branch
-------------

The *master* branch is primarily a *release branch*. Changes in the master
branch are only committed on every release revision as specified in spec.md_.
The master branch is the starting point for *hotfix* branches.

For example, you have implemented the exciting new *feature X* (as outlined in
spec.md_) and all the tests are passing and you are really excited to get your
work included on the next release revision. The next step is to either merge
the changes into the master branch and tag it or send a pull request on your
private develop branch to the gpup project maintainer. Tagging allows snapshots
to be taken of the git tree and presented as downloads on github. The tag
message should include a list of changes since the the last release.

Principles for master branch releases
`````````````````````````````````````

1. Only official project members can interact with the official master branch.
   Official project members are decided by the project maintainer. For
   contributing features or changes as a contributing member, see `Develop
   Branch`_ section.

2. The master branch is solely for tested and "stable" code. All new features to
   be merged into master must be tested and proved in the develop branch.

3. A meaningful tag message must acompany the merged changes including changes
   made from the last release.

4. This tagged branch is made available for download from github.

5. Any critical fixes needed on stable code are to be devolped in a *hotfix*
   branch based off of the master branch. Once the fix is implemented, the
   changes are merged back into both master and develop.

Master branch workflow
``````````````````````

Please observe the following workflow when interacting with the master branch
and developing *feature-x*.

1. Test feature x (depending on testing environment for the project. See
   spec.md_.

2. Merge feature x into master

    a. Using git-flow

    b. Using git

A sample tag message
~~~~~~~~~~~~~~~~~~~~

::

    feature/feature-x: rev 0.2

    * Add feature-x that toggles the thinga-ma-bobber into retractive flow
      mode.
    * Fixed bug in retroactive flow mode database.
    * Fixed issue #201: Time warp control know doo-hicky.

Develop Branch
--------------

The develop branch is the staging area for development. When a new feature is
to be added to the project, any number of branches can be made of the develop
branch to develop the new feature, or any other features. These branches should
be periodically merged back to the parent develop branch. The following is an
example workflow for the develop branch:

1. Feature A is ready for development, a branch *feature-a* is created.

2. Work on *feature-a* is going at a steady pace, tests are written and the
   code passes.

3. *feature-a* is pushed upstream if it is going to be a long haul.

4. Changes are merged back into the develop branch, more testing is done.

5. The develop branch is merged upstream.

6. The develop branch is merged back into master and tagged.

7. Master is pushed upstream.

8. The *feature-a* branch is deleted.

Topic Branch
------------

Topic branches are to be created from the develop branch and they must have
specific names. Development in topic branches must be specific and to the
point. If during development, another issue crops up, then create a new branch
and pursue it there. There are two primary reasons for creation of a topic
branch, development of a feature, or a bugfix. If working on a feature, the
topic branch description should be named as follows:

::

    git branch -b v0.1-feature

The version number of the feature is pulled from this specification.

If creating a bugfix branch, the issue number from github should be referenced
in the description:

::

    git branch -b i1000-doc-grammar

The "i####" is a condensed form "issue1000".

1. Create topic branch.

2. Edit and Commit

3. Rebase onto remote develop to pull any changes that have occurred.

::

   git rebase -i origin/develop

4. Cleanup the commit history by squashing commits down to a single precise
   commit:

::

    git rebase -i HEAD^4

5. Merge changes into develop branch

::

   git checkout develop && git merge <topic-branch>

6. Push develop to your fork

7. Send pull request

.. _git: http://git-scm.com/
.. _github: http://github.com/
.. _github-bootcamp: https://help.github.com/categories/54/articles
.. _Vincent Driessen: http://nvie.com/posts/a-successful-git-branching-model/
.. _git-flow: https://github.com/nvie/gitflow/
.. _spec.md: https://github.com/demizer/gpup/tree/master/doc/spec.md
.. _tagged: http://learn.github.com/p/tagging.html
