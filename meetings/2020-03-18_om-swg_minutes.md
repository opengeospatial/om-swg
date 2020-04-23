# Minutes of the OGC O&M SWG meeting 18 March 2020

Time: 2020-03-18 at 11:00 EET

Place: Remotely (GoToMeeting), [recording](https://portal.ogc.org/files/?artifact_id=92697) available in the OGC Portal (requires Portal access).

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

## 2. Approval of the minutes of the previous meeting

Minutes of the [11 March SWG](https://github.com/opengeospatial/om-swg/blob/master/meetings/2020-03-11_om-swg_minutes.md) were approved without any comments or additions.

## 3. Priority topic 1:Observation collections (continued)
IR presented the both the diagrams made available before the previous meeting and the one prepared for this meeting considering the ObservationCollections. The former solution was based on derived associations between the HomogenousObservationCollection and the CommonMemberCharacteristics, and the SummarizingObservationCollection and the MemberCharacteristicsSummary. The latter version only had a single ObservationCollection class and an abstract MemberCharacteristics class with two concrete sub-classes HomogenousMemberCharacteristics and SummarizingMemberCharacteristics. 

SG commented that the ObservationCollections were becoming too complex and a major part of entire model. He suggested that perhaps soft-typing could be used here to redure the number of required classes. IR told that one option to redure the complexity would be to only define the HomogenousMemberCharacteristics as a concrete member characteristics class in the core model and add guidance that implementions requiring summarizing behaviour over one or more attribute or association values would create their specific concrete member characteristics classes defining those summarizing aspects.

KS noted that the Homogenous collections currently worked for STA Datastreams. IR argued that this was not true, as many STA Datastream properties were actually summarizing the member values, such as turning individual temporal instants into time periods covering all those instants. KS commented that if the homogenous collections were not allowed to do this kind of temporal enveloping, they did not seem very useful to her as the collective temporal aspects of the collection members could only be captured in very specific cases. She asked if there should be generic temporal envelope attribute in all ObservationCollection to cover these temporal aspects. SG commented that adding this kind of specific temporal metadata would open the door for other kind of collection metadata as well.

IR told that he was worried about the fuzzy member characteristics semantics for distinguishing cases where the property was not considered interesting enough to have its member values captured at the collection level, and cases where it was explicitly stated that the members did not or could not contain a value for a particular property. HS suggested to use the ```null``` value for a property of the MemberCharacteristics when the members explicitly did not or could not contain a value, and leave the property out (zero cardinality) when there was no information captured at the collection level. This approach was considered an interesting solution by all participants. However, IR added that there might be a risk in misinterpretations in cases where Observations of more than one collection needed to be combined or merged into a new collection: The software providers would have to take extra care in combining the properties of the MemberCharacteristics in order not to treat a missing property and a property with a null value as the same thing. IR also asked how the ```null``` value should be expressed in the conceptual level? Different encodings, such as GML or JSON, would probably have a different syntax for expressing this kind of special missing or empty value. KS suggested using the term 'null value' rather than the xsi:nil=true attribute specific to GML.

Considering the collection contraints KS pointed out that there were currently no constraints for the ObservationCollection members. IR commented the appropriate place for the constraints would be different if the contents of the member would be reflected to the MemberCharacteristics properties or if the MemberCharacteristics properties would the act as an inclusion criteria for the collection members. KS asked if this was a conceptual level modelling issue or up to the implementing system to decide? IR asked for suggestions of the best place for the constraints for defining the relationships between the collecion members and the member characteristics, and KS suggeted adding them to the ObservationCollection class. IR also showed a very long list of constraints he had written for the SummarizingMemberCharacteristics class. The length of the list of constraints was already extensive due repeated similar constraints defined individually for each attribute and association, and the the ```null``` value semantics was still missing. SG noted that this kind of constraints list looked frightening especially to newcomers to the O&M. KS suggested that perhaps moving these to the collection class would help with a more generic text applicable to all properties without syntactical repetition.

KS suggested collecting and documenting different observation collection use cases to gain insight on if and how they should be supported in O&M. She proposed creating a shared Google document for this purpose. All agreed, and IR added that these use cases should at some point be made available also to a wider audience, but that a Google document with open access by link posted in the Github issue would suffice for the moment.

KS asked if there was any OGC or ISO guidance on applying soft-typing at the conceptual model level? She promised to put this as an issue in Github and ask Clemens [Portele] of other UML modelling experts for their thoughts. IR suggested to add a ```type``` attribute to AbstactObservation, but commented that perhaps this issue should be addressed as part of solving the Specialized Observations issue. KS argued that soft-typing was also relevant to the member characteristics of the observation collections, and that for collections it might be necessary to define both the collection types (homogenous vs. summarizing) and the observation member types. SG proposed to provide the member characteristics kinds using soft-typing by defining only one MemberCharacteristics class with a type attribute pointing to the specific constraints defined externally to the UML model. IR noted that in the model version at hand choosing one of the sub-classes of the MemberCharacteristics implicitly selected the collection type. KS agreed, but was worried about rules in which choosing the value of one property affected the possible values for other properties.

KS told about her recent case where a customer had requested sub-typing Observations by their feature-of-interest types. Specializing Observation types by all kinds of combinations of the provided property values did not make sense, as this information could in any case be deduced from the Observation property values.

IR asked if the participants had any other comments about the collection model. He added that it would be necessary to wrap-up the discussion on the collections soon to give enough time for dealing with the other identified issues to be addressed in the revision of the O&M model. KS told that after making the changes discussed in this meeting the collection modelling was on a good track. 

SG and LB promised to try and add collection use case examples to the Google document create by KS by the next meeting. IR promised to capture the 'null' MemberCharacteristics semantics in the model.  

## 4. Other discussion topics

IR urged SWG members to provide draft text for the textual descriptions of the UML model classes in the file in Github. He felt that having several people providing these descriptions would make the differences in the class semantics visible for discussion.

SG suggested adding the "Abstract" prefix for the abstract class names, because the italics only was difficult to see notice. IR said that this had been discussed in an earlier meeting and while there had been no strong arguments for or against using the prefix, it had been agreed that the name prefixing would not bring enough additional value compared to the resulting longer class names. Ir told that personally he was ok with deciding either way. He asked if there were any objection to changing the names of the abstract classes in the model add the "Abstaract" prefix. KS added that this would only apply to two classes: ObservationBase and MemberCharacteristics. There were not objections and IR promised the make the changes.

IR told that he had added the ```Type``` stereotype to Procedure and ObservedProperty. He said he wanted those classes to have attributes similar to the AbstractGML in GML (name, description, identifier) but was not sure if using the ```Type``` stereotype was the correct  or best way to do so. KS wondered if giving the ObservableProperty the Type stereotype instead if FeatureType would still make it possible to access those via WFS? It was also not clear how using the ```Type``` stereotype would affect using it for pointing to external codelist values.

The unidirectional vs. single-directional associations between ObservableProperty and Observer as well as between ObservableProperty and ObservationBase were discussed briefly. It was agreed that navigating from ObservableProperty to the direction towards Observer and Observation would not always be possible in practice as the ObservableProperty value would in many cases be a codelist value instead of a true instance of the ObservableProperty class. KS argued that having a single-directional asssociation to her knowledge meant that it was not possible for the implementing entities to make the association navigable in the other direction.  

## 6. Priority topic for the next week

The participants choosed providing the observation collection use cases and the assigning the tasks for providing textual class descriptions as the priority topics of the following week.

## 7. Other issues
Commenting of the abstract/concrete class discussion especially in the context of the Platform concept, KS asked if we should provide provide both an abstract empty class and an concrete directly implementable class instead of just a concrete class. It might be easier for the users using an existing concrete class for platform to state that it is derived from the empty abstract class than extending a concrete Platform class. This way an existing class defined for a facility or observing station could be used as a target of the platform association without the need to change it to extend the O&M Platfom class explicitly. IR argued that the existing class would still formally have to derived from the abstract Platform class. KS replied that in practice this derivation would not have to exist on the implementation level.

SG commented on the discussion of the previous week's meeting on the associations between the Observation, Observer and Platform: On the conceptual level it is correct that the Observations are not directly associated with Platforms, but only via the Observers hosted on those Platforms. In INSPIRE EF modelling it was decided for practical reasons to allow linkin Obvservations directly to Platforms for example in cases where when the Sensor information was not available.

