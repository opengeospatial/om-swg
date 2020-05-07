# Minutes of the OGC O&M SWG meeting 29 April 2020

Time: 2020-04-29 at 11:00 EEST

Place: Remotely (GoToMeeting), [recording]() available in the OGC Portal (requires Portal access).

Participants (voting members in bold):

* **Ilkka Rinne (IR)**
* **Kathi Schleidt (KS)**
* **Linda van den Brink (LB)**
* **Sylvain Grellet (SG)** 
* **Clemens Portele** (by proxy to Ilkka)
* **Hylke van der Schaaf** (by proxy to Kathi)

Status: draft

## 1. Check for quorum, patent call
Quorum reached, 6 participants from 6 voting member organisations represented with Hylke's proxy to Kathi and Clemens' proxy to Ilkka.

No affecting patents were identified.

## 2. Approval of the minutes of the previous meeting(s)
IR proposed that the SWG approves the minutes of the [18 Mar](https://github.com/opengeospatial/om-swg/blob/master/meetings/2020-03-18_om-swg_minutes.md) SWG meeting. These were approved without any comments or additions.

## 3. Priority topics

**Textual descriptions of the UML classes**

KS noted that she had managed to break the class desription files into multiple markdown files, and check that all the classes in the current draft model are included. SG suggested that for effectiveness the description drafting should be done using a shared Google document instead of the Github and markdown. KS and IR agreed that this would be much faster way to reach the consensus. KS promised to move the markdown text into a Google doc and share the link. SG suggested to have the O&M 2.0 textual descriptions or the corresponding classes also copied into the same Google document in order to compare the suggested changes. It was agreed that thi was a good idea.

KS asked the participants which kind of the textual content should be provided for the classes. In the current O&M UML model there is sometimes a description, sometimes a definition, and sometimes neither. SG promised to check how the UML class documentation was made in the OGC projects he had been involved in before. IR showed the ISI/TC211 HMMG UML best practices wiki page for [definitions](https://github.com/ISO-TC211/UML-Best-Practices/wiki/Definitions). The guidance stated that the Note field should be used for the primary definitions of the UML elements and that tagged value "description" should be for secondary descriptions, including examples. KS was afraid that splitting the documetation into two different fields, especially if one of them would be provided as a special tagged value, would make it difficult to miss important information. 

There was discussion on how much of the textual descriptions provided in the UML model could be automatically extracted and included in the specification docuemnt. KS noted that in the INSPIRE modelling there was a fixed internal structure for the Note field content, and that it was used to create parts of the legal document content. SG commented that indeed this was the case, but there had been a special piece of software that did this content extraction. It was not done using ShapeChange.

There was discussion on the tools to be used for deriving XML schemas from the UML, and if there were sone aspects, such as the stereotypes and tagged values, that we should consider already while doing the 19156 UML model in order not to make deriving XML Schemas for the XML implementation difficult. SG commented that ShapeChange was used to the UML-to-XML-Schema conversion in several of the previous standards he had been working with. He also noted that this was actually part of the O&M XML Implementation standard revision work. IR agreed, but suggested that an early dry-run of the conversion with ShapeChange should be do before setting things in stone for the 19156 UML. Perhaps Clemens Portele could help with this task. 

**Attributes for the simple classes**

KS suggested that the INSPIRE Process would be used as a basis for the attributes to be included in the SimpleProcedure, and that SensorThings classes would be used as a sane ground truth for the other simple classes. It was decided that the attribute drafting would also be done in the Google document for the textual descriptions.

KS noted that the references to external documentation were done using CI_Citation class in the INSPIRE models. IR commented that perhaps we could use something simpler here, such as a simple reference. It was agreed that this would need further thought. Regarding the INSPIRE Process, KS suggested that the process parameters and the InspireId would not be included. For the SimpleObservableProperty, SimpleObserver and SimplePlatform KS suggested providing the defition attribute as text and the description as an URI, similar to what's done in the SensorThings API ObservableProperty. SG commented that semantics of using URIs as attribute values in a conceptual model was not clear: was the intention to reference another feature or just to provide a URL address. IR commented that he had not been able to find a URI class in the conceptial level UML models contained in the the ISO/TC211 harmonized model, they were only includecd in implementation level models. KS told that URL was used in the document citation for the INSPIRE models. SG noted that conceptually using URL to refer to a generic Web resource such as a page would be ok, but for referring to a another feature or representation or data, you should use a generic refernce type os some kind. 

SG noted that it is easy to unintentionally mix the conceptual and implementation modelling together. Clarifying how the referencing defined in a conceptual model is much easily done using an implementation of it. It would be possible in the ISO 19156 to provide informative examples illuminating this intended use of the model concepts. KS commented that a way to define a reference to an external documentation would be needed for the O&M conceptual level classes, and it should be flexible enough to be used for pointing to various kinds of resources depeding on the implementation use cases, such as an online PDF document or a structured, machine-readable remote content. IR had used the class ```Reference``` for these generic external reference attributes in the current draft. He proposed to ask Clemens Portele, or someone else, if this was seen as an appropriate way to define these external links in the O&M conceptual model. SG noted that we should be careful with using ```name``` attributes, as there would most likely be several naming schemes used for the same concepts, including the natural language issues. IR suggested that ```identifier``` would than perhaps suit better than ```name```. SG replied that he would like to have both. 

**Modelling inverse associations pointing to Observation**

IR briefed SG on the idea of providing concrete "simple" classes in addition to the abstract classes for procedure, observable property, observer and platform: If the simple classes were not suitable one could point to another specializations of the abstract placeholder classes. One conrete realization of the ObservableProperty could be defined as an externally referenced code list value defining a particular observed property.

SG commented that if existing non-O&M classes would be used as targets of these associations, the UML derivation rules would formally require specializing the abstract classes. Making this work would require deriving an ontology from the UML model, otherwise a particular observable property code list value could not state that it's of type O&M observable property. He continued by stating that there will be implementations that are defined outside of the classic chain from UML to XML etc. KS commented that she saw defing the O&M model as an ontology as essential, the key question would be how that would fit in the O&M SWG timeline together with XML and JSON implementations. SG noted that he had proposed adding the ontology into the SWG timeline already months ago, and that it should in his opinion follow the conceptual work immediately. This would be closer to the IT formalism and easier for his brains. The idea that a O&M ontology would be created might even be reflected in the UML class definitions, like the fact that the abstract classes could also be realized as ontology concepts.

IR told that the questions on the next SWG tasks can be discussed at the virtual OGC TC SWG meeting at the latest. He continued by saying that the SWG has TC appvovals for the XML and JSON implementation tasks, as they were included in the group charter, but that he thought that changing or re-arraging those tasks would probably be doable if the SWG agrees on this. KS commented that if we were to go for semanticing the O&M model, we would have to even more careful than currently in choosing the attribute names, definitions and descriptions as in ontologies they should be work across all usages. Following this would be a good discipline anyway. IR stated that he was a bit worried in the timeline for getting the OGC proposal ready, including the sampling, by July for preparing the revied 19156 document for the CD ballot. KS argued that if we know we have this work in our radar, we would just keep it in mind when working. She continued that we all want to do this [semanticising], so we should take this as a working assumption.

The attribute naming work would be continued in the Google document for the class descriptions. KS noted that she would try an keep an eye on the repeating attribute names and caution the group if there are defined differently.

IR described the [latest draft](https://github.com/opengeospatial/om-swg/blob/master/iso_19156_issues/ea/2020-04-29_Observation.png) of the part of the UML model for the FoI, metadata and result containing an abstract class AnyFeatureOfInterest and interfaces AnyObservationResult and AnyObservationMetadata. KS commented that she would have expected an "Carrier of Observation" interface there which AnyFeatureOfInterest would be realizing instead of it having it's own association to the AbstractObservationBase. This observation association interface could then also be applied to all the other simple types. IR noted that this option was discussed in the previous meeting, and that there had been an agreement that dooing which would make it difficult to see the linking pattern towards the Observation. IR said that this could work, but that he would need to double-check if using interfaces in this way would be ok in the ISO/TC211 UML models. He continued that he did not fully understand why the AnyFeature was an abstract class while the Any was an interface, and what was the difference in using those two in conceptual class models. KS urged to ask Clemens Portele about the details on this. She said that based on her experience in using the interfaces in UML were to defining small aspects of the externally visible information or behavior which could be brought together to build classes containing a combination of these aspects. However she was unsure how this is used in data modelling, as her experience was more from the software implementation models.

IR asked if it still made sense to have a concrete FoI class in the model? KS replied that while it would not be as useful as the other simple classes she would leave it in for cases where the implementers needed a simple class to start using out-of-the-box. IR promised to do the change in the UML model to enable this.

IR told that he had removed the Observation and Platform as association classes and replaced those by associations with role qualifiers based no the Clemens Portele's suggestion in the Github discussion.

IR mentioned that the the latest model it would not be possible to provide the deployment information without providing the platform as the Deployment was an association class. SG commented that this could be solved by leaving the Platform as nil or missing, providing the reason omission.

**Constraints for the ObservationCollection**

There was not time to discuss the constraints, but IR promised to copy them to the Google doc to continue drafting there.

## 4. Priority topics for the next week

* ObservationCollection constraint texts.
* Textual descriptions of the UML classes.
* Schedule on drafting the Sampling.

## 5. Other issues

IR noted that the SWG meeting of the virtual OGC TC in June would be held on Wed 10th June, but one hour earlier than the regular meeting time. SG asked to send the calendar invitation for the meeting.

No other issues.