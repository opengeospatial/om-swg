# Minutes of the OGC O&M SWG meeting 4 March 2020

Time: 2020-03-04 at 11:00 EET

Place: Remotely (GoToMeeting), [recording](https://portal.ogc.org/files/?artifact_id=92542) available in the OGC Portal (requires Portal access).

Participants (voting members in bold):

* **Ilkka Rinne (IR)**
* **Kathi Schleidt (KS)**
* **Hylke van der Schaaf (HS)**
* **Clemens Portele** (by proxy to Ilkka)
* **Sylvain Grellet**

Status: draft

## 1. Check for quorum, patent call
Quorum reached, 5 participants from 5 voting member organisations represented with Clemens' proxy to Ilkka.

No affecting patents were identified.

## 2. Approval of the minutes of the previous meeting

IR told that the [minutes](https://github.com/opengeospatial/om-swg/blob/master/meetings/2020-02-26_om-swg_minutes.md) of the SWG meeting held on 26 Feb 2020 had only been posted in the Github on the previous afternoon (3rd March), and thus it was unlikely that the participants had had time to review them. He proposed to postpone approving the minutes to the next SWG meeting, which no-one objected.

## 3. Priority topic 1:Observation collections (continued)
IR told that he had made several modifications on the UML model considering the collections based on the discussion in the previous SWG meeting. He summarized that the collection classes were no longer derived from ObservationDescription, but rather have specific associations to concreate instances of ObservationDescription to capture the shared and covered member property values. KS asked if the O&M ObservationCollection should be derived from a more generic class, like a generic feature collection. IR promised to ask this from Clemens Portele. IR noted that while the class naming for the collection classes HomogenousObservationCollection and SummarizingObservationCollection had not been considered perfect, there had not been any better suggestions this far. He also noted that KS had posted a Markdown document in the Github for drafting the textual descriptions for all the O&M UML classes. KS noted that she had also posted another Markdown document for designing the association names, navigabilities and cardinalities between the O&M classes. She wanted to go through it in this meeting to get these details nailed down.

KS noted that the WG had agreed that the constraints of the collection classes would need to be formalized on a similar way that the AbstractObservation constraints had been. IR agreed, and told that he had not had time to do this yet. SG noted that the current constraints used the term "properties", and it might not be clear to everyone that it meant both the attributes and the associations. It was agreed that this should be clarified in the contraint text.

IR asked if the members were ready to say that the [stated class hierarchy](https://github.com/opengeospatial/om-swg/blob/master/iso_19156_issues/ea/Edition2_playground_2020-03-04_Observation.png), pending the final class naming, was good enough to make an initial decision on it? KS said that she liked it. SG asked if all the collection classes were supposed to be concrete or if some of them should be abstract. KS and IR explained that the ObservationDescription needed to be concrete in order to create instances of it to be pointed to by the collection instances. The AbstractObservation deriving from the concrete ObservationDescription however was an abstract parent class for the concrete PotentialObservation and Observation classes. Considering the ObservationCollection class IR told that it we needed to have a discussion whether we wanted to have a concrete ObservationCollection with just the member association but neither the semantics of the homogenous nor the summarizing collection. KS argued that she would rather make the parent ObservationCollection abstract, as otherwise people would just use it instead of the semantically more detailed sub classes. IR commented that by using the plain ObservationCollection, there would be no way to describe the collection level properties, because those associations were only defined in the sub classes. KS noted that collections with PotentialObservations could be used to describe the capabilities of a facility, so she liked to keep it possible for the collections to contain both regular and potential Observations.

SG noted that in some way the SummarizingObservationCollection was a more generic class than the HomogenousObservationCollection as the cardinalities of the properties in the homogenous one would be upper-limited to 1, while the in the summarizing one the value would be an array of values. KS told that to the ceratin extent the SOSA ObservationCollection comes fro the fact that they did not have a timeseries as an Observation result type, and thus needed an ObservationCollection to model a timeseries. 

IR asked if there were objections to changing the ObservationCollection class to an abstract class. There were no objections.

KS suggested that a way to avoid the concrete-abstract-concrete class hierachy would be to add an abtract "observation core" class identical in attributes and associations with the ObservationDescription, and then derive the concrete ObservationDescription from it making no other changes. In this way the AbstractObservation class would be specializing the abstract "observation core" class avoiding the concrete-abstract-concrete but a consistent abstract-to-concrete hierarchy.

## 4. Other discussion topics

**Harmonization of the association naming, cardinalities, navigabilities**

KS presented the [association table document](https://github.com/opengeospatial/om-swg/blob/51e972f316398ef464e804b732f608fb13ebb6e3/iso_19156_issues/Associations.md) she had drafted with the current model associations. SG commented that for consistency he would like to keep the rest of the association role name, apart from the "is/has" prefix as they are in SOSA. IR agreed with this in general, but that would result to names breaking the pattern of using nouns rather than verbs in the association role names, an example being the "hosts" and "hostedBy". SG asked if the inconsistency was there in SOSA, O&M 2.0 or the model that we are working on? IR replied that the issue was that by taking the "is" prefix away, the name changes into a verb. KS summarized that the problematic new roles were the madeBy, hostedBy and observes. She also added that the usedProcedure is now a mixed verb-noun one, while in the version 2.0 it was just "procedure". HS commented that he thought the "used" was not necessary. He argued that the problematic one was the "observes", because turned to a verb that would be something like "observee". IR proposed that this assocation role name from Observer to ObservableProperty would be "observableProperty".

IR told the he had added the source role name "observation" to assications from the Procedure, the ObservableProperty and the Observer to ObservationDescription, as well as the the "collection" role name for the source role of the association from ObservationCollection to AbstractObservation. SG commented that the general pattern would seem to be using the name of the target class lowercased. KS wanted to go through the list one by one to makes sure it makes sense in all cases. SG told that once the naming was agreed he would like to push the changes into SOSA to make them consistent, as the ISO standard should be the one that models should align their terminology with. Having non-aligned terminology would likely cause issues with the newcomers in the O&M world, as SOSA Observations should implement the ISO 19156 O&M concepts. IR agreed that the terminology alignment would the highly desireable, but he was not sure if it was realistic to ask tha SOSA community to give up the "has/is" naming pattern typical in the ontology models to align with the upcoming O&M UML model.

The following changes in the role names were agreed on:
* usedProcedure -> procedure
* hostedBy -> platform
* hosts -> observer
* madeBy -> observer
* observes -> observableProperty
* observedBy -> observer

It was agreed that KS would first make the changes to the table docuemnt and IR would then update the UML model based on that.

KS asked IR to add the auto-reference to the Platform class for modelling related platforms. SG commented that he would like to leave the kind of the relations between the Platforms open, and not restrain the association semantics to a parent-child or part-whole. He suggested using an association class for the role similarly as used for the auto-reference between the AbstractObservation instances. IR agreed that this would make sense as the roles would then be soft-typed rather that hard-typed. KS liked the idea, and added that the association class should then also have on option source role in addition to the target role. She also asked if the same generic class could be used for both the Observation and the Platform context. 

IR noted that the reason he liked to keep the association between the Observer and the ObservableProperty classes "observableProperty" and the one between ObservationDescription and ObservableProperty "observedProperty" was that a sensor (the Observer) could have association "observableProperty" to say temperature even if it had just been manufactured and have not yet been used to create any Observations. When actually used for temperature measurements, the "observedProperty" association between the sensor and the ObservableProperty would be created via the Observation instances. SG told that he liked this.

Considering the association cardinalities, KS noted that they were now all good as far as she could tell, after changing the result cardinality from 0..1 to 0..n. About the navigability, she argued that she would like to have both the source and the target role names given in the model, and though in many cases the direction would actually only be one way. This would keep the role naming more consistant when the inverse direction was required. SG asked if anyone knew if there was ISO/TC 211 guidance on whether it would be a good idea to make the associations bi-directional or not in general. KS promised to create a Github issue about the general bi-directinal navigability and ask John Herring to comment on it.

IR noted that while changing the ObservableProperty from abstract to concrete he had also added a "name" attrbute to it, and asked on the participants' opinions on this addition. KS and SG commented that they would rather still see an abstract ObservableProperty and an additional concrete sub-class of it in the model. IR agreed to make this change. SG also asked about the stereotype for the ObservableProperty. IR said that based on [Clemens Portele's comment on 28 Feb](https://github.com/opengeospatial/om-swg/issues/43#issuecomment-592399215) he had removed the stereotype from the ObservableProperty altogether, because according to Clemens' view none on the ISO 19103 or 19109 stereotypes would apply. KS asked IR to ask Clemens if the stereotype defitions or not having one would be likely to cause issues with the UML to XML Schema mapping tools such as Shapechange.

The minimal ObservedProperty, need for concrete Platform and Observer classes
An implementable, standalone O&M core

## 5. Priority topic for the next week
It was decided that wrapping up the Observation collection model as well as thinking of which UML classes should be included in the core requirements class would be the most important ones for the following week. Also the Github issue list would need some housekeeping to mark the some of the discussed issues as initial or final decisions. 

## 6. Other issues
SG noted that we should make an issue to remember to create an alignment module between the O&M 2.0 and 3.0. He added that the content of that module should only be created when we have final decisions on the design in order to not create additional content to keep up-to-date during the drafting. IR agreed that this should be added to Github if not already there. 

