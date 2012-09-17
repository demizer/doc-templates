.. -*- coding: utf-8 -*-

======================================
Design Specification for <project>
======================================

:Contributors: Jesus Alvarez (github.com/demizer)
:Created: Tue Jul 17 12:00:00 PDT 2012
:Modified: Mon Sep 17 01:02:57 PDT 2012
:Copyright: This document has been placed in the public domain.
:Revision: 1.0.0

.. contents::

---------------
1. Introduction
---------------

Provide an overview of the SDD and a description of the scope of the software.

This template for this system design document (SDD) is adopted from the IEEE
Software Engineering Standards Collection, IEEE Press and other SDD templates.

1.1 Purpose
===========

define the purpose of this SDD and specify intended readership.

1.2 Scope
=========

Identify the software products to be produced by name; explain what the
proposed software will do (and not do, if necessary); describe the relevant
benefits, objectives and goals as precisely as possible; and be consistent with
related higher-level specifications.

1.3 References
==============

Provide a complete list of all the applicable and referenced documents. Include
with this document all the artifacts in their own digital format (i.e, models,
code samples, images, and so on).

1.4 Overview
============

Describe what the rest of the SDD contains and explain how the SDD  is
organized.

1.5 Constraints
===============

Briefly describe any restrictions, limitations or constraints that impact the
design or implementation

------------------
2. System Overview
------------------

Briefly introduce the system context and design, and discuss the background to
the project.

Put the full Use Case diagram from the SRS here to supplement the text.

----------------------
3. System Architecture
----------------------

3.1 Architectural Description
=============================

A block diagram showing major subsystems and the interconnections among them.
(UML Deployment Diagram)

3.2 Component Decomposition Description
=======================================

A decomposition of the subsystems that summarizes the software components. (UML
Package Diagram)

OOD Sequence/collaboration diagrams, hierarchy diagram and aggregation chart
here (UML Class Diagram).  Each user-goal use-case in the SRS should have a
corresponding sequence diagram or more.  Include object state diagrams (UML
State Diagram) if appropriate.

3.3 Architectural Alternatives
==============================

Discuss other architectures that were considered.

3.4 Design Rationale
====================

Discuss the rationale for selecting the architecture described in 3.1,
including the critical issues and trade/offs that were considered.

--------------
4. Data Design
--------------

4.1 Database Description
========================

Describe the database(s) which is/are part of the system.

4.2 Global Data Structures
==========================

Describe any data structures that are a major part of this system.

This should include major data structures that are passed between components.
That is, it is not restricted to truly “global” data structures.

4.3 Data Dictionary
===================

An alphabetic list of names used by the system (entities, types, services,
relations, attributes).  Include a description of the named entity.

Number	Entity Type

(Class Name)	Service (Public Method only)	Attributes

(parameters)	Description

(Method documentation)

OOD Refer the reader to the object diagrams and aggregation chart in Section 3.2.

-------------------------
5. Component Design (DLL)
-------------------------

A top-down description of the design components.

You may want to reorganize this section (5.1 – 5.7) to make it flow better.
That is fine as long as all of the information below is presented in some
manner.

5.1 Component identifier
========================

An identifier unique throughout the SDD.

5.2 Purpose
===========

A reference back to the requirements spec.

5.3 Function
============

What does the component do?  Description of its processing.

5.4 Subordinates
================

The components used by this component.

5.5 Dependencies
================

Constraints placed on this component by other components.

5.6 Interfaces
==============

Control and data flow into and out of the component.

5.7 Data
========

Descriptions of internal data.

-------------------------
6. Human Interface Design
-------------------------

(Screens)

6.1 Overview of the User Interface
==================================

Describe the general functionality of the system from the user’s perspective.

6.2 Screen Images
=================

Screenshots showing the interface from the user’s perspective. (This section
can be unified with section 6.3)

These can be hand-drawn or you can use an automated drawing tool.  Just make
them as accurate as possible.

6.3 Screen Objects and Actions
==============================

A discussion of screen objects and actions associated with those objects. I.e.,
were does the user needs to "click", and what sequence in which Use Case, will
come to action.

6.4 Report Formats
==================

A description of major reports provided by the system.

These can be hand-drawn or you can use an automated drawing tool.  Just make
them as accurate as possible.  (Graph paper works well.)

-----------------------------------
7. Traceability Requirements Matrix
-----------------------------------

Provide a cross reference that traces components and data structures to the
requirements

Use a tabular format to show which system components satisfy each of the
functional requirements from the SRS.  Refer to the functional requirements by
the numbers/codes that you gave them in the SRS.

Use Case/Requirement name and number

Class + Public Method name

---------------------
8. Resource Estimates
---------------------

A summary of computer resource estimates required for operating the software.

-------------------------------------------
9. Definitions, Acronyms, and Abbreviations
-------------------------------------------

Provide definitions of all terms, acronyms and abbreviations needed for the SDD.

-------------------------------------
10. Notes and Explanations on the SDD
-------------------------------------

A couple of checklists courtesy of Construx Software Builders, Inc. (modified slightly)

This questions are NOT for answering, they are only to assist you to think on
your design… Architecture

- Is the overall program organization clear, including a good architectural
  overview and justification?

- Are modules well defined including their functionality and interfaces to
  other modules?

- Are all the functions that are listed in the requirements covered sensibly,
  neither by too many nor too few modules?

- Are all major data structures described and justified?

- Are major data structures hidden with access functions?

- Is the database organization and content specified?

- Are all key algorithms described and justified?

- Are all major objects described and justified?

- Is the user interface modularized so that changes in it won't affect the rest
  of the program?

- Is a strategy for handling user input described?

- Are key aspects of the user interface defined?

- Are memory use estimates and a strategy for memory management described and
  justified?

- Is a strategy for handling I/O described and justified?

- Is a coherent error-handling strategy included?

- Are error messages managed as a set to present a clean user interface?

- Is a level of robustness specified?

- Are necessary buy vs. build decisions included?

- Is the architecture designed to accommodate likely changes?

- Is any part over- or under-architected?

- Are the major system goals clearly stated?

- Does the complete architecture hang together conceptually?

- Is the top-level design independent of the machine and language that will be
  used to implement it?

- Are motivations given for all major decisions?

- Are you, as a programmer who will implement the system, comfortable with the
  architecture?

---------------------
11. High-Level Design
---------------------

- Have you used round-trip design, selecting the best of several attempts
  rather th
