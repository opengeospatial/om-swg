# Minutes of the OGC O&M SWG meeting 18 December 2019

Time: 2019-12-18 at 11:00 EET

Place: Remotely (GoToMeeting), [recording](https://portal.opengeospatial.org/files/?artifact_id=91654) available in the OGC Portal (requires Portal access).

Participants (voting members in bold):

* **Sylvain Grellet** (by proxy to Kathi)
* Rainer Häner
* **Clemens Portele** (by proxy to Ilkka)
* **Ilkka Rinne (IR, chair)**
* **Hylke van der Schaaf (HS)**
* **Kathi Schleidt (KS)***
* **Linda van den Brink** (by proxy to Ilkka)


Status: draft

## 1. Check for quorum, patent call
Quorum reached, 6 voting members represented with Sylvain's proxy to Kathi and Clemens' and Linda's proxies to Ilkka.

No affecting patents were identified.

## 2. "Housekeeping" of the smaller/simpler Github issues
KS brought up a discussion on using the process with Github issues: should we close an issue when we have an agreement on the proposed solution, or the when the change is actually carried out? KS and HS discussed on different solutions to this. HS proposed a tag "No discussion needed" rather than closing the issue. KS noted that it would nice to be able to clean the default view of the Github issues as we make progress in agreeing on the solutions, and in ELFIE the process used is that the issues are closed once there is an agreed plan on how to fix the issue. HS argued that if we close the issues early, we then need to remember to actually do all the agreed changes. IR added a new label "Relevant edits" to be used for issues that need to be taken into account during the final edits. There was an agreement to add this new tag to all the closed issues which still need to be reviewed during the final editing of the specification text.

KS presented issue she had gone through that were ready to be closed in her opinion:

**Issue #5: "Generic please update"**
No actions required, the group agreed to close this issue.

**Issue #7: "Keep the examples"**
KS told that all the examples in the 19156 are textual, and thus she thought they would be updated anyway when updating the textual content. No actions required at this point, the group agreed to close this issue.

**Issue #9: "Format issue"**
KS had not been able to find the formatting issue reported in this issue in either the Word or the PDF versions of 19156:2011. The textual content will be reformatted anyway, so KS proposed to close this. Agreed and closed.

**Issue #11: "Modify heading"**
KS proposed to change the heading from "Measurements" into "Measurements vs. Observations". There were no objections, and thus the issue was closed and tagged with "Relevant edits".

**Issue #12: "Define 'descriptive metadata'"**
KS proposed to change the metadata association to Any (as discussed in the issue #34). When describing this change, the unclear term "descriptive metadata" would have to be clarified anyway. KS added a note to #34 clarifying that the metadata class to use may be restricted in application profiles if needed. This this discussion and actions, KS proposed to close the issue #12. Agreed to to close the issue.

**Issue #6: "Revise references to the updated ISO"**
KS had merged related issues #10 and #13 with #6 and closed them. KS said she was worried about the relation with ISO 19123 (coverages): She was if anyone knew the what the status with this standard was, as the 19123-2 was done, but the 19123-1 seemed to be in under development. The 19123:2005 was deprecated because it should be replaced by 19123-1, but 19123-1 is not ready yet, so how to handle the references to 19123? KS told she would ask Peter [Baumann] about the status of 19123 revision. HS asked if the coverage specific things could be handled in a separate extension, so that the core standard would not have to link to 19123? KS commented that this question was linked to the possible multi-part specification issue. IR agreed, and added that the working group may have to get back to the this next summer after the CD ballot, but that it would be very useful to get a timeline for getting the 19123-1 done, so that it could be referred to from 19156. KS promised to contact Peter Baumann and ask what he recommends we do, and also double-check the recommendations with Scott [Simmons].

KS also noted that there was a mention on the use of DQ_element from ISO 19115. There is also a dedicated ISO standard 19157 for data quality, and thus it was unclear which standard the "resultQuality" property should point to for reference. She said that she did not know what to do with this issue, but that it should be addressed somehow, perhaps John [Herring] could answer this. IR asked for examples for using the resultQuality property. KS replied that it is used for air quality. KS agreed to ask John Herring for guidance on this issue.

KS had collected a list of the referred ISO standards, and was in progress of checking the latest versions of them. She told that she had had issues with accessing the ISO standards via the ISO Livelink website. IR told that he was not sure if he had access to these documents via Livelink either, but that he would request access from Mats [Åhlin]. KS added that formally the group members should have access to these documents since it's required for this work. IR commented that he had brought this up with Mats before, and that he thought it would be possible at this to have the access based on the list of the referenced specifications. KS told that it would be ideal if she could have the access before Christmas, because she could go through the references during the Christmas holiday season.

KS asked if there was already an up-to-date version of the Enterprise Architect UML model available somewhere. IR told that yes, he had added that to the O&M SWG Github under iso_19156_issues/ea/ on the morning of the meeting. He told that this version contained the edits for the 19156 Edition 2 made for to produce the UML images discussed in Toulouse, but otherwise the model was as-is in the ISO Harmonized model Github repository.

KS agreed to edit the comment in issue #6 to list all the ISO standards referenced in 19156:2011 and their possible revised versions.

**Issue 15: "OMXML: Add OGC Name for SWE*Observations"**
After some discussion and document browsing it was agreed that this was not directly related to 19156, as the issue is talking about a table in the OGC O&M XML Implementation standard. The table 6 of OGC 10-025r1 does not include the OGC names for SWE Common originated Observation types ScalarObservation and ArrayObservation. IR added a note to in the issue #15 to note that this issue was related to whether Scalar and Array Observations should be added to 19156. [IR added another comment to the issue correcting, that the issue did not really relate to 19156].

KS noted that this issue was similar to the issue 14: "Register of sampling feature types": the group needed to have a list of all the sampling feature and observation types to be added in the OGC Registry, if they were not already there.

**Issue 16: "OMXML: correct cardinality for 'sampledFeature' property"**
KS proposed to close this, as the issue had already been solved before the O&M SWG was re-activated. The group agreed to the close this.

**Issue #26: "Alignment of terminology with other observation models"**
KS told that she had create a Google document for the mapping between the different properties used in various observation models for the same things. IR commented that what comes to the alignment with SOSA, the question was whether we want to use the SOSA names as-is for O&M 3.0 or try to remain backward compatibility with O&M 2.0. He added that at least in the ISO 19156 project team at Omiya in December the participants seem to prefer the SOSA alignment over the backward compatibility with O&M 2.0. KS noted that to her it was important that we aligned with one or the other, and not try to invent a third option, like IR had proposed with the new "domainFeature".

KS brought up the fact that in O&M 2.0 most of the associations also have a name in addition to the roles. In SOSA the name does not exist, because the data model is RDF. She had left the association names out of the table because in the draft class diagrams for O&M 3.0 the names are also mostly not given. She asked for comments of whether the names should or should not be there in the table. KS added that she did appreciate the names for the "Domain" and "Range" associations. IR proposed to add a column for the Association name to the table, and add only the Domain and the Range there.

## 3. Discussion topic: Feature of interest and sampling property names
There was only a brief time to discuss this at the meeting. IR stated that he was ok for having the property named featureOfInterest pointing to the ultimate feature of interest. KS argued that she did not like this option: The featureOfInterest should point to the sampling feature, as this was the common practice for O&M 2.0. She would not want to change the name "featureOfInterest" as it was so well known: even the FoI acronym was well known.

It was agreed to add the Feature of interest and sampling property naming on the agenda of the next meeting.

## 4. UML modelling for the proposed changes
IR noted that Sylvain was still working on setting up the version control for the EA UML model. KS suggested that he should probably stop working on this, as there would most likely be little value for it since there already was the binary EAP file in the Github. She did ask IR to create a playground folder inside the EAP file for testing things out, to keep the discussion bits out of the actual agreed change proposals. IR agreed to make this change and push the new version. IR added that he would like people to use the fork and pull request method for editing the shared model. KS noted that merging would be very an issue if there were two forks. IR agreed. KS suggested working with local copies was far as possible for trying things out and then push to the Github when ready for comments, and try not to have more than one people editing the model at a time. This would be kind of brutal, but since there would only be a few people doing the edits and a limited time to do the changes it should work.

## 5. Meeting schedule for 2020
It was agreed that there would be weekly WG meetings on Wednesdays starting from 15th January until 26th February. IR promised to put these in the Portal calendar and also send calendar invitations to the core WG members.

## 6. Other issues
KS brought up the point of whether it would be possible to split O&M into a multi-part standard (Issue #37). She said that to here the Observation and Sampling could stand on their own, and the observable properties could be the third part. In her view the Observation model had not changed that much between O&M 2.0 and SOSA but the Sampling had. She said she liked the SOSA Sampling, but would like to have in brought in as a whole, and that the Sampling was now much more mature in SOSA than it had been in O&M 2.0, and that both the Observation and the Sampling were now stabilised.

KS did not want to rush the specification considering the Sampling topics. She wanted IR to ask Mats that if the WG is able to finish the new 19156 with only the Observation part by February 2020, would there be more time to draft the Sampling part properly after that? IR replied that while it might be possible to limit the scope of the 19156 revision task to the Observation part only, and even change the name into 19156-1 (part 1), but there would have to completely new working item proposals for the additional parts. This would mean separate processes, and perhaps also separate project teams. Anyways he thought that it would take quite some time before the work could be started for these new parts. IR promised to ask Mats about the process on possible multi-part splitting.
