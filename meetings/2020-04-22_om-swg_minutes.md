# Minutes of the OGC O&M SWG meeting 22 April 2020

Time: 2020-04-22 at 11:00 EEST

Place: Remotely (GoToMeeting), [recording](https://portal.ogc.org/files/?artifact_id=93100) available in the OGC Portal (requires Portal access).

Participants (voting members in bold):

* **Ilkka Rinne (IR)**
* **Kathi Schleidt (KS)**
* **Linda van den Brink (LB)**
* **Sylvain Grellet** (by proxy to Kathi)
* **Clemens Portele** (by proxy to Ilkka)
* **Hylke van der Schaaf (HS)**

Status: draft

## 1. Check for quorum, patent call
Quorum reached, 6 participants from 6 voting member organisations represented with Sylvain's proxy to Kathi and Clemens' proxy to Ilkka.

No affecting patents were identified.

## 2. Approval of the minutes of the previous meeting(s)

IR proposed that the SWG approves the minutes of the [8 Apr](https://github.com/opengeospatial/om-swg/blob/master/meetings/2020-04-08_om-swg_minutes.md) and [1 Apr](https://github.com/opengeospatial/om-swg/blob/master/meetings/2020-04-01_om-swg_minutes.md) SWG meetings. These were approved without any comments or additions.

IR told that he had not yet been able to finish the minutes of 18 Mar SWG, but would be able to it on that day or the next one.

## 3. Priority topics

**Modelling Platform and Deployment concepts**

IR presented the latest draft UML model where the Deployment was modelled as an association class for the assocation between the AbstractObserver and the AbstractPlatform classes, and included the deploymentReason and the deploymentTime attributes. 

 KS told that she was a bit torn regarding inclusion of the measurement campaign concept into the O&M model. During the INSPIRE EF work discussion and modelling of this kind of activity took weeks and she was not sure if the resulting model was even used very widely. Regarding the Deployment, she mentioned that in addition to the attributes added by IR a reference to an externally provided description or additional information would have to be added as an attribute. She also noted that she was worried about the additional complexity the association class would introduce, especially in the XML encoding. She asked if there was a way to define Deployment class in a way that it could be implemented in the XML using attributes instead of elements, similar to way the xlink attributes work for GML references?
 
 IR asked if anyone knew for association classes would be implemented in RDF? KS replied that in RDF one would have to introdure the association class attributes using an intermediate node between the associated classes.

 LB told that she was also worried about the complexity of the draft Platform and Deployment model: in the Dutch O&M use cases she had seen the sensor and platform information was often conflated, and adding the deployment would take things even further. IR argued that without the deployment time information, it would not be possible to determine to which platform the sensor was attached to when a particular observation event happened. KS agreed that without the time we get lost.

KS asked if the intention was to define the Observer as a type or class or a particular instance of the observing entity, such as a sensor device? Matching of sensor instances into typing or classification systems can be exceedingly hard depending on the modelled system. She continued that in general it is always easier to find the observer instance used for creating an observation, but type information is not always available. IR told that based on the previous discussion in the SWG meetings the intention is that Observer models a particular instance, and not a type. KS commented that this should be written down clearly. HS commented that Observer as an instance of a sensor works well also for SensorThings concepts. KS added that the Procedure concept should contain information specific to a type or class for Observers, such as technical specifications of the sensor type used.

**Linking from associated Observation entities back to Observation**

IR introduced the chnanges he had made in the draft UML model to enable, but not enforce inverse associations from the entities associated with AbstractObservationBase pointing back towards the AbstractObservationBase. The Procedure, ObservedProperty, Observer and Platform had been turned into abstract classes with a single-direction association from the AbstractObservationBase. Each of these also had a concrete sub-class which had a separate single-direction association back to AbstractObservationBase. Thus the inverse-linking would not be mandated for all systems, they could define their application domain specific entities as specializations of these abstract classes. At the same time it would be possible for an implementer to adopt a pattern for back-linking by using the defined concrete classes if they so wished. IR continued by stating that his idea had been to work towards a common abstract core model defined in one requirements class, and define the concrete "Simple" classes in another requirements class. KS asked of the plan was to include the concrete ```Observation``` and ```PotentialObservation``` in the abstract core requirements class? IR told that he did not have strong opinion on this yet, and that this matter would have to be discussed among the SWG members.

HS commented that he was no UML modelling expert, but the diagram looked quite complicated. IR agreed, but stated that the intention was to highlight the modelling solution for the SWG members. KS added that the diagram would be split into more digestable pieces for the specification. He also preferred using attributes for the association class attributes over XML elements. IR told that he would ask Clemens Portele how to best enable in the UML model considering the upcoming XML implementation work.

IR also told that the same pattern for back-linking had been applied to the feature-of-interest and the result entities in the model: a concrete class ```SimpleFeatureOfInterest``` had been defined as a sub-class for ```AnyFeature``` and ```SimpleObservationResult``` as a realization of the ```Any``` interface. KS noted that the SimpleFeatureOfInterest looked like an interface to her rather than a class. She asked would it be possible to model it as an interface? IR told that he was not sure if this was possible in the ISO harmonized model. KS added that the FoI entity is what the data providers most likely already have in their data models, and thus adding a concrete FoI class would probably not be used much. Considering the SimpleObservationResult KS noted that defining a concreate result class ni the O&M model would cut off the possibility to use the variety of the existing result data model types. IR suggested that maybe the back-linking aspect should be defined as an interface to be implemented by the result types of appropriate. KS added that the same pattern should be used also for the metadata associations.

KS asked which attributes should the simple classes contain? She continued by suggesting name, description a link to an externally provided documentation and a responsible party. Perhaps the INSPIRE Process class could be used as starting point of the model? It was agreed the textual class description documents would also be used for drafting the list of the proposed attributes. LB commented that she was not certain of the list proposed by KS would be the bare minimum attributes for all the simple classes, although for the SimpleProcedure they fit well with the current Dutch practice.

KS proposed to model the ability to link back to AbstractObservationBase as an interface which would be implemented by all the simple classes. At the same time she did note that if this was done the back-linking whould be be so clearly visible if the diagram.

IR asked if anyone saw a problem in the fact that the association from the ObservedProperty to the Observer was single-directional, while the association between the Observer and the Platform was bi-directional. KS commented the her this looked ok, if the data providers had data about the Observer they also knew the Platform which the Observer was hosted on. Thus the Observer-Platform combination was likely to be tightly linked to the Observation, where as the ObservedProperties would probably not be so closely linked to the Observers in this direction.

**Observation collections**

IR told that he had added the ```collectionType``` attribute to the ```ObservationCollection``` class and the ```specializationType``` attrbute to the ```AbstractObservationBase``` to support the soft-typing discussed in the previous meetings. These attributes pointed to code list classes ```ObservationCollectionTypeCodeListValue``` and ```SpecializationTypeCodeListValue``` respectively. KS noted that it was not clear fro the diagram that the ObservationCollectionTypeCodeListValue code list contained the homogenous and the summarizing collection types. she sked if these could be added to the diagram as code list values. IR told that the idea of the soft-typing was not to fix the values in the UML model, but that he could add a note in the diagram to make this clearer. 

KS commented that it was important to define the attrbutes in a way that would make it possible to also link to the most approriate code list, and not just to a single official one. LB suggested that it would be good if the type attributes should point to generic code lists instead of particular code list instances. It was also decided that the attribute ```specializationType``` should be changed into ```observationType```. IR promised to ask Clemens Portele about the best way to link to abstract code lists.

IR told that he had added generic versions of the attribute and association constraints to the ObservationCollection class describing both the property multiplicities defined by the code list values for the collectionType, and the null/missing value member characteristics semantics discussed in the 18 Mar SWG meeting. KS was surprised that there would be a semantics difference between cases where no value and a null value was provided in the member characteristics. She said that this kind solution seemed very technical, and if this was included it would have to very clearly explained. KS asked if IR could ask Clemens if there were any precidents for this kind of semantics defined in other models. She also noted that in RDF there would be no mechanism for defing an association to nothing. She suggested defining special missing values to be used instead of the generic null value. IR argued that these special missing values would then have to be defined for all kinds of attribute and association values. KS agreed, but this would be a clean, unambiguous solution. KS said she would add a separate issue for this question in the Github, and link it to the ObservationCollection issue.

IR mentioned that he had also changed the association between the ObservationCollection and the AbstractObservation from bi-directional to single-directional. The retionaly for this change had been the case where Observations were members of one or more ObservationCollections, but did not want to explicitly link to these containing collections. If the association would be defined as bi-directional, it would seem wrong and inconsistent in IR's opinion to not include the ```collection``` associations on the Observation side. KS asked that how could the navigation from the Observations to the collection be implemented then in cases where the implmentations wanted to implement it? IR replied thatthe navigation to this direction would not be possible without a API. LB commented that navigating from the collection to the members would certainly be more important than the inverse direction. KS commented that in SensorThings one can navigate in both directions between all the linked entities, such as Datastream and the (contained) Observations. She asked why the association role name ```member``` was used when in other associations the ```observation``` name was used to pointing towards Observations. IR replied that this name had been selected to match the typical feature collection naming pattern, but the name was not set in stone. 


## 4. Priority topic for the next week
The following priority topics were chose the following week's meeting:

* Providing the textual class descriptions, and distributing this work.
* Basic attributes to be added to the simple classes.
* The collection constraints

## 5. Other issues

KS suggested to split the markdown document for the textual descriptions of the UML classes into individual files for each class. This would make it easier to find the descriptions of the classes as well as avoid versioning conflicts. There was not objection to doing so. 

