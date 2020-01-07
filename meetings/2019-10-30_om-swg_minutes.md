# Minutes of the OGC O&M SWG meeting 30 October 2019

Time: 2019-10-30 at 11:00 EET

Place: Remotely (GoToMeeting), [recording](https://portal.opengeospatial.org/files/?artifact_id=90751) available in the OGC Portal (requires Portal access).

Participants (voting members in bold):

* **Ilkka Rinne (IR)**
* **Kathi Schleidt (KS)**
* **Hylke van der Schaaf** (by proxy to Kathi)
* **Clemens Portele** (by proxy to Ilkka)
* **Sylvain Grellet (SG)** (from point 5)
* **Linda van den Brink (LB)**
* Li Qingyuan

Status: approved (2019-11-13)

## 1. Check for quorum, patent call
IR noted that only two voting members were present, but with proxies from Hylke, Sylvain and Clemens the quorum was reached [Editor's note: SG joined in during point 5].

IR made the patents call, there were none.

LB expressed that she would like to be a voting member of the O&M SWG. IR and KS welcomed her.

## 2. O&M SWG meetings during the Toulouse TC

KS asked where is the ISO 19156 UML model to edit and how the editing would be coordinated. IR replied that as far as he understood ISO was in the process of moving into using a cloud based EA repository. IR promised to check out how the cloud based access works and return to the issue of coordinating the UML work after getting more information about working with the cloud based repository. KS told that she would like to have access to the model. She added that she would like to have some sketching done by the Toulouse meeting.

IR told that the actual O&M SWG meeting in Toulouse would be on Monday 18th November morning at 08:00 - 9:45 am local time. He had also requested for an addition session on Wednesday 20th November for drafting the issues starting from 10:00 - 15:00. IR promised to send the information about the Toulouse sessions to the entire SWG. KS noted that we should add agenda items for the sessions. IR agreed that the items would have to be added, and added for suggestions to the structure of the Wed session. KS suggested that the list of the Github issues would be a basis. IR suggested going through the Github issues during the on-going meeting to pick the high priority ones for the Toulouse meetings.  

## 3. Discussion on proposed ISO 19156 document parts / requirement classes
IR suggested that the ISO 19156 requirements would be explicitly expressed as identifiable requirements and grouped into requirements classes to which implementations could clearly declare conformity to. The core requirements class would include the requirements common for any O&M implementation. The other requirements classes would add addiotional requirements to the core. KS asked what the Observation templates shown in the Github issue #25 were about. IR told that this meant an Observation with no mandatory properties that could be used as a template for Observation instances in an Observation collection for example.

KS told that she was wondering if the Observation collection should be part to the O&M core requirements class. However, she also noted that she did not immediately see another good place for the collection either, so she was OK to leave in the core for the moment.

KS noted that the specialized obseervation types should probably by implemented using soft typing rather that hard typing as they are in the 19156:2011. The references to the Observation types would be done by pointing to the OGC registry and not specified as separate classes. She told that she would rather drop as many of the specialized observation types from the specification, as in practice the hard-coded specializations often do not fit the real world needs. IR argued that the question of hard vs. soft typing of the specialized observation types was more of an implementation issue than a an issue with the abstract Observation model. The OGC O&M XML schema uses soft-typing for the Observation type instead of creating XML types for each of the specialized types. KS was glad to hear this. She had been wondering about how this was done as in INSPIRE the specialized observations had been implemented using hard-typing also in the XML Schemas.

Regarding the OGC registry KS noted that Rob Atkinson had been active in establishing the governance structure for the OGC register/registry and was again being contracted part-time for implementing this. She also noted that there is an ISO standard for defining the registry governance, and the OGC registry was moving towards implementing this standard.

Regarding the document for OGC change proposals: KS asked whether the purpose was to first write the rationale for each change and then write the actual standard text separately. She was concerned about whether the proposal document content would be easily transferrable into the ISO 19156 standard document. After a short discussion it was agreed that the proposal document structure would follow the proposed requirement class structure of the new 19156 edition.

## 4. Github issue discussion & readiness review
KS noted that Simon Cox had made some comments on the Github issues, but otherwise not much had happened in these after the previous SWG meeting. IR commented that in the future he would like to be able to get status reports from the issue assignees in the SWG meetings, but that would be challenging with just a small number of meeting attendees. LB told that she would be willing to be assigned for the Observation collections issue (#2).

There was a discussion about the relationship of the abstract Observation and the Observations collections. KS outlined aa approach where the Abstract Observation would be extended by restriction to nail down the multiplicities of the properties. LB noted that there had been a work done in the Netherlands where specific tools had been developed to transform a complex XML Schema with heavy use of restriction into simpler schema without restriction. KS was interested in this, and LB said that it was probably possible to use it, and it worked, although she thought it was no longer used in the Netherlands.

IR asked how KS saw the implementation of the concrete instance of the abstract Observation as the container of the shared properties within a collection. KS replied that indeed the Observation collection would have to contain an instance of the Observation with relaxed property multiplicities, also allowing for multiplicities of more than one. She told that she would give this further thought during the follow few days and post a diagram of the proposed UML structure somewhere in Github for commenting.

## 5. Tasks to be completed before the Toulouse TC
IR proposed that the participants would choose the Github issues they felt should be discussed in detail during the Toulouse SWG sessions. SG joined the meeting. He pointed out that there was a serious conflict with the OGC TC schedule for Wednesday, as the Borehole IE meeting was at the same time as the morning part of the O&M SWG meeting (10am to noon). He asked if the morning session of the O&M SWG could be moved into the late Wednesday afternoon slot. IR promised to ask if this was possible.

SG told that there had been good progress with the issues #22 and #21, and that he would like to discuss those in Toulouse.

The following issues were voted for including in the Toulouse meeting discussion by the participants:

* The potential/abstract Observation (#18, KS)
* Ultimate Feature of Interest (#3, SG)
* UoM expression object (#22, SG)
* Object of Interest (#21, SG)
* Incorporate SOSA/SSN Concepts (#19, LB)
* Add SOSA Platform (#28, KS)
* O&M Core requirements (#29, IR)
* Lineage of observations (#24, KS)

IR promised to write these down on the meeting agenda and send it by email to the SWG members as soon as possible.

## 6. Other issues

There were no other issues.
