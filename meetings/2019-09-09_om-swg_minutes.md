# Minutes of the OGC O&M SWG meeting 9 September 2019

Time: 2019-09-09 at 16:30 MDT

Place: Remotely (GoToMeeting), [recording](https://portal.opengeospatial.org/files/?artifact_id=90216) available in the OGC Portal (requires Portal access).

Participants (voting members in bold)

* Linda van den Brink (LB)
* **Sylvain Grellet (SG)**
* Michael Gordon (MG)
* Hans-Christoph Gruler (HCG)
* **Steve Liang (SL)**
* **Clemens Portele (CP)**
* **Ilkka Rinne (IR)**
* **Hylke van der Schaaf (HS)**
* **Kathi Schleidt (KS)**
* Scott Simmons (SS)

Status: approved (2019-09-26)

## 1. Quorum determination and patent call

Six out of the total nine voting members were present, so the 1/2 quorum was reached.
No-one was aware of any patents that might affect the work of the SWG.

## 2. O&M SWG Charter revision status
IR told that the revised charter had been posted in the Pending folder before the three-week deadline for the Banff TC meeting, the public RFC was active and would end on 27th September [Note: the deadline was actually 18 September]. He had not heard of any comments at that point. IR mentioned that he would be presenting the revised Charter at the closing plenary. He then presented the closing plenary slides quickly to the participants and asked for any comments, there were none.

## 3. OGC - ISO/TC 211 collaboration (ISO 19156/OGC Abstract Specification Topic 20)
IR told that he would like to have an online document for drafting the OGC-preferred solutions for these issues which everyone could comment on and contribute to, but it was not clear during that time if ISO/TC 211 would be OK with drafting this kind of proposed solutions document in open. He had sent an email to the ISO/TC 211 committee manager Mats Åhlin with this proposal, but had not yet heard back from him.

This unofficial document would then be submitted to the ISO 19156 project team as input for their work. SS commented that since the NWIP [new work item proposal] for revising the O&M Standard originated from OGC, this document should be on official OGC document as the O&M is still technically a joint standard between ISO and OGC.

## 4. Change request/issue status and tasking

**Potential Observation**: IR presented the issue #18 in the Github repository. An Observation "template" with no mandatory properties could be used in several used cases for capturing the part of the Observation properties which are invariant in a particular context. Examples would be more efficient expressing collections of homogenous Observations, observing capabilities, or using O&M Observation as coverage metadata (result-oriented view). IR asked if anyone in the room had interest in Observation collections as presented, and if yes, would this approach seem sensible. The participants seemed to agree that the approach made sense.

**SSN/SOSA attribute naming**: SG told that he had created an issue in the standards tracker about harmonising the feature-of-interest concepts between SSN/SOSA and the O&M data model [Editor's note: this issue is at http://ogc.standardstracker.org/show_request.cgi?id=602].

**Register of sampling feature types**: KS there is no registry for the various sub-types of the standard features used in the Observation instances. She asked if other feature types were registered somewhere in the OGC registry. SG replied that Rob Atkinson had made some work with defining hydrology-related feature types using SKOS. SG asked if KS meant that the same kind of work as done in INSPIRE for identifying a generally useful set of feature types should also be done in OGC. **Action: KS** agreed to asked the soil people for more input in this issue. SG argued that it's not in the scope of the O&M SWG to define feature types used in various application domains. CP agreed, defining and maintaining feature types is not in the SWG charter, and thus would require another update on the charter. KS asked if the O&M SWG define at least basic types which the various domains could refer to. CP asked for an example of such base type, and KS replied that as in the issue, a plot could be one such example. SG was concerned that a line would have to drawn somewhere on how for to go with these definitions. IR closed the discussion by stating that the pros and cons should be added to as comments to the Github issue for further discussion.

**Ultimate feature-of-interest**: IR asked if there were comments on separating the ultimate FoI and the sampling feature, if this separation would make things more complicated in some cases as there would no longer be a chain of sampling features linked to an ultimate feature of interest? HS replied that it may of course make some things more complicated, but in many cases it would make things much simpler. SG also agreed that separating the two would simplify things in most cases. IR brought up an example of querying Observations directly based on the ultimate feature of interest, instead of though an intermediate sampling feature. HS agreed that this was an important use case. SG commented that this would also help defining queries for APIs: the domain people are interested in the UFoI in most cases.

KS asked if the ultimate feature of interest property should have a cardinality of one or more. IR asked if KS meant more than one spatially distinct features-of-interest or referring to more than one level of a hierarchy. KS clarified that the UFoI could be different in different contexts. KS and SG came up with a case of where an observation might have both a river and an administrative unit as the ultimate feature of interest. SG argued that as this would reflect the relation between a river and the administrative unit, this may again be a domain specific requirement and thus possibly out of scope the the generic O&M model. KS commented that SOSA is an ontology and one can provide as many ultimate features of interest as one wants. Sg asked if we were limited to UML? IR replied that we have to use UML for describing the data model in the ISO specification. **Action:** IR noted we would need more examples of the use cases where having multiple ultimate features of interest. He also urged to add this discussion to the related Github issue.


**Action (all):** IR reminded that the cut-off date for the change proposals was still open until 30 September, and urged everyone to submit their proposals in the OGC Standards tracker before that time. CP asked if a Github issue would be sufficient or if the Standards Tracker should be used. IR replied that if the change considers only the XML encoding, then Github issue would be OK. Otherwise the Standards tracker should be used.

## 5. Project Organisation: timelines, meetings, collaboration

IR summarised the upcoming deadlines and major meetings. The deadline for the ISO 19156 Committee Draft is 31 December, and the ISO 19156 project team should be able to present the intended changes in the ISO/TC 211 meeting in Japan on 9 - 13 December. Thus to leave the ISO project team enough time to draft the UML and document text changes, the OGC proposed changes document should be ready by the OGC Toulouse TC meeting in November.

IR told that he would like to get the tasks for the individual changes assigned to the SWG members in the next meeting. **Action (all):** He urged the participants to think about which issues they would be most interested to work with by the next meeting on week 39.

IR noted that it may look a bit strange that the O&M SWG would start drafting the O&M XML encoding changes while the changes to the ISO 19156 document have not been made publicly available. Even the Committee Draft is not available outside the TC 211, only at the Draft International Standard version the document is made publicly available. KS asked if the SWG expects to see much of a pushback on the proposed 19156 changes from ISO. IR replied that he did not expect to see much pushback from the ISO before the Committee Draft version, as the ISO project team has a lot of freedom in making the draft changes. Most of the ISO comments and possible pushback is expected while reviewing the CD version to prepare for the DIS version. KS suggested that the SWG would see the XML encoding changes as testing out the feasibility of the suggested ideas, and would adapt the encoding based on the ISO member feedback.

KS told that she was concerned about the timeline for getting the ISO 19156 Committee Draft ready. The time between the OGC TC meeting in Toulouse in 18-22 November and the ISO/TC 211 plenary week in Omiya in 9 - 13 December would be a short one, as well as the time for drafting the OGC proposed changes before the Toulouse meeting. **Action (all):** The working group members should make themselves available for the work during this time in order to be able to complete the work within these deadlines.

IR asked whether the participants would think it would be a good idea to have a face-to-face meeting between the OGC TC at Banff and the OGC TC in Toulouse to speed up the work. CP commented that this was probably not realistic to be able to fit in such a meeting as the time between the TC meeting is practically inexistent.

## 6. Other issues

**Action (voting members)**: IR urged the voting members to cast their vote in the Doodle poll for the date and time for the next SWG meeting, he was planning in choosing the meeting time option during the Banff TC week and sending the note in the SWG mailing list.
