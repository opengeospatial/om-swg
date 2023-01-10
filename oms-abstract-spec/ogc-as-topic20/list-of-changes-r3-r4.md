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

- Added EO for Earth Observation.
- Added new clause 4.8 Associations in UML context diagrams.

# 5 Conformance

- Table 2: Added Abstract Observation Core – AbstractObservationCollection.

# 9 Abstract Observation Core

- 9.1.1	Abstract Observation Core Package Requirements Class: Added Imports line for /req/obs-core/AbstractObservationCollection.
- 9.2.1	AbstractObservationCharacteristics Requirements Class: Added Requirement line for /req/obs-basic/ObservationCharacteristics/collection-sem.
- New clause 9.2.8 Association collection (under clause 9.2 AbstractObservationCharacteristics)
- New clause 9.9 AbstractObservationCollection.
- New clause 9.11.2	AbstractObservationCollectionType.

# 10 Basic Observations

- 10.4.1 ObservationCollection Requirements Class: now Imports all of its requirements from /req/obs-core/AbstractObservationCollection.

# Annex A (normative) Abstract Test Suite

- New clause A.2.10	Abstract Observation Core – AbstractObservationCollection

# Annex C (informative) Changes in the Observation and Sample models between ISO 19156:2011 and ISO 19156:2022 (this document)

- C.2 Interfaces in the conceptual schema packages: Added list items f) SampleCollection (a collection of similar Samples); g) ObservationCharacteristics (common characteristics of Observations); h) ObservingCapability (potential to create Observations).
- C.6 Observation and Sample collections: edited text to match the re-introduction of AbstractObservationCollection.

# Annex E (informative) Detailed package overview diagrams

- New informative Annex with Figures including complete set of all classes and associations in packages Abstract Observation Core, Basic Observations, Abstract Sample Core and Basic Samples. These could not be included in the normative text due to small text size in A4 print format. Links to the four UML diagrams publised as individual vector graphic PDF files included.
