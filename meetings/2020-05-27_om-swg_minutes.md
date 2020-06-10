# Minutes of the OGC O&M SWG meeting 27 May 2020

Time: 2020-05-27 at 11:00 EEST

Place: Remotely (GoToMeeting), [recording](https://portal.ogc.org/files/?artifact_id=93425) available in the OGC Portal (requires Portal access).

Participants (voting members in bold):

* **Ilkka Rinne (IR)**
* **Kathi Schleidt (KS)**
* **Linda van den Brink (LB)**
* **Sylvain Grellet (SG)** 
* **Clemens Portele** (by proxy to Ilkka)
* **Hylke van der Schaaf (HS)**
* Rainer Haener (RH)

Status: draft

## 1. Check for quorum, patent call
Quorum reached, 6 participants from 6 voting member organisations represented Clemens' proxy to Ilkka.

No affecting patents were identified.

## 2. Approval of the minutes of the previous meeting(s)

The minutes of the [13 May](https://github.com/opengeospatial/om-swg/blob/master/meetings/2020-05-13_om-swg_minutes.md) SWG meeting had been posted in the Github. It was approved without any comments or additions.

## 3. Priority topics

**Preparations for the ISO 19156 project team O&M SWG meetings**

IR showed the proposed agenda for the 19156 project team meeting to be held on 5th June. He told that the project team members had been invited by a calendar event. Regarding the requirements classes IR told that in his opinion there should be a common core package with the concepts and their relations mandatory for any compliant system, regardless of the data encoding, and another package providing concrete, ready-to-use, basic feature types for all these concepts.

KS noted that one question would be if we take the collections out of the core model, because that's not something you need everywhere. She added that if the observing capability / potential observation would be modelled using the collections, it would leave a small, thight core, the collections on the other side, and the various simple implementations on the other side. IR agreed that the observing capability would not be needed by all implementations, so perhaps it should not be in the core.

**Sidestep: Observation capabilities and collections**

KS asked if she understood correctly that the members more or less agreed that the observing capability was actually a special kind of ObservationCollection. SG commented that as far as he understood, this was still on open question. IR agreed, and told that personally to him the observing capability was a different concept from an observation collection, even an empty one, and thus he preferred not to subclass it from the ObservationCollection. KS told that the idea bothered her at first, but that it had started to make sense, since the observing capability and the collection [with member characteristics] were so similar. SG agreed that describing the observing capabilities as an initially empty collection would make sense cases where a sensor was first installed and did not yet produce any observations. The observing capabilities of that sensor would still be available without any observations. In SensorThings this collection would correspond to the Datastream, which could also be empty of Observations.

SG and KS discussed on how the observing capability had been defined in the INSPIRE O&M model. SG commented that it basically just an Observation with no result, but it also had a few additional attributes. KS commented that the INSPIRE ObservingCapability had an ```observingTime``` attribute which was kind of a potential phenomenonTime. It also had a online resource describing the capability, just a URL, and a ```processType```. SG commented that the idea of the processType was to provide discovery information about the language used to describe the observing process.

IR commented that while he continued to think that the observing capability and the observation collection should be defined as different concepts in the model, there was a semantic linking between the two, as providing collections of observations produced by a particular observing capability was a valid use case.

KS noted that this discussion had been useful and needed, but that we should get back to the agenda and finish the discussion on the meeting preparations. She added that we could probably settle for a while and get back to it in a couple of weeks.  

**Continuation of the meeting preparations discussion**

IR continued in noting that if we wanted to split the model in many small requirements classes, that would probably result in several namespaces at least in the GML encoding, so that the collections, observing capabilities and the basic observation features would each be defined in different namespaces. He added that the granularity of the packages still needs to be discussed from this point of view.

IR and KS would be responsible for preparing the presentations on the SWG progress on the conceptual model and status of the 19156 for the two meetings.

IR showed the preliminary agenda for the O&M SWG on 10th June. LB asked if non-OGC members would be allowed to join the meeting. IR told that as it is and SWG meeting, so all participants would need to be OGC members, and would need to sign the observer agreements. KS added that we could also invite non-OGC members to join the meeting as guests. IR told that as far as he uderstood we could either invite the individual people or try and turn the meeting into an open special session. It was agreed that inviting as guests would suffice as there would likely be only a few non-members to invite. LB and KS promised to send IR the names for of the people they would like to invite. IR would sent the invites. KS noted that she would like to invite Laszlo Sores, who is non an OGC member. She promised to write an email to him to asked if he could joint the meeting.

IR asked if 15 + 15 minutes for the use case presentations by LB and SG would be good, which would leave half an hour for the discussion. LB and SG agreed that 15 minutes would be good for the use case presentations. 

Actions:

* IR & KS: prepare the O&M proposed changes and the schedule presentations for the meetings on 5th and on 10th June
* LB & SG: prepare use case presentations for the SWG meeting on 10th June 

**Textual class definitions & description work**

IR regretted that his available time and mental capability had gone to the UML model work, and that he had not had time to provide additional content for the Google doc since the last meeting.

LB had written text for the metadata part. KS liked the fact that LB's text nicely describes the different levels of metadata. She continued that it also clarifies the semantics of metadata in the O&M context. LB told that she tried to come up with an example of instance/observation level metadata, but had failed, since most of the "metadata" information already had a dedicated place in the O&M model. She asked if anyone else had come up with one.

HS told that he sometimes uses the metadata association to provide the file name of the file the Observation data was imported from. SG commented that in the INSPIRE D2.9 [O&M guidance] it was recommended to use the metadata for describing the API end-point providing the data. He added that apart for the metadata association, there is no place in the O&M v2 model to provide this link of linked data reference to the source of the data. KS asked if in D2.9 the metadata link was pointing to the metadatarecord for the [INSPIRE] Download Service, or directly to the SOS Service? SG thought that it was pointing to the MD_Metadata record.

IR noted that depending on the use case it would make sense to point to different levels of  metadata from the Observation: instance/observation level, dataset level, or the origin of the data. He asked if it would make sense be able to describe the level of the associated metadata? KS told that she always tries to use the metadata to point to the origin or source of the data. She continued by asking of the responsible party for creating the observation should be made available? SG replied that the ISO 19115 metadata does contain the responsible party among other things, so that can be used. As the metadata asssociation was no longer restricted to point to an ISO 19115 record, he wondered if there was some additional guidance needed in the specification for using the metadata association. 

KS noted that the description of the metadata association in the O&M v2 was very generic. SG commented that the v2 description was not at all a conceptual definition. LB noted that she had tried to improve the defintion to state that only the metadata which did not fit into the dedicated model elements should be provided by the metadata association. SG liked this formulation. He noted that in O&M Observation the parameter was a designed extension point, as any name value pairs for information without a dedicated element in the model could be provided using it. Thus the metadata would sort of align itself between the explicitly modelled properties and the information provided by using the parameter attribute. He asked if the metadata was still useful now that it's type was relaxed into Any? IR replied that in his mind the metadata was used a lot, typically to a dataset level information. KS argued that it was not clear what forms a dataset in the O&M context. In her experience the concept of a dataset was not used much with O&M, as one could collect Observations in various ways. SG commented that for dataset metadata the DCAT should probably be used.

KS told that she would like to be able to point to a full spectrum of resources with metadata association from detailed Observation specific metadata into resources describing API end points for an entire country, and use both structure and non-structured resources. SG asked LB is the DCAT resources could be used for finding defintions of metadata. LB replied that while we could look at DCAT, it is intended for describing metadata for datasets, so it may not be suitable for extra metadata for the instance or feature level. SG noted that the DCAT had been opened to cover also services. LB confirmed that it was so.

IR repeated that he would like a mechanism to be able to declare whether the metadata was pointing to a collection of Observations labelled as a dataset by someone, or if it was pointing to extra information in the individual Observation instance. KS noted that this would be very tricky in practice, as an Observation could be individual measurement, timeseries, a multi-dimensional coverage. SG proposed that perhaps the defintion should be kept reasonably generic.

IR asked if everybody agreed on the the part of the draft defintion that the metadata association points to instance-level metadata. He also asked if there should be metadata association for the ObservationCollection. KS argued that the metadata assocaition was available via the memberCharacteristics. IR agreed, but pointed out that this was describing the member Observations, not the collection itself. KS was worried that by restricting the metadata to instance level only would create issues in practice, as the environmental agencies would not typically have that level of metadata available, and she would like them to be able to point to any useful metadata they have available. SG also commented that we should try not to over-model things. KS agreed, adding tha she did not see the level of technical interoperability with machine-readable metadata reachable in practice for the next 10 years.

KS also noted that keeping the metadata type open could open new possibilites for using something like PROV in context of O&M. SG commented that this would be interesting, and that he remembered Laszlo [Sores] commenting on the use of PROV at some point. The Lineage of Observation could be described using MD_Metadata, but probably using PROV or similar. But the provenance could also be defined using the process. He asked if the O&M specification should guide the users to provide the provenance using the procedure or the metadata? SG suggested that the process could be used for provenance, but if this was intended, it should be documented. SG suggested that while the metadata association definition should be kept generic as in the v2, it should contain a hint that it should not be used for describing something that has a dedicated place in the model.

KS told that she made a note for stating that the provenance information should be described in the process, not in the metadata. IR commented that we should still allow people to use the lineage description contained in the MD_Metadata if they already have that available.  

Actions, all: work with the textual descriptions

**A quick look on the latest UML model**

IR quickly presented the refactored/split UML model, packages Abstract Observation schema, Observation core and Basic Observations. HS told that he liked the abstract level, where the model was not bound to features. KS suggested that we should ask the ISO people on the 5th June if they feel that the ```Any``` interface would seem suitable for pointing to the Observation target entities. Considering the Observation core, SG asked if the AnyFeature and Any (interface) were associated in the ISO models? IR said that he thought there was not direct link between the two from 19109 to 19103. KS noted that this would also be a good question to ask from the ISO UML experts. IR proposed to ask Clemens [Portele] directly if he knows why the the link between the AnyFeature and Any was not included in the 19109 model.

IR noted that the ```ultimateFeatureOfInterest``` and the ```proximateFeatureOfInterest``` associations were defined again in the ```AbstractObservation``` feature type by making them point to the ```AnyFeature``` instead of ```Any```, which the same association points to in the ```ObservationCharacteristics``` interface that the ```AbstractObservation``` realizes. He was not sure if redefining the associations like this was actually possible or allowed. KS noted that if this was possible, it would be an elegant solution to bind to the FoI to the spatial feature world in the core schema. She continued that this should also be raised at the ISO meeting. SG asked whther the word "feature" should be removed from the top part [Abstract schema], as it's not a feature world. IR agreed, he had also thought that objectOfInterest could be more suitable.  

Considering the basic Observation schema, SG and KS suggested using the same names for the concrete feature type classes as is used for the corresponding interfaces in the abstract schema. KS also noted that unlike the ObservingProcedure and ObservedProperty the AbstractObserver and AbstractPlatfrom were still feature types, not interfaces. IR replied that he had created abstract feature types from them because they were clearly spatial objects. HS and SG commented that it was not always the case that the observer or even the platform were spatial objects. Simulated or software-based observers do exist. HS added that in that case event the feature-of-interest could be simulated, or non-physical. IR agreed that it was not very consistent to have only the Observer and Platform as abstract feature types in the core. He said that he could as well take those off the core.

KS asked if IR could try to maintain the overall layout of the UML classes in all three diagrams, to aid in finding and visually cross-referencing the classes in them. IR promised to try and re-do the diagrams to keep the same overall layout. 

Actions, 

* IR: fix the diagram layouts
* IR: Ask Clemens Portele about the relationsship between AnyFeature and Any
* IR: remove AbstractObserver and AbstractPlatform from the Observation core schema, and realize the corresponding interfaces directly in the Basic observations schema.

## 4. Priority topics for the next week

* The split-up UML model
* The textual descriptions
* Final preparations for the 5th of June meeting

## 5. Other issues

SG suggested that we arrange meetings where we could only concentrate on the definition document. The progress on the meetings where the group has had time to work together with the defintions has been good each time. IR suggested the we reserve a three-hour time slot for the definitions work. It was agreed that this meeting would be arranged on morning of the 9th June at 9:00 - 12:00 Central European Time. IR would send a note to the mailing list and a calendar invite to the present participants.

Actions, IR: set up the textual defitions workshop on 9th June
