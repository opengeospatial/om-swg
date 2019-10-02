# Minutes of the OGC O&M SWG meeting 26 September 2019

Time: 2019-09-26 at 19:00 EEST

Place: Remotely (GoToMeeting), [recording](https://portal.opengeospatial.org/files/?artifact_id=90490) available in the OGC Portal (requires Portal access).

Participants (voting members in bold):

* **Ilkka Rinne** (IR)
* **Kathi Schleidt** (KS, from point 3)
* **Sylvain Grellet** (SG)
* **Clemens Portele** (CP)
* Scott Simmons (SS)
* Li Qingyuan (LQ)

Status: draft


## 1. Check for quorum, patent call
IR noted that since only three voting members were present, the quorum of 1/2 of the voting members was not reached, and thus no official decisions could be made in this meeting. [Editor's note: KS joined in during point 3, but at least five out of nine voting members would have been required for a quorum].

IR made the patents call, there were none.

The Chinese representative in the ISO 19156 project team LQ introduced himself and told that while his English was not too good, he would be willing to contribute to the O&M revision work by commenting and reviewing the content. IR guided LQ to join the O&M SWG as an observer by the OGC - ISO/TC 211 liaison agreement: IR told that he and the OGC staff could help LQ with the practicalities (**Action IR, SS**).

LQ also commented that the ISO 19156:2011 had recently been translated into Chinese and adopted as a national standard in China. He noted that current name of the document "Observations and measurements" was perhaps a bit misleading, as the measurements part was handled only very briefly as a specific subtype of an Observation. Observations and sampling would be closer to the actual content. IR agreed, but also noted that perhaps the name of the document was not one of the biggest issues to discuss at the moment.

## 2. Minutes of SWG meetings held on 14 Aug & 9 Sept

Both minutes of the previous O&M SWG meetings held on [14 August](https://github.com/opengeospatial/om-swg/blob/32cfa991a0378f75005285d67a89c6d8bbcc192c/meetings/2019-08-14_om-swg_minutes.md) and [9 September](https://github.com/opengeospatial/om-swg/blob/a44ffb7448c813a964ef7e2320791792ca97cb83/meetings/2019-09-09_om-swg_minutes.md) 2019 were approved.

## 3. Change Request Proposal status

IR told that the there were some new change requests in the OGC Standards Tracker since the last meeting at the Banff TC.

### [CRP 602](http://ogc.standardstracker.org/show_request.cgi?id=602) "Proximate/ultimate feature of interest clarification"
IR briefly presented the issue reported by SG, who had technical issues with connecting to the meeting at that point. IR added that the SWG should make sure the additional details of this issue were added to the Github issue related to ultimate feature of interest. **Action: SG, KS**.

### [CRP 608](http://ogc.standardstracker.org/show_request.cgi?id=608) "object of interest"
IR also presented the issue, also reported by SG, and asked if anyone had any comments. CP told that while he was not personally convinced that a new Observation property "object of interest" would be needed, this issue would have to be discussed in a SWG meeting with more participants. SG was able to join and described the issue in more detail. KS also joined in at this point. The core of this issue was being able to distinguish the observed "object" or "substance" from the observed property (concentration of the measured substance in a volume etc.). KS commented that the name "object of interest" would be so close to the feature of interest that it would cause confusion. CP commented that there was now substance in all Observations. KS argued that just about all observable properties have these two components when you break them down. In most cases these are assumed implicitly and folded down into one, and that this was an old issue being discussed for decades.

IR asked SG to add the issue in the Github issue list, and to add more examples highlighting the need for this change. **Action SG: add into Github**.

### [CRP 609](http://ogc.standardstracker.org/show_request.cgi?id=609) "Distinguish between the sensor and observing procedure"

This issue had been added by IR based on the discussion with Simon Cox. The justification for this change as described in the change request is being able to filter collections of Observations both by the "recipe" used for making the observations and a particular sensor (implementation of the recipe). CP asked IR for a confirmation on if this separation was already made in the OMSF model, IR confirmed that it was. KS asked if the "sensor" here would be an instance or a class of the sensor. She added that whether the procedure should be instance or observation class level information had been a long standing open issue in O&M, and due to the lack of guidance people continue to implement it differently.

SG asked if the issue was addressed in the INSPIRE D2.9 [O&M guidance]? KS replied that in INSPIRE the observation class was recommended, but when she was implementing the Austrian air quality data publication this was simply not possible. SG confirmed that in the INSPIRE guidance the recommendation was not to refer to the procedure used for a specific Observation instance, and that the procedure should be a community managed vocabulary. KS commented that simply adding more options and structure to describe various pieces of information about how the Observation value was obtained, does not necessarily result to improved clarity: Packing all properties as top level properties makes things complicated. She continued suggesting that recommending to make both the process and the sensor type available in the process definition (linked from the procedure property) should suffice as this kind of filtering requirement is not a very common use case. IR concluded that this issue clearly needed more justification and discussion. **Action SG: add into Github**.

### [CRP 610](http://ogc.standardstracker.org/show_request.cgi?id=610) "uom expression object"
SG introduced the issue behind this change request: In certain cases, specifically related to chemical measurements, the measured properties are amounts or concentrations of chemical compounds (such as nitrate, Nh4) per unit volume, while the actually interesting substance is nitrogen, not nitrate. Without the knowledge of if the unit of measure (mg/L) of the provided result actually refers to mg/L of Nh4 or N it's not clear how to interpret the result. There was a lively discussion around the topic which IR had to bring into a close due to time restraints.

### Other issues
IR concluded that all the new CRPs since the last meeting for the Abstract Specification topic 20 had now been discussed and there were no new CRPs for the O&M XML implementation standard.

SG asked if IR thought the out-of-band result provision options described in the INSPIRE O&M guidance (D2.9) Annex K should be taken forward within the context of the O&M SWG, and if yes, did IR think it this was already in the scope of the charter via mentioning the INSPIRE requirements in general, or if a specific CRP should be added for this issue. IR replied, that an explicit CRP would be better to make sure this issue is not forgotten in the process. SG promised to add a new CRP referring to the Annex. **Action: SG: add into Github**.

SG pointed out that the reference to the INSPIRE D2.9 document in the Charter version 19-052r1 was not pointing to the latest version 3.0 but to the 2.0rc3, which it should point to. **Action: IR** promised to fix the reference.

SG promised to add Github issues for the CRPs he had added to the OGC Standards Tracker since the last meeting.

## 4. O&M SWG re-charter status
IR told that there were still a couple of days left to submit CRPs before the cut-off date of 30 September, and urged the participants to submit CRPs for any issues they felt important for the SWG to cover. He also noted that there was a bit of a confusion about the deadline for the public comments for the revised charter: the press release mentioned both 18th September and 27th September but the 18th was some kind of mistake, and the 27 September was the correct public comment deadline. IR had not heard of any comments by the time of the meeting. He told that if there were no comments, the charter would next go to TC email vote. IR asked SS if there was something the SWG needed to move the process forward. SS replied that no actions were required, but the SWG could make some minor edits if it so wished. After that it would be a simple 2-week TC email vote to approve the revision. **Action IR** told that the wrong link to the INSPIRE O&M guidance document would at least be fixed.

## 5. Banff meeting results
IR told that the O&M SWG had met at the Banff TC, but perhaps the most important result achieved at Banff had been confirmed after the O&M SWG meeting: ISO/TC 211 had confirmed that it would be ok as a process for the OGC O&M SWG to create a document with a list of proposed changes to the ISO 19156 document and submit this document to the ISO 19156 project team as input for revising ISO 19156 Committee Draft version. In practice this meant that the OGC change proposal document could be prepared in an open fashion within the OGC using the OGC public Github and other necessary tools, and thus most of the hard thought work for the proposed ISO 19156 revision could be done within the OGC O&M SWG.

IR showed the skeleton he had created as a base for the proposed changes document in the O&M SWG Github. KS asked if it would make sense to split the current document with all the proposed changes into multiple documents in order to avoid conflicting changes. SG said he liked the proposed structure, but supported the suggestion by KS to split the document for editing and merging the final result. He asked CP how the editing had been done in the Spatial Data on the Web specification. CP answered that he thought it was a single document. Editing the text works perfectly OK usually [when using git merge]. There could be conflicts but he did not think it would be that frequent.

IR noted that the SWG would need to have the change proposal document more or less ready at the Toulouse TC meeting, so there was no time to waste. KS commented that the time schedule was one of her biggest worries: She felt that the ISO 19156 Committee Draft deadline of 31 December was unrealistic. SG asked if the the three-week rule for posting material to the Pending folder applies to this proposal document. IR and CP replied that it did not. IR commented that if the O&M SWG is not able to provide the proposals in time, there needs to be a discussion whether the 19156 revision schedule needs to be adjusted. KS added the she had discussed the schedule with the Roland Grillmayer earlier that week, and he had suggested asking for postponement. CP commented that this would not the best time to ask for the postponement, because the next time anyone at ISO would be discussing this would be at the ISO/TC 211 meeting in Japan in December, as they only operate at meetings basically. KS asked if the timeline adjustment can be asked at the meeting, or would it have to be applied in advance. IR replied that it would make sense to discuss the issue in advance with Mats Åhlin, when there is a clear idea on how much more time would be needed.  CP added that the really important question would be the time when the revision project will be cancelled. He checked the timeline from the project web page, and the DIS version deadline was July 2020 and the cancellation time January 2021, so there was a little bit of extra time.

KS pointed again that she did not see the current timeline as anywhere near realistic. She was afraid that all the major issues would have to cut out due to not having enough time to address them. IR replied that it was very good that KS brought this up, and that he was also a bit worried about the time, but the issue with the timeline needed to be discussed in a meeting with more working group members present. IR added that regardless of whether the timeline is postponed, the WG needs to start working with the proposed changes immediately. KS agreed.

Coming back to the issue of drafting the proposal document as split or as a single document, IR proposed using the Github issues as a discussion platform, and drafting the document as a whole. KS replied that she would be happy with this approach, and suggested that if someone was unhappy with the way the document text was drafted, it could also be discussed in the related issues.

## 6. ISO 19156 proposed changes document: tasking and schedule
IR told that he would like to start assigning the Github tasks to particular working group members. He asked for volunteers for creating the initial drafts for solving the issues by proposed changes to the ISO 19156 document and the UML models. The following people registered their interest as volunteers:

* [Potential Observation](https://github.com/opengeospatial/om-swg/issues/18): KS & CP (CP would be mostly commenting and reviewing)
* Issues for the CRPs [602](http://ogc.standardstracker.org/show_request.cgi?id=602), [608](http://ogc.standardstracker.org/show_request.cgi?id=608) and [610](http://ogc.standardstracker.org/show_request.cgi?id=610): SG
* Out-of-band result (to be added): IR
* [Ultimate feature of interest](https://github.com/opengeospatial/om-swg/issues/3): KS

SG suggested that the Github [issue #19](https://github.com/opengeospatial/om-swg/issues/19) "Incorporate SOSA/SSN Concepts" would be closed and split into atomic issues. KS replied that shed just wanted to mirror the ISO and OGC CRPs in Github for completeness. She added that she left it open on purpose to act as a hook to check if there were any other SOSA concepts to consider apart from the already linked more detailed issues.

CP asked if we should ask the the submitters of the change proposals to provide the details for the proposed changes. IR replied that this was true regarding the issues, but the original submitters may not have finalised solutions for those issues. Of course if the submitters already had concrete solutions to provide, that would be helpful.

KS noted that he could not find where he could assign the issues in the om-swg Github repo. CP commented that probably only the WG chairs were allowed to assign issues by default. CP said that KS needed to talk to Scott or Greg to get the privileges. IR promised to do the task assignments based on the discussion together with KS (**Action IR & KS**).

## 7. Other issues

No other issues.
