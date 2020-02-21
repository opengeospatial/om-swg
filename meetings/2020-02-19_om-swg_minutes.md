# Minutes of the OGC O&M SWG meeting 19 February 2020

Time: 2020-02-19 at 11:00 EET

Place: Remotely (GoToMeeting), [recording](https://portal.opengeospatial.org/files/?artifact_id=92118) available in the OGC Portal (requires Portal access).

Participants (voting members in bold):

* **Ilkka Rinne (IR)**
* **Kathi Schleidt (KS)**
* **Hylke van der Schaaf (HS)**
* **Clemens Portele** (by proxy to Ilkka)
* **Sylvain Grellet** (by proxy to Kathi)
* **Linda van den Brink (LB)** (until the end of topic 4)

Status: draft

## 1. Check for quorum, patent call
Quorum reached, 6 participants from 6 voting member organisations represented with Sylvain's proxy to Kathi and Clemens' proxy to Ilkka.

No affecting patents were identified.

## 2. Approval of the minutes of the previous meetings

The [minutes](https://github.com/opengeospatial/om-swg/blob/master/meetings/2020-02-05_om-swg_minutes.md) of the SWG meeting held on 5 Feb 2020 were approved.

## 3. Priority topic 1: Observation collection (continued)
KS wanted to take a little time to discuss the collection semantics and the best way to define the ObservationCollection using UML classes, as RDF could not be used here. She said she understood the arguments on the collection not being an Observation as collection was not an event, and that an interface could then be used to capture the common aspects of these two. However, she wanted to ask if we were trying to model an ontology or a semi-senatic UML model. IR told that he did propose using an interface to capture the shared aspects instead of an abstract class based on the discussions of the previsous SWG meeting. He added that he had not yet got any feedback from John [Herring] or Clemens [Portele] on whether using interfaces in the O&M conceptual model was OK. KS noted that she had had a lot of experience in trying to define reusable sets of properties in UML. She told that while it was possible to use interfaces to do this in UML, the model will easily become unfathomable. IR asked a reason for this, and KS replied that as far as she understood an interface would have to defined for each of the associations separately and then the classes would have to implement all of the appropriate interfaces. KS promised to formulate the question again and try and get John or Clemens to suggest the best approach forward.

IR presented the draft [UML classes](https://github.com/opengeospatial/om-swg/blob/master/iso_19156_issues/ea/Edition2_playground_2020-01-07_Observation.png) as the basis of the discussion. KS agued that the "container" name did capture the semantics of collection everything describing an Observation, but not yet being one quite nicely, but perhaps "description" would still be a better name. IR mentioned that the only possible issue that came into his mind in changing the "container" interface into an abstract class would be if a class would with another parent class would need to implement the Observation properties too. While multiple inheritance would be possible in UML, it might cause issues in the implementations later on. He could not however immediately name a case where this kind of inheritance would be needed.

KS proposed to rename the ObservationPropoertyContainer into AbstractObservationDescriotion. LB agreed that having an "Observation description" abstract class as parent of both the Observation and the collection classes would seem to fit the purpose well enough. KS noted that as a name the "AbstractObservationPropertyContainer" would be a very long one.

After discussion it was decided that IR would change the interface ObservationPropoertyContainer into an abstract class AbstractObservationDescription with stereotype FeatureType, and make the AbstractObservation and the ObservationCollection subclasses of the AbstractObservationDescription. LB suggested making this an initial SWG decision and urging people to object if they had something to complain. KS commentesd that she would first want to get feedback from John or Clemens, and only after this have a decision made.

KS and IR had a discussion on the new model allowing better bridging between Observations and Coverages. While discussion the cardinalities of the observedProperty IR mentioned that the questions of if an Observation could be about more than one observed property had not been properly discussed yet. KS noted that this leads into the question of if a result is only the result of a single measurement of can it be a time series. IR added that it was not just about a timne series of one property but also coverage containing time series of multiple related observed propoerties. KS noted that in the case where an Observation was used as the metadata description of a Coverage, the linking of the Observation result back into the Coverage was not clear. Also in the case of a complex Coverage with several observed properties and possibly several processes, a question is whether there should be multiple Observation instances pointing to the same Coverage or a single Observation covering all the properties. The linking between the bits of the Observation and the corresponding bits of the Coverage could become messy in the latter case.

IR brought the discussion into the three ObservationCollection variations presented in the [Github issue #2](https://github.com/opengeospatial/om-swg/issues/2#issuecomment-585232741). After a discusssion it was agreed that the use cases for th option 2 were mostly at the implementation or data encoding level, and could be handled by using the Observation template method described in the [Github issue #33](https://github.com/opengeospatial/om-swg/issues/33). The option 1 of the homogenous collections had already agreed by the group to be a useful one.

KS asked if the option 3 would be seen as an important one by others than her? HS commented that the SensorThings Datastream and the MultiDatastream would be implementations of the concept defined as the ObservationCollection option 3, where the full ranges of the selected properties of the Observation instances within a collection would be given on the collection level for easier discovery. In STA Datastream these properties would be limited to phenomenonTime, resultTime and areaOfInterest. KS asked were the use cases brought up by LB in the previous meetings not cases for the option 3? LB told that she thought the data collection and submitting cases were captured by the concept of the homogenous collections, as only the actuall shared properties were given at the collection level. LB promised to look if there were further use cases for the option 3 collections in the current Dutch practices.

It was decided that the ObservationCollection class in thr UML diagram would be turned into an abstract class and there would be two subclasses for it: the HomogenousObservationCollection with the current SSN-ext semantics, and another one with the option 3 semantics.

## 4. Priority topic 2: Observer, Sensor and Platform 
It was agreed that the Sensor subclass of Observer was not necessary in the UML model, and that it should be replaced by a note accompanied by textual explanation that the Observer class should be used as an extension point for attaching a domain specific sensor model.

IR summarized the proposed associations between the Observer, System and Platform in the draft UML. He had tried to follow the association role names used in SOSA/SSN. KS wondered where in SOSA the System class was defined, she did not find it in the image describing the relations in the SOSA spec. IR pointed out that in the chapter 4.3.2.5 the sosa:Sensor is defined as sub class of ssn:System. The sosa:Sampler and the sosa:Actuator were also defined as subclasses of ssn:System. KS noted that as we wanted to add at least the Sampling context, the concept of a System was probably needed. She noted that the relation between the Platform and Observer, Sampler and Actuator via an abstract superclass of System would create implementation complications at the XML encoding level. KS and HS told that they were fine with the having the System class. LB commented that to her defining Observer as subclass of System seems a bit strange to her as an Observer can also be a human. If defining a human observer as a Sensor had been difficult to explain, defining a (human) Observer as a System would similarly difficult. KS replied that you could create an example where the eyes of a person would be the Observers and the body a Platform hosting them. LB agreed that this would be explainable.

IR requested comments of the associations drafted between the Procedure, ObservedProperty, System and the Observer. KS noted that she did not yet fully comprehend why the Procedure was associated with System and the ObservableProperty with Observer, but she guessed that the reason was that the Procedures were generic enough to be associated with creating Samplings in addition to creating Observations. She was not sure if associating the ObservablePropoerty with Observer rather than its superclass System did not close any cases we wanted to express. IR noted that in SOSA the ObservablePropoerty is related to Sensor rather than System.

## 5. Priority topic for the next week
The participants chose the following priority topics for the next meeting:
* Two kind of collections (homogenous and non-homogenous)
* Abstract Observation and it's common parent class with the collection  
* To reach initial decision on adding Platform, discussion on if we need System and Observer as separate classes.
* The question on using association role name prefixes "has/is"

## 6. Other issues
KS, HS and IR briefly discussed the maximum cardinality of the result association. If the ObservationCollection of type 3 (non-homogenous collection) would have the result as a collection level property, capturing the range of the results in the enumeration/category type result cases would probably require the  upper limit cardinality of n instead of 1 for the result. HS noted that this could be solved by stating that the result type for ObservationCollection in this case would be a set (of values) instead of a single value. With the class Any this would not create a conflict. However, the result class would then be different for individual Observations and the collections. IR noted that this should be discussed in detail at some point.

KS noted that in SOSA the Observation and Actuation always have an associated ObservedPropoerty, but Sampling does not. She almost wondered if this was an oversight in SOSA, because it seemed to her the the Sampling defined thus lacks the information on what was it sampling. IR commented that this may be intentional as the Samples created by Samplings may not be strictly bound to any ObservedProperty. The ObservedProperty is bound to an Observation when those Samples are used as proximate FoIs in an Observation (event). KS argued that when sampling there is always a concept [of what] behind the procedure used for sampling. She said she wanted to think a bit more about this and check her thoughts with dr-shorthair [Simon Cox].

IR noted there is now a Project view available in the O&M SWG Github repo for the ISO 19156 proposal work at https://github.com/opengeospatial/om-swg/projects/1