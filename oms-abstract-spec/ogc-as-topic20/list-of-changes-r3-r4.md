# Changes applied across the document

- All UML Figures have been redrawn to improve readability.
- Minor editorial fixes.

# 2 Normative references

- Removed ISO 19109:2015, moved into bibliography

# 3 Terms and definitions

- 3.3 data type: Fixed defintions to match ISO 19103:2015, 4.14.
- 3.6 ex-situ: Added Notes 2 and 3.
- Deleted 3.10 measurand, added in situ as 3.10.
- Added 3.14 observation result (as in ISO 19156:2011).
- Renumbered terms 3.15 - 3.27.
- 3.18 property: Added Note 1.
- 3.19 property type: Added Example.
- 3.24 sensor: Corrected the source from "ISO/EEC Guide 99:2007" to "CGM 200:2012".

# 4 Document conventions

- Added new clause 4.8 Associations in UML context diagrams.

## 4.1 Abbreviated terms and acronyms
- Added CIS for Coverage Implementation Schema.
- Added EO for Earth Observation.
- Reformatted INSPIRE
- Added RDA for Research Data Alliance
- Added UoM for unit of measure
- Added URI for Uniform Resource Identifier
-  

# 5 Conformance

- Table 2: Added Abstract Observation Core – AbstractObservationCollection.

# 8 Conceptual Observation
- 8.2.2 Interface Observation: The requirement statement is now a complete sentence with a "shall" word included.
- 8.3.2 Interface ObservableProperty: The requirement statement is now a complete sentence with a "shall" word included.
- 8.4.2 Interface Procedure: The requirement statement is now a complete sentence with a "shall" word included.
- 8.5.2 Interface ObservingProcedure: The requirement statement is now a complete sentence with a "shall" word included.
- 8.6.2 Interface Observer: The requirement statement is now a complete sentence with a "shall" word included.
- 8.7.2 Interface Host: The requirement statement is now a complete sentence with a "shall" word included.
- 8.8.2 Interface Deployment: The requirement statement is now a complete sentence with a "shall" word included.



# 9 Abstract Observation Core

- 9.1.1	Abstract Observation Core Package Requirements Class: Added Imports line for /req/obs-core/AbstractObservationCollection.
- 9.2.1	AbstractObservationCharacteristics Requirements Class: Added Requirement line for /req/obs-basic/ObservationCharacteristics/collection-sem.
- 9.2.2 Feature type AbstractObservationCharacteristics: The requirement statement is now a complete sentence with a "shall" word included.
- New clause 9.2.8 Association collection (under clause 9.2 AbstractObservationCharacteristics)
- New clause 9.9 AbstractObservationCollection.
- New clause 9.11.2	AbstractObservationCollectionType.

# 10 Basic Observations

- 10.4.1 ObservationCollection Requirements Class: now Imports all of its requirements from /req/obs-core/AbstractObservationCollection.

# 11 Conceptual Sample

- 11.3.4 Association featureOfInterest: Moved a requirement sentence "Reference to the feature-of-interest shall be done using the association with the role featureOfInterest." from Requirement /req/sam-cpt/Sampling/featureOfInterest-card into /req/sam-cpt/Sampling/featureOfInterest-sem. Replaced the requirement statement of /req/sam-cpt/Sampling/featureOfInterest-card with test "A Sampling shall have at least 1 featureOfInterest and may have more than 1 in cases where multiple objects are sampled with the intention to create one Sample." which correctly deals with the association cardinality.

# 13 Basic Samples

- 13.13.2 Data type NamedLocation: The requirement statement is now a complete sentence with a "shall" word included.
-13.14.2 Data type StatisticalClassification: The requirement statement is now a complete sentence with a "shall" word included.

# Annex A (normative) Abstract Test Suite

- New clause A.2.10	Abstract Observation Core – AbstractObservationCollection

# Annex C (informative) Changes in the Observation and Sample models between ISO 19156:2011 and ISO 19156:2023 (this document)
- Added new clause C.1  General
- C.3 Interfaces in the conceptual schema packages: Added list items f) SampleCollection (a collection of similar Samples); g) ObservationCharacteristics (common characteristics of Observations); h) ObservingCapability (potential to create Observations).
- C.7 Observation and Sample collections: edited text to match the re-introduction of AbstractObservationCollection.

# Annex E (informative) Detailed package overview diagrams

- New informative Annex with Figures including complete set of all classes and associations in packages Abstract Observation Core, Basic Observations, Abstract Sample Core and Basic Samples. These could not be included in the normative text due to small text size in A4 print format. Links to the four UML diagrams publised as individual vector graphic PDF files included.

# Bibliography

- Removed entries 2 and 3 (ISO 19105:2000 and ISO/DIS 19105 Conformance and testing)
- Added ISO 19109:2015, Geographic information — Rules for application schema as entry 2
- Corrected entry 14 JCGM 200:2012, International vocabulary of metrology –— Basic and general concepts and associated terms : BIPM/ISO 2012(VIM)
- Added following new entries:
   - [31]	SPATIAL DATA ON THE WEB BEST PRACTICES. W3C Working Group Note, 28 September 2017. Also published as OGC Best Practice 15-107, https://www.w3.org/TR/sdw-bp/https://content.iospress.com/articles/semantic-web/sw214 
   - [32]	ISO 19116:2019, Geographic information — Positioning services
   - [33]	ISO/IEC 19501:2005, Information technology — Open Distributed Processing — Unified Modeling Language (UML) Version 1.4.2
   - [34]	ISO 19143:2010, Geographic information — Filter encoding
   - [35]	ISO 9000:2015, Quality management systems — Fundamentals and vocabulary
   - [36]	ISO 19101 2:2018, Geographic information — Reference model — Part 2: Imagery
