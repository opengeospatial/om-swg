# Minutes of the OGC O&M SWG meeting 8 April 2020

Time: 2020-04-08 at 11:00 EEST

Place: Remotely (GoToMeeting), [recording](https://portal.ogc.org/files/?artifact_id=92968) available in the OGC Portal (requires Portal access).

Participants (voting members in bold):

* **Ilkka Rinne (IR)**
* **Kathi Schleidt (KS)**
* **Linda van den Brink (LB)**
* **Sylvain Grellet (SG)**
* **Clemens Portele** (by proxy to Ilkka)
* **Hylke van der Schaaf (HS)**

Status: (2020-04-22)

## 1. Check for quorum, patent call
Quorum reached, 6 participants from 6 voting member organisations represented with Clemens' proxy to Ilkka.

No affecting patents were identified.

## 2. Approval of the minutes of the previous meeting(s)

IR told that he unfortunately had not had time to finalize the minutes of the two previous meetings, so there was nothing to approve. 

## 3. Priority topics

### Platform and Deployment concepts
IR briefed the participants on the Platform issue and how the Platform and Deployment were described in SOSA/SSN. He told that the question of possibly adding the Deployment concept to O&M in addition to the Platform had been raised in the previous meeting when discussing modelling of measurement campaigns. In SSN the measurement campaigns are mentioned as examples of using the Deployment class. IR presented the most recent draft of the O&M UML class diagram containing both the ```Platform``` and ```Deployment``` classes as well as the ```AbstractSystem``` class with association classes ```PlatformAttachment``` and ```DeploymentAttachment``` containing the time periods during which a system had been attached to the Platform or Deployment. The system-platform-deployment associations were done following the SSN/SOSA concepts, and the attachment time periods had been added by IR to handle the temporally dynamic aspects observer deployment. 

SG mentioned that in SSN the Deployment had a property ```forProperty``` which was seen as a place for providing a light-weight rationale or purpose for deploying a sensor. The Platform in SOSA does not contain such rationale for hosting a sensor on a particular platform. Being able to provide this kind of purpose for an Observer deployment was seen as important. The model presented by IR was seen as overly complicated by SG regarding the abstract level of the O&M model. Both SG and KS asked if we could do without the Deployment class by adding the reason into the Platform? Being able to capture the temporal attachment was seen as useful. They felt that in the hindsight the facilities and campaigns had been over-modelled in the INSPIRE EF data model, and that this should be avoided on the O&M. 

LB commented that she felt very uncomfortable with defining a different conceptual model for the platform and deployment than in SSN/SOSA. Also she argued that it was important not to remodel things that were already defined in SSN/SOSA unless there was a very good reason to do so.

The participants felt that they needed more in-depth information on how the Platform-Deployment concepts were designed to work together in SSN/SOSA, especially related to modelling observation campaigns. KS promised to try and get Simon Cox involved in the Github discussion on this issue. The participants also wished there would be a possibility for Simon to join a SWG meeting give more insight in the SOSA desing in this respect.  

### Soft-typing vs. hard-typing
IR presented the most recent UML class diagram containing the ```type``` codelist value attributes for both ```AbstractObservation``` and ```ObservationCollection``` classes. IR mentioned that in the soft-typing approach the contraints to be applied for various soft-types class variations would somehow have to described with the codelist values. SG commented that while machine-readable constraints were important, the first priority in the conceptual model was to get the constraints defined in natural language. KS agreed, and added that the code list values for the O&M 2.0 specialized observations were already defined in the OGC definitions service, and that these would probably suffice.

Regarding ObservationCollections KS mentioned that the soft-typing issue might be more complicated, as there could be need to classify the collections both on the scale of summarizing vs. homogenous but also based on the specialized observation type of the member Observations. IR commented that he had also been thinking if it should be possible to give more than one ```type``` classifications for Observations or Observation collections. SG asked how useful the participants saw this kind of type classifications, as the it was kind of redundant information: the classifications could be determined by inspecting the attributes and associations of the Observation instances. LB also wondered why the typing was important. IR replied that he felt there was value in a having common set Observation classifications, such as the specialized Observation types, in order to use well-defined concepts and terms in data exchange use cases. KS felt that enabling multiple classifications for Observations felt like a useful concept. This would make it possible to classify Observations based on the result type and the geometry type of the feature-of-interest at the same time, which had been a customer request in a recent O&M project she had been involved in.

LB added that in CityGML each object could contain three different classifications: usage, function and class. She also noted that the concept of multiple classifications was similar to adding keywords to data entities.

KS created a new [issue #48](https://github.com/opengeospatial/om-swg/issues/48) for getting more feedback on having multiple categorization types per Observation. 

### Observation and Platform contexts
IR asked if the participants had had time to review the issue on source andd target roles for the Observation and Platform context association classes. Nobody had had time to do this.

KS promised to create a new Github [issue #49](https://github.com/opengeospatial/om-swg/issues/49) for capturing the discussion on this topic.

### Navigabilities for associations
KS asked if IR had been keeping the [association role table file](https://github.com/opengeospatial/om-swg/blob/master/iso_19156_issues/Associations.md) in Github up-to-date with the changes in the UML model. IR told that he had not edited the associations file. KS promised to revise the file based on the latest UML model.

There was discussion on the semantics of the UML association navigability decorations: It was considered a common practice that the line end arrows were left out for bi-directional associations, and KS also preferred this to visual clarity. On the other hand if only one of the association ends had an arrow it was felt that the association was single-directional, and thus non-navigable to the other direction. IR noted that in EA the unspecified navigability was shown as a line with no arrows, both the explicitly single-directional and an association navigable in one direction and with unspecified navigability in the other direction as a single-directional arrow, and a bi-directional association with two-sided arrow line. It was decided that the arrows would be removed from the bi-directional associations [Note: this was later discovered to be conflict with the ISO/TC 211 UML modelling best practice, see https://github.com/opengeospatial/om-swg/issues/44#issuecomment-614121201].

It was decided that it should be possible, but not mandatory to make most of the associations navigable in both directions, including the feature-of-interest associations between the ```AbstractObservationbase``` and ```AnyFeature``` and the metadata and result associations between the ```AbstractObservationbase``` and ```Any```. KS noted that especially for coverage Observations it would be highly benefitial to be able to navigate between the (coverage) result instance and the Observation instance in both directions.

SG asked if the participants were aware of any potential problems or restrictions for using the same role names in different associations with a UML model? The presented model had the role name ```observation``` in several associations pointing to ```AbstractObservationBase```. IR told that as far as he knew this was not a problem, but that he could raise the topic in Github to make sure.

## 4. Priority topic for the next week
The following topics were identified as priority discussion topics for the next meeting:

* UML modelling for platform and deployment
* ObservationCollections
* Association navigabilities and role names

## 5. Other issues

KS demonstrated a GeoJSON extension to the Frost SensorThings API server they had created together with HS that enabled using pure GeoJSON features as SensorThings API output format (see [demonstration STA request](https://lubw-frost.docker01.ilt-dmz.iosb.fraunhofer.de/v1.1/Observations?$select=phenomenonTime,result&$expand=FeatureOfInterest($select=description,name,feature,encodingType),Datastream($select=description,name;$expand=ObservedProperty($select=description,name))&$resultFormat=GeoJSON)). KS told that this format was able to provide all the content included in the [CovidJSON profile](https://covidjson.org) using STA, although the GeoJSON property names were based on STA Observation and Datastream naming rather than the [O&M Simple Feature model](https://github.com/opengeospatial/omsf-profile) property names used by CovidJSON.

