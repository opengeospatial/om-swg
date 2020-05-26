# Minutes of the OGC O&M SWG meeting 13 May 2020

Time: 2020-05-13 at 11:00 EEST

Place: Remotely (GoToMeeting), [recording](https://portal.ogc.org/files/?artifact_id=93303) available in the OGC Portal (requires Portal access).

Participants (voting members in bold):

* **Ilkka Rinne (IR)**
* **Kathi Schleidt (KS)**
* **Linda van den Brink (LB)**
* **Sylvain Grellet (SG)** 
* **Clemens Portele** (by proxy to Ilkka)
* **Hylke van der Schaaf (HS)** 

Status: draft

## 1. Check for quorum, patent call
Quorum reached, 6 participants from 6 voting member organisations represented Clemens' proxy to Ilkka.

No affecting patents were identified.

## 2. Approval of the minutes of the previous meeting(s)
The minutes of the [29 April](https://github.com/opengeospatial/om-swg/blob/master/meetings/2020-04-29_om-swg_minutes.md) and [6 May](https://github.com/opengeospatial/om-swg/blob/master/meetings/2020-05-06_om-swg_minutes.md) SWG meeting had been posted in the Gitub. These were approved without any comments or additions.

KS made a note to add a lists of actions in the minutes to quickly check if what had been agreed and that everything had been done. IR agreed that this was a good idea.

## 3. Priority topics

**O&M SWG meeting on 10th June (sampling kick-off)**

It had been agreed that making sure that Simon Cox could join would be important. This had not been checked yet, and KS promised to send him an email.

There was a discussion on the meeting agenda items, LB had agreed to provide sampling use cases including the soil domain, SG had promised to come up with examples from the water domain. LB commented that she knew at least two different Dutch O&M sampling use cases. Pointing out that there wold probably be only 3-4 SWG meetings after the 10th SWG until the 19156 document should be ready for the CD ballot IR asked on participants ideas of wat would be the ideal outvome of the kick-off meeting. LB suggested that perhaps some kind of idea on how detailed the 19156 O&M sampling model should be to answer the requirements of the various domains. IR noted that as the Sampling and Specimen were parts of the O&M 2.0, we would have to provide some kind on continuum for them in the 3.0 too. SG also noted that the Sampling features were important part of the O&M practice in use cases where vertical sampling was typical, such as boreholes.

SG asked if the aviation community should be better involved in the sampling revision? They had the AIXM [Aeronautical Information Exchange Model]. IR told that yes, the aviation domain would be important one to involve, although at least in the part of meteorological information they were mostly looking things from the coverage perspective. KS mentioned that the aviation domain were using sensors heavily, but were they exposing those, and thus have need for O&M Observations? SG noted that the O&M model was used at least the land infra models. IR agreed that this domain was another one to involve in the discussions.

KS asked if any of the participants had been involved in the Environmental Data Retrieval (EDR) SWG? IR and SG replied that unfortunately they had not had time to get properly involved in the EDR work. Based on her review of the EDR SWG discussion and documents, she told that she was worried that the old unbridged divide between the coverages and the observation perspectives continued in the EDR. She added that based on the discussions with Peter Baumann, the EDR SWG had not been very active towards harmonizing with the Coverages either. SG noted that the different perspectives on the data were sometimes justfied: the meteo people were typically looking things from the coverage perspective based on his experices from the INSPIRE thematic modelling. KS told that she was tired of seeing the lack of interest in bridging the two worlds just because people were having issues talking with each other. She had hoped to get people to talk about this in a common face-to-face meeting, but now this was not possible with the virtual-only June TC.

KS suggested that it would be useful to be able to compare the solutions provided by SensorThings API and the proposed EDR API for solving the EDR use cases. HS noted that there was at least one clear difference between the STA and EDR functionalities: in EDR modifying the [spatial and temporal] data granularity on request was in the core, as well as data interpolations, and thus it was not simply subsetting the original data cube grids. In STA only the data points existing in the original data could be provided. IR agreed, the EDR was in this sense similar to a coverage service with processing capabilities. KS wondered how observation metadata was published in EDR. IR commented that as far as he understood EDR intentionally does not provide much metadata about the undelying datasets, it just provides access to the data values and observed property names and units used.

LB proposed that perhaps there could be discussion about the O&M, coverages and EDR harmonization in the MetOcean DWG session of the June OGC TC. It was agreed, that this would be a good idea, better than trying to set up a dedicated virtual session. LB agreed to ask a slot for this from Chris Little. IR promised to send a draft agenda for the 10th June O&M SWG for comments by email.

**Actions**:

* KS: ask if Simon Cox could join the meeting on 10th June
* LB: prepare a presentation about the Dutch sampling use cases (soil, others?)
* SG: a presentation about the water domain sampling use cases
* IR: try and get the Aviation and MetOcean amd land infra people join on the sampling kickoff on 10th June
* LB: ask Chris Little about a slot in the MetOcean DWG session 

**Textual class descriptions/definitions**

IR presented that first text drafts he had made for the defintions / UML notes of the AbstractObservationBase, AbstractObservation, Observation and PotentialObservation. The texts were improved collaboratively. SG pointed that the we should try to avoid duplicating information already defined in UML in the text to avoid unintended semantic conflicts between the two descriptions.

There was a discussion on whether it was possible for a PotentialObservation to turn into an occurred Observation, or was it always just a template for Observations that were foreseen possible. After discussion on the semantics it was decided suggested by SG that the PotentialObservation be renamed into ObservingCapability, similar to the INSPIRE model concept with the same name. IR noted that in his opinion the ObservingCapability instance could never become an occurred Observation, but there could be a relation between the ObservingCapability and Observation instances describing the capability <-> observation relation, if this was seen useful in particular use cases. 

IR noted that an ObservationCollection containing ObservingCapability instances could also be used for listing available system observing capabilities. HS noted that when defined as "a set of pre-determined characteristics of Observation acts" the ObservingCapability could also be implemented using an empty ObservationCollection with memberCharacterics. The same collection could also contain observation instances created from the pre-defined characteristics when the system had them available. KS agreed that there was a similarity, but that semantically the capability and the collection (even as an empty one) were different. SG also noted that as soon as one Observation instance was added to this collection, it would no longer fulfil the defintion of the observing capability. IR preferred to keep the ObservingCapability as a separate concept from the ObservationCollection.

LB noted that working with the defintion texts was a very good excercise for the SWG to get the concepts nailed down. She apologised not having had the time to work with the Google doc. KS and HS also had had little time since the previsous meeting to work with the texts.

Due to lack of time IR urged everyone to comment the ObservationCollection constraint texts in the shared Google doc.

**Actions**: All: provide and comment the texts in the [shared Google doc](https://docs.google.com/document/d/1rbtyRuJV56qZfo_YOhcNYi-VQ9Giyt7A-9vuuo01qLI/edit?usp=sharing)


**The use of interfaces and feature types (mixed levels of abstraction)**

IR told that he had got a comment from Knut Jetlund in the [Github issue #52](https://github.com/opengeospatial/om-swg/issues/52#issuecomment-627198143) regarding both the syncing the O&M UML drafting with the ISO harmonized UML model and the use of interfaces in the latest draft. He told that defining interfaces in the same model as feature types was against the ISO UML modelling best practice, as these should be used in models of diffrent levels of abstraction. IR did not completely understand how the situation should be solved following the ISO best practice, and he promised to ask Knut for more information on how to proceed. 

**Actions:** IR: ask Kunt for more information and rework the UML model accordingly

## 4. Priority topics for the next week

* Preparations for the 10th June O&M SWG (sampling kickoff)
* Textual class definitions & description work
* Github issues housekeeping, see https://github.com/opengeospatial/om-swg/projects/1

## 5. Other issues

No other issues.
