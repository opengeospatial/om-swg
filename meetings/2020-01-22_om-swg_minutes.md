# Minutes of the OGC O&M SWG meeting 22 January 2020

Time: 2020-01-22 at 11:00 EET

Place: Remotely (GoToMeeting), [recording](https://portal.opengeospatial.org/files/?artifact_id=91879) available in the OGC Portal (requires Portal access).

Participants (voting members in bold):

* **Ilkka Rinne (IR)**
* **Kathi Schleidt (KS)**
* **Hylke van der Schaaf (HS)**
* **Clemens Portele** (by proxy to Ilkka)
* **Sylvain Grellet (SG)**
* **Abdel Feliachi (AF)**
* **Linda van den Brink** (by proxy to Ilkka)

Status: approved (2020-01-29)

## 1. Check for quorum, patent call
Quorum reached, 7 participants from 6 voting member organisations represented with Clemens' and Linda's proxies to Ilkka.

No affecting patents were identified.

## 2. Approval of the minutes of the previous meetings
The following minutes of the previous SWG meetings were approved as presented:
* [2019-09-26](https://github.com/opengeospatial/om-swg/blob/master/meetings/2019-09-26_om-swg_minutes.md)
* [2019-10-16](https://github.com/opengeospatial/om-swg/blob/master/meetings/2019-10-16_om-swg_minutes.md)
* [2019-11-13](https://github.com/opengeospatial/om-swg/blob/master/meetings/2019-11-13_om-swg_minutes.md)
* [2019-12-04](https://github.com/opengeospatial/om-swg/blob/master/meetings/2019-12-04_om-swg_minutes.md)
* [2019-12-18](https://github.com/opengeospatial/om-swg/blob/master/meetings/2019-12-18_om-swg_minutes.md)
* [2020-01-15](https://github.com/opengeospatial/om-swg/blob/master/meetings/2020-01-15_om-swg_minutes.md)

## 3. Priority topic: property names and classes for FoI and uFoI
IR presented the Github issue #35 with the options A to E outlined as in a [comment](https://github.com/opengeospatial/om-swg/issues/35#issuecomment-575072819) made by him on 16 Jan for FoI and uFoI naming and target entity classes. He noted that both Simon [Cox] and Linda van den Brink had been in favour of the option C, while SG had voted for option E with the prefix "proximate" for the featureOfInterest.

IR started the discussion by asking for options to rule out. All the members agreed that the options A, B and D would not be good, thus leaving the options C and E to the table. In both options the both the feature-of-interest and the ultimate-feature-of-interest a associations would point to an entity with class AnyFeature. The only difference between the options was the role name of the association between the AbstractObservation and the feature-of-interest in the direction from pointing to the FoI: in option C the name was "featureOfInterest" while in the option E it was "proximateFeatureOfInterest".

SG presented the rationale for BRGM's choice of the option E: in the case that FoI name would be changed anyhow from "featureOfInterest" to "hasFeatureOfInterest" the backward compatibility would be broken in any case, and thus adding the "proximate" prefix would hot cause further inconvenience. KS suggested that we deal with the question of using the naming pattern of "hasX/isX" as a separate issue as that needs to be consistent with all other properties. Everyone agreed that this was a good idea, and KS created a new issue [#38](https://github.com/opengeospatial/om-swg/issues/38) for the has/is question.

SG continued that there was also another justification for the option E: He felt that when discussion about the FoI it was not always clear if the proximate or ultimate FoI was meant. They would be more at ease with use explicit names for these properties would be used. SG argued that with the option C part of the current semantics [in the O&M 2.0] of the featureOfInterest association is separated into a another association pointing to the ultimate FoI, but the other part remains in the association with the same role name as in the previous version. He stated that the semantics of the FoI association on the O&M 2.0 encompasses both the proximate and the ultimate FoI. Leaving the "featureOfInterest" name as-is but taking part of it's semantics out would create confusion. KS commented that while in her opinion the featureOfInterest property was used in practice for pointing to proximate FoI, she did see the added advantage of clarifying the semantics since we would be taking one well-known association and splitting it into its sub-meanings. IR noted that he was also a bit worried of keeping the name featureOfInterest as-is when the intention is to restrict it's use only to to pointing to the proximate feature of interest. Changing the name to be more explicit would enforce the users to do the thought work on whether the entity they are pointing to with their current featureOfInterest property actually should be associated as the proximate or the ultimate FoI. KS agreed that having the explicit names would be a nice way of forcefully guiding people to make the distinction between the different FoI kinds. After this discussion the participants agreed on that the option E would be better than C.

SG pointed out that since the featureOfInterest name was so central in the model, the group would have to be prepared to defend their point against people that would like to keep the role name unchanged. One of the likely arguments would be that all the systems would have to be changed to match with the new meaning. KS pointed out that the situation was comparable with the a common issue in the field of biodiversity: when a species needs to be categorised into two subspecies one of them usually keeps the old name while a new name of decided for the other. This becomes a problem when comparing the species names from the old records to the new ones, as the old name may point to either the of the new subspecies. SG added that similar issues had had to dealt with in the context of the Water directive implementation: if a stretch of a river separated into int own entity and is given a new identifier, should the remaining part of the river entity still have the same identity or a new one?

IR asked if all would agree to having the AnyFeature as the class of both of the association target entities. All agreed that AnyFeature was good for both.

It was decided that the option E with explicit "proximate" prefix would be proposed as change to the ISO 19156. Issue [#35](https://github.com/opengeospatial/om-swg/issues/35) was marked with a label "Initial decision" which would become a final decision after two weeks if there were no strong counter arguments within the WG. IR promised to send information of this to the SWG mailing list.

The issue of the has/is prefixes in the role names was discussed. AF commented that before deciding whether the prefixes were useful we would have to decide whether the associations would be bidirectional. For bidirectional associations the has/is naming pattern may help in conveying the intended meaning of the role names. IR argued that there might be an added benefit of having the exact same names used as in SOSA. KS commented that the change from O&M 2.0 to 3.0 would be clear version change with some changes anticipated. When the semantics of the associations would not change the naming would stay as-is, and when the meaning is changed this would be announced by also changing the names.

IR showed a O&M UML class diagram he had updated the same morning. He opened the discussion the name "Domain" by asking whether this name should now be in the association pointing to the ultimate or the proximate FoI. KS commented that having the Domain name would be useful to retaining the domain-range relation between the thing measured and the result. SG and AF felt awkward with the the Domain and Range terms. KS commented the concepts of the domain and the range were widely used in the context of coverages. AF commented that these concepts were used differently in OWL or in RDFS, where each property would have their own domain and range. It was decided that this issue of using the domain and range association names would be handled separately as a dedicated Github issue [#39](https://github.com/opengeospatial/om-swg/issues/39). KS promised to as if Simon Cox would have a comment of the issue.

SG asked how the observation station as an entity would be linked to the question of the proximate and ultimate FoIs? KS noted that the the station would be modelled as the platform which the proposed O&M model now contains.

IR asked the participants' opinions on the cardinalities of the proximate and the ultimate FoI associations, and if there was an agreement that the cardinality of the proximate FoI should be at most one. KS argued that on the AbstractObservation level the cardinality of 0..1 may be too restrictive. We may want to use the AbstractObservation as a container with multiple Observations having several different FoIs. This comment lead into discussion about the proposed model for Observation collections.

SG asked what the proposal for [Observation] collections looked like. IR told that this was discussed in the Toulouse meetings, and that proposal was that there would not be need for a specific class for ObservationCollection, as the observation templating could be used to point from Observation instances within a regular feature collection to an Observation instance acting as the container for the shared properties. KS argued that she probably was not present at this meeting because she would have protested strongly. The type of collection she was talking about is very close to the SOS offerings: collections of Observations on particular set of features and a set of properties. SG commented that in SOSA the ObservationCollection does exist with members. IR agreed that the collection was modelled in SSN extensions, but the same requirement could be fulfilled using the templating rather than extending feature collection by adding the shared properties to the collection entity. He continued that the ObservationCollection entities would be difficult to handle with APIs that used feature collections as response containers, as there would then be two levels of feature collections. KS argued that there was an agreement within the SWG that the Observation collection would be needed. IR agreed, but said that there could be several ways to implement it.

KS noted that she did not yet understand how the proposed Observation template methodology would work. She urged IR to explain it better. IR agreed that it probably needed more explaining, and he promised to try and capture it better in the Github. He also briefly outlined the idea for the participants of the meeting. SG asked if the templating would be more of an implementation issue that a thing to be addressed in the conceptual model? He also mentioned that the templating was used in the WaterML for timeseries data but for avoiding repeated properties for the results. IR added that with the templating the information about the shared property values remains intact when extracting an Observation from a collection. For ObservationCollections, this information is only available via the container context.

KS asked if IR's interpretation about the SSN [extensions] ObservationCollection was correct: she thought that the idea in the ObservationCollection in SSN [extensions] was that the individual Observation instances within the collection still were stand-alone, complete Observations with all their properties. IR asked if in the SSN extensions ObservationCollection the contained Observation instances would also include the same shared properties. SG replied it would be an implementation issue. Sg continued that conceptually we could not make a sentence that the properties are not repeated, although we can state that the members share properties. KS asked whether it was possible to add a constraint requiring that the properties shall be provided either for a collection member or int the ObservationCollection. SG replied that in OCL that would be quite easy to write. IR argued that this kind of constraints were already in defined in the draft proposed UML model for the concrete Observation class, although not using OCL formalism.

KS expressed her concern that having the templating as part of the core O&M would make it too complicated compared to 2.0 version. She strongly suggested that if we do follow the template approach we should also have a class which did not have this functionality, but would be very similar to the basic Observation of the current version, but with a possibility of having a timeseries as the result. One of the issues with the template approach would be that the same information could be in two different places, and thus finding it would be more difficult. She also added that if we take the appliedTemplate relation and make it bidirectional we would have a collection. SG commented that the template pattern would also be kind of duplicating the relatedObservation association. His feeling was that the collection was already in the model somewhere via a suitable use of the relatedObservation pattern. KS noted that you could say that all the related observations for a collection. SG continued that you could have an instance of Observation and then have it linked to the other observations with shared properties, and thus have a collection.

## 4. Updates to the O&M revision timeline
IR noted that the extension to the ISO 19156 Committee Draft schedule had been approved, and that the O&M SWG would have to have the change proposal document ready next summer, in June-July, to give the project team enough time the edit the standard document and the update UML models. He also mentioned that he had already revised the timeline table in Github according to this new information, but that the members should verify that the info in there now makes sense. KS noted that we should probably start to think about what and when to address the sampling.

## 5. Priority topic for the next week
IR proposed to have the ObservationCollection and the Observation template as the priority topic of the following week's meeting, this was agreed.

## 6. Other issues
No other issues.
