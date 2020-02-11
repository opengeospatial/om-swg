# Minutes of the OGC O&M SWG meeting 29 January 2020

Time: 2020-01-29 at 11:00 EET

Place: Remotely (GoToMeeting),[recording](https://portal.opengeospatial.org/files/?artifact_id=91954) available in the OGC Portal (requires Portal access).

Participants (voting members in bold):

* **Ilkka Rinne (IR)**
* **Kathi Schleidt (KS)**
* **Hylke van der Schaaf (HS)**
* **Clemens Portele** (by proxy to Ilkka)
* **Sylvain Grellet (SG)**
* **Linda van den Brink (LB)**
* Simon Cox (SC, from point 3)

Status: approved (2020-02-05)

## 1. Check for quorum, patent call
Quorum reached, 7 participants from 6 voting member organisations represented with Clemens' proxy to Ilkka.

No affecting patents were identified.

## 2. Approval of the minutes of the previous meetings

The [minutes](https://github.com/opengeospatial/om-swg/blob/master/meetings/2020-01-22_om-swg_minutes.md) of the SWG meeting held on 22 Jan 2020 were approved.

## 3. Priority topic:  observation collection and template/cascade
IR opened the discussion be describing the original issue as reported in the issue [#2](https://github.com/opengeospatial/om-swg/issues/2): there is a need to express a collection of observation instances which share one or more of their property values. He continued be explaining that this issue had been discussed in the Toulouse TC meeting, and that he had personally been in favour of not introducing a dedicated ObservationCollection entity with it's own properties, but rather using a plain feature collection with contained Observation instances linking to an "upstream" Observation instance containing the shared property values. IR continued that he had however changed his mind on this after the discussion on this topic in 22 Jan meeting, where SG had argued that avoiding the repeated property values within a collection was mostly an implementation level rather than conceptual level issue. He also argued that the Observation property value cascade as described in the issue [#33](https://github.com/opengeospatial/om-swg/issues/33) could be implemented by using the related observation association with a dedicated relation role name. This the service leveraging plain feature collections such as OGC API - Features would not have to implement the ObservationCollections in the query results, but instead could use the Observation cascade mechanism to conserve space in providing a homogenous set of Observation instances in reply to a query.

IR brought up the fact that in the [SSN extensions](https://www.w3.org/TR/vocab-ssn-ext/#sosa:ObservationCollection) the ObservationCollection was defined in a way that if a set properties (and values) were given for a collection, those values would apply to each of the members of the collection with no member level overriding mechanism. KS argued that the idea she had had in mind for the Observation collections was somewhat different: She saw a need for a collection that captured range(s) of the property values of the contained members, such as the set of observed properties used one or more of the collection members. She said she did not like the fact that if a member would contain more than one value for a property the collection would also have to contain all of them. An example would be observations taken from water along different segments of a river. All the member observations would share a ultimate feature of interest (the river), but not the proximate FoIs (specific river segments).

KS told that she would rather spin the constraint around so that a collection must contain all the properties which occur in the contained observations. IR argued that it would not make sense to require that a collection would have to contain all the values of all properties contained in some of the contained observations. KS told that she would be ok with leaving it open if all the contained property values would have to expressed at the collection level, but she told that she would not be happy with a constraint that at least one of the domain axes would have to remain constant throughout the collection.

HS suggested a definition in which the properties of a collection would have to apply to all observations in the collection, but that they could be further specified or refined at the individual member level. He continued with examples where the ultimate FoI of the member would have to be a logical part fo the ultimate FoI of the collection, and another where lead would be the shared observed property, but the individual member might have lead oxide as the observed property. KS argued, referring to the discussion on the complex observable property ontology discussed before, that the consistency requirement between the collection level and member level property values would in essence require a hierarchical ontological model to be used for these property values.

SC joined the meeting at this point and KS asked him to confirm the semantics of the ObservationCollection defined in the SSN extensions. KS explained the river and the river segments use case with multiple, but only partly homogenous ultimate FoIs. SC checked the cardinality restrictions of the ultimateFeatureOfInterest for the ObservationCollection and Observation, and noted that while in the Observation has restriction of this property was at least one, in the ObservationCollection it was at most one. He admitted that this inconsistent and probably a mistake.

IR continued by asking that leaving the cardinality issue of the ultimate FoI inconsistency aside, was his interpretation correct that the set of properties given at the collection level would have to exactly the same in all the member observations. SC commented that when he had first defined the ObservationCollection [in SSN] he had been more relaxed on the definition of the shared property semantics, allowing overriding the collection level property values at the member level. He had backed away from this idea because it would mean introducing too much complexity in the property handling implementations undermining the easy of implementation for the primary case of truly homogenous observation collections.

SC said that there would certainly also be a use case for these kind of mixed collections where all the values of the collection level properties would not necessarily be identical, but that use case was not the one which the SSN extensions ObservationCollections were designed to support. KS repeated that this kind of ObservationCollections could then not be used to describe cases like the one where there were two ultimate FoIs from which only one was shared at the collection level. SC agreed that this was not possible following the SSN extensions ObservationCollection model, and that this should perhaps be reported in the Spatial Data on the Web Github. Going through the figures 4 -7 in the [SSN extensions](https://www.w3.org/TR/vocab-ssn-ext/#observation-collection) he noted that one or more of the shared properties in the given examples correspond to slicing in dimensions of a multi-dimensional data cube. KS commented that while she liked the comparison with the multi-dimensional slicing, she still saw the need for another kind of Observation collection besides the SSN style one, in which the collection level property values would be a superset of the contained values for those properties in the contained Observations in order to nicely describe a set of observations used for a particular purpose. SC commented that if KS could make a case for this, then she should go for it.

SC told that in the O&M version 1, which was just and OGC standard, and not an ISO one, there were ObservationCollections defined, but this was dropped in the version 2 due to lack of convincing use cases. It was seen at the time that the general feature collections would suffice for collections of Observations. The slicing issue lead him into reintroducing the ObservationCollections but in a much carefully constrained version of it. The ObservationCollections as in SSN Extensions provides a bridge between the O&M model and the coverage views of the world. The 2020 version of the SSN Extensions document was largely re-written and improved based on the implementation experience gathered since the first 2018 version. Thus the new version, unlike the 2018 version, had actually been properly tested in practice, and in this testing these ObservationCollections had proved to be really useful with ecosystem data. SC noted that one of the traps that happens when writing these standards is in controlling your creativity versus for let's encode what has proved to be a good practice.

KS asked if we could model this in a way that there would be fuzzier collection which then could be constrained into a collection reflecting the SSN Extensions ObservationCollection shared property semantics? SG commented that this question was connected to the question of whether the Observation collection member should be AbstractObservations or more concrete ones.

IR asked SC if it was intentional that the result could not one of the shared properties of an observation collection? He presented a case where the collection of Observations where category type result, like the identified species of an animal could be of interest. SC commented that he had not thought of this case before, but it was indeed a valid and also a quite common use case for Observations with category and boolean type results. In theses cases the interesting thing could then be the locations where the observations with identical results had been made. SC mentioned that the SSN-ext currently states that from the Observation properties only the result property could not be shared between ObservationCollection members. However IR had just shown a use case for this, and he thought that IR had just convinced him on the fact that collection could share a result.

IR continue by showing the [draft UML class diagram](https://github.com/opengeospatial/om-swg/blob/62198506d54e897e24ae2a83ae06a4c1839d0fd1/iso_19156_issues/ea/Edition2_playground_snapshot.png) stored in the Github repo. He described that the ObservationCollection was defined as a generalization of the AbstractObservation inheriting the potentially shared properties from it. He asked the participants if the cardinalities of all the properties or the AbstractObservation should in this case be 0..n, including the result? SC told that he was not in favour if having more than one result, but rather using a complex result of a set of more than one result was shared by all the members.

IR asked KS on her opinion of the cardinalities of the rest of properties such as phenomenonTime and validTime. KS told that the for the potential observation the important part was not having a mandatory result. The other case was modelling the observation offering. KS stated that the since both of these share the same set of property semantics it would make sense to have an AbstractObservation capturing all of them.

SG asked what would be the pros and cons for having ObservationCollection specialised from the AbstractObservation and the concrete Observation class. IR replied that it made sense to derive from the AbstractObservation due to the relaxed property cardinalities. IR added that he had given some thought to the class of the collection member. Having members of the AbstractObservation would for example allow collections as members of other collections. KS added that this would also allow having any observation class derived from the AbstractObservation to be contained in an ObservationCollection. LB argued that the ObservationCollection cannot be a subclass of Observation because it would have different constraints. KS and SG asked if there should be two collection classes: one containing AbstractObservation and the other concrete Observation instances. IR argued that he was not sure if there was a need to distinguish these two at the conceptual level.

LB noted that perhaps there should be a few constraints added to the ObservationCollection, such as having 1 as the lower bound of the member association cardinality, and that there should be at least one shared property. IR commented that he did still see a use case for an empty collection, as a result of a query for example. KS asked how this was defined in the SOSA version? SC commented that in SOSA there was a requirements to have at least one property shared. However looking at the SSN-ext there only seemed to an explicit restriction on the ObservationCollection having at least one member. IR noted that it would still make sense to be able to have an empty collection as an edge case. SC said that he did not feel strongly about that.

IR wrapped up be stating that there seemed to need to two kinds of ObservationCollection in O&M, but it was not yet clear how the these should be modelled. He also stated that at some point the group would have to go through the cardinalities of all the Observation properties, as there now seemed to be an agreement that the cardinality bounds of 0..n should not apply to all of them. KS commented that to her the need for the more constrained SSN collection was clear, but that she was not yet sure if the more complex data set type collection was needed, that needed more thought.

## 4. Discussion on the proximateFeatureOfInterest/ultimateFoi
This topic was postponed due to insufficient meeting time.

## 5. Using "has" and "is" verb prefixes in association role names
This topic was postponed due to insufficient meeting time.

## 6. SWG meeting in the upcoming Hong Kong TC
This topic was postponed due to insufficient meeting time.

## 7. Priority topic for the next week
This topic was postponed due to insufficient meeting time.

## 8. Other issues
No other issues.
