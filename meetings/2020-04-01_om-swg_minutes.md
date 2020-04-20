# Minutes of the OGC O&M SWG meeting 1 April 2020

Time: 2020-04-01 at 11:00 EEST

Place: Remotely (GoToMeeting), [recording](https://portal.ogc.org/files/?artifact_id=92818) available in the OGC Portal (requires Portal access).

Participants (voting members in bold):

* **Ilkka Rinne (IR)**
* **Kathi Schleidt (KS)**
* **Linda van den Brink (LB)**
* **Sylvain Grellet (SG)**
* **Clemens Portele** (by proxy to Ilkka)
* **Hylke van der Schaaf (HS)**

Status: draft

## 1. Check for quorum, patent call
Quorum reached, 6 participants from 6 voting member organisations represented with Clemens' proxy to Ilkka.

No affecting patents were identified.

## 2. Overview of the status of the 19156 proposal work

There was discussion on the order of remaining issues to handle. SG asked whether it would make sense to put the ObservationCollection aside for a while and focus in modelling the sampling. This might give a better perspective for finishing the collection work. IR commented that this might work, but coming back to the collection modelling would at least require good documenting the current thought process status on the collecions as well as the remaining open issues. KS agreed that writing the things down before moving to another topic would be required.

## 3. UML classes Procedure, ObservableProperty, Observer and Platform
IR presented the UML classes for Procedure, ObservableProperty, Observer and Platform. The Procedure and ObservedProperty had stereotypes ```Type``` while Observer and Platform had ```FeatureType``` stereotypes. Based on discussion about using SensorML as content for either one or both of Procedure and Observer it was decided that the Procedure class should be changed into FeatureType, as for example the SensorML SimpleProcess was a FeatureType. SG noted that the Procedure was less clearly a feature than the Observer, but on the other hand the GFM definition of a feature was quite generic and did not necessarily have to a geospatial object.

IR asked if the Observer would semantically be like in instance if the a device or person or a description of a kind of device or person role? In another words, if the Observer would be a sensor, would it contain the serial number or model name of the sensor device? KS repliued that in her opinion the Observer would be the perticular identifiable instance used for creating the Observation. The Procedure would then contain the technical specification of the sensor. IR noted that apart from the technical specification, the Procedure should also contain a bit hgher abstraction level information, like the generic observing method, such as WMO agreed weather observation collection method. SG asked if for simulation use cases the simulator (system) would be defined as an Observer? LB replied yes. 

Regarding the ObservedProperty class, LB said that it was clearly not a feature, but rather a property of a feature. IR mentioned that ot was not clear to him whether the stereotype of ```Type``` should be kept for this class or if it should have no stereotype at all. KS noted that the important thing would be to make sure we can use the ObservedProperty as an extension point to a more detailed observed property model at sme point. The SWG does not have enough time to go into details of this model as part of the 19156 revision work, but we should try to make it technically simple create such an extension later. IR promised to consult Clemens [Portele] on the question the best stereotype to choose keeping in mind that facts that in a simple case the ObservedProperty would only be a simple codelist reference pointing to a quantity definition, but in the future there may be a need for a sub-class of ObservedProperty with stereotype FeatureType.

IR presented the association classes ObservationContext and PlatformContext specialized from the AbstractRelationContext class. He told that he was not sure if we could or should use a super-class here, but it was modelled in this way due to the fact that the both concrete classes had identical attributes and function. The intended use and the multiplicities of ```sourceRole``` and ```targetRole``` attributes were discussed: LB asked about the two roles, as in O&M 2.0 the relatedObservation only had one role. KS and SG told that having bi-directional assocition between the related Observations was clearly seen as useful, and being able to give separate relationship role names for both directions would be make sense. One case on top of SG:s mind were the derivation chains between Observations, in which some Observations would be used as input for creating other derived Observations. KS argued that while it should be possible to five both, neither direction role should be mandatory. 

KS told that she was happy with the unspecified directionalities for the Procedure, ObservableProperty, Observer and Platform classes, and wondered if this had been explicitly decided in the SWG. She pointed out that assocition between Observer and Platform should probably be 0..*m not 0..1 as in the draft diagram presented by IR. IR agreed that this should be fixed.

While discussing the Platform concept the question of modelling a measurement campaign came up. SG asked if the SOSA Platform class included campaigns? LB and IR replied that the SSN Deployment class related to SOSA Platform mentioned measurment campaigns as an example of their use. SG and LB were not very happy with the idea that the O&M Platform would be used for campaigns when in SSN/SOSA they were modelled using the Deployment class. LB told that when considering adding the Platform in the O&M model earlier, the Deployment and the System classes were left out as they were not seen necessary, and were not part of SOSA. IR asked if the participants wanted to him to try and bring the Deployment class into the the O&M model? LB replied that yes, ans probably the System as well as they seemed to needed for modelling the campaings.   

## 4. Observation collections
KS said that to her the use cases for the ObservationCollections and the possible changes to the model to accommodate them were the biggest issues remaining in the UML modelling of the proposed classes. Use cases for the two collection types collected in a Google document at https://docs.google.com/document/d/1WkI60zqunKDcWNareE-Qffey42KZ_pbqPowwRElbm_E/edit?usp=sharing She also noted that she was not very happy about the current fuzzy semantics of the discussed collection types.

KS asked IR which of the proposed O&M collection types to him would match 1-1 to the SOSA ObservationCollection. IR replied thta the intention was that this would be the homogenous observation collection implemented by associating the HomogenousMemberCharacteristics instance to an ObservationCollection. KS asked if the fact that a property was not given at the collection level of a homogenous collection did always mean that there were multiple values of this property in the collection members. IR told that although this interpretation made sense, an explicit requirement for this was not there in the model. KS told that having this up to interpretation made her unconfortable.

KS and HS brought up that the SensorThings Datastream example adding in the collection use cases document was neither purely a homogenous nor summarizing collection, as the phenomenonTime and result time reflected the summarized values of the respective properties of the members, while some other properties were common to all members. Thus there seemed to be need for a continuum between purely homogenous and purely summarizing collections. KS wondered how useful would the SOSA collections really be if collection level properties could only express property values that were identical in each individual observation member. IR replied that they were useful for categorizing observations with common property values. KS asked for use case examples for observation collections where the spatio-temporal properties would be homogenous across all members. HS replied that in SensorThings you may have the locations of all Observations of a Datastream identical for example.

HS noted that actually the homogenous collections were special cases of summarizing collections: their [range] values were just restricted to a single value. SG agreed, defining the homogenous collection as a subtype of summarizing collection had been what he had had in his mind earlier. IR told that he did not see any issues with this approach, also the "nill" value semantics agreed on earlier (explicit null/nill value at collection level meant that none of the members had a value for the particular property) would seem to work for nicely for this kind of class derivation hierarchy. KS made a comment that perhaps soft-typing could be used for defining the various collection types instead of sub-classing. This would make it easier and quicker to introduce new collection kinds with particular sets of property constraints. IR wondered how should the constraints be expressed when they were bound to particular code list values used and not to classes? KS suggested that they could be done the same way as the specialized observation types are done in the OMXML: The code list values used by the Observation ```type``` property were already defined in the OGC registry, and the same could be done for the different collection types. We should start with the three types currently discussed and leave the door open to additions later.

Regarding soft-typing in general KS asked if anyone knew if soft-typing could be defined at the conceptual model level? In the OMXML the Observation typing is done at the XML encoding level, while in the 19156 conceptual model contained specialized Observations using sub-classing. KS noted that she had only recently noticed this difference and in INSPIRE O&M work this fact had caused the specialized Observation types being unnecessarily implemented as separate types in the INSPIRE XML Schemas when soft-typing would have made the XML Schemas much simpler.

KS remembered that when thr O&M XML implementation 2.0 was being drafted quite many different namespaces with very similar prefixes had been proposed. She had made a comment stating that these nearly identical names would be problematics, especially as quite a few of the coders were dyslexic. In the end the set of O&M namespaces had been reduced to a manageable number present in the final specification. KS wondered if this had anything to do with the soft-typing, and wanted to ask Simon Cox and Clemens Portele what had happened with the namespaces back then and how should we deal with them in the O&M 3.0 to avoid such issues at the encoding level.

It was agreed that KS creates a github issue for addressing the soft-typing and IR would add details to it. SG added that Abdel would also contribute to this discussion from the ontology community perspective.

## 5. Priority topic for the next week

It was decided to continue with the Platform and Deployment modelling next week, as well as with the soft-typing issue. 

## 6. Other issues

KS asked about the Covid-19 acrtivities IR had been involved with. IR told that as he had told in the email sent to the OGC mailing lists, he had drafted an GeoJSON profile named [CovidJSON](https://covidjson.org/) intended to be used for exchanging Covid-19 datasets, based in the draft O&M 3.0 concepts and the O&M Simple Features GeoJSON profile he had drafted before. KS and SG commented that this was intereresting. KS liked the idea of using the well-known O&M concepts for this, including the various temporal properties, the lack of which seemed to cause inconsistencies and interpretation issues in sharing the global Covid-19 data. KS hoped to somehow bring the SensorThings API and the O&M SimpleFeatures GeoJSON together at some point so that one could provide GeoJSON as STA query output format.

