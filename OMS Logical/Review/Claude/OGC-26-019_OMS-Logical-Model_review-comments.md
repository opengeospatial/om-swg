# OGC 26-019 — OMS Logical Model: review comments

**Reviewer:** Frederic Houbie, OGC Architecture Board  
**Document:** OGC Observations, Measurements and Samples — Logical Model, 26-019, version 0.0.1 (draft)  
**Date:** 24 August 2026  
**Total comments:** 68

---

## Summary

| Severity | Count | | Category | Count |
|---|---:|---|---|---:|
| Blocking | 13 |  | Architecture | 13 |
| Major | 40 |  | Traceability | 12 |
| Minor | 14 |  | Model content | 14 |
| OK | 1 |  | References | 12 |
|  |  |  | Editorial | 11 |
|  |  |  | Links | 6 |

**Severity:** *Blocking* — resolve before release for public comment / OAB approval · *Major* — resolve before publication as an OGC Standard · *Minor* — editorial pass.

**Type:** *Ge* general/architectural · *Te* technical (normative content, traceability, correctness) · *Ed* editorial.

Line numbers refer to the Markdown rendering of the reviewed `.docx`, for locating the text.

---

## Index

| ID | Clause / location | Type | Severity | Subject |
|---|---|:--:|---|---|
| **A-01** | 2, 8-11 (all req classes) | Ge | Blocking | No normative dependency on ISO 19156:2023; OMS compliance claim unverifiable |
| **A-02** | 8-11 vs ISO 19156:2023 | Ge | Major | OMS semantics restated as OMS-L requirements — two normative definitions will drift |
| **A-03** | 5.2, 6.2 | Ge | Blocking | Encoding neutrality broken: gml:id/name/description and the GML UML profile |
| **A-04** | 11.1, Annex | Ge | Major | ~40 single-property requirements classes with no dependency graph or profiles |
| **A-05** | 2 | Ge | Blocking | Clause 2 does not meet OGC Policy for a Conformance clause |
| **A-06** | 8.11-8.13, 9.15-9.17, 11.6 | Ge | Major | Codelists specified inline, contradictory extensibility, no register URIs |
| **A-07** | 5.4, header, all URIs | Ge | Blocking | URI policy unresolved: template base URI, unregistered OMS-L token, version mismatch |
| **A-08** | General | Ge | Major | No machine-readable model artefacts (UML/XMI, repository) |
| **A-09** | Preface, 6.1 | Ge | Major | Strategic position vs ISO 19156 maintenance and the OGC sensor baseline not stated |
| **A-10** | Security Considerations | Ge | Major | Security Considerations clause is a placeholder |
| **A-11** | Front matter | Ed | Major | Front-matter metadata unresolved; no Abstract, Bibliography or revision history |
| **A-12** | 7 vs 8-11 | Ge | Major | Informative clause 7 duplicates normative clauses 8–11 and has already diverged |
| **B-01** | Annex | Te | Blocking | Annex structure invalid — no annex lettering, 'Annex A' buried as body text |
| **B-02** | Annex vs 11.3, 11.4, 11.5 | Te | Blocking | 22 conformance classes reference non-existent requirements classes (Ext naming mismatch) |
| **B-03** | Annex (EF Extended) | Te | Blocking | Three additionalDescription conformance classes with no requirements class |
| **B-04** | 11.6 | Te | Major | Six codelist requirements classes have no conformance class |
| **B-05** | 11.2-11.5 (all Req rows) | Te | Blocking | Requirement identifiers in clause 11 do not nest under their own requirements class |
| **B-06** | 8.2 Req 29; 8.8 Req 11 | Te | Major | Two requirement identifiers imported unchanged from OMS (/req/obs-cpt/, /req/obs-basic/) |
| **B-07** | 8.2 Rec 1-3 | Te | Major | Observation recommendations identified against the ObservationCharacteristics class |
| **B-08** | Annex (MonitoringFacilityExt geometryRequired) | Te | Major | Three different names for the same thing in the geometryRequired conformance table |
| **B-09** | 11.6.3 | Te | Major | Malformed URI in 11.6.3 — MediaValue split out of the URI by bold formatting |
| **B-10** | 8.5; 9.11 | Ed | Major | Duplicate 'Req 6' in Observer; unnumbered requirement in SampleCollection |
| **B-11** | 8.12 | Te | Major | ObservationTypeByResultType Req 1 and Req 2 share one identifier |
| **B-12** | 8.12 | Te | Major | Ten codelist values, only seven constrained; 'discrete-point-coverage' off-pattern |
| **B-13** | 8.2 Req 2 / Req 3 | Te | Minor | Observation Req 2 and Req 3 state the same obligation |
| **B-14** | Annex (all conformance tests) | Te | Major | All 67 conformance tests are the same untestable sentence, with no pass criterion |
| **B-15** | 8.2 Req 7-11 | Te | Major | phenomenonTime/resultTime conditional vs mandatory; resultTime given two types |
| **B-16** | 8.2 Req 22, 24; 8.8 Req 8, 13 | Te | Major | Role named 'procedure' vs 'observingProcedure'; undefined 'Domain'/'Range' associations |
| **B-17** | 11.2-11.5 (all Req rows) | Te | Major | Clause 11 specifies attributes as associations and gives no property types |
| **B-18** | 11.3.6 | Te | Major | organisationLevel requirement names the role 'supersedes' |
| **B-19** | 9.3 Req 10 | Te | Minor | verticalPositionalAccuracy requirement says 'horizontal' |
| **B-20** | 10.2-10.5, 7.3 | Te | Blocking | ObservingCapability, Hierarchy, NetworkFacility, AnyDomainLink used normatively, never defined |
| **B-21** | 10.1 vs 7.3.2-7.3.5 | Te | Major | 10.1 says id/name/geometry are inherited; 7.3.2–7.3.5 list them as attributes |
| **B-22** | 7.3.5 vs 10.4 | Te | Major | MonitoringActivity: 'uses' in 7.3.5 vs 'usesFacility'/'usesNetwork' in 10.4 |
| **B-23** | 7.3.2, 11.2.10, 11.6.1 | Te | Major | Four spellings of specialisedMFType / SpecialisedMFTypeValue |
| **B-24** | 11.6.5 | Te | Blocking | ResultAcquisitionSourceValue: inSitu and remote definitions are wrong |
| **B-25** | 7.1.8 vs 8.8 | Te | Major | 7.1.8's claim about ObservationCharacteristics not borne out by clause 8.8 |
| **B-26** | 8, 9, 10, 11 (all) | Te | Blocking | No multiplicities anywhere in the model |
| **B-27** | 1, 2, front matter | Te | Major | Nature of the deliverable described three ways; 'Logical Model' target type undefined |
| **C-01** | 3 | Te | Blocking | Withdrawn normative references: ISO 19103:2015, ISO 19123:2005; ISO 19107 uncited |
| **C-02** | 3 | Ed | Major | ISO 19156 title wrong — 'Observations, measurements and samples' |
| **C-03** | 3 | Ed | Minor | ISO 19108:2002 should be cited with Cor 1:2006 |
| **C-04** | 3 vs 4, 5.2 | Te | Blocking | Standards used normatively are missing from clause 3 (ISO 19109, 19136-1, ISO/IEC 19501) |
| **C-05** | 5.2 | Te | Major | Schema language cites UML 1.4.2, inconsistent with the ISO 19103 dependency; stray '[2]' |
| **C-06** | 4 (multiple entries) | Te | Major | Withdrawn/draft editions in Terms and definitions (19156:2011, 19116:2019, 9000:2015, DIS 19123-1) |
| **C-07** | 4 ('feature') | Ed | Major | Definition of 'feature' corrupted to 'ion of real-world phenomena' |
| **C-08** | 4 | Te | Major | Nine ISO 19156 terms redefined with no SOURCE attribution |
| **C-09** | 4 ('property type') | Ed | Minor | 'Adapted from ISO 19109:2005' is an informal, inconsistent attribution |
| **C-10** | 4 (in situ / ex situ) | Ed | Minor | in situ / ex situ notes conflate two axes; distracting example |
| **C-11** | 4 lead-in | Ed | Minor | Clause 4 lead-in: 'This document used the terms defined in…' |
| **C-12** | 5.1 | Ed | Minor | Abbreviations table incomplete both ways; no caption; empty header row |
| **D-01** | All figures | Ed | Major | All nine figure captions have an empty number field |
| **D-02** | 6.1 | Ed | Major | Clause 6.1 example diagram has no caption |
| **D-03** | 8.1, 9.1, 11.1 | Ed | Major | Captions and images misplaced in clauses 8.1, 9.1 and 11.1 |
| **D-04** | All tables | Ed | Major | No table in the document is numbered or captioned |
| **D-05** | Contents | Ed | Major | Table of contents is stale and does not match the body headings |
| **D-06** | Front matter (External identifier) | Ed | Major | External identifier broken — '/doc/' in the text, '/def/' in the link target |
| **D-07** | Keywords / Preface | Ed | Minor | Keywords line has swallowed the Preface heading |
| **D-08** | Various | Ed | Minor | Typographical defects ('Th OMS', 'createdis' x3, 'provides describes', missing full stops) |
| **D-09** | 11.2.11 | Ed | Minor | 'SHALL NOT' in upper case, against Policy Directive 49 usage |
| **D-10** | Throughout | Ed | Minor | British and US spelling mixed, including within a single model element description |
| **D-11** | 7.3.2 note | Ed | Minor | 'EnvironmentalMonitoringFacilities' survives in eight places, three of them normative |
| **E-01** | Footnote 1 (clause 2) | Te | Major | Broken: opengeospatial.org/cite (OGC Compliance Testing web site) |
| **E-02** | Footnote 2 (clause 4) | Te | Major | Unreliable: portal.ogc.org PHP page for Policy Directive 49 |
| **E-03** | Copyright notice | Ed | Minor | opengeospatial.org/legal redirects — retired domain over http |
| **E-04** | All req/conf URIs | Te | Major | None of the 227 opengis.net req/conf URIs resolve; all use http:// |
| **E-05** | Throughout the requirement tables | Ed | Minor | Bold markers inside 271 of 272 URI occurrences — check the source .docx |
| **E-06** | Footnote 3, Footnote 4 | Ed | OK | Working: INSPIRE Knowledge Base and EUR-Lex Directive 2007/2/EC footnotes |

---

## Architecture (13)

### A-01 — 2, 8-11 (all req classes)

*Type Ge (General / architectural) · Severity Blocking · Line 373, 1144+*

**Finding.** The document claims to be a 'logical transposition' of OMS and that domain models built on it 'will be compliant with OMS', but no Requirements Class lists ISO 19156:2023 as a dependency. Only ISO 19103:2015 (and ISO 19108 for Observation) are cited. Nothing normatively ties any OMS-L class, attribute or association role to its OMS counterpart, and no conformance test verifies OMS compliance.

**Proposed change.** Add ISO 19156:2023 as a dependency of every Requirements Class. Add a normative mapping annex: OMS-L class/property -> OMS class/property, stating the OMS layer of origin (Conceptual / Abstract Core / Basic) for each, and a conformance test that checks the mapping.

### A-02 — 8-11 vs ISO 19156:2023

*Type Ge (General / architectural) · Severity Major · Line 1121+*

**Finding.** OMS-L restates the OMS semantics verbatim as its own normative 'shall' statements (e.g. Observation-sem, Sample-sem, Sampler-sem). Two independently maintained normative definitions of the same concept will drift as ISO 19156 is revised.

**Proposed change.** Normatively reference ISO 19156:2023 for the semantics and restrict OMS-L requirements to what OMS-L actually adds: the flattening, the direct class-to-class associations, and any tightened cardinalities/constraints.

### A-03 — 5.2, 6.2

*Type Ge (General / architectural) · Severity Blocking · Line 625-631, 667-675*

**Finding.** Encoding neutrality is broken in a document that presents itself as a logical model. Clause 6.2 makes identity, name and description depend on gml:id / gml:name / gml:description (and states gml:id uniqueness is scoped 'within the XML document'), and clause 5.2 constrains the UML to the GML profile of ISO 19136-1:2020 Annex E. This blocks clean derivation to JSON, RDF and OGC API resources - the stated audience (TSML, WMDR, STA).

**Proposed change.** Define abstract identifier / name / description properties in the model itself, with multiplicities. Move the GML/ISO 19136-1 profile statement and the gml:* mapping to an informative annex or a separate encoding standard.

### A-04 — 11.1, Annex

*Type Ge (General / architectural) · Severity Major · Line 1743, 2163+*

**Finding.** Clause 11 defines ~40 single-property Requirements Classes to allow 'mix and match'. This produces a combinatorial explosion of conformance classes with no stated dependency graph, no core/extension hierarchy, and no guidance on which combinations are meaningful.

**Proposed change.** Either consolidate into one MonitoringFacilityExt / NetworkExt / ActivityExt / ProgrammeExt Requirements Class per class with optional properties (plus named profiles for common combinations), or add an explicit conformance-class dependency diagram and rules justifying property-level granularity.

### A-05 — 2

*Type Ge (General / architectural) · Severity Blocking · Line 373-379*

**Finding.** Clause 2 (Conformance) does not meet OGC Policy: it lists no Requirements Classes, no corresponding Conformance Classes, no standardization target types, no mandatory/optional/conditional designation and no dependency structure. It also points to 'Annex A (normative)', which does not exist as such (see B-01).

**Proposed change.** Rewrite clause 2 with the standard OGC content: a table of Requirements Classes with their Conformance Classes and URIs, the standardization target(s), which classes are mandatory, and a conformance-class dependency diagram.

### A-06 — 8.11-8.13, 9.15-9.17, 11.6

*Type Ge (General / architectural) · Severity Major · Line 1331+, 1616+, 2089+*

**Finding.** Codelists are specified inline with enumerated 'the following entries shall be provided' values but no register URIs, and the extensibility model is self-contradictory: several classes are described as 'an empty extension-point' while simultaneously mandating entries. No OGC Definitions Server / Rainbow registration is referenced.

**Proposed change.** State for each codelist whether it is open or closed, publish the values on the OGC Definitions Server and cite the register URI, and remove the 'empty extension-point' wording from codelists that do enumerate values.

### A-07 — 5.4, header, all URIs

*Type Ge (General / architectural) · Severity Blocking · Line 639-643, 9, 13*

**Finding.** URI policy is unresolved. Clause 5.4 still contains the template 'http://www.opengis.net/spec/{standard}/{m.n}'. All 235 requirement/conformance URIs use the token 'OMS-L' at version 1.0 over http://, while the document metadata says Version 0.0.1. 'OMS-L' is not in the abbreviations list and http://www.opengis.net/spec/OMS-L/1.0 does not resolve.

**Proposed change.** Fill in clause 5.4 with the real base URI, register the 'OMS-L' token with the OGC Naming Authority, use https:// throughout, add OMS-L to clause 5.1, and reconcile the Version field with the URI version.

### A-08 — General

*Type Ge (General / architectural) · Severity Major · Line -*

**Finding.** No machine-readable model artefacts are referenced: no UML/XMI or Enterprise Architect package location, no ShapeChange configuration, no repository. The normative content of a logical model is the model, yet only rendered PNG diagrams are supplied (embedded as base64).

**Proposed change.** Publish the UML model in a version-controlled OGC repository and reference it normatively; supply diagrams as vector artefacts generated from that model.

### A-09 — Preface, 6.1

*Type Ge (General / architectural) · Severity Major · Line 332, 663*

**Finding.** The strategic position of the deliverable is not stated. If OMS-L is a flattening of ISO 19156, the OAB needs to know why it is an OGC Standard rather than a Best Practice, an OGC profile, or an amendment to ISO 19156 itself, and how it will be kept in step with the ISO/TC 211 revision cycle. The relationship to TSML, WMDR, SensorThings, SensorML and the wider OGC sensor baseline is mentioned only informatively.

**Proposed change.** Add a clause (or expand the Preface) stating the relationship to ISO 19156 maintenance, the intended lifecycle, and the dependency/alignment status of TSML, WMDR and the OGC sensor baseline.

### A-10 — Security Considerations

*Type Ge (General / architectural) · Severity Major · Line 338-340*

**Finding.** 'No security considerations have been made for this Standard' is a placeholder, not a security considerations clause.

**Proposed change.** Provide a substantive clause. A defensible conclusion is that the logical model introduces no new security considerations beyond those of the encodings that realise it - but that conclusion must be stated and reasoned.

### A-11 — Front matter

*Type Ed (Editorial) · Severity Major · Line 3-38*

**Finding.** Document metadata is unresolved template text: Submission Date '<2026-04-15>', Approval and Publication Date '<yyyy-mm-dd>', Document type 'OGC(R) <Standard >' (stray angle brackets and space), Document subtype 'if applicable', External identifier an unexpanded template. There is no Abstract, no Bibliography, no revision-history annex and no 'Future work' clause.

**Proposed change.** Complete all metadata fields and add the missing mandatory front/back matter per the OGC document template.

### A-12 — 7 vs 8-11

*Type Ge (General / architectural) · Severity Major · Line 695-1119*

**Finding.** Informative clause 7 restates every class and all its properties in prose, duplicating the normative clauses 8-11. Divergences already exist (see B-19, B-20, B-21, B-22).

**Proposed change.** Reduce clause 7 to a short conceptual overview with pointers into clauses 8-11, so that there is a single description of each property.

### B-27 — 1, 2, front matter

*Type Te (Technical) · Severity Major · Line 363-379, 15, 34*

**Finding.** The nature of the deliverable is described three different ways: clause 1 'a logical model and related abstract schema', clause 2 'an abstract logical transposition', Category 'OGC(R) Specification', Document type 'OGC(R) <Standard>'. Clause 1 also states no conformance consequence, and 'Logical Model' - used as the Target type of all 70 Requirements Classes - is never defined.

**Proposed change.** Align the wording, and define 'Logical Model' as a standardization target type in clause 4 or 5.

---

## Traceability (12)

### B-01 — Annex

*Type Te (Technical) · Severity Blocking · Line 2163-2167*

**Finding.** The Annex structure is invalid. 'Annex' is a heading-1, followed by further heading-1s 'Observation', 'Sampling', 'EF', 'EF Extended'; the line 'Annex A: Conformance Class Test Suite (Normative)' appears as body text inside. There is no annex lettering, no (normative)/(informative) designation, and the TOC lists these entries unnumbered.

**Proposed change.** Restructure as 'Annex A (normative) Conformance Class Test Suite' with A.1 Observation, A.2 Sampling, A.3 Monitoring Core, A.4 Monitoring Extended, and regenerate the TOC.

### B-02 — Annex vs 11.3, 11.4, 11.5

*Type Te (Technical) · Severity Blocking · Line 2683-2923 vs 1893-2087*

**Finding.** 22 Conformance Classes reference Requirements Classes that do not exist. The Annex consistently uses req-class-MonitoringNetworkExt-*, MonitoringProgrammeExt-* and MonitoringActivityExt-*, while clause 11 defines them without the 'Ext' infix (req-class-MonitoringNetwork-*, MonitoringProgramme-*, MonitoringActivity-*). Symmetrically, 20 Requirements Classes have no Conformance Class.

**Proposed change.** Adopt one naming convention (recommended: the 'Ext' form used for MonitoringFacilityExt in clause 11.2) and apply it to every Requirements Class and Conformance Class URI. A URI-level cross-check should be added to the SWG's editorial workflow.

### B-03 — Annex (EF Extended)

*Type Te (Technical) · Severity Blocking · Line 2538+*

**Finding.** Conformance Classes conf-class-MonitoringFacilityExt-additionalDescription, conf-class-MonitoringNetworkExt-additionalDescription and conf-class-MonitoringProgrammeExt-additionalDescription exist, but there is no 'additionalDescription' Requirements Class anywhere in clause 11 - although clauses 7.3.2-7.3.4 list additionalDescription as an attribute of all three classes.

**Proposed change.** Add the three missing Requirements Classes in clause 11, or delete the three Conformance Classes.

### B-04 — 11.6

*Type Te (Technical) · Severity Major · Line 2091-2161*

**Finding.** Six Requirements Classes have no Conformance Class at all: SpecialisedMFTypeValue, PurposeOfCollectionValue, MediaValue, MeasurementRegimeValue, ResultAcquisitionSourceValue, ResultNatureValue.

**Proposed change.** Add the six corresponding Conformance Classes to Annex A.

### B-05 — 11.2-11.5 (all Req rows)

*Type Te (Technical) · Severity Blocking · Line 1770-2087*

**Finding.** Requirement identifiers do not nest under their own Requirements Class. E.g. class 'req-class-MonitoringFacilityExt-mediaMonitored' contains requirement '/req/req-class-MonitoringFacility/mediaMonitored'. The same pattern affects all ~40 extended Requirements Classes, so no requirement in clause 11 is addressable from its class.

**Proposed change.** Renumber every requirement identifier so it is relative to its own Requirements Class, e.g. /req/req-class-MonitoringFacilityExt-mediaMonitored/mediaMonitored-sem.

### B-06 — 8.2 Req 29; 8.8 Req 11

*Type Te (Technical) · Severity Major · Line 1177, 1287*

**Finding.** Two requirement identifiers were imported unchanged from OMS and do not belong to this document's URI space: '/req/obs-cpt/gen/relatedObservation-sem' (Observation Req 29) and '/req/obs-basic/ObservationCharacteristics/collection-sem' (ObservationCharacteristics Req 11).

**Proposed change.** Rewrite both under the OMS-L req-class namespace.

### B-07 — 8.2 Rec 1-3

*Type Te (Technical) · Severity Major · Line 1179-1181*

**Finding.** In the Observation Requirements Class, Rec 1-3 are identified as '/rec/req-class-ObservationCharacteristics/...' and duplicate Rec 1-3 of the ObservationCharacteristics class (8.8).

**Proposed change.** Re-identify the Observation recommendations under req-class-Observation, or delete them if the intent was only to state them once on ObservationCharacteristics.

### B-08 — Annex (MonitoringFacilityExt geometryRequired)

*Type Te (Technical) · Severity Major · Line 2538+*

**Finding.** One table carries three different names for the same thing: Conformance Class 'conf-class-MonitoringFacility-geometryRequired', test 'conf-class-MonitoringFacilityExt-geometryRequired/test-1', and Requirement 'req-class-MonitoringFacilityExt-geometryRequired'.

**Proposed change.** Make all three consistent.

### B-09 — 11.6.3

*Type Te (Technical) · Severity Major · Line 2122*

**Finding.** Malformed URI: the Requirements Class reads 'http://www.opengis.net/spec/OMS-L/1.0/req/req-class-' followed by 'MediaValue' outside the URI, because the bold formatting has split the class name off. The URI as written terminates at 'req-class-'.

**Proposed change.** Repair to a single unbroken URI: .../req/req-class-MediaValue.

### B-10 — 8.5; 9.11

*Type Ed (Editorial) · Severity Major · Line 1230-1231, 1571*

**Finding.** Numbering defects in requirement tables: the Observer class has two requirements both numbered 'Req 6' (location/relatedObservation and metadata); the SampleCollection class has a fourth requirement (metadata-sem) with an empty number cell.

**Proposed change.** Renumber both tables.

### B-11 — 8.12

*Type Te (Technical) · Severity Major · Line 1353-1354*

**Finding.** ObservationTypeByResultType Req 1 and Req 2 carry the identical identifier '/ObservationTypeByResultType-sem'. Req 2 is a constraint, not a semantic definition.

**Proposed change.** Rename Req 2 to '/ObservationTypeByResultType-con'.

### B-14 — Annex (all conformance tests)

*Type Te (Technical) · Severity Major · Line 2176+*

**Finding.** Every conformance test in the Annex is the same untestable pair: purpose 'Verify that all requirements from the requirements class have been fulfilled', method 'Inspect the documentation of the application, schema or profile'. A single test covers Requirements Classes holding up to 30 requirements, and gives no pass/fail criterion.

**Proposed change.** Provide one test assertion per requirement, or at minimum per group of related requirements, with an explicit pass criterion. For a logical model, abstract test suites in the ISO 19105 style are the expected form.

---

## Model content (14)

### B-12 — 8.12

*Type Te (Technical) · Severity Major · Line 1353-1354*

**Finding.** Req 1 enumerates 10 values but Req 2 constrains only 7. discrete-coverage-observation, discrete-point-coverage and timeseries-observation are given no result-type constraint, so the codelist value carries no testable meaning. 'discrete-point-coverage' also breaks the '-observation' naming pattern of every other value.

**Proposed change.** Add the three missing constraints (or state explicitly why they cannot be constrained), and rename to 'discrete-point-coverage-observation'.

### B-13 — 8.2 Req 2 / Req 3

*Type Te (Technical) · Severity Minor · Line 1150-1151*

**Finding.** Req 2 ('type-sem') already mandates the property observationType:ObservationType; Req 3 ('observationType-sem') restates the same obligation.

**Proposed change.** Merge Req 2 and Req 3.

### B-15 — 8.2 Req 7-11

*Type Te (Technical) · Severity Major · Line 1155-1159*

**Finding.** Conditional and absolute obligations conflict. Req 7 says 'If the phenomenonTime is described...' while Req 8 says an Observation 'shall have exactly 1 phenomenonTime'; the same conflict exists for resultTime (Req 9 vs Req 10). In addition Req 9 types resultTime as TM_Object while Req 11 requires TM_Instant.

**Proposed change.** Decide whether phenomenonTime and resultTime are mandatory; drop the conditional phrasing where they are; and give resultTime one type.

### B-16 — 8.2 Req 22, 24; 8.8 Req 8, 13

*Type Te (Technical) · Severity Major · Line 1170-1172, 1284, 1289*

**Finding.** Role names are inconsistent with the model. Req 22 and Req 24 require 'the association with the role procedure' although the role is named observingProcedure in the clause heading, in Req 23 and in clause 7.1.2. ObservationCharacteristics Req 8 and Req 13 require associations named 'Domain' and 'Range', which are never defined in this document.

**Proposed change.** Use observingProcedure consistently, and either define the Domain and Range association names normatively or remove them.

### B-17 — 11.2-11.5 (all Req rows)

*Type Te (Technical) · Severity Major · Line 1770-2087*

**Finding.** Attributes are systematically specified as associations, and no property types are given. E.g. 'If indication whether the MonitoringFacility is mobile is provided, the association with the role mobile shall be used' - mobile is a Boolean attribute. The same pattern applies to mediaMonitored, measurementRegime, purpose, legalBackground, activityTime, activityConditions and onlineResource. Unlike clauses 8-9, none of these requirements state a type (name:Type).

**Proposed change.** Distinguish attributes from associations and give every property an explicit type, as clauses 8 and 9 do.

### B-18 — 11.3.6

*Type Te (Technical) · Severity Major · Line 1953*

**Finding.** MonitoringNetwork organisationLevel Req 1 ends '...the association with the role supersedes shall be used' - wrong role, copied from the neighbouring subclause.

**Proposed change.** Change to 'the role organisationLevel'.

### B-19 — 9.3 Req 10

*Type Te (Technical) · Severity Minor · Line 1423*

**Finding.** SpatialSample verticalPositionalAccuracy Req 10 reads 'If horizontal positional accuracy information pertaining to the SpatialSample is provided, the attribute verticalPositionalAccuracy:Any shall be used.'

**Proposed change.** Change 'horizontal' to 'vertical'.

### B-20 — 10.2-10.5, 7.3

*Type Te (Technical) · Severity Blocking · Line 1689-1737, 1037-1045*

**Finding.** Classes referenced normatively but never defined anywhere in the document: ObservingCapability (Req 4 of 10.2, Req 3 of 10.3, Req 2 of 10.5 and clause 10.1) and the association classes Hierarchy, NetworkFacility and AnyDomainLink (Reqs 5-8 of 10.2, Reqs 2, 4, 5 of 10.3, Reqs 3-4 of 10.5). None has a Requirements Class, a clause or a definition. MonitoringNetwork Req 6 also refers to 'AbstractMonitoringFeature', a class not present in this model.

**Proposed change.** Define ObservingCapability, Hierarchy, NetworkFacility and AnyDomainLink normatively (with Requirements Classes), or replace the references with concepts this document does define. Remove 'AbstractMonitoringFeature'.

### B-21 — 10.1 vs 7.3.2-7.3.5

*Type Te (Technical) · Severity Major · Line 1659 vs 1018, 1053, 1081, 1108*

**Finding.** Clause 10.1 states that identifier, name and geometry are inherited from the FeatureType stereotype and 'are not provided within this specification', but clauses 7.3.2-7.3.5 list 'id' and 'name' as attributes of MonitoringFacility, MonitoringNetwork, MonitoringProgramme and MonitoringActivity.

**Proposed change.** Remove id/name from the clause 7.3 attribute lists, or state the inheritance explicitly there.

### B-22 — 7.3.5 vs 10.4

*Type Te (Technical) · Severity Major · Line 1118 vs 1721-1722*

**Finding.** MonitoringActivity has one association 'uses' in clause 7.3.5 and two, 'usesFacility' and 'usesNetwork', in clause 10.4.

**Proposed change.** Reconcile; the normative form should be the single source.

### B-23 — 7.3.2, 11.2.10, 11.6.1

*Type Te (Technical) · Severity Major · Line 1032, 1861, 2101*

**Finding.** Four spellings of the same concept: attribute 'specialisedEMFType' (7.3.2), attribute 'specialisedMFType' (11.2.10), requirement identifier '/req/req-class-SpecialisedEMFTypeValue/...' and codelist class 'SpecialisedMFTypeValue' (11.6.1).

**Proposed change.** Standardise on one name, in the attribute, the codelist and the requirement identifier.

### B-24 — 11.6.5

*Type Te (Technical) · Severity Blocking · Line 2149*

**Finding.** The ResultAcquisitionSourceValue definitions are wrong. 'inSitu: The FeatureOfInterest is a sampling feature which is co-located with the ultimate FeatureOfInterest' and 'remote: The FeatureOfInterest is a sampling feature which is also the ultimate FeatureOfInterest' - the definition given for 'remote' describes identity with the ultimate FoI, i.e. in-situ observation, and says nothing about remote sensing. 'subsumed: The value is inherited from children' relies on a parent/child relationship that is not normatively defined for this property.

**Proposed change.** Correct the inSitu and remote definitions against ISO 19156:2023 and the INSPIRE EF source, and either define the inheritance semantics of 'subsumed' or remove the value.

### B-25 — 7.1.8 vs 8.8

*Type Te (Technical) · Severity Major · Line 819 vs 1267-1297*

**Finding.** Clause 7.1.8 asserts that ObservationCharacteristics has 'all of the attributes and associations as Observation, but none of the cardinality limitations (all attributes and associations have cardinality 0..*)'. Clause 8.8 does not carry Observation's unit-of-measure requirement (8.2 Req 28) or its featureOfInterest constraint (Req 15), and nowhere states the 0..* relaxation normatively.

**Proposed change.** Align the two clauses, and state the cardinality relaxation as a requirement rather than only in informative prose.

### B-26 — 8, 9, 10, 11 (all)

*Type Te (Technical) · Severity Blocking · Line 1121-2161*

**Finding.** No multiplicities are given for any property, apart from a handful of '-card' requirements on Observation. The stated purpose of OMS-L is to give implementers a directly usable model with 'all necessary associations', but without multiplicities the model cannot be implemented consistently or derived to an encoding.

**Proposed change.** Add a property table per class - name, type, multiplicity, definition, and OMS provenance - alongside each Requirements Class. This also resolves B-17 and B-25.

---

## References (12)

### C-01 — 3

*Type Te (Technical) · Severity Blocking · Line 385-393*

**Finding.** Withdrawn normative references. ISO 19103:2015 was withdrawn 2024-09-27 and superseded by ISO 19103:2024 - which matters because every Requirements Class depends on its 'UML2 conformance class' and 'CoreTypes conformance class', and the 2024 edition changed the UML conformance structure. ISO 19123:2005 is withdrawn, replaced by ISO 19123-1:2023. ISO 19107:2019 is listed but never cited in the text.

**Proposed change.** Update to ISO 19103:2024 and ISO 19123-1:2023 and re-verify the named conformance classes against the 2024 edition of ISO 19103; cite ISO 19107 in the text or remove it. Verified against iso.org.

### C-02 — 3

*Type Ed (Editorial) · Severity Major · Line 393*

**Finding.** The ISO 19156 entry has the wrong title and a stray space: 'ISO 19156: 2023, Geographic information - Observation, measurements and Samples'. The official title is 'Geographic information - Observations, measurements and samples'.

**Proposed change.** Correct to 'ISO 19156:2023, Geographic information - Observations, measurements and samples'.

### C-03 — 3

*Type Ed (Editorial) · Severity Minor · Line 389*

**Finding.** ISO 19108:2002 is current but should be cited with its technical corrigendum.

**Proposed change.** Cite 'ISO 19108:2002, Geographic information - Temporal schema' and 'ISO 19108:2002/Cor 1:2006'.

### C-04 — 3 vs 4, 5.2

*Type Te (Technical) · Severity Blocking · Line 385-393, 627-629*

**Finding.** Standards used normatively in the text are absent from clause 3: ISO 19109 (the FeatureType metaclass and the General Feature Model, clause 5.2 and 6.2), ISO 19136-1:2020 (the UML profile mandated in clause 5.2), ISO/IEC 19501 (the schema language mandated in clause 5.2), and ISO 19101-1, ISO 19101-2, ISO 19143, ISO 19116, ISO 9000, JCGM 200 used as definition sources.

**Proposed change.** Move the normatively used standards into clause 3 and the definition-source-only ones into clause 3 or a Bibliography, per ISO/IEC Directives Part 2.

### C-05 — 5.2

*Type Te (Technical) · Severity Major · Line 627-629*

**Finding.** Clause 5.2 mandates UML per ISO/IEC 19501, i.e. UML 1.4.2. ISO/IEC 19501:2005 is formally still published but technically obsolete, and ISO 19103:2024 no longer carries UML 1.x conformance - so the schema-language statement and the ISO 19103 dependency of every Requirements Class are mutually inconsistent. The clause also contains a bracketed citation '[2]' pointing to a numbered reference list that does not exist in this document.

**Proposed change.** Cite UML 2.5.1 via ISO 19103:2024, and replace '[2]' with a proper reference to ISO 19109.

### C-06 — 4 (multiple entries)

*Type Te (Technical) · Severity Major · Line 499, 513, 561, 589, 519, 525*

**Finding.** Withdrawn or inconsistent editions inside Terms and definitions: 'observation result' cites ISO 19156:2011 while clause 3 cites the 2023 edition; ISO 19116 is cited at two editions in one clause - 2025 for positional accuracy and 2019 (withdrawn) for unit of measure; ISO 9000:2015 (procedure, process) was withdrawn 2026-05-27, superseded by ISO 9000:2026 whose title changed to 'Quality management - Fundamentals and vocabulary'; 'coverage' and 'range' cite ISO/DIS 19123-1, a draft, which has been published as ISO 19123-1:2023.

**Proposed change.** Update all four: ISO 19156:2023, ISO 19116:2025 (both entries), ISO 9000:2026, ISO 19123-1:2023. A draft must not be cited as a definition source in a Standard. Verified against iso.org.

### C-07 — 4 ('feature')

*Type Ed (Editorial) · Severity Major · Line 449-455*

**Finding.** The definition of 'feature' is corrupted: 'ion of real-world phenomena'. The word 'abstract' has been lost.

**Proposed change.** Restore 'abstraction of real-world phenomena'.

### C-08 — 4

*Type Te (Technical) · Severity Major · Line 431-435, 457-463, 563-569, 491-505, 549-553, 577-581*

**Finding.** Terms that ISO 19156:2023 already defines are redefined here with no SOURCE: observation, observer, sample, sampler, feature-of-interest, proximate feature-of-interest, ultimate feature-of-interest, feature type, domain feature.

**Proposed change.** Add '[SOURCE: ISO 19156:2023, x.y]' to each, with 'modified -' where the wording genuinely differs. Undocumented redefinition of OMS terms is the main mechanism by which OMS-L would drift from OMS.

### C-09 — 4 ('property type')

*Type Ed (Editorial) · Severity Minor · Line 547*

**Finding.** Note 3 to entry: Adapted from ISO 19109:2005' is an informal attribution and is inconsistent with the ISO 19109 edition cited elsewhere.

**Proposed change.** Convert to a formal '[SOURCE: ISO 19109:2025, x.y, modified - ...]'. Note ISO 19109:2015 was withdrawn 2025-07-08; the 2025 edition is also retitled 'General feature model and rules for application schema'.

### C-10 — 4 (in situ / ex situ)

*Type Ed (Editorial) · Severity Minor · Line 437-447, 465-475*

**Finding.** The in situ / ex situ notes use a rectal-thermometer example, and conflate two orthogonal axes: in situ vs ex situ, and direct vs remote.

**Proposed change.** Replace with a domain-neutral example and separate the two axes explicitly - this also bears on the ResultAcquisitionSourceValue defect (B-24).

### C-11 — 4 lead-in

*Type Ed (Editorial) · Severity Minor · Line 397*

**Finding.** This document used the terms defined in Policy Directive 49' - wrong tense.

**Proposed change.** 'This document uses the terms defined in...'.

### C-12 — 5.1

*Type Ed (Editorial) · Severity Minor · Line 607-623*

**Finding.** The abbreviations table is incomplete in both directions: OMS-L, EF, WMO, WIGOS, WMDR, TSML, FoI, UoM are used in the text but not listed; EO, SOS, SWE, SensorML, 2-D and 3-D are listed but never used. The table also has an empty header row and no caption or number.

**Proposed change.** Add the missing entries, remove the unused ones, and add a numbered caption.

---

## Editorial (11)

### D-01 — All figures

*Type Ed (Editorial) · Severity Major · Line 693, 1129, 1133, 1376, 1382, 1670, 1676, 1754, 1758*

**Finding.** All nine figure captions read 'Figure : <title>' with an empty number field, while the body text references Figure 1 through Figure 9. No cross-reference resolves.

**Proposed change.** Regenerate the caption fields and cross-references.

### D-02 — 6.1

*Type Ed (Editorial) · Severity Major · Line 659-661*

**Finding.** The Enterprise Architect example diagram in clause 6.1 has no caption at all, so the numbering of every subsequent figure is ambiguous.

**Proposed change.** Add a numbered caption.

### D-03 — 8.1, 9.1, 11.1

*Type Ed (Editorial) · Severity Major · Line 1127, 1376-1382, 1756*

**Finding.** Captions and images are misplaced. In clause 9.1 'Figure : Core Sampling Schema' appears before its image; in clauses 8.1 and 11.1 an image runs into the following sentence on the same line ('![](...)In Figure 3 we see...', '![](...)When utilizing the Monitoring Extensions...').

**Proposed change.** Place each image before its caption and separate images from body text.

### D-04 — All tables

*Type Ed (Editorial) · Severity Major · Line 356, 607, 1141+*

**Finding.** No table in the document is numbered or captioned, including the submitters table, the abbreviations table and all 137 requirements and conformance class tables.

**Proposed change.** Add numbered captions, at least to the non-requirement tables, per the OGC template.

### D-05 — Contents

*Type Ed (Editorial) · Severity Major · Line 60-324*

**Finding.** The table of contents is stale: the titles of clauses 8-11 omit '(normative)' as it appears in the body, the Annex entries do not match the body headings, and the page numbers reflect an earlier layout.

**Proposed change.** Regenerate after the Annex restructure (B-01).

### D-06 — Front matter (External identifier)

*Type Ed (Editorial) · Severity Major · Line 9*

**Finding.** The external identifier is a broken template: the visible text is 'http://www.opengis.net/doc/[{doc-type/}]{standard}/26-019' but the hyperlink target is 'http://www.opengis.net/def/[{doc-type/}]{standard}/{m.n}' (percent-encoded) - 'doc' versus 'def', and neither placeholder is filled.

**Proposed change.** Replace with the actual document URI.

### D-07 — Keywords / Preface

*Type Ed (Editorial) · Severity Minor · Line 330*

**Finding.** The keywords line has swallowed the following heading: '...Samples, Monitoring Preface'. The 'Preface' heading has been lost.

**Proposed change.** Restore the Preface heading.

### D-08 — Various

*Type Ed (Editorial) · Severity Minor · Line 367, 899, 1112, 1672, 1820/1943/2067, 661, 675*

**Finding.** Typographical defects: 'Th OMS Logical Model' (1); 'The size attribute provides describes a physical extent' (7.2.4); 'EnvironmentaMonitoringActivity' (7.3.5); 'how OMS:ObservingCapability is utilizes by' (10.1); 'was createdis provided' x3 (11.2.6, 11.3.5, 11.5.5); 'showing the associations between the interfaces This adds' - missing full stop (6.1); 'not modelled within this standard' - missing full stop (6.2); 'an MonitoringFacility' / 'an MonitoringProgramme' / 'an MonitoringActivity' in several requirements.

**Proposed change.** Editorial pass.

### D-09 — 11.2.11

*Type Ed (Editorial) · Severity Minor · Line 1871*

**Finding.** 'Geometry and representativePoint SHALL NOT both be empty' uses upper-case SHALL NOT, whereas the rest of the document uses lower-case 'shall' per Policy Directive 49.

**Proposed change.** Use lower case.

### D-10 — Throughout

*Type Ed (Editorial) · Severity Minor · Line -*

**Finding.** British and US spelling are mixed, including between a model element and its own description: attribute 'organisationLevel' against prose 'organizational grouping'; 'specialised' against 'specialized'; 'utilisation' against 'utilization'.

**Proposed change.** Choose one convention for prose; keep model element names exactly as they are in the UML and note the convention in clause 5.3.

### D-11 — 7.3.2 note

*Type Ed (Editorial) · Severity Minor · Line 1014*

**Finding.** 'Laboratories are not EnvironmentalMonitoringFacilities' uses a class name that does not exist in this model (the class is MonitoringFacility). Seven further occurrences of 'EnvironmentalMonitoringFacilities' / 'EnvironmentalMonitoringActivity' appear in clauses 7.3 and 10, including inside normative requirements (10.3 Req 1, 10.4 Req 3, 10.5 Req 5).

**Proposed change.** Replace all occurrences with the class names defined in this document.

---

## Links (6)

### E-01 — Footnote 1 (clause 2)

*Type Te (Technical) · Severity Major · Line 377, 2919*

**Finding.** Broken: http://www.opengeospatial.org/cite - cited as 'the OGC Compliance Testing web site' - returns no content. The link is also given as bare text rather than a resolvable URI.

**Proposed change.** Replace with https://www.ogc.org/compliance/ (programme) and/or https://cite.ogc.org/ (test engine). Checked 2026-08-24.

### E-02 — Footnote 2 (clause 4)

*Type Te (Technical) · Severity Major · Line 397, 2920*

**Finding.** Unreliable: https://portal.ogc.org/public_ogc/directives/directives.php (Policy Directive 49) did not respond on repeated attempts. It is a legacy portal PHP endpoint, not a stable citation target.

**Proposed change.** Cite the stable published policy on docs.ogc.org (e.g. https://docs.ogc.org/pol/) or https://www.ogc.org/about/policies/. Checked 2026-08-24.

### E-03 — Copyright notice

*Type Ed (Editorial) · Severity Minor · Line 28*

**Finding.** http://www.opengeospatial.org/legal/ resolves but 301-redirects to https://www.ogc.org/about/legal-notices-term-and-conditions/, and uses the retired domain over http.

**Proposed change.** Update to the https ogc.org URL. Checked 2026-08-24 - redirect works today.

### E-04 — All req/conf URIs

*Type Te (Technical) · Severity Major · Line 1144-2917*

**Finding.** None of the 227 distinct opengis.net URIs resolve, including the base http://www.opengis.net/spec/OMS-L/1.0. Expected for a draft, but the token must be registered before publication. All 227 also use http:// rather than https://.

**Proposed change.** Register 'OMS-L' with the OGC Naming Authority and switch every URI to https://. Checked 2026-08-24.

### E-05 — Throughout the requirement tables

*Type Ed (Editorial) · Severity Minor · Line 1144+*

**Finding.** The Word-to-Markdown conversion shows bold markers inside 271 of the 272 URI occurrences (e.g. '.../req-class-Observation**'). If the same character-level formatting is present in the source .docx, the hyperlinks and any automated URI extraction will be corrupted.

**Proposed change.** Verify in the source document that no formatting run boundary falls inside a URI.

### E-06 — Footnote 3, Footnote 4

*Type Ed (Editorial) · Severity OK · Line 2921-2922*

**Finding.** Working: https://knowledge-base.inspire.ec.europa.eu/index_en (INSPIRE Knowledge Base) and https://eur-lex.europa.eu/eli/dir/2007/2/oj/eng (Directive 2007/2/EC, INSPIRE). Both resolve and point at the right resources.

**Proposed change.** No change. Checked 2026-08-24.

---
