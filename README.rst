==============================
New Project Document Templates
==============================

:Contributors: Jesus Alvarez (github.com/demizer)
:Modified: Sat Sep 15 12:27:05 PDT 2012
:Copyright: This project and documents have been placed in the public domain.
:Revision: 0.5

These are my document templates that I use for new projects. They are written
in reStructuredText_ and converted to PDFs using the ``pdocs.sh`` script.

Dependencies
============

* TBD

Purpose
=======

Software is a process of construction, and like in construction you need to
know where you are going or you will waste precious time and lots of money.
These templates conform to the IEEE standards for Software Requirements
Specification and Software Design Description. These documents were pulled
together from many sources on the internet.

File Overview
=============

- ``hack.rst``: Used for quick introduction developer documentation, such as
  dvcs usage and the development process for the project.

- ``spec.rst``: Open source software specification template.

- ``ieee_reqs.rst``: Software Requirements Specification document template.

- ``ieee_spec.rst``: Software Design Description document template.

- ``todo.rst``: Things to Do template for tracking progress.

- ``pdocs.sh``: Tool for generating the pdf documentation.

Helping Out
===========

Suggestions are very welcome. I put this together pretty quickly and haven't
had any real proofreading done, so I *know* some parts could use some help.

To contribute, fork and send a pull request. This project does not have any
special considerations when using git.

Additional Info
===============

The requirements document, ``reqs.rst``, was pulled together from many sources
on the web. The primary source is from a file called ``srs.doc`` that contained
no writer credentials. So whomever you are, thanks a lot!

Examples
========

Currently, there are no examples of these templates in use. If you have any,
please send a pull request!

.. _reStructuredText: http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html#implicit-hyperlink-targets
