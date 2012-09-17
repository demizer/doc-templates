.. -*- coding: utf-8 -*-

========================================
Requirements Specification for <project>
========================================

:Contributors: Jesus Alvarez (github.com/demizer)
:Created: Tue Jul 17 12:00:00 PDT 2012
:Modified: Mon Sep 17 01:00:46 PDT 2012
:Copyright: This document has been placed in the public domain.
:Revision: 1.0.0

.. contents::

---------------
1. Introduction
---------------

This is an example SRS document following the IEEE STD 830-1998 standard. This
document is meant to be used as guideline describing what the application or
system will do and is not meant for the actual design. This introduction
section should be one paragraph long at most and should detail the intent of
this document.


.. Note:: This document was pulled together from many google searches and
          primarily comes from one University template that can't be found
          anymore and contained no references to its original author. So
          whomever you are, thank you.


1.1 Purpose
===========

Identify the purpose of this SRS and its intended audience. This audience could
be made up of project managers, designers (architecture, UI), or customers.

1.2 Scope of Project
====================

Use this section to give a brief overview of the project. This should be an
overview and not a definitive explanation.

A. Identify the software project to be produced by name.

#. Explain what the software project will do, and, if necessary, will not do.

#. Describe the application of the software being specified, including relevant
   benefits, objectives, and goals.

#. Be consistent with similar statements in higher-level specifications.

1.3 Glossary
============

Provide the definitions of all terms, acronyms, and abbreviations required to
properly interpret the SRS.

GUI
    Graphical User Interface

SRS
    Software Requirements Specification

IEEE
    Institute of Electrical ond Electronics Engineers

Customer
    The user of the application.

1.4 References
==============

Provide a list of all documents referenced in this SRS and how to obtain them.
Identify each document by title, date, and organization.

1.5 How to Use This Document
============================

Explain how the SRS is organized and what sections particular groups should
read.

If you are just using this document as a template for your own SRS, don't just
delete sections that are not applicable. Simply state that the section does not
apply to the project.

----------------------
2. General Description
----------------------

This section will give the reader an overview of the project, including why it
was conceived, what it will do when complete, and the types of people we expect
will use it. This section provides a background for requirements described in
section 3 and also outlines requirements in English for the customer.

2.1 Project Perspective
=======================

This subsection of the SRS should put the project into perspective with other
related projects. If the project is independent and totally self-contained, it
should be so stated here. If the SRS defines a project that is a component of a
larger system, as frequently occurs, then this subsection should relate the
requirements of that larger system to functionality of the software and should
identify interfaces between that system and the software.

A block diagram showing the major components of the larger system,
interconnections, and external inter-faces can be helpful.

This subsection should also describe how the software operates inside various
constraints. For example, these constraints could include

A. System interfaces

#. User interfaces

#. Hardware interfaces

#. Software interfaces

#. Communications interfaces

#. Memory

#. Operations

#. Site adaptation requirements.

2.1.1 System Interfaces
-----------------------

List each system interface and identify the functionality of the software to
accomplish the system requirement and the interface description to match the
system.

These are external systems that you have to interact with. For instance, an
application for tracking parts within a company must access the part database
API. What are the general details of that API that designers should know about?

2.1.2 Interfaces
----------------

This is a description of how the system will interact with its users to
accomplish software requirements.

#. *The logical characteristics of each interface between the software project
   and its users.* Examples include a GUI, command-line interpreter, a web
   based front end, or an extension system.

#. *All the aspects of optimizing the interface with the person who must use
   the system* Will there be any special considerations to be made to make the
   software accessable to the disabled? or to clients in far reaches of the
   earth?

2.1.3 Hardware Interfaces
-------------------------

Specify the logical characteristics of each interface between the software
project and the hardware components of the system. This includes configuration
characteristics. It also covers such matters as what devices are to be
supported, how they are to be supported and protocols.

This section is for detailing the actual hardware devices your application will
interact with and control. For example a flight simulator joystick control, or
a head mounted display. This is not a description of hardware requirements in
the sense that “This program must run on a Linux with 64TB of RAM”. Designers
should be able to look at this and know what hardware they need to worry about
in the design.

Many business type applications will have no hardware interfaces. If none, just
state “The system has no hardware interface requirements”.

2.1.4 Software Interfaces
-------------------------

Specify the use of other required software projects and interfaces with other
application systems. For each required software project, include:

#. Name

#. Mnemonic

#. Specification number

#. Version number

#. Source

For each interface, provide:

#. Discussion of the purpose of the interfacing software as related to this
   software project

#. Definition of the interface in terms of message content and format

Here we document the APIs, versions of software that we do not have to write,
but that our system has to use. For instance if your customer uses SQLite
and you are required to use that, then you need to specify i.e.,

2.1.4.1 SQLite
~~~~~~~~~~~~~~

The system must use SQLite 3.0 and above as its database component. This is to
allow the database to be portable and easily maintainable.

A key point to remember is that you do NOT want to specify software here that
you think would be good to use. This is only for **customer-specified systems**
that you **have** to interact with. Choosing SQLite as a DB without a customer
requirement is a Design choice, not a requirement. This is a subtle but
important point to writing good requirements and not over-constraining the
design.

2.1.5 Communications Interfaces
-------------------------------

Specify the various interfaces to communications such as local network
protocols, etc. These are protocols you will need to directly interact with.
If you happen to use web services transparently to your application then do not
list it here. If you are using a custom protocol to communicate between
systems, then document that protocol here so designers know what to design. If
it is a standard protocol, you can reference an existing document or RFC.

2.1.6 Memory Constraints
------------------------

Specify any applicable characteristics and limits on primary and secondary
memory. Don’t just make up something here. If all the customer’s machines have
only 128K of RAM, then your target design has got to come in under 128K so
there is an actual requirement. You could also cite market research here for
shrink-wrap type applications “Focus groups have determined that our target
market has between 256-512M of RAM, therefore the design footprint should not
exceed 256M.” If there are no memory constraints, so state.

2.1.7 Operations
----------------

Specify the normal and special operations required by the user such as:

#. The various modes of operations in the user organization

#. Periods of interactive operations and periods of unattended operations

#. Data processing support functions

#. Backup and recovery operations

.. Note:: This is sometimes specified as part of the User Interfaces section.

If you separate this from the UI stuff earlier, then cover business process
type stuff that would impact the design. For instance, if the company brings
all their systems down at midnight for data backup that might impact the
design. These are all the work tasks that impact the design of an application,
but which might not be located in software.

2.1.8 Site Adaption Requirements
--------------------------------

In this section:

#. Define the requirements for any data or initialization sequences that are
   specific to a given site, mission, or operational mode

#. Specify the site or mission-related features that should be modified to
   adapt the software to a particular installation

If any modifications to the customer’s work area would be required by your
system, then document that here. For example, *“A 100Kw backup generator and
10000 BTU air conditioning system must be installed at the user site prior to
software installation”*.

This could also be software-specific like, *“New data tables created for this
system must be installed on the company’s existing DB server and populated
prior to system activation.”* Any equipment the customer would need to buy or
any software setup that needs to be done so that your system will install and
operate correctly should be documented here.

2.2 Functional Requirements Specification
=========================================

Provide a summary of the major functions that the software will perform.
Sometimes the function summary that is necessary for this part can be taken
directly from the section of the higher-level specification (if one exists)
that allocates particular functions to the software project.

For clarity:

#. The functions should be organized in a way that makes the list of functions
   understandable to the customer or to anyone else reading the document for the
   first time.

#. Textual or graphic methods can be used to show the different functions and
   their relationships. Such a diagram is not intended to show a design of a
   project but simply shows the logical relationships among variables.

This section is what customers want to be most involved with. This describes
the functionality of the system in the language of the customer. What
specifically does the system that will be designed have to do? Drawings are
good, but remember this is a description of what the system needs to do, not
how you are going to build it. (That comes in the design document).

2.3 User Characteristics
========================

Describe those general characteristics of the intended users of the project
including educational level, experience, and technical expertise. Do not state
specific requirements but rather provide the reasons why certain specific
requirements are later specified in section 3.

What is it about your potential user base that will impact the design? Their
experience and comfort with technology will drive UI design. Other
characteristics might actually influence internal design of the system.

2.4 Constraints
================

Provide a general description of any other items that will limit the
developer's options. These can include:

#. Regulatory policies

#. Hardware limitations (for example, signal timing requirements)

#. Interface to other applications

#. Parallel operation

#. Audit functions

#. Control functions

#. Higher-order language requirements

#. Signal handshake protocols (for example, XON-XOFF, ACK-NACK)

#. Reliability requirements

#. Criticality of the application

#. Safety and security considerations

This section captures non-functional requirements in the customers language. A
more formal presentation of these will occur in section 3.

2.5 Assumptions and Dependencies
================================

List each of the factors that affect the requirements stated in the SRS. These
factors are not design constraints on the software but are, rather, any changes
to them that can affect the requirements in the SRS. For example, an assumption
might be that a specific operating system would be available on the hardware
designated for the software project. If, in fact, the operating system were not
available, the SRS would then have to change accordingly.

This section is catch-all for everything else that might influence the design
of the system and that did not fit in any of the categories above.

2.6 Apportioning of Requirements
================================

Identify requirements that may be delayed until future versions of the system.
After you look at the project plan and hours available, you may realize that
you just cannot get everything done. This section divides the requirements into
different sections for development and delivery. Remember to check with the
customer they should prioritize the requirements and decide what does and does
not get done. This can also be useful if you are using an iterative life cycle
model to specify which requirements will map to which interation.

-----------------------------
3. Requirements Specification
-----------------------------

This section contains all the software requirements at a level of detail
sufficient to enable designers to design a system to satisfy those
requirements, and testers to test that the system satisfies those requirements.
Throughout this section, every stated requirement should be externally
perceivable by users, operators, or other external systems. These requirements
should include at a minimum a description of every input (stimulus) into the
system, every output (response) from the system and all functions performed by
the system in response to an input or in support of an output. The following
principles apply:

#. Specific requirements should be stated with all the characteristics of a
   good SRS.

   #. Correct

   #. Unambiguous

   #. Complete

   #. Consistent

   #. Ranked for importance and/or stability

   #. Verifiable

   #. Modifiable

   #. Traceable

#. Specific requirements should be cross-referenced to earlier documents that
   relate.

#. All requirements should be uniquely identifiable (usually via numbering like
   3.1.2.3).

#. Careful attention should be given to organizing the requirements to maximize
   readability (Several alternative organizations are given at end of
   document).

Before examining specific ways of organizing the requirements it is helpful to
understand the various items that comprise requirements as described in the
following subclasses. This section reiterates section 2, but is for developers
not the customer. The customer buys in with section 2, the designers use
section 3 to design and build the actual application.

*Remember this is not design*. Do not require specific software packages, etc
unless the customer specifically requires them. Avoid over-constraining your
requirements.

Each requirement should be uniquely identified for traceability. Usually, they
are numbered 3.1, 3.1.1, 3.1.2.1 etc. Each requirement should also be testable.
Avoid imprecise statements like, *“The system shall be easy to use”*. Avoid
“motherhood and apple pie” type statements, *“The system shall be developed
using good software engineering practice”*

Avoid examples, This is a specification, a designer should be able to read this
spec and build the system without bothering the customer again. Don’t say
things like, *“The system shall accept configuration information such as name
and address.”* The designer doesn’t know if that is the only two data elements
or if there are 200. List every piece of information that is required so the
designers can build the right UI and data tables.

3.1 External Interfaces
=======================

This contains a detailed description of all inputs into and outputs from the
software system. It complements the interface descriptions in section 2 but
does not repeat information there. Remember section 2 presents information
oriented to the customer while section 3 is oriented to the developer.

It contains both content and format as follows:

#. Name of item

#. Description of purpose

#. Source of input or destination of output

#. Valid range, accuracy and/or tolerance

#. Units of measure

#. Timing

#. Relationships to other inputs/outputs

#. Screen formats and organization

#. Window formats and organization

#. Data formats

#. Command formats

#. End messages

3.2 Functions
=============

Functional requirements define the fundamental actions that must take place in
the software in accepting and processing the inputs and in processing and
generating the outputs. These are generally listed as *“shall”* statements
starting with *"The system shall…"*

These include:

- Validity checks on the inputs

- Exact sequence of operations

- Responses to abnormal situation, including

- Overflow

- Communication facilities

- Error handling and recovery

- Effect of parameters

- Relationship of outputs to inputs, including

    - Input/Output sequences

    - Formulas for input to output conversion

It may be appropriate to partition the functional requirements into
sub-functions or sub-processes. This does not imply that the software design
will also be partitioned that way.

3.3 Performance Requirements
============================

This subsection specifies both the static and the dynamic numerical
requirements placed on the software or on human interaction with the software,
as a whole. Static numerical requirements may include:

A. The number of terminals to be supported

#. The number of simultaneous users to be supported

#. Amount and type of information to be handled

Static numerical requirements are sometimes identified under a separate section
entitled capacity.

Dynamic numerical requirements may include, for example, the numbers of
transactions and tasks and the amount of data to be processed within certain
time periods for both normal and peak workload conditions.

All of these requirements should be stated in measurable terms.

For instance,

    *95% of the transactions shall be processed in less than 1 second.*

rather than,

    *An operator shall not have to wait for the transaction to complete.*

.. Note:: Numerical limits applied to one specific function are normally
          specified as part of the processing subparagraph description of that
          function.

3.4 Logical Database Requirements
=================================

This section specifies the logical requirements for any information that is to
be placed into a database. This may include:

A. Types of information used by various functions

#. Frequency of use

#. Accessing capabilities

#. Data entities and their relationships

#. Integrity constraints

#. Data retention requirements

If the customer provided you with data models, those can be presented here. ER
diagrams (or static class diagrams) can be useful here to show complex data
relationships.

3.5 Design Constraints
======================

Specify design constraints that can be imposed by other standards, hardware
limitations, etc.

3.5.1 Standards Compliance
--------------------------

Specify the requirements derived from existing standards or regulations. They might include:

#. Report format

#. Data naming

#. Accounting procedures

#. Audit Tracing

For example, this could specify the requirement for software to trace
processing activity. Such traces are needed for some applications to meet
minimum regulatory or financial standards. An audit trace requirement may, for
example, state that all changes to a payroll database must be recorded in a
trace file with before and after values.

3.6 Software System Attributes
==============================

There are a number of attributes of software that can serve as requirements. It
is important that required attributes by specified so that their achievement
can be objectively verified. The following items provide a partial list of
examples. These are also known as non-functional requirements or quality
attributes.

These are characteristics the system must possess, but that pervade (or
cross-cut) the design. These requirements have to be testable just like the
functional requirements.

3.6.1 Reliability
-----------------

Specify the factors required to establish the required reliability of the
software system at time of delivery. If you have MTBF requirements, express
them here. This doesn’t refer to just having a program that does not crash.
This has a specific engineering meaning.

3.6.2 Availability
------------------

Specify the factors required to guarantee a defined availability level for the
entire system such as checkpoint, recovery, and restart. This is somewhat
related to reliability. Some systems run only infrequently on-demand (like
GIMP). Some systems have to run 24/7 (like an e-commerce web site). The
required availability will greatly impact the design. What are the requirements
for system recovery from a failure? *“The system shall allow users to restart
the application after failure with the loss of at most 12 characters of
input”*.

3.6.3 Security
--------------

Specify the factors that would protect the software from accidental or
malicious access, use, modification, destruction, or disclosure. Specific
requirements in this area could include the need to:

- Utilize certain cryptographic techniques

- Keep specific log or history data sets

- Assign certain functions to different modules

- Restrict communications between some areas of the program

- Check data integrity for critical variables

3.6.4 Maintainability
---------------------

Specify attributes of software that relate to the ease of maintenance of the
software itself. There may be some requirement for certain modularity,
interfaces, complexity, etc. Requirements should not be placed here just
because they are thought to be good design practices.

3.6.5 Portability
-----------------

Specify attributes of software that relate to the ease of porting the software
to other host machines and/or operating systems. This may include:

A) Percentage of components with host-dependent code

#. Percentage of code that is host dependent

#. Use of a proven portable language

#. Use of a particular compiler or language subset

#. Use of a particular operating system

3.7 Organizing the Specific Requirements
========================================

.. Note:: This section (including sections 3.7.n) are not sections that should
          be included in your final document. Their purpose is to discuss how to
          organize the requirements you write in section 3.2. At the end of
          this section multiple examples are provided as a guide on alternative
          organizations for section 3.2. Choose ONE organization best suited
          for the system you are writing requirements for.

For anything but trivial systems the detailed requirements tend to be
extensive. For this reason, it is recommended that careful consideration be
given to organizing these in a manner optimal for understanding. There is no
one optimal organization for all systems. Different classes of systems lend
themselves to different organizations of requirements in section 3. Some of
these organizations are described in the following sub-sections.

3.7.1 System Mode
-----------------

Some systems behave quite differently depending on the mode of operation. When
organizing by mode there are two possible outlines. The choice depends on
whether interfaces and performance are dependent on mode.

3.7.2 User Class
----------------

Some systems provide different sets of functions to different classes of users.
For example, an elevator control system presents different capabilities to
passengers, maintenance workers, and firefighters.

3.7.3 Objects
-------------

Objects are real-world entities that have a counterpart within the system. For
example, in a patient monitoring system, objects include patients, sensors,
nurses, rooms, physicians, medicines, etc. Associated with each object is a set
of attributes (of that object) and functions (performed by that object). These
functions are also called services, methods, or processes. Note that sets of
objects may share attributes and services. These are grouped together as
classes.

3.7.4 Feature
-------------

A feature is an externally desired service by the system that may require a
sequence of inputs to effect the desired result. For example, in a telephone
system, features include local call, call forwarding, and conference call.
Each feature is generally described in as sequence eof stimulus-response pairs.

3.7.5 Stimulus
--------------

Some systems can be best organized by describing their functions in terms of
stimuli. For example, the functions of an automatic aircraft landing system may
be organized into sections for loss of power, wind shear, sudden change in
roll, vertical velocity excessive, etc.

3.7.6 Response
--------------

Some systems can be best organized by describing all the functions in support
of the generation of a response. For example, the functions of a personnel
system may be organized into sections corresponding to all functions associated
with generating paychecks, all functions associated with generating a current
list of employees, etc.

3.7.7 Functional Hierarchy
--------------------------

When none of the above organizational schemes prove helpful, the overall
functionality can be organized into a hierarchy of functions organized by
either common inputs, common outputs, or common internal data access. Data ßow
diagrams and data dictionaries can be used to show the relationships between
and among the functions and data.

3.8 Additional Comments
=======================

Whenever a new SRS is contemplated, more than one of the organizational
techniques given in 3.7 may be appropriate. In such cases, organize the
specific requirements for multiple hierarchies tailored to the specific needs
of the system under specification.

Three are many notations, methods, and automated support tools available to aid
in the documentation of requirements. For the most part, their usefulness is a
function of organization. For example, when organizing by mode, finite state
machines or state charts may prove helpful; when organizing by object,
object-oriented analysis may prove helpful; when organizing by feature,
stimulus-response sequences may prove helpful; when organizing by functional
hierarchy, data flow diagrams and data dictionaries may prove helpful.

In any of the outlines below, those sections called “Functional Requirement *i*"
may be described in native language, in pseudocode, in a system definition
language, or in four subsections titled: Introduction, Inputs, Processing,
Outputs.

----------------------------
4. Change Management Process
----------------------------

Identify the change management process to be used to identify, log, evaluate,
and update the SRS to reflect changes in project scope and requirements. How
are you going to control changes to the requirements. Can the customer just
call up and ask for something new? Does your team have to reach consensus? How
do changes to requirements get submitted to the team? Formally in writing,
email or phone call?

---------------------
5. Document Approvals
---------------------

Identify the approvers of the SRS document. Approver name, signature, and date
should be used.

-------------------------
6. Supporting Information
-------------------------

The supporting information makes the SRS easier to use. It includes:

- Table of Contents

- Index

- Appendices

The Appendices are not always considered part of the actual requirements
specification and are not always necessary. They may include:

A. Sample I/O formats, descriptions of cost analysis studies, results of user surveys

#. Supporting or background information that can help the readers of the SRS

#. A description of the problems to be solved by the software

#. Special packaging instructions for the code and the media to meet security,
   export, initial loading, or other requirements

When Appendices are included, the SRS should explicitly state whether or not
the Appendices are to be considered part of the requirements.

-----------------------------------
7. Alternate Outlines for Section 3
-----------------------------------

Tables on the following pages provide alternate ways to structure section 3 on
the specific requirements. You should pick the best one of these to organize
section 3 requirements.

Organized by Mode -- Version 1
==============================

Requirements ordered by software mode, layout version 1.

::

    3. Requirements Specification
        3.1 External Interfaces
            3.1.1 User Interfaces
            3.1.2 Hardware Interfaces
            3.1.3 Software Interfaces
            3.1.4 Communications Interfaces
        3.2 Functional Requirements
            3.2.1 Mode 1
                3.2.1.1 Functional Requirement 1.1
                .....
                3.2.1.n Functional Requirement 1.n
            3.2.2 Mode 2
                .....
            3.2.m Mode m
                3.2.m.1 Functional Requirement m.1
                .....
                3.2.m.n Functional Requirement m.n
        3.3 Performance Requirements
        3.4 Logical Database Requirements
        3.5 Design Constraints
            3.5.1 Standards Compliance
        3.6 Software System Attributes
            3.6.1 Reliability
            3.6.2 Availability
            3.6.3 Security
            3.6.4 Maintainability
            3.6.5 Portability
        3.7 Other Requirements

Organized by Mode -- Version 2
==============================

Requirements ordered by software mode, layout version 2.

::

    3. Requirements Specification
        3.1 Functional Requirements
            3.1.1 Mode 1
                3.1.1.1 External Interfaces
                3.1.1.1 User Interfaces
                3.1.1.2 Hardware Interfaces
                3.1.1.3 Software Interfaces
                3.1.1.4 Communications Interfaces
                3.1.1.2 Functional Requirement
                    3.1.1.2.1 Functional Requirement 1
                    .....
                    3.1.1.2.n Functional Requirement n
                3.1.1.3 Performance
            3.1.2 Mode 2
                .....
            3.1.m Mode m
        3.2 Design Constraints
        3.3 Performance Requirements
        3.4 Logical Database Requirements
        3.5 Design Constraints
            3.5.1 Standards Compliance
        3.6 Software System Attributes
            3.6.1 Reliability
            3.6.2 Availability
            3.6.3 Security
            3.6.4 Maintainability
            3.6.5 Portability
        3.7 Other Requirements

Organized by User Class
=======================

This outline is organized by different types of users, System administrators,
Manogers, Clerks, etc.

::

    3. Requirements Specification
        3.1 External Interfaces
            3.1.1 User Interfaces
            3.1.2 Hardware Interfaces
            3.1.3 Software Interfaces
            3.1.4 Communications interfaces
        3.2 Functional Requirements
            3.2.1 User Class 1
                3.2.1.1 Functional Requirement 1.1
                .....
                3.2.1.n Functional Requirement 1.n
            3.2.2 User Class 2
                .....
            3.2.m User Class m
                3.2.m.1 Functional Requirement m.1
                .....
                3.2.m.n Functional Requirement m.n
        3.3 Performance Requirements
        3.4 Logical Database Requirements
        3.5 Design Constraints
            3.5.1 Standards Compliance
        3.6 Software System Attributes
            3.6.1 Reliability
            3.6.2 Availability
            3.6.3 Security
            3.6.4 Maintainability
            3.6.5 Portability
        3.7 Other Requirements

Organized by Object
===================

Good if you did an object-oriented analysis as part of your requirements.

::

    3. Requirements Specification
        3.1 External Interfaces
            3.1.1 User Interfaces
            3.1.2 Hardware Interfaces
            3.1.3 Software Interfaces
            3.1.4 Communications Interfaces
        3.2 Classes/Objects
            3.2.1 Class/Object 1
                3.2.1.1 Attributes (Direct or Inherited)
                    3.2.1.1.1 Attribute 1
                    .....
                    3.2.1.1.n Attribute n
                3.2.1.2 Functions (Services, Methods, Direct or Inherited)
                    3.2.1.2.1 Functional Requirement 1.1
                    .....
                    3.2.1.2.m Functional Requirement 1.m
                3.2.1.3 Messages (Communications Received or Sent)
            3.2.2 Class/Object 2
            .....
            3.2.p Class/Object p
        3.3 Performance Requirements
        3.4 Logical Database Requirements
        3.5 Design Constraints
            3.5.1 Standards Compliance
        3.6 Software System Attributes
            3.6.1 Reliability
            3.6.2 Availability
            3.6.3 Security
            3.6.4 Maintainability
            3.6.5 Portability
        3.7 Other Requirements

Organized by Feature
====================

Good when there are clearly delimited feature sets.

::

    3. Requirements Specification
        3.1 External Interfaces
            3.1.1 User Interfaces
            3.1.2 Hardware Interfaces
            3.1.3 Software Interfaces
            3.1.4 Communications Interfaces
        3.2 System features
            3.2.1 System Feature 1
                3.2.1.1 Introduction/Purpose of Feature
                3.2.1.2 Stimulus/Response Sequence
                3.2.1.3 Associated Functional Requirements
                    3.2.1.3.1 Functional Requirement 1
                    .....
                    3.2.1.3.n Functional Requirement n
            3.2.2 System Feature 2
            .....
            3.2.m System Feature m
        3.3 Performance Requirements
        3.4 Logical Database Requirements
        3.5 Design Constraints
            3.5.1 Standards Compliance
        3.6 Software System Attributes
            3.6.1 Reliability
            3.6.2 Availability
            3.6.3 Security
            3.6.4 Maintainability
            3.6.5 Portability
        3.7 Other Requirements

Organized by Stimulus
=====================

Good for event driven systems where the events form logical groupings.

::

    3. Requirements Specification
        3.1 External Interfaces
            3.1.1 User Interfaces
            3.1.2 Hardware Interfaces
            3.1.3 Software Interfaces
            3.1.4 Communications Interfaces
        3.2 Functional Requirements
            3.2.1 Stimulus 1
                3.2.1.1 Functional Requirement 1.1
                .....
                3.2.1.n Functional Requirement 1.n
            3.2.2 Stimulus 2
            .....
            3.2.m Stimulus m
                3.2.m.1 Functional Requirement m.1
                .....
                3.2.m.n Functional Requirement m.n
        3.3 Performance Requirements
        3.4 Logical Database Requirements
        3.5 Design Constraints
            3.5.1 Standards Compliance
        3.6 Software System Attributes
            3.6.1 Reliability
            3.6.2 Availability
            3.6.3 Security
            3.6.4 Maintainability
            3.6.5 Portability
        3.7 Other Requirements

Organized by Response
=====================

Good for event driven systems where the responses form logical groupings.

::

    3. Requirements Specification
        3.1 External Interfaces
            3.1.1 User Interfaces
            3.1.2 Hardware Interfaces
            3.1.3 Software Interfaces
            3.1.4 Communications Interfaces
        3.2 Functional Requirements
            3.2.1 Response 1
                3.2.1.1 Functional Requirement 1.1
                .....
                3.2.1.n Functional Requirement 1.n
            3.2.2 Response 2
            .....
            3.2.m Response m
                3.2.m.1 Functional Requirement m.1
                .....
                3.2.m.n Functional Requirement m.n
        3.3 Performance Requirements
        3.4 Logical Database Requirements
        3.5 Design Constraints
            3.5.1 Standards Compliance
        3.6 Software System Attributes
            3.6.1 Reliability
            3.6.2 Availability
            3.6.3 Security
            3.6.4 Maintainability
            3.6.5 Portability
        3.7 Other Requirements

Organized by Functional Hierarchy
=================================

Good if you have done structured analysis as part of your design.

::

    3. Requirements Specification
        3.1 External Interfaces
            3.1.1 User Interfaces
            3.1.2 Hardware Interfaces
            3.1.3 Software Interfaces
            3.1.4 Communications Interfaces
        3.2 Functional Requirements
            3.2.1 Information Flows
                3.2.1.1 Data Flow Diagram 1
                    3.2.1.1.1 Data Entities
                    3.2.1.1.2 Pertinent Processes
                    3.2.1.1.3 Topology
                    .....
                3.2.1.2 Data Flow Diagram 2
                    3.2.1.2.1 Data Entities
                    3.2.1.2.2 Pertinent Processes
                    3.2.1.2.3 Topology
                    .....
                3.2.1.n Data Flow Diagram n
                    3.2.1.n.1 Data Entities
                    3.2.1.n.2 Pertinent Processes
                    3.2.1.n.3 Topology
                    .....
            3.2.2 Process Descriptions
                3.2.2.1 Process 1
                    3.2.2.1.1 Input Data Entities
                    3.2.2.1.2 Algorithm or Formula of Process
                    3.2.2.1.3 Affected Data Entities
                    .....
                3.2.2.2 Process 2
                    3.2.2.2.1 Input Data Entities
                    3.2.2.2.2 Algorithm or Formula of Process
                    3.2.2.2.3 Affected Data Entities
                    .....
                3.2.2.m Process m
                    3.2.2.m.1 Input Data Entities
                    3.2.2.m.2 Algorithm or Formula of Process
                    3.2.2.m.3 Affected Data Entities
                    .....
            3.2.3 Data Construct Specifications
                3.2.3.1 Construct 1
                    3.2.3.1.1 Record Type
                    3.2.3.1.2 Constituent Fields
                    .....
                3.2.3.2 Construct 2
                    3.2.3.2.1 Record Type
                    3.2.3.2.2 Constituent Fields
                    .....
                3.2.3.p Construct p
                    3.2.3.p.1 Record Type
                    3.2.3.p.2 Constituent Fields
                    .....
            3.2.4 Data Dictionary
                3.2.4.1 Data Element 1
                    3.2.4.1.1 Name
                    3.2.4.1.2 Representation
                    3.2.4.1.3 Units/Format
                    3.2.4.1.4 Precision/Accuracy
                    3.2.4.1.5 Range
                    .....
                3.2.4.2 Data Element 2
                    3.2.4.2.1 Name
                    3.2.4.2.2 Representation
                    3.2.4.2.3 Units/Format
                    3.2.4.2.4 Precision/Accuracy
                    3.2.4.2.5 Range
                    .....
                3.2.4.q Data Element q
                    3.2.4.q.1 Name
                    3.2.4.q.2 Representation
                    3.2.4.q.3 Units/Format
                    3.2.4.q.4 Precision/Accuracy
                    3.2.4.q.5 Range
                    .....
        3.3 Performance Requirements
        3.4 Logical Database Requirements
        3.5 Design Constraints
            3.5.1 Standards Compliance
        3.6 Software System Attributes
            3.6.1 Reliability
            3.6.2 Availability
            3.6.3 Security
            3.6.4 Maintainability
            3.6.5 Portability
        3.7 Other Requirements

Showing Multiple Organizations
==============================

Can’t decide? Then glob it all together.

::

    3. Requirements Specification
        3.1 External Interfaces
            3.1.1 User Interfaces
            3.1.2 Hardware Interfaces
            3.1.3 Software Interfaces
            3.1.4 Communications Interfaces
        3.2 Functional Requirements
            3.2.1 User Class 1
                3.2.1.1 Feature 1.1
                    3.2.1.1.1 Introduction/Purpose of Feature
                    3.2.1.1.2 Stimulus/Response Sequence
                    3.2.1.1.3 Associated Functional Requirements
                3.2.1.2 Feature 1.2
                    3.2.1.2.1 Introduction/Purpose of Feature
                    3.2.1.2.2 Stimulus/Response Sequence
                    3.2.1.2.3 Associated Functional Requirements
                    .....
                3.2.1.m Feature 1.m
                    3.2.1.m.1 Introduction/Purpose of Feature
                    3.2.1.m.2 Stimulus/Response Sequence
                    3.2.1.m.3 Associated Functional Requirements
            3.2.2 User class 2
                .....
            3.2.n User class n
                .....
        3.3 Performance Requirements
        3.4 Logical Database Requirements
        3.5 Design Constraints
            3.5.1 Standards Compliance
        3.6 Software System Attributes
            3.6.1 Reliability
            3.6.2 Availability
            3.6.3 Security
            3.6.4 Maintainability
            3.6.5 Portability
        3.7 Other Requirements

Organized by Use Case
=====================

Good when following UML development.

::

    3. Requirements Specification
        3.1 External Actor Descriptions
            3.1.1 Human Actors
            3.1.2 Hardware Actors
            3.1.3 Software System Actors
        3.2 Use Case Descriptions
            3.2.1 Use Case 1
            3.2.2 Use Case 2
            .....
            3.2.n Use Case n
        3.3 Performance Requirements
        3.4 Logical Database Requirements
        3.5 Design Constraints
            3.5.1 Standards Compliance
        3.6 Software System Attributes
            3.6.1 Reliability
            3.6.2 Availability
            3.6.3 Security
            3.6.4 Maintainability
            3.6.5 Portability
        3.7 Other Requirements
