# Minutes of the OGC O&M SWG meeting 11 March 2020

Time: 2020-03-11 at 11:00 EET

Place: Remotely (GoToMeeting), [recording](https://portal.ogc.org/files/?artifact_id=92606) available in the OGC Portal (requires Portal access).

Participants (voting members in bold):

* **Ilkka Rinne (IR)**
* **Kathi Schleidt** (by proxy to Sylvain)
* **Linda van den Brink (LB)**
* **Sylvain Grellet (SG)**
* **Clemens Portele** (by proxy to Ilkka)
* **Hylke van der Schaaf** (by proxy to Sylvain)

Status: approved (2020-03-18)

## 1. Check for quorum, patent call
Quorum reached, 6 participants from 6 voting member organisations represented with Kathi's and Hylke's proxies to Sylvain and Clemens' proxy to Ilkka.

No affecting patents were identified.

## 2. Approval of the minutes of the previous meeting

Minutes of both [26 Feb SWG](https://github.com/opengeospatial/om-swg/blob/master/meetings/2020-02-26_om-swg_minutes.md) and [4 March SWG](https://github.com/opengeospatial/om-swg/blob/master/meetings/2020-03-04_om-swg_minutes.md) were approved without any comments or additions.

## 3. Issue housekeeping

**Split into a Multipart Standard? ([issue #37](https://github.com/opengeospatial/om-swg/issues/37))**

IR summarized that splitting the document into a multi-part one would probably not be easy and in any case would take months, and thus was not recommended by the SWG experts with experience in workign with the ISO standards.

LB asked why the issue had been moved into the "Decision postponed" column in the Github 19156 proposals project, and if there had been an agreement on how long the postponement was menat to last. SG replied that this had been done when it was not certain if the 19156 CD version submission date could be extended beyond the previous March 2020 deadline. Now that the deadline had been moved to September 2020, the group could make an informed decision.

 SG asked IR to add a comment to the issue on fact that the CD deadline extension had been granted. With this addition, the participants agreed that splitting the 19156 in a multi-part standard would not be proposed, and moved the issue into the Final decision status.

 **Any for Metadata and Result ([Issue #34](https://github.com/opengeospatial/om-swg/issues/34))**

LB asked how the metadata association was defined in the O&M 2.0. IR replied that in the 2.0 version the metadata association target was the MD_Metadata class of the ISO 19115 Standard. SG noted that the closed issue #12 was related to issue about a better definition of the "descriptive metadata" term used the the 19156 text.

SG asked if this issue, paticularly the metadata part or it, originated from a change request or had it been added by the SWG members themsleves during the revision work. IR told that the origin was most likely a [Github comment by Clemens Portele made on 19th November 2019](https://github.com/opengeospatial/om-swg/issues/18#issuecomment-556962239) asking if it would be a good idea to use Any instead of MD_Metadata class in order to be able to use the same association for providing many kinds of metadata descriptions in addition to ISO 19115. SG commented that while it was likely that the SWG members were glad to relax the metadata type, it may be an issue in the ISO/TC 211 if the revised 19156 would seem to ignore the well-established ISO metadata standard.

IR noted that not mandating any particular structure or model to be used for describing the metadata would make it more difficult to exchange the Observation metadata. Allowing any metadata may also lead into situations where some of the information with a well-defined place in the O&M model would instead be given only in a particular metadata description content because it would be easier to do so than use the O&M classes. On the other hand mandating a metadata model that was not a good fit for purpose would probably lead into issues providing metadata that did not have a good place in the O&M model.

SG noted that he had cases where the strict binding to ISO 19115:2003 for O&M 2.0 metadata had caused issues, as a newer version of the 19115 had been used for the some of the features. In these cases it would be easier if the O&M model did not mandate the use of a particular metadata model.

It was noted that from the most likely generic metadata model candidates the DCAT already had a mapping to ISO 19115, thus requiring 19115-1 would allow using the DCAT encoding for the metadata.

It was decided that the 19156 description of the metadata association should state that the associsiation should point to a metadata described in a well-known and documented structure and/or format, such as the ISO 19115 or DCAT. It was also decided that the 19156 text would recommend the implementations of the O&M conceptual model to define the allowed metadata specifications more strictly based on the community or application level practices. With these additions the SWG decided to move the issue into Final decision status.

**Rename Sensor to Observer ([issue #30](https://github.com/opengeospatial/om-swg/issues/30))**
SG mentioned that Simon Cox had made a comment in the Github issue regarding the fact that the O&M SWG members should make a issue in the W3C Spatial Data on the Web (SDW) issue tracker for proposing the Observer name. SG was willling to be assigned for the issue #30, and he also promised to create an issue in the SDW Github issue list on this. Deciding whether to keep both the Sensor and Observer in SOSA would be up to the SDW group. LB noted that the Spatial Data on the Web group was not active currently, but it may be re-activated to act on the issues such as this.

SG suggested that the textual description of the sosa:Sensor was actually a very good base for the description of the O&M Observer, as it already mentions human sensors as one option.

The SWG decided to move the issue into Final decision status.

**has or has not? ([issue #38](https://github.com/opengeospatial/om-swg/issues/38))**
LB noted that additionally to the generic naming consistency for the association role names and the typical naming pattern used in ISO UML models, a strong reason she had against using the "has/is" prefix names would be backward compatibility with the current O&M names: applying the has/is pattern consistently would mean changing many of the names in the O&M model that otherwise could be kept as-is. 

The SWG decided not to propose using the has/is prefixes in the 19156 association role names and to move the issue into Final decision status.

**Add SOSA Platform ([issue #28](https://github.com/opengeospatial/om-swg/issues/28))**

IR briefed the participants on the question he had added a comment in the Github issue for last week: If the Platform class would be described in the O&M model, then any class people want to use for defining a concrete platform in their application domains or use cases would have specialize the O&M Platform. This could be an issue when classes from existing models would be used as targets of the platform association, as they may already be part of an existing class hierarchy in the own models or it may be difficult to change them to derive from the O&M Platform. An option to solve this would be to make the platform association point to AnyFeature in a similar way that the ultimate and proximat featureOfInterest associations do. However, this option would not make it possible to define inverse association from Platform to Observer nor would it allow auto-referencing the Platform to define  assocaitions between different Platforms.

SG commented that the concept of a observation station has been unnecessarily redefined over and over in particular communities and systems over the years. The interoperability of the observation data will not increase unless the we add these semantics in the O&M model. He added that he was really glad to see the Platform concept in the O&M model. He also noted that there had been suggestion for adding the Platform class in the INSPIRE EF model, but that the TWG had refused adding one due to difficulty in deciding the name (platform, station, cite etc.) as well as the fact that in some cases the existing datasets did not clearly separate the platform from the sensing device. Thus in INSPIRE EF model a resursive association was added in the Facility class for capturing the platform.

SG told that it was not clear to him why the Platform class was abstract in the draft O&M UML model. IR replied that there had not been a decicated discussion yet on making the Platform class abstract or not. He had nothing against making it concrete with the basic attributes inherited via the FeatureType stereotype. LB noted that it could still be extended if needed. SG noted that actually the same logic could be applied to the Observer class. She added that a few meetings back there had been a general agreement that many of the classes in the model would not need to be abstract. IR noted that currently the Procedure class was also abstract in addtion to the Observer and Platform. SG noted that the Procedure was a bit different from the two other in the sense that it was really not a feature now that it had been semantically separated from the sensor. IR agreed that the Procedure should lose the FeatureType stereotype and that it was closer to the ObservedProperty in this sense.

It was agreed that the Platfrom would be kept in the model and made a concrete class. Also the participants felt that the Observer class should be made concrete. IR wanted to give the other SWG member a say in making the Observer concrete, and thus did not want to make a final decision on that yet. It was decide that a dedicated issue on deciding which classes should be abstract and which not would be added to Github to keep the model consistent. IR promised to add the issue.

The SWG decided to move the issue into Final decision status.

## 4. Priority topic: Observation collections
The discussion on the collections was postponed to the next meeting due the insufficient time to discuss it in this meeting.

## 5. Other discussion topics
There was no time to discuss the other topics proposed in the agenda.

## 6. Priority topic for the next week
The observation collections would be on the agenda again in the next week's meeting. IR asked the participants to try and review the latest discussion in the issue #2 in order to make good progress in the meeting. IR noted that a lot of time and effort had already been used for discussing the observation collections, and that the collection related part of the model already formed a big part of the entire UML model. He threw a question in the air for the next week about how detailed collection model should we actually include in the O&M model.

## 7. Other issues
SG commented that there was no issue yet for drafting the textual class and association descriptions. This work would probably affect the UML model and some of the decicions already made by the SWG. A generic umbrella issue for this work could later be split into smaller parts. IR promised to create an issue for this.

