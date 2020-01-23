# Minutes of the OGC O&M SWG meeting 13 November 2019

Time: 2019-11-13 at 11:00 EET

Place: Remotely (GoToMeeting), [recording](https://portal.opengeospatial.org/files/?artifact_id=90916) available in the OGC Portal (requires Portal access).

Participants (voting members in bold):

* **Ilkka Rinne (IR)**
* **Kathi Schleidt** (by proxy to Sylvain)
* **Hylke van der Schaaf** (by proxy to Sylvain)
* **Clemens Portele** (by proxy to Ilkka)
* **Sylvain Grellet (SG)**
* Li Qingyuan

Status: approved (2020-01-22)

## 1. Check for quorum, patent call
IR noted that the quorum has achieved due to Kathi's, and Hylke's proxies to Sylvain and Clemens' proxy to Ilkka. IR
noted that because of the inactivation of a couple of the original charter members due to not being present in the SWG
meetings, only 4 voting members would be required to reach quorum.

No affecting patents were identified.

## 2. Approval of the minutes of the last meetings
IR had sent the draft minutes on the 30 October 2019 meeting to the mailing list. There were no comments to the minutes,
and thus the comments were approved.

## 3. Status of the ISO 19156 proposal drafting work
SG noted that there had been progress in the issue of the OGC registries with regards to soft or hard typing also
discussed in the meeting on 30 October. However, there was not clear conclusion of the issue yet, and the matter of
being forced to use UML was not helping in solving them. KS wanted to make sure that these were on the agenda of the
Toulouse TC SWG meeting.

IR asked SG whether it would make sense for the group members assigned to the issues agreed to be discussed in Toulouse
to briefly present each issue and collect the participant input for those issues during the Toulouse SWG sessions.
SG agreed that this would make sense. SG agreed to introduce issues #21 and #22.

SG proposed to add a new discussion point for Wednesday session of the Toulouse TC on handling the restrictions of
being forced to use UML. He said he would comment on Github issues about the UoM expression object (#22) and the object
of interest (#21) to add that there was a consensus that these concepts were necessary, but the best implementation
option was open. He also noted that the option of pushing this issue outside of the core by stating that the observed
property could be specialised to handle these, was an issue for BGRM, because these terms should be described in the
19156 specification for interoperability reasons. SG wanted to discuss on the best way to define this (whether it would
be better to use some kind of ontology oriented approach or pure UML using APIs to navigate and access data). He
referred the INSPIRE O&M guidance (D2.9), which includes some concepts as non-connected "dangling classes", which would
define the concepts clearly, but would leave it open to the implementors on which places on the application or domain
models these classes should be used. IR asked SG for a short description for the new issue by email. IR regretted that
in spite of SG's request, he had not been able to switch the Wednesday morning O&M SWG session with a WG meeting in the afternoon, as the
afternoon WG was also facing the same conflict with the Borehole IE session as SG was. SG told that his colleague
Abdel [Abdelfettah Feliachi] from BRGM would present the issue in Toulouse as he would have to lead the Borehole IE
session of at the same time.

IR told that he could confirm that after discussion with John Herring and Mats Åhlin, the ISO 19156 committee draft submission
deadline was postponed until the end of March 2020, as requested in the previous meeting. This would also mean that the editing
committee session for discussing the addressed CD ballot comments would be held remotely after the June ISO/TC 211 meeting
in Helsinki. The OGC proposals for the changes should be ready at the start of March to leave enough time to draft the CD version of the new 19156 specification.

IR opened the discussion on the best ways to get the working group members actively involved in the standard
drafting process during the first two months of 2020. Based on his previous experiences SG suggested that it would make
sense to clearly communicate the changes made and pinpoint the parts we want them to comment on. SG would have preferred an interoperability experiment to test things out, but in this case it was not possible due to the tight schedule. IR added that the proposals document should be fleshed out as soon as possible after the Toulouse meetings to act as a single entry point for the things already agreed and as well as things still under thought, with links pointing to the related Github issues. SG agreed to this approach. IR also suggested to have a webinar on the proposed changes at some point, as it would probably not be possible to have physical SWG meeting before the March TC.


## 4. Preparations for the Toulouse TC
IR told that he would email the people assigned with the Github issues chosen to be discussed at the Toulouse TC meetings to ask them to prepare brief introductions on these topics, and gather the discussion on those points if these people will be present in person.

IR asked if the core requirements issue (#29) should be moved from the Wednesday morning session to the Wednesday afternoon session. SG suggested moving this issue to end of the Wednesday afternoon session since it would be best to discuss ir after the other issues. IR promised to see that even though it would now be the last discussion item, there would still be time to discuss it.

## 5. Other issues

SG suggested that there should be discussion within the OGC on how to push something else that UML under the OGC umbrella, such as the SOSA. IR asked SG about the best working group to discuss this? SG told that the specific parts related to the O&M conceptual model should be handling within the O&M SWG, but there were also more generic questions related to this, some of which are already intensively discussed within the SELFIE, OGC Naming Authority and the OGC Staff, and minimal ontologies are being produced for GeoSciML and WaterML, which are kind of around O&M. Geosemantics WG should also be involved in the discussion. For the latter issues the discussion needs to be broader that the O&M SWG. IR continued be pointing out that it would be a good to approach to have specific example solutions with a good fit to a particular domain, such as O&M, and the a broader OGC discussion whether there would be a common, generally applicable patterns to extract from these. SG told that within SELFIE the process was that these ontologies were created for the three different OGC standards within the SELFIE group, and then each related SWG had to confirm that these ontologies matched the particular standard, after which they could be moved into the OGC NA for addition to the OGC registry [definitions server]. He did see that the O&M SWG would be in position to created an equivalent ontology for O&M concepts. This does not need to happen within the timeline of the ISO 19156 revision, but it should be done. IR commented that the O&M SWG need to discuss whether a specific OGC document needs to be published to describe a particular version of this ontology published in the OGC registry. SG agreed, and told that he was concerned about the possible unwanted artefacts to the items put in the OGC registry from design restrictions of UML as the used modelling language.
