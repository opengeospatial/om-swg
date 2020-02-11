# Minutes of the OGC O&M SWG meeting 5 February 2020

Time: 2020-02-05 at 11:00 EET

Place: Remotely (GoToMeeting), [recording](https://portal.opengeospatial.org/files/?artifact_id=92052) available in the OGC Portal (requires Portal access).

Participants (voting members in bold):

* **Ilkka Rinne (IR)**
* **Kathi Schleidt** (by proxy to Sylvain)
* **Hylke van der Schaaf** (by proxy to Sylvain)
* **Clemens Portele** (by proxy to Ilkka)
* **Sylvain Grellet (SG)**
* **Linda van den Brink (LB)**

Status: draft

## 1. Check for quorum, patent call
Quorum reached, 6 participants from 6 voting member organisations represented with Kathi's and Hylke's proxies to Sylvain and Clemens' proxy to Ilkka.

No affecting patents were identified.

## 2. Approval of the minutes of the previous meetings

The [minutes](https://github.com/opengeospatial/om-swg/blob/master/meetings/2020-01-29_om-swg_minutes.md) of the SWG meeting held on 29 Jan 2020 were approved.

## 3. SWG meeting in the upcoming Hong Kong TC
IR told that the OGC meeting scheduled to be held in Hong Kong on from 2nd to 6th March had been cancelled due to the corona virus epidemic, but that the OGC staff was still working on getting a TC meeting arranged in an alternative location. It was not clear if a in-person meeting could be arranged or if it would be replaced by a number of online meetings.

IR asked if the participants would rather keep to time slot scheduled for the TC on Monday 2nd and have an online SWG meeting then, or have the SWG meeting for that week at the regular weekly meeting time on Wednesday 4th March. SG said that he would prefer Wednesday just to keep the weekly meeting rhythm, LB said that both would be fine by her. It was agreed that the meeting for the week 10 would be held on Wednesday morning European time according to the regular meeting schedule.

IR also told that the weekly meetings had only been booked until the end of February. SG proposed to go extend the weekly meeting booking. IR told that he would add events for the weekly meetings until the end of April 2020. Some of the meetings could be cancelled if there was no need to have them, but it would be good the have these slots in the calendar.  

## 4. Priority topic 1: the proximateFeatureOfInterest/ultimateFoi (continued)
IR summarised the situation: The WGS had made and initial decision on using "proximateFeatureOfInterest" instead of "featureOfInterest" as the role name pointing to the proximate FoI two weeks before with an agreement that this should turn into a final decision after two weeks if there were not strong objections. There had been some opposing comments in the Github since then, so IR wanted to raise the question of did the group still feel that they wanted to stick with the initial decision. He told that having an email vote of the topic would be one of the options. SG commented that he did not feel that an email vote would be needed, as both the SWG meeting two weeks before and this one had reached quorum on voting members.

LB commented that she thought that keeping the "featureOfInterest" name would be the best option because changing it would penalise the people already using this property correctly to point to the proximate FoI. She also told that she had talked about this the some O&M users in the Netherlands and they did not see really big problems with changing the name either, so changing the name was not a "no-go" issue for her. She also pointed out that as she wrote in her Github comment on the issue, she did not like the fact that the property naming would diverge from SSN. IR pointed out that based on Simon Cox's Github comments it might be difficult to convince him to change the property name in SSN into including the "proximate" prefix. SG noted that in SSN there was an alignment module for the O&M version 2.0, so one could also be made for O&M version 3.0. He also told that the SSN-ext was a moving target, so adjustments could still be made. He added that while changing the name would penalise some people there would probably be an equal number of people who have been using the featureOfInterest property for pointing directly to the ultimateFoI. People are lazy so it would be likely that many of them would not read the specification carefully enough to notice that needed to change the way they use this property.

LB asked if the issue of urging people to reconsider how they point to FoIs could be solved be the introduction of the new ultimateFeatureOfInterest. SG commented that at BRGM they had actually had cases where there had been confusion if which kind FoI was meant by talking on FoIs. Having the two explicit prefixes in the property names would force people into thinking which in which role they point to the given FoIs. LB still argued that part of the people would still be punished by the change. IR agreed, but he also said that it would be good to have people making a conscious decision on migrating from O&M 2.0 into O&M 3.0, and in this process changing one of the property names could probably be justified as cost of an improved interoperability, as some things would probably have to be changed anyway. LB say she agreed, but still any renaming would have to be very carefully considered. IR agreed the the impact to the users of the making or not making this change would have to carefully considered. SG commented that while in most cases the semantic use of the FoI within the organisations or communities was consistent, it might not be so across these silos. LB asked SG for examples of such cases where the different FoI semantics had caused interoperability problems. SG could not give ones from the heart but promised to dig them up. LB told that it would be good to document these cases to able to use them as justifications for the naming decision. SG agreed that it would make sense.

LB told that in the case the SWG would decide proposing the proximateFeatureOfInterest name, the group would also make a change request to SSN to change the property name accordingly. IF the FoI naming could cause problems in the O&M world it would likely cause them also to the SSN world. SG agreed that the alignment module alone would be be enough, but a change request would have to be made for SSN. IR repeated that in this case convincing Simon [Cox] on this would be important. LB agreed, but on the other hand Simon was not the "boss" of SSN. IR added that it would be very useful for the ISO Committee Draft ballot discussion that the change request had already been made to harmonise the naming between the O&M 3.0 and the SSN.

IR asked if the SWG members represented were ready to make the decision on this issue? He personally preferred the proximateFeatureOfInterest option as he saw more issues with not changing the name than with changing it. LB said that she could go with the proximateFeatureOfInterest option provided that the change request is made to SSN, and that real world examples of where the featureOfInterest name causes issues would be documented. LB asked if IR expected other members than her to object to the initial decision. IR replied that Simon Cox probably would but he was not a voting member in the SWG. With this discussion, the SWG decided to turn the initial decision of using the role names "featureOfInterest" and "proximateFeatureOfInterest" into a final decision.

SG noted that the point of having concrete justifications for changes would probably be required for the other changes too. He asked a dedicated issue should be create to keep this in mind. IR replied that personally he would prefer keeping the requirements of providing sufficient justifications for the proposed changes in the context of the individual issues. LB wanted to emphasise the importance of providing good justifications for all the changes proposed.

## 5. Priority topic 2: observation collection (continued)
IR summarised the previous discussion by stating that there was a clear need for a homogenous ObservationCollection as defined in the [SSN Extensions](https://www.w3.org/TR/vocab-ssn-ext/#sosa:ObservationCollection). The question that was still open was whether there was also a clear need for the more relaxed ObservationCollection which would allow collecting entire ranges of the property values occurring in the member Observations to be expressed on the collection level, as proposed by Kathi earlier. SG commented that he did not see a clear need for the latter kind of ObservationCollection. IR also could be state a clear need for it, and as Kathi was not available for the meeting, the need for it remained open.

IR told that Kathi had argued that the need for the second type of ObservationCollections was somehow related to a concept of Observation offerings. SG noted that even in SOS version 2.0 the cardinalities of the properties of the Observation offering, including the observed property, would be upper-bound to one, unlike in the previous version. In the previous version it was kind of a chaos: you could put everything under an offering. So restricting the cardinalities was an intentional decision in SOS 2.0 to make it simpler to the the offerings. SG told that he found it strange the the SOS offerings was used here as the use case for the relaxed ObservationCollections as this change had been made in SOS 2.0.

SG noted the Github comment by Joshua Lieberman about the naming of the ObservationCollection to data stream was interesting: the SensorThings API DataStream could be seen as an implementation of the ObservationCollection. Thus while discussion offerings we should also look at the concept of the SensorThings API multi data stream, which is relaxing cardinalities of the observed properties. When talking about the use cases for ObservationCollections the STA MultiDatastream should be part of the discussions as well the the SOS offerings.

LB noted that in the Observation collection use cases in the Netherlands that she is aware of are the Observations are related because they observe the same thing or the same day for example. They are then collected into a single file and then sent to the national database.

IR brought up the discussion on modelling the ObservationCollection as a sub-class of the AbstractObservation. He stated that he did not really like this because the ObservationCollection was semantically not an Observation. It was only modelled in this way to have a single definition for the Observation attributes and associations that would be shared by the Observation and the ObservationCollection classes. SG asked how the ObservationCollection was defined in SSN-ext? IR replied that in SSN-ext the ObservationCollection had more or less the same set of properties as the Observation, but it was not inheriting those from the Observation.

IR agreed that the ObservationCollection should not defined as a sub-type of AbstractObservation, even though it may result in a messy UML diagram. LB suggested asking advice from Clemens [Portele] or John Herring on the best way to solve this in an UML conceptual model. Based on her experience from other models she suggested that maybe UML interface could be used for modelling this, but she was not sure if it was appropriate to use it in a conceptual level data model. SG commented that the O&M model actually was somewhere between a purely conceptual and a logical model.

SG commented that IR had added the AbstractEvent class the UML model as the common parent class of both the AbstractObservation and the Sampling without it being discussed in the SWG meetings. IR agreed that he should have brought this up before making the addition, but the purpose had been reducing the complexity of the model, as the Sampling and the AbstractObservation share multiple associations and attributes. LB commented that while she did not see particular issue with the AbstractEvent, it would be better if that is properly addressed in a the SWG before adding it to the draft model. IR agreed, and promised to roll back the AbstractEvent addition. SG suggested that maybe this kind of initial suggestions could be specially tagged in the class diagram to clearly mark them as non-final. IR told that he would add a separate issue for the AbstractEvent to remember that it may be a useful addition in the future.

## 6. Priority topic for the next week
The participants agreed to try and wrap up the ObservationCollection issue and additionally discuss the sensor and platform concepts if there is enough time.

## 7. Other issues
SG asked IR to provide timestamped versions of the UML png images in the Github repository to make the version-by-version comparisons easier. There should still be the latest version available, but also a separate timestamped image file for each development steps. GS told that he knew that the old versions were available in the Github, but it was difficult to dig them up for comparison. IR said that he would start providing the timestamped versions if the snapshot images.

SG had asked IR to create a Github project for the OGC change proposals for ISO 19156 to be able to follow the issue solving project more clearly. IR promised to create a project after the meeting.
