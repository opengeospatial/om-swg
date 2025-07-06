# Requirement for OMS Logical Model
v0.0 / 2024-12-12 / OMS SWG
## Synopsis
The approved OMS model with its three modeling layers creates undue overhead for the implementation of domain models. It is therefore proposed to formalize a logical model layer compliant with the OMS model that provides all necessary associations. This model should be published alongside the existing approved OMS model.

## Background
OMS provides the relevant concepts for the structured description of observations, including the sampling structure, often essential for true understanding of the nature of the observations being provided. As data provisioning mechanisms are transitioning towards highly distributed linked approaches, the model structure and packaging has been significantly abstracted. This approach allows implementers to explicitly select the concepts to be supported based on their requirements, while clearly stating to which requirements and Conformance Classes their implementation complies. Both the Observation and Sample sections of this model have been structured using the following layering of packages:
- **Conceptual:** Within the Conceptual Model Packages, only Interfaces are provided. These models provide a very abstract view of the individual concepts they contain without reference to specific implementations. This approach allows for the inclusion of semantically aligned objects from external sources, that while not having been created under the Observations, measurements and samples model, do provide concepts sharing the same semantic meaning as the concepts from the Conceptual Models.
- **Abstract Core:** Within the Abstract Core Model Packages, only abstract featureTypes are provided following the semantic structure of the Conceptual model (i.e., realizing the interfaces provided by the Conceptual Model Packages). A consistent approach to metadata provision is introduced. All associations from the abstract featureTypes reference the conceptual interfaces for greater implementation flexibility. The Abstract Core Model Packages are foreseen for the creation of domain models, as required by individual communities, providing an Abstract Core ready for extension. Due to their abstract definition, the classes from Abstract Core cannot be directly instantiated.
- **Basic:** Within the Basic Packages, simple concrete featureTypes (specializing the abstract ones from the Abstract Core model) have been defined with some basic utility attributes added for rapid out-of-the-box deployment. A few additional concepts pertaining to collections and potential observations are introduced at this level. This is the only level of OMS that can be directly instantiated.

## Identified Issues
While the layered approach described above allows for great flexibility, as required of a conceptual model, it also adds a serious burden on those tasked with specializing parts of OMS within their domain models. As part of the flexibility of the OMS layered approach, all associations across model layers target the interfaces from the conceptual model.To derive domain classes from the abstract classes provided by OMS, one must also include the interfaces for relevant context on associations. This is partially due to Enterprise Architect (the UML modeling tool used) not allowing to display inherited associations as can be done with inherited attributes. The resulting diagrams rapidly become unreadable, as shown in the simple example below.

![grafik](https://github.com/user-attachments/assets/bfaa0e00-986f-4c90-9e4d-4f1a4e55b3e7)

In this example, we are specializing the Observation, ObservableProperty and ObservingProcedure types to specialized domain types (e.g. because additional attributes are required). The top third of the diagram only serves the purpose of showing the associations between the interfaces This adds additional unwanted overhead to models.

This issue was initially encountered during work done on updating the World Meteorological Organization (WMO) WIGOS Metadata Representation (WMDR) model to OMS, where it rapidly became apparent that the already complex WMDR models could not cope with the addition of the OMS interfaces together with the abstract classes. During the Time Series Modelling Language (TSML) update we encountered the same issue, and are thus basing our TSML work on the OMS Logical Model.

## OMS Logical Model
To overcome this, in the OMS Logical Model, all classes from all 3 layers of the OMS model are therefore provided as abstract featureTypes, and all associations are available directly between these classes. Like the OMS model, it provides individual packages for Observation and Sampling. All these abstract classes are aligned with the OMS model. However, not all classes are available at the conceptual level, e.g. the individual sample types SpatialSample, MaterialSample and StatisticalSample are not introduced until the OMS Basic Samples package. In these cases, the abstract class in the logical model had to be derived from the corresponding Basic Package.

The OMS Logical Model is documented in the following UML diagrams, available from the OGC Sparx Cloud:
- Logical Abstract Observation
  - [Core elements](https://umltool.ogc.org/index.php?m=7&o=8D9FEA78-A796-4540-931C-148E08224559): just the Observation and associated classes
  - [Core elements with Interfaces](https://umltool.ogc.org/index.php?m=7&o=0BECF271-06A9-4970-A47A-21F0B2828F4F)
  - [All elements](https://umltool.ogc.org/index.php?m=7&o=1CC340B4-93A3-4560-9FF9-E649729BA86F): including ObservationCharacteristics, ObservationCollection and ObservingCapabilities
  - [All elements with Interfaces](https://umltool.ogc.org/index.php?m=7&o=01C4FB23-7235-4664-9C08-1F43F3040B2C)
- Logical Abstract Sampling
  - [Core elements](https://umltool.ogc.org/index.php?m=7&o=F77846A0-79E8-49c6-BE2B-746364E859BA): just the basic process around sampling
  - [Core elements with Interfaces](https://umltool.ogc.org/index.php?m=7&o=B25820E5-3F58-4d8d-BBCA-51E80828A79A)
  - [All elements](https://umltool.ogc.org/index.php?m=7&o=1AAE6732-6737-4ae1-AACB-4E3651F25E76): including specialized Sample types SpatialSample, MaterialSample and StatisticalSample, as well as SampleCollection
  - [All elements with Interfaces](https://umltool.ogc.org/index.php?m=7&o=DD29DC15-DD8D-460e-9F32-CC053276E351)

## Proposed Formalization
The OMS SWG proposes publication of the OMS Logical Model as an OGC Standard to complement the already approved OMS model consisting of Conceptual, Abstract and Basic layers. The UML diagram(s) should be complemented by an accompanying document explaining the OMS concepts as well as the intended use of the OMS Logical Model, namely the creation of domain models. Where possible, this document would re-use text from the OMS standard, but provide the reader with a more user friendly experience.

