# Minutes of the OGC O&M SWG meeting 15 January 2020

Time: 2020-01-15 at 11:00 EET

Place: Remotely (GoToMeeting), [recording](https://portal.opengeospatial.org/files/?artifact_id=91839) available in the OGC Portal (requires Portal access).

Participants (voting members in bold):

* **Ilkka Rinne (IR)**
* **Kathi Schleidt (KS)**
* **Hylke van der Schaaf (HS)**
* **Clemens Portele** (by proxy to Ilkka)
* **Sylvain Grellet (SG)**
* **Abdel Feliachi (AF)**
* **Linda van den Brink** (by proxy to Ilkka)

Status: approved (2020-01-22)

## 1. Check for quorum, patent call
Quorum reached, 7 voting members represented with Clemens' and Linda's proxies to Ilkka. Abdel Feliachi had requested a voting member status and was granted one after a 30-day period from joining the SWG.

## 2. Approval of the minutes of the previous meetings
IR told that the draft minutes of the following O&M SWG meetings held in 2019 were unapproved and apologised that he had only been able to post most of them in January:  
* [2019-09-26](https://github.com/opengeospatial/om-swg/blob/master/meetings/2019-09-26_om-swg_minutes.md)
* [2019-10-16](https://github.com/opengeospatial/om-swg/blob/master/meetings/2019-10-16_om-swg_minutes.md)
* [2019-11-13](https://github.com/opengeospatial/om-swg/blob/master/meetings/2019-11-13_om-swg_minutes.md)
* [2019-12-04](https://github.com/opengeospatial/om-swg/blob/master/meetings/2019-12-04_om-swg_minutes.md)
* [2019-12-18](https://github.com/opengeospatial/om-swg/blob/master/meetings/2019-12-18_om-swg_minutes.md)

It was decided that the approval of these minutes would be postponed to the next meeting to give people time to read the minutes.

## 3. Discussion multi-part specification and revision timeline
IR told that based on the information he had got from Mats Åhlin, the process of splitting the ISO 19156 into a multipart specification would be too much effort compared to the expected benefits: the current 19156 revision process would have to cancelled and new tasks to be established for the specification parts. This would probably take a few months at least, maybe more, and would mean a lot of extra work. KS added that she had also discussed this option with Peter Baumann leading the similarly split 19123 tasks, and he had not recommended the splitting process.

KS asked about the possibility for another extension for the revision deadlines mentioned by IR in the Github issue #37. IR told that Mats Åhlin had proposed extending the CD ballot version deadline until September 2020 and the DIS target date to June 2021 as an alternative approach to splitting the specification. The group agreed that getting all the issues covered and the OGC proposed changes documented by the end February was not realistic, but the end of August would be. IR promised to request Mats for extension of the CD version deadline until the end of September 2020.

IR also checked that group still agreed on splitting the 19156 requirements into separate requirements classes within the one specification. There were not objections to this.

## 4. Object of interest, UoM expression object and Observable property
SG presented the context for the issue and the proposed modelling options for capturing the information about the observable property, feature of interest, object of interest and unit of measure. KS noted that in the example case presented (mass concentration of lead in water of a river) the object of interest could only capture the lead, and not a chemical compound like lead oxide. SG agreed that this was a good question, and added that there should be catalogue entries for both one for lead and the other for lead oxide as objects of interest with a described relation between them.

KS commented that it looked like the issue could be solved be defining a well-planned structure behind the observable property, with not additional requirements for the other Observation attributes. However she was concerned that the proposed options did not cover the INSPIRE observable properties model. GS argued that the observable properties model was given as an informative section of the INSPIRE Technical Guidance D2.9. AF and SG argued that the INSPIRE observable properties model would also not by itself be sufficient for fulfilling requirements of the issues #21 and #22 as it did not distinguish the object of interest (presence of lead) from the observable property (mass concentration of lead in a sample).

KS commented that if the INSPIRE observable properties model would have covered 95% of what we would need, that she would have suggested taking and polishing it and incorporating in into the O&M. But since it looks like this is not true, and also based on the comments she had got from Dom [Dominic Lowe] stating that the INSPIRE model was a good idea, but not yet fully digested, she would suggest pulling the observable property model issue out of the O&M revision and into its own body of work to addressed in the context of the OGC after the O&M abstract model revision work would be completed. With this approach SG had a concern that would the work and discussion already achieved here be taken down as an informative part of something in order not to teleport the processing of the whole issue five year or so into the future? IR commented that working for an OGC standard for the observable properties would be considerably easier that trying to standardise it at the ISO level. SG argued that if this issue was not taken forward within this standard, the only way to express this information was the O&M parameters with each community defining it's own naming pattern. In projects where the data sharing needs to be done across communities the community specific patterns become an issue.

SG reminded IR that there was an agreement in one of the previous SWG meetings to add the task for an ontology oriented discussion as opposed to the UML, XML and JSON oriented ones, relatively early on in the O&M SWG timeline table on the [Github repository main page](https://github.com/opengeospatial/om-swg). KS argued that she could see us deriving an ontology from the abstract Observation after completing the work on the abstract model. She argued that right now this was not the top priority however, especially as the extension of the project deadlines was not confirmed. If the extension could not be agreed, then what ever we would have in about six weeks is what we would be damned to. SG agreed that considering the time constraints for the 19156 revision, it made sense to handle this issue as a separate work, to be handled either within O&M SWG or in another forum, such as a specific interoperability experiment.

KS asked whether the decision to leave the detailed observable property model out of the current 19156 revision process would also mean that there would not need for a concrete observable property class (issue #31)? SG agreed that this issue could then be closed.

## 5. FeatureOfInterest, UltimateFeatureOfInterest, Sample, SOSA Sampling etc.
IR opened the discussion on the property names and the UML target classes for the proximate and the ultimate feature of interest. After a general discussion SG summarised that there were two options on the table: The first having the FoI property would pointing to the ultimate domain feature and another property, perhaps hinting to sample in its name,  to the sampling artefact. The second would use the FoI property to point to the sampling and having a new UltimateFeatureOfInterest property pointing to the ultimate domain feature. SG promised to add this information to the Github issue #35. KS added that in addition to issue of property naming there was another issue to discuss in the UML model proposed by IR: there was a constraint stating that either the there had to be at least one instance of either the (proximate) feature of interest or the ultimate feature of interest. She did not like the idea that everyone building an application would always have to check both properties to discover the FoI. She would rather have the feature of interest be mandatory in the concrete Observation class. SG was not sure if he would agree. In some cases it should be sufficient to only provide the UltimateFeatureOfInterest. AF, HS and IR also noted that the providing the sampling information was not useful or wanted in some data provision cases.

SG suggested that as the time was running out for the meeting, and as the very same topic is also being discussed within the Extensions to the SSN (https://w3c.github.io/sdw/ssn-extensions/) mentioned in the comment on the issue #3, that the FoI discussion would be selected as the core discussion for the next week's telco. The group agreed with the suggestion.

## 6. Other issues
Based on the discussion KS had had with the original reporter of the issue #15 Arne Böring, she was suggested closing issue with no actions needed. Arne could not remember where this issue pointed nor the why it would be important to solve. It was agreed that the issue would thus be closed.  
