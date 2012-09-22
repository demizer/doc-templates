.. -*- coding: utf-8 -*-

=====================================
doc-templates Developer Documentation
=====================================

:Contributors: Jesus Alvarez (github.com/demizer)
:Created: Sun Sep 16 23:29:39 PDT 2012
:Modified: Sat Sep 22 10:29:33 PDT 2012
:Copyright: This document has been placed in the public domain.
:Revision: 1.0.0

.. contents::

---------------
1. Introduction
---------------

Hello and welcome to the developer documentation for the doc-templates project!
In this file you will learn how to setup your environment to work on the
doc-templates project. This includes version control, editors, and
documentation.

1.1 How to use this file
========================

This file's source is written in reStructuredText and is easily available in
any format you like. HTML and PDF are viewable from the project website. For a
primer on the reStructuredText style used within this file see `3.
Documentation`_.

This file can be read from start to finish, or at specific sections.

**Commentary**

Below you will find the developer documentation for the doc-templates
documentation framework that I use for all of my own projects. To use this
file, simply search and replace "doc-templates" with the name of your project.
You could also reorganize the sections to your liking. You are free to do what
you like.

Each section has a commentary subsection that should be completely removed before
committing your version of the file to your projects repo. The commentary
section is my opinion on why a section exists without integrating that
discussion into the section and making it more difficult to parse out.

The authors of the doc-templates project humbly request that the following
section be included with your documentation to encourage contributions to the
upstream documentation framework.

1.2 How to contribute to this file
==================================

Please see the `3. Documentation`_ section for style guidelines for contributing
to this documentation.

If you do decide to write a new section that will be useful in general to the
upstream `doc templates project`_, please consider sending a pull request to
that project. For example, if you use a different version control or a
different editor that is not included in the upstream template, write it!

------------------
2. Version control
------------------

git_ is used to track changes within the source tree. github_ is used to host
the project as well as track issues. For an introduction to using git and
Github, see github-bootcamp_.

**Commentary**

I use git-flow on most of my projects because it allows me to separate work on
features into nice and neat branches in git that I can mess around with to my
hearts content. It does have a very slight learning curve, but once you get the
hang of it it is very nice, especially with the git extensions.

2.1 Git with git-flow
=====================

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

2.2 The workflow
================

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

   ::

    Using git-flow:

        $ git flow init -d

    Using git:

        $ <optional> git branch -a
        $ git checkout -b develop origin/develop

5. Branch for new feature

   ::

    Using git-flow

        $ git flow feature start <new_feature>

    Using git

        $ git branch -b feature/<new_feature> develop

6. Edit / Commit

7. Push changes to remote

   ::

    Using git-flow

        $ [optional] git flow feature pull <feature>
        $ git flow feature publish <feature>

        Open pull request, and get changes merged...

        $ [optional] git flow feature finish <new_feature>

    Using git

        $ git checkout develop
        $ git merge --no-ff feature/<new_feature>
        $ git branch -d feature/<new_feature>
        $ git push origin develop

2.2.1 Master branch
-------------------

The *master* branch is primarily a *release branch*. Changes in the master
branch are only committed on every release revision as specified in spec.md_.
The master branch is the starting point for *hotfix* branches.

For example, you have implemented the exciting new *feature X* (as outlined in
spec.md_) and all the tests are passing and you are really excited to get your
work included on the next release revision. The next step is to either merge
the changes into the master branch and tag it or send a pull request on your
private develop branch to the gpup project maintainer. Tagging allows snapshots
to be taken of the git tree and presented as downloads on github. The tag
message should include a list of changes since the last release.

2.2.1.1 Principles for master branch releases
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Only official project members can interact with the official master branch.
   Official project members are decided by the project maintainer. For
   contributing features or changes as a contributing member, see `2.2.2 Develop
   branch`_ section.

2. The master branch is solely for tested and "stable" code. All new features to
   be merged into master must be tested and proved in the develop branch.

3. A meaningful tag message must accompany the merged changes including changes
   made from the last release.

4. This tagged branch is made available for download from github.

5. Any critical fixes needed on stable code are to be developed in a *hotfix*
   branch based off of the master branch. Once the fix is implemented, the
   changes are merged back into both master and develop.

2.2.1.2 Master branch workflow
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Please observe the following workflow when interacting with the master branch
and developing *feature-x*.

1. Run unit tests on feature-x.

2. Merge feature-x into master

   ::

    Using git-flow:

    Using git:

2.2.1.2.1 A sample tag message
++++++++++++++++++++++++++++++

::

    feature/feature-x: rev 0.2

    * Add feature-x that toggles the thinga-ma-bobber into retractive flow
      mode.
    * Fixed bug in retroactive flow mode database.
    * Fixed issue #201: Time warp control know doo-hicky.

2.2.2 Develop branch
--------------------

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

2.2.3 Topic branch
------------------

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

----------------
3. Documentation
----------------

reStructuredText is used for documentation in the doc-templates project.
reStructuredText is well supported by the Python community and has many output
formats including pdf and html.

**Commentary**

Use this section to introduce the reader on the documentation procedure for
your project.

3.1 Title block
===============

The start of all reStructuredText files should be as follows:

::

    .. -*- coding: utf-8 -*-

    ==========
    File title
    ==========

    :Contributors: 2011-2012 author1 (contact)
                   2012      author2 (contact)
    :Created: Sun Sep 16 23:29:39 PDT 2012
    :Modified: Mon Sep 17 23:17:27 PDT 2012
    :Copyright: This document has been placed in the public domain.
    :Revision: 1.0.0

    .. contents::

Notice:

* The "File title" is precisely surrounded by padded "="
* The contributors section should contain all contributors to the file
  containing the title block.

3.1.1 Automatic modified date update
------------------------------------

The best programming editors can be configured to automatically update
timestamps within a file. This section will detail how to setup this feature in
the most popular editors.

3.1.1.1 VIM
~~~~~~~~~~~

Add the following to your vim configuration:

::

    function! LastModified()
        if &modified
            let save_cursor = getpos(".")
            let n = min([10, line("$")])
            keepjumps exe '1,' . n . 's#^\(.\{,10}:Modified: \).*#\1' .
                        \ strftime("%a %b %d %H:%M:%S %Z %Y") . '#e'
            call histdel('search', -1)
            call setpos('.', save_cursor)
        endif
    endfunction
    au BufWritePre * call LastModified()

3.2 Sections
============

In addition to the reStructuredText standard, please use these guidlines when
writing sections for this projects documentation:

* Sections should go no further than six levels deep.
* Section titles and subtitles should not have consecutive capitalized words.
  Only the first word should be capitalized.
* The file title should have all words capitalized.
* Section levels should start with a number consecutive number pattern.

3.2.1 Adornment
---------------

Please use the following patterns for each section level:

::

    ==========
    File Title
    ==========

    ----------
    1. Level 1
    ----------

    1.1 Level 2
    ===========

    1.1.1 Level 3
    -------------

    1.1.1.1 Level 4
    ~~~~~~~~~~~~~~~

    1.1.1.1.1 Level 5
    +++++++++++++++++

    1.1.1.1.1.1 Level 6
    *******************

3.3 Links
=========

* Do not use embedded links. This is distracting when reading the source of the
  reStructuredText file.

.. _git: http://git-scm.com/
.. _github: http://github.com/
.. _github-bootcamp: https://help.github.com/categories/54/articles
.. _Vincent Driessen: http://nvie.com/posts/a-successful-git-branching-model/
.. _git-flow: https://github.com/nvie/gitflow/
.. _spec.md: https://github.com/demizer/doc-templates/blob/master/doc/spec.rst
.. _tagged: http://learn.github.com/p/tagging.html
.. _doc-templates project: http://github.com/demizer/doc-templates
