# Minutes of the OGC O&M SWG meeting 4 December 2019

Time: 2019-12-04 at 11:00 EET

Place: Remotely (GoToMeeting), [recording](https://portal.opengeospatial.org/files/?artifact_id=91653) available in the OGC Portal (requires Portal access).

Participants (voting members in bold):

* **Ilkka Rinne (IR)**
* **Kathi Schleidt** (by proxy to Sylvain)
* **Hylke van der Schaaf (HS)** (until 12:00)
* **Clemens Portele** (by proxy to Ilkka)
* **Sylvain Grellet (SG)**
* **Linda van den Brink (LB)**

Status: approved (2020-01-22)

## 1. Check for quorum, patent call
Quorum reached, 5 voting members represented with Kathi's proxy to Sylvain.

No affecting patents were identified.

## 2. Summary of the O&M SWG meeting sessions held in Toulouse TC
IR asked for the participant's comments about the sessions and the progress made at Toulouse TC. SG commented that the SWG needs to be more organised and specific on which issues to discuss in which meeting. Kathi had also started breaking big Github issues into smaller, more tangible ones, otherwise we would not be able to make good progress. He also commented that he had tried to get back an issue recently just to notice that the related properties had been renamed. IR apologised on the confusion created, and commented that the work was in a phase where too many parts were still moving. He also noted that he felt that the group should agree on the core classes, property names and associations first in order to be able to focus on connecting the rest of the stuff. SG argued that the question on what should be in the core and what in the extensions should be discussed at a later stage, and that first we should make sure everyone is talking about the same things. HS agreed with SG. LB also agreed with a more organised approach, more time would be needed to think about specific topics or questions, and she would like to know in advance which topics would be discussed in the upcoming meetings. LB and SG also mentioned that they would like to have time to discuss particular topics with other national experts. IR acknowledged this.

SG asked whether it would be possible to set a up version control for the UML drafting. He said he could set one up if needed. IR asked if it would be sufficient to just share the Enterprise Architect project file in the om-swg Github repository? SG commented that as far as he knew there was no direct connector between the Github/Gitlab and EA, so its not enough to just drop the XMIs in a Github repo, but a Subversion repository should be used. LB commented that at Geonovum Subversion was used in connection with EA to manage the version control over the UML models. She told that EA has integration with Subversion but not Git.

Everyone agreed that using version control for the UML model to be able to refer to particular revision would be highly useful. SG told that the version control with EA was entirely based on XMI files, so the subversion repository would have to include all the relevant classes as XMI files. LB commented that she had found an EA plugin for Git support. SG asked if this was the LemonTree? LB confirmed that it was. SG commented that this was not open source or free of charge to use.

IR noted that once the OGC O&M SWG would be done with proposed revised UML conceptual models, the same changed would have to copied to the ISO EA repository by the 19156 project team. Still he agreed that in this situation it would probably be best to version control the OGC proposed UML changes using Subversion. SG noted that if it would be easier to broaden the access to the ISO Sparx Cloud repository than setting up a copy in Subversion that that would be ok. IR commented that it was not yet clear to him how the conflict resolution worked in the Sparx Cloud repository, it just seemed to save the local changes to the remote repository without asking any questions or having a concept of a named commit. He argued that it would really not be big task to copy the changes into the ISO repository after the proposed UML classes have been agreed by the OGC SWG.

SG asked which packages should we have for the O&M UML model? He said he did not do setup up version control for UML packages every day, so it would take some time to do it for O&M. LB also commented that she did not do that very often either. SG agreed to give it try and set up a Subversion repository for this at BRGM. If there was only a single package (and a corresponding XMI) in the repository, it would make simultaneous editing difficult to the conflicting changes. SG agreed to try and split the 19156 UML model a bit but not too much.  

## 3. Review of the status of the Github discussion issues
IR went through Github issues discussed at Toulouse.

It was agreed to add Platform concept from SOSA to the O&M conceptual model, as well as not to add the actuator concept at this point.

Lineage issue was discussed, but IR summarised that it seemed that there was still a lot of discussion to be had before the lineage issue could be solved, and it was not clear how to proceed with that.

On the ultimate feature of interest IR noted that the term "ultimate" had seemed to bother some members during the Toulouse meetings. LB told that she had discussed the term with Simon Cox during the Toulouse TC, and Simon was ok to change the name if a better one would be proposed. IR said that in Toulouse the term "domain feature" was preferred over "ultimate feature of interest". SG commented that to him the domain feature was not a good name, because there could be many domain features of which only could be the ultimate one. "Domain" name was as unclear to SG as the FoI was to him when he started working with O&M. SG asked if it was already decided somewhere that the ultimate feature of interest and the sampling feature will be two different associations? IR replied that there was an Github issue #3 for the ultimate feature of interest. HS commented that for the sampling features there should be a link to the upper level sampling or domain feature, but it's may not be always clear whether a feature would be classified as domain or sampling feature for a particular observation event. He also expressed a concern on if there would or could be domain or sampling features that do not have a strict hierarchy. SG replied that at least in geology you could have an observation with feature of interest associations to both an outcrop and a fault. HS commented that in this case these features would not be directly linked to each other. SG argued that they were linked in their domain model (GeoSciML), but this was outside O&M.

IR showed the images of the draft UML class diagram he had made on 3 December for the Observation core (https://github.com/opengeospatial/om-swg/blob/033647bbf4456cf927e5d8c7b61017fa5e12825d/iso_19156_issues/om_core_uml_draft.png) and the Sampling extension (https://github.com/opengeospatial/om-swg/blob/033647bbf4456cf927e5d8c7b61017fa5e12825d/iso_19156_issues/sampling_extension_uml_draft.png). The "samplingInfo" property of the AbstractObservation class (previously named samplingStrategy) pointed to an abstract placeholder class SamplingInfo in the Observation core, and it was extended in the sampling extension by the Sample class modelled internally like Sample in SOSA with links to Sampling and Sampler.

(HS left the meeting)

SG was concerned about the core and extension splitting, would the Sample and Specimen not be part of the core standard? IR replied that his opinion would be that the Sample and the Specimen would be part of the same specification, but perhaps defined in different requirements classes, so that the implementors could choose not to implement the complex sampling if they felt that it was not needed, but still could declare conformance to the core Observation requirements class. SG commented that having abstract placeholder classes defined in the core in order for them to extended in the extensions creates a lot of useless artefacts simple to fulfil the UML requirements. IR argued that as far as he could see there were two options: either to include the SOSA style sampling complex in the core directly or try to make the core slimmer by using an abstract class only in the core. He added that he did not recall seeing a real-world example of using something else that the O&M SamplingFeature structure to represent sampling information related to an Observation event.

LB suggested renaming the abstract SamplingInfo class into Sample in the core. IR agreed that this would make it more clear that this was a placeholder for a concrete Sample. The abstract Sample class should then of course be properly defined in the core as it could be a more generic concept that the SOSA Sample. It was proposed by IR and agreed by LB that in this case the property name "samplingInfo" should then also be renamed to "hasSample" or "samplingFeature".

IR asked whether the sampling (and specimen) should be part of the core observation or the separate requirements class? SG argued that there should be some kind of backbone for the sampling in the core, and not just an empty placeholder class. LB asked if there was some kind of criteria available to help determining whether something should be included in the core or an in an extension? SG replied that he could reply from the perspective of ISO in general, but in GeoSciML the strategic decision was made to include the INSPIRE concepts in the GeoSciML core and the other parts in extensions. In this way people could claim that they are doing the GeoSciML core thus they are INSPIRE Geology compliant. IR did not know of any generic ISO criteria for the core and extension either. He told that based on his understanding the core and extension were more of OGC than ISO terms, and that ISO standards were just using requirements grouped into requirements classes.

SG asked where the concept of the core for O&M came in the first place as there is not core in the current 19156 standard? He said that he was not contesting the idea, but just trying to digest the backlog. IR replied that the core Observation model does exist in the 19156:2011 UML, but its not a explicitly defined as a separate requirements class in the document. SG suggested the the group should first try to address all the issues about clarifying the semantics of the O&M model, and only after that decided whether the resulting model is too complicated, and would need to be split into core and extensions. In his opinion the question whether something should be in or out of the core is hindering the thought process. IR commented that having a single UML model for now would probably make it easier to understand all the requirements. The group agreed to put the question of the core aside for the moment and put all the classes in the same model.

LB asked if splitting into core and extensions was a requirement for OGC standards? IR replied that he did not think all OGC standards should automatically be defined as a core or an extension. Also the specification at hand was an ISO standard, and thus even if this kind of requirement did exist for new OGC standards, it would probably not apply here. SG commented that the core and extensions was a recurring pattern in the recent OGC API standards. LB commented that in CityGML there is the split into core and extensions.

SG told that he had already started the process of getting a new project for the O&M subversion repository. He hoped that the it would still be possible to set one up and not being required to use git instead.

## 4. Observation properties in O&M core and it's extensions
The discussion on this was done in within the previous topic.

## 5. Plan for drafting the OGC proposed changes document
This topic was addressed due to lack of time.

## 6. Other issues
No other issues.
