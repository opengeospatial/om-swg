# Minutes of the OGC O&M SWG meeting 14 August 2019

Time: 2019-08-14 at 10:00 EEST

Place: Remotely (GoToMeeting), [recording](https://portal.opengeospatial.org/files/?artifact_id=89564) available.

Participants (voting members in bold)
* **Ilkka Rinne (IR)**
* **Clemens Portele (CP)**
* **Kathi Schleidt (KS)**
* **Hylke van der Schaaf (HS)**
* **Alistair Ritchie (AR)**

Status: approved (2019-09-26)

## 1. Quorum determination and patent call

Five out of the total nine voting members were present, so the 1/2 quorum was reached.
No-one was aware of any patents that might affect the work of the SWG.

## 2. Change Request Proposal status & cut-off date
IR summarized that there had been a SWG no-objection type email vote on setting the cut-off date for the
OGC Abstract Specification Topic 20: Observations and Measurements version 2.0 (10-004r3), and
Observations and Measurements - XML Implementation, version 2.0 (10-025r1) to 30 September 2019. There was no objection
to the unanimous consent, so the cut-off date was set and announced on the TC-announce mailing list on 2 August 2019.

KS had taken a look at the change request proposals on the OGC Standards Tracker, and added one considering
potential observations. She suggested that the first step would be screen the CRPs to see which one are still current
and which have already been taken care of. KS asked whether there should be an explicit CRs regarding taking the
wisdom from SOSA and if so, how specific should they be. IR told that although the SWG can work also on other changes
than the ones mentioned in the official CRPs, it would be good if the SOSA/SSN related requests would be added to the
Tracker at least on a generic level.

KS asked if we also had the list of the ISO CRPs. IR told that he had this list in the systematic review comment table.
KS suggested listing both the OGC and ISO CRs in Github as issues. IR agreed that this would be good.

**Action: KS** will create issues of both the OGC and ISO CRPs in the OGC O&M SWG Github repository using the ISO comments provided
by IR.

IR summarized that after the cut-off on 30 September we should have all the issues to be addressed by the SWG or
delegated to the ISO 19156 project team as issues in the SWG Github repo.


## 3. O&M SWG charter, initial deliverables & timelines
IR went though the draft O&M SWG charter document. The following changes were decided:
* CP: the wording on "joint work with ISO" in the Purpose of the SWG is not clear: the wording suggested a
joint WG between OGC and ISO/TC 211, while based on the initial discussion the 19156 revision would be responsibility
of the ISO/TC 211 and the related OGC encoding standards that of the O&M SWG. IR told that the TCC Scott had made this
change in the wording, but that he agreed it would need clarification. CP argued that with this strict separation of
19156 issues and the encoding standards issues, the O&M SWG could not discuss the Abstract Topic 20 issues. IR replied
that the SWG could identify and list issues with the AS 20, but could not discuss solutions for those issues. **Action: IR** would
edit the text to clarify the roles of the OGC and ISO groups.

* KS noted that the in the "what is out of scope" there is an explicit mention that the SWG will not consider any CRS
submitted after the cut-off date, but above in "Scope of work" the SWG is given more wiggle room to also make changes
not originating directly from CRPs. CP suggested changing the working from "will not" to "may not", which was approved. **Action: IR**

* AR commented that the WaterML timeseries stuff was not included in the list of specific existing work used as
starting point. The Timeseries Profile of Observations and Measurements (15-043r3) would be added to this list. **Action: IR**

* CP asked if IR had any confirmation from the Testbed 16 sponsors for willingness to sponsor tasks testing the revised
O&M XML encoding. IR told that he had not at that point. IR also told that since the Testbed schedules span until the
end of the year, it may be too late to get all the input from the testbed for including in the standards with the planned
release at the and of 2020 and 2021. AR commented maybe the validation and testing could also be done in shorter
OGC interoperability experiments. It was decided to lax the wording in the graphical timeline to talk about the OGC
Innovation Program validation in general. **Action: IR**

* KS asked whether pipelining the ELFIE/SELFIE interoperability experiment insights should be
mentioned explicitly mentioned in the charter. AR replied that the ELFIE results do not look highly relevant unless
the SWG decides to go down the JSON-LD path in the encoding. It was decided that the reference to the original
ELFIE engineering report would be added to list of specific existing work used as
starting point and the in the References section. **Action: AR** would create a pull request with the ELFIE/SELFIE refernces
added.

* IR asked if anyone had any suggestions for items to add under "Similar or applicable standards work". CP suggested that
it would simple refer to the "Specific existing work used as starting point" chapter. It was decided to add this
reference (**Action IR**).

There was discussion on whether W3C SOSA is also an OGC Standard. AR told the while discussing the Simon Cox a few week
earlier Simon's position had been that SOSA was an OGC Standard. CP commented that he could not find in the list of OGC Standards.
**IR took an action** to confirm the status from Scott Simmons.

## 4. Regular remote meetings: time and frequency

IR suggested bi-monthly conference calls with face-to-face meeting at the OGC TCs. AR noted that the time of this meeting
was very poor for the Americans, and asked if there were American members in the SWG. **Action: IR** would send a new
poll in the SWG mailing list on new regular meeting time including options that would be at least somewhat more suitable
also for the US members. CP stressed the importance of keeping most of the discussion in the online resources such as
the Github issue tracker. This approach had worked well the OGC API Features SWG with globally distributed membership.   

## 5. Meeting at the Banff TC

The O&M SWG has a meeting slot at the Banff TC on Monday 9 September at 4:30 - 6:00 PM local time. AR was intending to attend remotely. IR did
not yet have an agenda for the banff meeting, so he asked the participants for any suggestions. Obviously the revised
charter would be on the agenda, and **IR took an action** to verify if the SWG needed to make a motion to suggest that
 the TC approved the charter.

## 7. Practicalities: collaboration tools
This point was not covered explicitly in the meeting, but the use of the SWG public Github repository
both for managing the issues and drafting the documents was discussed in the previous agenda points.

## 6. Other issues
None.
