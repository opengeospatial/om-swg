# OGC 26-019 — OMS Logical Model: review comments (triaged against the published ISO 19156)

**Reviewer:** Frederic Houbie, OGC Architecture Board  
**Document:** OGC Observations, Measurements and Samples — Logical Model, 26-019, v0.0.1 (source `.docx`)  
**Original review:** 24 Aug 2026 · **Triaged against ISO 19156:** 31 Aug 2026  
**Total comments:** 85

> Provenance was checked against ISO/TC 211 N 5661 (DIS) and then ISO/TC 211 N 5820, the text published as **ISO 19156:2023**. Evidence shows 26-019 was transposed from the published IS (see F-16), so comments marked **Inherited - confirmed** are verbatim in the standard that published and are withdrawn as findings against 26-019.

---
## Summary

| Disposition | Count |
|---|---:|
| Holds | 54 |
| Holds / verify | 2 |
| Holds / artefact? | 3 |
| New material | 2 |
| Inherited - confirmed | 11 |
| Inherited? | 4 |
| Verify | 2 |
| Withdrawn | 7 |
| **Total** | **85** |

| Severity | Now | Original |
|---|---:|---:|
| Blocking | 10 | 13 |
| Major | 31 | 40 |
| Minor | 43 | 14 |
| OK | 1 | 1 |

### The 10 blocking comments

- **A-05** — Clause 2 mandates conformance via an 'Annex A (normative)' that does not exist
- **A-07** — URI policy unresolved: template base URI, unregistered OMS-L token, version mismatch
- **B-01** — Annex structure invalid — no annex lettering, 'Annex A' buried as body text
- **B-02** — 22 conformance classes reference non-existent requirements classes (Ext naming mismatch)
- **B-03** — Three additionalDescription conformance classes with no requirements class
- **B-05** — Requirement identifiers in clause 11 do not nest under their own requirements class
- **B-20** — ObservingCapability, Hierarchy, NetworkFacility, AnyDomainLink used normatively, never defined
- **F-02** — OMS `Procedure` dropped but its dependent requirement text retained verbatim
- **F-03** — OMS `ObservingCapability` dropped from the fold yet relied on in clause 10
- **F-05** — `Deployment` diagram contradicts both OMS and OMS-L's own requirements

### Withdrawn

- **A-02** — Restating OMS semantics as OMS-L requirements — withdrawn given the transposition policy
- **A-08** — No machine-readable model artefacts (UML/XMI, repository)
- **B-14** — One untestable test per requirements class — largely withdrawn for a conceptual model
- **B-26** — Attribute multiplicities absent from the diagrams — largely withdrawn
- **D-01** — All nine figure captions have an empty number field
- **F-01** — Four OMS recommendations escalated to requirements — WITHDRAWN, reviewer error
- **F-14** — OMS uppercase SHALL lowercased — WITHDRAWN, the published IS is lowercase

### Confirmed inherited verbatim from the published ISO 19156 — out of scope

- **A-03** — Encoding neutrality broken: gml:id/name/description and the GML UML profile
- **B-06** — Two requirement identifiers imported unchanged from OMS (/req/obs-cpt/, /req/obs-basic/)
- **B-07** — Observation recommendations identified against the ObservationCharacteristics class
- **B-12** — Ten codelist values, only seven constrained; 'discrete-point-coverage' off-pattern
- **B-15** — phenomenonTime/resultTime conditional vs mandatory; resultTime given two types
- **B-16** — Role named 'procedure' vs 'observingProcedure'; undefined 'Domain'/'Range' associations
- **B-19** — verticalPositionalAccuracy requirement says 'horizontal'
- **C-04** — Standards used normatively are missing from clause 3 (ISO 19109, 19136-1, ISO/IEC 19501)
- **C-08** — Nine ISO 19156 terms redefined with no SOURCE attribution
- **C-09** — 'Adapted from ISO 19109:2005' is an informal, inconsistent attribution
- **F-11** — ISO 19109 missing from the reference list — inherited from the published IS

### Disposition key

- **Holds** — Verifiable from the reviewed document alone, or confirmed against ISO 19156 as OMS-L's own.
- **Holds / verify** — Holds in part; one element remains a template/policy claim.
- **Holds / artefact?** — Holds, but may be an artefact of the docx→Markdown conversion.
- **New material** — No counterpart in ISO 19156 — INSPIRE EF or OMS-L original. The transposition-fidelity defence does not apply.
- **Inherited - confirmed** — Verbatim in the published ISO 19156. Withdrawn as a finding against 26-019; log for an OMS corrigendum.
- **Inherited?** — Probably inherited but not located in the OMS text. Authors to confirm.
- **Verify** — A claim about OGC policy or the template asserted without the policy in hand.
- **Withdrawn** — Withdrawn; the reviewer's expectation was miscalibrated, or the finding was a conversion artefact.

**Type:** *Ge* general/architectural · *Te* technical · *Ed* editorial.

---
## Index

| ID | Clause / location | Type | Disposition | Severity | Subject |
|---|---|:--:|---|---|---|
| **A-01** | 2, 8-11 (all req classes) | Ge | Holds | Major | No normative dependency on ISO 19156:2023; OMS compliance claim unverifiable |
| **A-02** | 8-11 vs ISO 19156:2023 | Ge | ~~Withdrawn~~ | Minor | Restating OMS semantics as OMS-L requirements — withdrawn given the transposition policy |
| **A-03** | 5.2, 6.2 | Ge | Inherited - confirmed | Minor | Encoding neutrality broken: gml:id/name/description and the GML UML profile |
| **A-04** | 11.1, Annex | Ge | Holds | Major | ~40 single-property requirements classes with no dependency graph or profiles |
| **A-05** | 2 | Ge | Holds | **Blocking** | Clause 2 mandates conformance via an 'Annex A (normative)' that does not exist |
| **A-06** | 8.11-8.13, 9.15-9.17, 11.6 | Ge | Verify | Minor | Codelists specified inline, contradictory extensibility, no register URIs |
| **A-07** | 5.4, header, all URIs | Ge | Holds | **Blocking** | URI policy unresolved: template base URI, unregistered OMS-L token, version mismatch |
| **A-08** | General | Ge | ~~Withdrawn~~ | Minor | No machine-readable model artefacts (UML/XMI, repository) |
| **A-09** | Preface, 6.1 | Ge | Holds | Major | Strategic position vs ISO 19156 maintenance and the OGC sensor baseline not stated |
| **A-10** | Security Considerations | Ge | Verify | Major | Security Considerations clause is a placeholder |
| **A-11** | Front matter | Ed | Holds / verify | Major | Front-matter metadata unresolved; no Abstract, Bibliography or revision history |
| **A-12** | 7 vs 8-11 | Ge | Holds | Major | Informative clause 7 duplicates normative clauses 8–11 and has already diverged |
| **B-01** | Annex | Te | Holds | **Blocking** | Annex structure invalid — no annex lettering, 'Annex A' buried as body text |
| **B-02** | Annex vs 11.3, 11.4, 11.5 | Te | Holds | **Blocking** | 22 conformance classes reference non-existent requirements classes (Ext naming mismatch) |
| **B-03** | Annex (EF Extended) | Te | Holds | **Blocking** | Three additionalDescription conformance classes with no requirements class |
| **B-04** | 11.6 | Te | Holds | Major | Six codelist requirements classes have no conformance class |
| **B-05** | 11.2-11.5 (all Req rows) | Te | Holds | **Blocking** | Requirement identifiers in clause 11 do not nest under their own requirements class |
| **B-06** | 8.2 Req 29; 8.8 Req 11 | Te | Inherited - confirmed | Minor | Two requirement identifiers imported unchanged from OMS (/req/obs-cpt/, /req/obs-basic/) |
| **B-07** | 8.2 Rec 1-3 | Te | Inherited - confirmed | Minor | Observation recommendations identified against the ObservationCharacteristics class |
| **B-08** | Annex (MonitoringFacilityExt geometryRequired) | Te | Holds | Major | Three different names for the same thing in the geometryRequired conformance table |
| **B-09** | 11.6.3 | Te | Holds / artefact? | Major | Malformed URI in 11.6.3 — MediaValue split out of the URI by bold formatting |
| **B-10** | 8.5; 9.11 | Ed | Holds | Major | Duplicate 'Req 6' in Observer; unnumbered requirement in SampleCollection |
| **B-11** | 8.12 | Te | Holds | Major | ObservationTypeByResultType Req 1 and Req 2 share one identifier |
| **B-12** | 8.12 | Te | Inherited - confirmed | Minor | Ten codelist values, only seven constrained; 'discrete-point-coverage' off-pattern |
| **B-13** | 8.2 Req 2 / Req 3 | Te | Inherited? | Minor | Observation Req 2 and Req 3 state the same obligation |
| **B-14** | Annex (all conformance tests) | Te | ~~Withdrawn~~ | Minor | One untestable test per requirements class — largely withdrawn for a conceptual model |
| **B-15** | 8.2 Req 7-11 | Te | Inherited - confirmed | Minor | phenomenonTime/resultTime conditional vs mandatory; resultTime given two types |
| **B-16** | 8.2 Req 22, 24; 8.8 Req 8, 13 | Te | Inherited - confirmed | Minor | Role named 'procedure' vs 'observingProcedure'; undefined 'Domain'/'Range' associations |
| **B-17** | 11.2-11.5 (all Req rows) | Te | Holds | Major | Clause 11 specifies attributes as associations and gives no property types |
| **B-18** | 11.3.6 | Te | Holds | Major | organisationLevel requirement names the role 'supersedes' |
| **B-19** | 9.3 Req 10 | Te | Inherited - confirmed | Minor | verticalPositionalAccuracy requirement says 'horizontal' |
| **B-20** | 10.2-10.5, 7.3 | Te | Holds | **Blocking** | ObservingCapability, Hierarchy, NetworkFacility, AnyDomainLink used normatively, never defined |
| **B-21** | 10.1 vs 7.3.2-7.3.5 | Te | Holds | Major | 10.1 says id/name/geometry are inherited; 7.3.2–7.3.5 list them as attributes |
| **B-22** | 7.3.5 vs 10.4 | Te | Holds | Major | MonitoringActivity: 'uses' in 7.3.5 vs 'usesFacility'/'usesNetwork' in 10.4 |
| **B-23** | 7.3.2, 11.2.10, 11.6.1 | Te | Holds | Major | Four spellings of specialisedMFType / SpecialisedMFTypeValue |
| **B-24** | 11.6.5 | Te | New material | Major | ResultAcquisitionSourceValue: inSitu and remote definitions are wrong |
| **B-25** | 7.1.8 vs 8.8 | Te | Inherited? | Major | 7.1.8's claim about ObservationCharacteristics not borne out by clause 8.8 |
| **B-26** | 8, 9, 10, 11 (all) | Te | ~~Withdrawn~~ | Minor | Attribute multiplicities absent from the diagrams — largely withdrawn |
| **B-27** | 1, 2, front matter | Te | Holds / verify | Minor | Nature of the deliverable described three ways; 'Logical Model' target type undefined |
| **C-01** | 3 | Te | Holds | Major | Withdrawn normative references: ISO 19103:2015, ISO 19123:2005; ISO 19107 uncited |
| **C-02** | 3 | Ed | Holds | Minor | ISO 19156 title wrong — 'Observations, measurements and samples' |
| **C-03** | 3 | Ed | Holds | Minor | ISO 19108:2002 should be cited with Cor 1:2006 |
| **C-04** | 3 vs 4, 5.2 | Te | Inherited - confirmed | Minor | Standards used normatively are missing from clause 3 (ISO 19109, 19136-1, ISO/IEC 19501) |
| **C-05** | 5.2 | Te | Inherited? | Major | Schema language cites UML 1.4.2, inconsistent with the ISO 19103 dependency; stray '[2]' |
| **C-06** | 4 (multiple entries) | Te | Holds | Major | Withdrawn/draft editions in Terms and definitions (19156:2011, 19116:2019, 9000:2015, DIS 19123-1) |
| **C-07** | 4 ('feature') | Ed | Holds | Minor | Definition of 'feature' corrupted to 'ion of real-world phenomena' |
| **C-08** | 4 | Te | Inherited - confirmed | Minor | Nine ISO 19156 terms redefined with no SOURCE attribution |
| **C-09** | 4 ('property type') | Ed | Inherited - confirmed | Minor | 'Adapted from ISO 19109:2005' is an informal, inconsistent attribution |
| **C-10** | 4 (in situ / ex situ) | Ed | Inherited? | Minor | in situ / ex situ notes conflate two axes; distracting example |
| **C-11** | 4 lead-in | Ed | Holds | Minor | Clause 4 lead-in: 'This document used the terms defined in…' |
| **C-12** | 5.1 | Ed | Holds | Minor | Abbreviations table incomplete both ways; no caption; empty header row |
| **D-01** | All figures | Ed | ~~Withdrawn~~ | Minor | All nine figure captions have an empty number field |
| **D-02** | 6.1 | Ed | Holds | Minor | Clause 6.1 example diagram has no caption |
| **D-03** | 8.1, 9.1, 11.1 | Ed | Holds | Minor | Captions and images misplaced in clauses 8.1, 9.1 and 11.1 |
| **D-04** | All tables | Ed | Holds | Minor | No table in the document is numbered or captioned |
| **D-05** | Contents | Ed | Holds / artefact? | Minor | Table of contents is stale and does not match the body headings |
| **D-06** | Front matter (External identifier) | Ed | Holds | Major | External identifier broken — '/doc/' in the text, '/def/' in the link target |
| **D-07** | Keywords / Preface | Ed | Holds | Minor | Keywords line has swallowed the Preface heading |
| **D-08** | Various | Ed | Holds | Minor | Typographical defects ('Th OMS', 'createdis' x3, 'provides describes', missing full stops) |
| **D-09** | 11.2.11 | Ed | Holds | Minor | 'SHALL NOT' in upper case, against Policy Directive 49 usage |
| **D-10** | Throughout | Ed | Holds | Minor | British and US spelling mixed, including within a single model element description |
| **D-11** | 7.3.2 note | Ed | Holds | Major | 'EnvironmentalMonitoringFacilities' survives in eight places, three of them normative |
| **E-01** | Footnote 1 (clause 2) | Te | Holds | Major | Broken: opengeospatial.org/cite (OGC Compliance Testing web site) |
| **E-02** | Footnote 2 (clause 4) | Te | Holds | Major | Unreliable: portal.ogc.org PHP page for Policy Directive 49 |
| **E-03** | Copyright notice | Ed | Holds | Minor | opengeospatial.org/legal redirects — retired domain over http |
| **E-04** | All req/conf URIs | Te | Holds | Major | None of the 227 opengis.net req/conf URIs resolve; all use http:// |
| **E-05** | Throughout the requirement tables | Ed | Holds / artefact? | Minor | Bold markers inside 271 of 272 URI occurrences — check the source .docx |
| **E-06** | Footnote 3, Footnote 4 | Ed | Holds | OK | Working: INSPIRE Knowledge Base and EUR-Lex Directive 2007/2/EC footnotes |
| **F-01** | 8.2 Req 18/21/24/27 vs OMS 8.2.12-8.2.15 | Te | ~~Withdrawn~~ | Minor | Four OMS recommendations escalated to requirements — WITHDRAWN, reviewer error |
| **F-02** | 9.7 Req 3; OMS 8.4, 11.4.4, Annex A.1.8 | Te | Holds | **Blocking** | OMS `Procedure` dropped but its dependent requirement text retained verbatim |
| **F-03** | 10.1-10.5; OMS 10.5, Annex A.3.10 | Te | Holds | **Blocking** | OMS `ObservingCapability` dropped from the fold yet relied on in clause 10 |
| **F-04** | OMS 10.11 | Te | Holds | Major | OMS `GenericDomainFeature` not folded, no rationale recorded |
| **F-05** | 8.7; Figures 2 and 3; OMS 9.8, 10.10 | Te | Holds | **Blocking** | `Deployment` diagram contradicts both OMS and OMS-L's own requirements |
| **F-06** | 8.9 Req 2; Figure 3; OMS 10.4.3 | Te | Holds | Major | `ObservationCollection` diagram omits the required `collectionType` |
| **F-07** | 8.8 Req 18; Figure 3 | Te | Holds | Minor | `metadata` modelled as an attribute where OMS models it as an association |
| **F-08** | 8.2 Req 12; Figures 2 and 3; OMS 8.2.5 | Te | Holds | Major | `validTime` typed `TM_Object` in the diagrams, `TM_Period` in OMS and in Req 12 |
| **F-09** | Figures 2-9; OMS 9.8, 8.2.5, 13.3, Annex C | Te | Holds | Minor | No attribute multiplicities in the diagrams, where OMS states them |
| **F-10** | Figures 2 and 3 | Ed | Holds | Minor | `LA_ObservationType` / `LA_NamedValue` in the diagrams, unused in the text |
| **F-11** | 3; OMS clause 2 | Te | Inherited - confirmed | Minor | ISO 19109 missing from the reference list — inherited from the published IS |
| **F-12** | 8.11-8.13, 9.15-9.17; OMS 9.10, 10.12, 12.8, 13.15 | Te | Holds | Minor | Abstract/concrete codelist pairs merged, both texts kept |
| **F-13** | 8-11 (all req classes); OMS 8.8.1, 9.2.1, 9.8.1, 10.4.1 | Te | Holds | Major | OMS's `Name` and `Imports` rows dropped, dependency graph lost |
| **F-14** | Throughout; OMS throughout | Ed | ~~Withdrawn~~ | Minor | OMS uppercase SHALL lowercased — WITHDRAWN, the published IS is lowercase |
| **F-15** | 10, 11 and 11.6 vs OMS (whole) | Ge | New material | Major | Clauses 10–11 have no OMS counterpart — new INSPIRE EF material |
| **F-16** | Front matter, 3; OMS edition | Te | Holds | Minor | Provenance — ANSWERED: transposed from the published IS, not the DIS |
| **F-17** | OMS 10.10, /req/obs-basic/gen/link-sem | Te | Holds | Minor | OMS Basic `link: URI [0..*]` pattern not folded in |

---

## Architecture (13)

### A-01 — 2, 8-11 (all req classes)

*Type Ge (General / architectural) · Line 373, 1144+*  
*Disposition: **Holds** · Severity: **Major** (originally Blocking)*

**Finding.** The document claims to be a 'logical transposition' of OMS and that domain models built on it 'will be compliant with OMS', but no Requirements Class lists ISO 19156:2023 as a dependency. Only ISO 19103:2015 (and ISO 19108 for Observation) are cited. Nothing normatively ties any OMS-L class, attribute or association role to its OMS counterpart, and no conformance test verifies OMS compliance.

**Proposed change.** Add ISO 19156:2023 as a dependency of every Requirements Class. Add a normative mapping annex: OMS-L class/property -> OMS class/property, stating the OMS layer of origin (Conceptual / Abstract Core / Basic) for each, and a conformance test that checks the mapping.

**Triage note.** Downgraded from Blocking. Holds as a document-level issue: OMS-L makes a compliance claim a reader cannot verify. Given the authors' stated goal, the fix is lighter than I proposed - publish the OMS -> OMS-L mapping the SWG already worked from, as a normative annex. No design change implied. The class-level mapping is now in the fidelity review, section 3, and could be lifted straight into the document as the normative annex this comment asks for.

### A-02 — 8-11 vs ISO 19156:2023

*Type Ge (General / architectural) · Line 1121+*  
*Disposition: **Withdrawn** · Severity: **Minor** (originally Major)*

**Finding.** OMS-L restates the OMS semantics verbatim as its own normative 'shall' statements (e.g. Observation-sem, Sample-sem, Sampler-sem). Two independently maintained normative definitions of the same concept will drift as ISO 19156 is revised.

**Proposed change.** Normatively reference ISO 19156:2023 for the semantics and restrict OMS-L requirements to what OMS-L actually adds: the flattening, the direct class-to-class associations, and any tightened cardinalities/constraints.

**Triage note.** WITHDRAWN as written. I argued against restating OMS semantics; if the goal is a faithful transposition, verbatim restatement is the method, not a defect. Replaced by: state the transposition policy explicitly in the document (verbatim reproduction, defects inherited deliberately, no editorial improvement) and record how re-alignment on the next ISO 19156 revision will be handled. The risk is governance, not modelling. The replacement is largely covered by A-09, hence Minor here.

### A-03 — 5.2, 6.2

*Type Ge (General / architectural) · Line 625-631, 667-675*  
*Disposition: **Inherited - confirmed** · Severity: **Minor** (originally Blocking)*

**Finding.** Encoding neutrality is broken in a document that presents itself as a logical model. Clause 6.2 makes identity, name and description depend on gml:id / gml:name / gml:description (and states gml:id uniqueness is scoped 'within the XML document'), and clause 5.2 constrains the UML to the GML profile of ISO 19136-1:2020 Annex E. This blocks clean derivation to JSON, RDF and OGC API resources - the stated audience (TSML, WMDR, STA).

**Proposed change.** Define abstract identifier / name / description properties in the model itself, with multiplicities. Move the GML/ISO 19136-1 profile statement and the gml:* mapping to an informative annex or a separate encoding standard.

**Triage note.** Downgraded from Blocking. ISO 19156 itself uses the GML FeatureType stereotype and the ISO 19136-1 Annex E profile, so this is almost certainly inherited and out of scope for a clean transposition. Log for a future OMS corrigendum. Authors to confirm. CONFIRMED INHERITED: OMS uses the same GML FeatureType stereotype and ISO 19136-1 Annex E profile. Out of scope for a faithful transposition; log for an OMS corrigendum.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] CONFIRMED against the published IS clause 4.2.

### A-04 — 11.1, Annex

*Type Ge (General / architectural) · Line 1743, 2163+*  
*Disposition: **Holds** · Severity: **Major** (originally Major)*

**Finding.** Clause 11 defines ~40 single-property Requirements Classes to allow 'mix and match'. This produces a combinatorial explosion of conformance classes with no stated dependency graph, no core/extension hierarchy, and no guidance on which combinations are meaningful.

**Proposed change.** Either consolidate into one MonitoringFacilityExt / NetworkExt / ActivityExt / ProgrammeExt Requirements Class per class with optional properties (plus named profiles for common combinations), or add an explicit conformance-class dependency diagram and rules justifying property-level granularity.

**Triage note.** Holds. Clause 11 granularity is OMS-L's own design choice, not transposed - and it is the direct cause of B-02 and B-05. ROOT CAUSE IDENTIFIED - see F-13. OMS expresses layering through 'Imports' rows on each requirements class; OMS-L dropped both 'Name' and 'Imports' rows with nothing in their place, so the dependency graph is gone.

### A-05 — 2

*Type Ge (General / architectural) · Line 373-379*  
*Disposition: **Holds** · Severity: **Blocking** (originally Blocking)*

**Finding.** Clause 2 (Conformance) does not meet OGC Policy: it lists no Requirements Classes, no corresponding Conformance Classes, no standardization target types, no mandatory/optional/conditional designation and no dependency structure. It also points to 'Annex A (normative)', which does not exist as such (see B-01).

**Proposed change.** Rewrite clause 2 with the standard OGC content: a table of Requirements Classes with their Conformance Classes and URIs, the standardization target(s), which classes are mandatory, and a conformance-class dependency diagram.

**Triage note.** Split. The internal half holds and stays Blocking: clause 2 requires conformance to be checked using 'all the relevant tests specified in Annex A', and no Annex A exists under that name (see B-01). The 'OGC policy requires a requirements-class table' half is a template claim I could not verify - check against OGC 05-020r29 and the current template. TEMPLATE CLAIM NOW GROUNDED IN OMS RATHER THAN POLICY: ISO/DIS 19156 clause 5.2 contains a full conformance table mapping each conformance class name to its URI and Annex A subclause (e.g. 'Basic Observations - ObservingCapability | /conf/obs-basic/ObservingCapability | A.3.10'). The document being transposed from does this properly.

### A-06 — 8.11-8.13, 9.15-9.17, 11.6

*Type Ge (General / architectural) · Line 1331+, 1616+, 2089+*  
*Disposition: **Verify** · Severity: **Minor** (originally Major)*

**Finding.** Codelists are specified inline with enumerated 'the following entries shall be provided' values but no register URIs, and the extensibility model is self-contradictory: several classes are described as 'an empty extension-point' while simultaneously mandating entries. No OGC Definitions Server / Rainbow registration is referenced.

**Proposed change.** State for each codelist whether it is open or closed, publish the values on the OGC Definitions Server and cite the register URI, and remove the 'empty extension-point' wording from codelists that do enumerate values.

**Triage note.** The register/governance question stands but is policy, not a document defect I can assert. ObservationTypeByResultType is OMS material; the EF codelists are OMS-L's own. Check against current OGC practice for codelist publication. WEAKENED. See F-12: the apparent contradiction is a by-product of the fold. OMS pairs an abstract codelist (the empty extension point) with a concrete realization (the enumerated values); OMS-L merged the pairs and kept both texts. Tidy-up, not a defect.

### A-07 — 5.4, header, all URIs

*Type Ge (General / architectural) · Line 639-643, 9, 13*  
*Disposition: **Holds** · Severity: **Blocking** (originally Blocking)*

**Finding.** URI policy is unresolved. Clause 5.4 still contains the template 'http://www.opengis.net/spec/{standard}/{m.n}'. All 235 requirement/conformance URIs use the token 'OMS-L' at version 1.0 over http://, while the document metadata says Version 0.0.1. 'OMS-L' is not in the abbreviations list and http://www.opengis.net/spec/OMS-L/1.0 does not resolve.

**Proposed change.** Fill in clause 5.4 with the real base URI, register the 'OMS-L' token with the OGC Naming Authority, use https:// throughout, add OMS-L to clause 5.1, and reconcile the Version field with the URI version.

**Triage note.** Holds in full. Unfilled URI template in 5.4, Version 0.0.1 against /1.0/ in every URI, and an unregistered OMS-L token are all verifiable from the document and independent of every question raised.

### A-08 — General

*Type Ge (General / architectural) · Line -*  
*Disposition: **Withdrawn** · Severity: **Minor** (originally Major)*

**Finding.** No machine-readable model artefacts are referenced: no UML/XMI or Enterprise Architect package location, no ShapeChange configuration, no repository. The normative content of a logical model is the model, yet only rendered PNG diagrams are supplied (embedded as base64).

**Proposed change.** Publish the UML model in a version-controlled OGC repository and reference it normatively; supply diagrams as vector artefacts generated from that model.

**Triage note.** Downgraded from Major to a process note. Reasonable to expect at publication, not at draft; and not a defect in the text.

### A-09 — Preface, 6.1

*Type Ge (General / architectural) · Line 332, 663*  
*Disposition: **Holds** · Severity: **Major** (originally Major)*

**Finding.** The strategic position of the deliverable is not stated. If OMS-L is a flattening of ISO 19156, the OAB needs to know why it is an OGC Standard rather than a Best Practice, an OGC profile, or an amendment to ISO 19156 itself, and how it will be kept in step with the ISO/TC 211 revision cycle. The relationship to TSML, WMDR, SensorThings, SensorML and the wider OGC sensor baseline is mentioned only informatively.

**Proposed change.** Add a clause (or expand the Preface) stating the relationship to ISO 19156 maintenance, the intended lifecycle, and the dependency/alignment status of TSML, WMDR and the OGC sensor baseline.

**Triage note.** Holds, and is now the most useful comment on the sheet. The authors' own answer - a clean transposition of OMS, warts and boils included, because a corrigendum is out of budget - is exactly what should be written into the Preface or clause 1. It is currently nowhere in the document, which is why reviewers reach for design objections.

### A-10 — Security Considerations

*Type Ge (General / architectural) · Line 338-340*  
*Disposition: **Verify** · Severity: **Major** (originally Major)*

**Finding.** 'No security considerations have been made for this Standard' is a placeholder, not a security considerations clause.

**Proposed change.** Provide a substantive clause. A defensible conclusion is that the logical model introduces no new security considerations beyond those of the encodings that realise it - but that conclusion must be stated and reasoned.

**Triage note.** Template claim. I believe the current OGC template expects a substantive clause, but I could not cite it. Verify.

### A-11 — Front matter

*Type Ed (Editorial) · Line 3-38*  
*Disposition: **Holds / verify** · Severity: **Major** (originally Major)*

**Finding.** Document metadata is unresolved template text: Submission Date '<2026-04-15>', Approval and Publication Date '<yyyy-mm-dd>', Document type 'OGC(R) <Standard >' (stray angle brackets and space), Document subtype 'if applicable', External identifier an unexpanded template. There is no Abstract, no Bibliography, no revision-history annex and no 'Future work' clause.

**Proposed change.** Complete all metadata fields and add the missing mandatory front/back matter per the OGC document template.

**Triage note.** The unresolved placeholders ('<yyyy-mm-dd>', 'if applicable', '<Standard >') hold and are trivially verifiable. The 'missing mandatory front/back matter' half is a template claim - verify. Note the document is on the older Word template rather than the current Metanorma one; if that is deliberate, say so.

### A-12 — 7 vs 8-11

*Type Ge (General / architectural) · Line 695-1119*  
*Disposition: **Holds** · Severity: **Major** (originally Major)*

**Finding.** Informative clause 7 restates every class and all its properties in prose, duplicating the normative clauses 8-11. Divergences already exist (see B-19, B-20, B-21, B-22).

**Proposed change.** Reduce clause 7 to a short conceptual overview with pointers into clauses 8-11, so that there is a single description of each property.

**Triage note.** Holds, but note the divergence may itself be inherited if clause 7 transposes OMS informative text and clauses 8-11 transpose OMS normative text. Either way OMS-L now carries both and they disagree.

### B-27 — 1, 2, front matter

*Type Te (Technical) · Line 363-379, 15, 34*  
*Disposition: **Holds / verify** · Severity: **Minor** (originally Major)*

**Finding.** The nature of the deliverable is described three different ways: clause 1 'a logical model and related abstract schema', clause 2 'an abstract logical transposition', Category 'OGC(R) Specification', Document type 'OGC(R) <Standard>'. Clause 1 also states no conformance consequence, and 'Logical Model' - used as the Target type of all 70 Requirements Classes - is never defined.

**Proposed change.** Align the wording, and define 'Logical Model' as a standardization target type in clause 4 or 5.

**Triage note.** The three-way inconsistency in how the deliverable describes itself holds. The undefined 'Logical Model' target type is worth defining since it is the Target type of all 70 requirements classes. PART WITHDRAWN: 'Target type: Logical model' is OMS's own term for its Abstract Core and Basic layers (ISO/DIS 19156 9.x, 10.x, 13.x), so it needs no definition here. The three-way inconsistency in how the deliverable describes itself still holds.

---

## Traceability (12)

### B-01 — Annex

*Type Te (Technical) · Line 2163-2167*  
*Disposition: **Holds** · Severity: **Blocking** (originally Blocking)*

**Finding.** The Annex structure is invalid. 'Annex' is a heading-1, followed by further heading-1s 'Observation', 'Sampling', 'EF', 'EF Extended'; the line 'Annex A: Conformance Class Test Suite (Normative)' appears as body text inside. There is no annex lettering, no (normative)/(informative) designation, and the TOC lists these entries unnumbered.

**Proposed change.** Restructure as 'Annex A (normative) Conformance Class Test Suite' with A.1 Observation, A.2 Sampling, A.3 Monitoring Core, A.4 Monitoring Extended, and regenerate the TOC.

**Triage note.** Holds in full. Internal structural defect, independent of provenance. NOW GROUNDED IN OMS: ISO/DIS 19156 has 'Annex A (normative) Abstract Test Suite' with A.1, A.1.1, A.1.4, A.2, A.3 subclauses. OMS-L's flat run of heading-1s is a regression against the pattern it was transposing.

### B-02 — Annex vs 11.3, 11.4, 11.5

*Type Te (Technical) · Line 2683-2923 vs 1893-2087*  
*Disposition: **Holds** · Severity: **Blocking** (originally Blocking)*

**Finding.** 22 Conformance Classes reference Requirements Classes that do not exist. The Annex consistently uses req-class-MonitoringNetworkExt-*, MonitoringProgrammeExt-* and MonitoringActivityExt-*, while clause 11 defines them without the 'Ext' infix (req-class-MonitoringNetwork-*, MonitoringProgramme-*, MonitoringActivity-*). Symmetrically, 20 Requirements Classes have no Conformance Class.

**Proposed change.** Adopt one naming convention (recommended: the 'Ext' form used for MonitoringFacilityExt in clause 11.2) and apply it to every Requirements Class and Conformance Class URI. A URI-level cross-check should be added to the SWG's editorial workflow.

**Triage note.** Holds in full. 22 dangling conformance classes; verifiable by URI comparison within the document. This is the single most important comment on the sheet.

### B-03 — Annex (EF Extended)

*Type Te (Technical) · Line 2538+*  
*Disposition: **Holds** · Severity: **Blocking** (originally Blocking)*

**Finding.** Conformance Classes conf-class-MonitoringFacilityExt-additionalDescription, conf-class-MonitoringNetworkExt-additionalDescription and conf-class-MonitoringProgrammeExt-additionalDescription exist, but there is no 'additionalDescription' Requirements Class anywhere in clause 11 - although clauses 7.3.2-7.3.4 list additionalDescription as an attribute of all three classes.

**Proposed change.** Add the three missing Requirements Classes in clause 11, or delete the three Conformance Classes.

**Triage note.** Holds in full.

### B-04 — 11.6

*Type Te (Technical) · Line 2091-2161*  
*Disposition: **Holds** · Severity: **Major** (originally Major)*

**Finding.** Six Requirements Classes have no Conformance Class at all: SpecialisedMFTypeValue, PurposeOfCollectionValue, MediaValue, MeasurementRegimeValue, ResultAcquisitionSourceValue, ResultNatureValue.

**Proposed change.** Add the six corresponding Conformance Classes to Annex A.

**Triage note.** Holds in full.

### B-05 — 11.2-11.5 (all Req rows)

*Type Te (Technical) · Line 1770-2087*  
*Disposition: **Holds** · Severity: **Blocking** (originally Blocking)*

**Finding.** Requirement identifiers do not nest under their own Requirements Class. E.g. class 'req-class-MonitoringFacilityExt-mediaMonitored' contains requirement '/req/req-class-MonitoringFacility/mediaMonitored'. The same pattern affects all ~40 extended Requirements Classes, so no requirement in clause 11 is addressable from its class.

**Proposed change.** Renumber every requirement identifier so it is relative to its own Requirements Class, e.g. /req/req-class-MonitoringFacilityExt-mediaMonitored/mediaMonitored-sem.

**Triage note.** Holds in full. No requirement in clause 11 is addressable from its own class.

### B-06 — 8.2 Req 29; 8.8 Req 11

*Type Te (Technical) · Line 1177, 1287*  
*Disposition: **Inherited - confirmed** · Severity: **Minor** (originally Major)*

**Finding.** Two requirement identifiers were imported unchanged from OMS and do not belong to this document's URI space: '/req/obs-cpt/gen/relatedObservation-sem' (Observation Req 29) and '/req/obs-basic/ObservationCharacteristics/collection-sem' (ObservationCharacteristics Req 11).

**Proposed change.** Rewrite both under the OMS-L req-class namespace.

**Triage note.** Holds - and is direct evidence supporting the authors' account of the method: '/req/obs-cpt/' and '/req/obs-basic/' are OMS identifiers copied unchanged. They still have to be renamed into the OMS-L namespace. CONFIRMED INHERITED. ISO/DIS 19156 9.2.1 and 10.4.1 show OMS reusing identifiers across layers, including '/req/obs-cpt/gen/relatedObservation-sem'. This is fingerprint evidence for the stated transposition method. Still needs renaming into the OMS-L namespace, hence retained at Minor.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] CONFIRMED against the published IS 9.2.1 and 9.9.1 - identifier reuse across layers is OMS's own practice. Renaming task only.

### B-07 — 8.2 Rec 1-3

*Type Te (Technical) · Line 1179-1181*  
*Disposition: **Inherited - confirmed** · Severity: **Minor** (originally Major)*

**Finding.** In the Observation Requirements Class, Rec 1-3 are identified as '/rec/req-class-ObservationCharacteristics/...' and duplicate Rec 1-3 of the ObservationCharacteristics class (8.8).

**Proposed change.** Re-identify the Observation recommendations under req-class-Observation, or delete them if the intent was only to state them once on ObservationCharacteristics.

**Triage note.** Holds in full. CONFIRMED INHERITED. ISO/DIS 19156 9.2.1 shows AbstractObservationCharacteristics holding parameter-procedure, parameter-redundant and uFoI; OMS-L folded that class into both Observation and ObservationCharacteristics and carried the identifiers. Renaming task only.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] CONFIRMED against the published IS 9.2.1.

### B-08 — Annex (MonitoringFacilityExt geometryRequired)

*Type Te (Technical) · Line 2538+*  
*Disposition: **Holds** · Severity: **Major** (originally Major)*

**Finding.** One table carries three different names for the same thing: Conformance Class 'conf-class-MonitoringFacility-geometryRequired', test 'conf-class-MonitoringFacilityExt-geometryRequired/test-1', and Requirement 'req-class-MonitoringFacilityExt-geometryRequired'.

**Proposed change.** Make all three consistent.

**Triage note.** Holds in full.

### B-09 — 11.6.3

*Type Te (Technical) · Line 2122*  
*Disposition: **Holds / artefact?** · Severity: **Major** (originally Major)*

**Finding.** Malformed URI: the Requirements Class reads 'http://www.opengis.net/spec/OMS-L/1.0/req/req-class-' followed by 'MediaValue' outside the URI, because the bold formatting has split the class name off. The URI as written terminates at 'req-class-'.

**Proposed change.** Repair to a single unbroken URI: .../req/req-class-MediaValue.

**Triage note.** Holds, but may be a docx->Markdown conversion artefact rather than a source defect - verify that the class name is inside the URI in the source.

### B-10 — 8.5; 9.11

*Type Ed (Editorial) · Line 1230-1231, 1571*  
*Disposition: **Holds** · Severity: **Major** (originally Major)*

**Finding.** Numbering defects in requirement tables: the Observer class has two requirements both numbered 'Req 6' (location/relatedObservation and metadata); the SampleCollection class has a fourth requirement (metadata-sem) with an empty number cell.

**Proposed change.** Renumber both tables.

**Triage note.** Holds in full.

### B-11 — 8.12

*Type Te (Technical) · Line 1353-1354*  
*Disposition: **Holds** · Severity: **Major** (originally Major)*

**Finding.** ObservationTypeByResultType Req 1 and Req 2 carry the identical identifier '/ObservationTypeByResultType-sem'. Req 2 is a constraint, not a semantic definition.

**Proposed change.** Rename Req 2 to '/ObservationTypeByResultType-con'.

**Triage note.** Possibly inherited from OMS. Authors to confirm; trivial to fix either way. CONFIRMED AS OMS-L's OWN SLIP, not inherited: ISO/DIS 19156 10.12.3 names the second requirement 'ObservationTypeByResultType-con'. OMS-L labelled both '-sem'.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] CONFIRMED as OMS-L's own slip: the published IS names it ObservationTypeByResultType-con at 10.12.2.

### B-14 — Annex (all conformance tests)

*Type Te (Technical) · Line 2176+*  
*Disposition: **Withdrawn** · Severity: **Minor** (originally Major)*

**Finding.** Every conformance test in the Annex is the same untestable pair: purpose 'Verify that all requirements from the requirements class have been fulfilled', method 'Inspect the documentation of the application, schema or profile'. A single test covers Requirements Classes holding up to 30 requirements, and gives no pass/fail criterion.

**Proposed change.** Provide one test assertion per requirement, or at minimum per group of related requirements, with an explicit pass criterion. For a logical model, abstract test suites in the ISO 19105 style are the expected form.

**Triage note.** LARGELY WITHDRAWN. 'Inspect the documentation of the application schema or profile' is the standard abstract-test-suite form for a conceptual model (ISO 19105 style), and is what ISO 19156 itself does. My criticism was calibrated to an implementation standard. What survives, as Minor: a single test covering a 30-requirement class gives the tester no way to report partial conformance.

---

## Model content (14)

### B-12 — 8.12

*Type Te (Technical) · Line 1353-1354*  
*Disposition: **Inherited - confirmed** · Severity: **Minor** (originally Major)*

**Finding.** Req 1 enumerates 10 values but Req 2 constrains only 7. discrete-coverage-observation, discrete-point-coverage and timeseries-observation are given no result-type constraint, so the codelist value carries no testable meaning. 'discrete-point-coverage' also breaks the '-observation' naming pattern of every other value.

**Proposed change.** Add the three missing constraints (or state explicitly why they cannot be constrained), and rename to 'discrete-point-coverage-observation'.

**Triage note.** Very likely verbatim from OMS. If so, out of scope for the transposition - but worth a note in the document that three codelist values carry no result-type constraint, since implementers will hit it. CONFIRMED INHERITED against ISO/DIS 19156 10.12.3: OMS omits the same three values (discrete-coverage-observation, discrete-point-coverage, timeseries-observation) from its -con requirement. Withdrawn as a finding against 26-019; log for an OMS corrigendum.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] CONFIRMED against the published IS 10.12.2 - the same 7 of 10 values are constrained.

### B-13 — 8.2 Req 2 / Req 3

*Type Te (Technical) · Line 1150-1151*  
*Disposition: **Inherited?** · Severity: **Minor** (originally Minor)*

**Finding.** Req 2 ('type-sem') already mandates the property observationType:ObservationType; Req 3 ('observationType-sem') restates the same obligation.

**Proposed change.** Merge Req 2 and Req 3.

**Triage note.** Possibly inherited. Confirm.

### B-15 — 8.2 Req 7-11

*Type Te (Technical) · Line 1155-1159*  
*Disposition: **Inherited - confirmed** · Severity: **Minor** (originally Major)*

**Finding.** Conditional and absolute obligations conflict. Req 7 says 'If the phenomenonTime is described...' while Req 8 says an Observation 'shall have exactly 1 phenomenonTime'; the same conflict exists for resultTime (Req 9 vs Req 10). In addition Req 9 types resultTime as TM_Object while Req 11 requires TM_Instant.

**Proposed change.** Decide whether phenomenonTime and resultTime are mandatory; drop the conditional phrasing where they are; and give resultTime one type.

**Triage note.** Likely inherited from the OMS requirements text. Confirm. The TM_Object / TM_Instant conflict on resultTime is worth resolving even in a faithful transposition, or footnoting as a known OMS defect. CONFIRMED INHERITED against ISO/DIS 19156 8.2.3, 8.2.4 and 9.3.3: OMS carries all three statements verbatim - '-sem' conditional, '-card' exactly 1, and 'resultTime-type' SHALL be TM_Instant. Withdrawn as a finding against 26-019.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] CONFIRMED against the published IS 8.2.3, 8.2.4 and 9.3.3 - all three statements present.

### B-16 — 8.2 Req 22, 24; 8.8 Req 8, 13

*Type Te (Technical) · Line 1170-1172, 1284, 1289*  
*Disposition: **Inherited - confirmed** · Severity: **Minor** (originally Major)*

**Finding.** Role names are inconsistent with the model. Req 22 and Req 24 require 'the association with the role procedure' although the role is named observingProcedure in the clause heading, in Req 23 and in clause 7.1.2. ObservationCharacteristics Req 8 and Req 13 require associations named 'Domain' and 'Range', which are never defined in this document.

**Proposed change.** Use observingProcedure consistently, and either define the Domain and Range association names normatively or remove them.

**Triage note.** The 'procedure' vs 'observingProcedure' role name is plausibly an OMS artefact across model layers. Confirm. The undefined 'Domain' and 'Range' association names are a genuine OMS-L reader problem regardless (see B-20). FIRST HALF CONFIRMED INHERITED against ISO/DIS 19156 8.2.14, which reads 'The ObservableProperty referenced by procedure SHOULD be suitable'. Second half resolved: 'Domain' and 'Range' are association names visible in Figures 2 and 3, so they are in the model - only undocumented in the text. Downgraded.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] FIRST HALF CONFIRMED against the published IS 9.3.8 ('The ObservingProcedure referenced by procedure shall be suitable'). SECOND HALF RESOLVED: Domain, DomainProxy and Range are association names in IS Figure 10, so they are genuine model elements - merely undocumented in the OMS-L text.

### B-17 — 11.2-11.5 (all Req rows)

*Type Te (Technical) · Line 1770-2087*  
*Disposition: **Holds** · Severity: **Major** (originally Major)*

**Finding.** Attributes are systematically specified as associations, and no property types are given. E.g. 'If indication whether the MonitoringFacility is mobile is provided, the association with the role mobile shall be used' - mobile is a Boolean attribute. The same pattern applies to mediaMonitored, measurementRegime, purpose, legalBackground, activityTime, activityConditions and onlineResource. Unlike clauses 8-9, none of these requirements state a type (name:Type).

**Proposed change.** Distinguish attributes from associations and give every property an explicit type, as clauses 8 and 9 do.

**Triage note.** The missing property types half holds and applies to new material in clause 11. The attribute-described-as-association wording is also OMS-L's own. Note some of this may be resolved by the diagrams, which I could not see.

### B-18 — 11.3.6

*Type Te (Technical) · Line 1953*  
*Disposition: **Holds** · Severity: **Major** (originally Major)*

**Finding.** MonitoringNetwork organisationLevel Req 1 ends '...the association with the role supersedes shall be used' - wrong role, copied from the neighbouring subclause.

**Proposed change.** Change to 'the role organisationLevel'.

**Triage note.** Holds - clear copy-paste defect in new clause 11 material.

### B-19 — 9.3 Req 10

*Type Te (Technical) · Line 1423*  
*Disposition: **Inherited - confirmed** · Severity: **Minor** (originally Minor)*

**Finding.** SpatialSample verticalPositionalAccuracy Req 10 reads 'If horizontal positional accuracy information pertaining to the SpatialSample is provided, the attribute verticalPositionalAccuracy:Any shall be used.'

**Proposed change.** Change 'horizontal' to 'vertical'.

**Triage note.** SpatialSample is OMS Basic material; possibly inherited. Confirm. CONFIRMED INHERITED against ISO/DIS 19156 13.3.5, which likewise reads 'If horizontal positional accuracy information ... the attribute verticalPositionalAccuracy:Any SHALL be used'. Withdrawn as a finding against 26-019.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] CONFIRMED against the published IS 13.3.5, which still reads 'If horizontal positional accuracy information ... the attribute verticalPositionalAccuracy:Any shall be used'. Not fixed in the DIS ballot.

### B-20 — 10.2-10.5, 7.3

*Type Te (Technical) · Line 1689-1737, 1037-1045*  
*Disposition: **Holds** · Severity: **Blocking** (originally Blocking)*

**Finding.** Classes referenced normatively but never defined anywhere in the document: ObservingCapability (Req 4 of 10.2, Req 3 of 10.3, Req 2 of 10.5 and clause 10.1) and the association classes Hierarchy, NetworkFacility and AnyDomainLink (Reqs 5-8 of 10.2, Reqs 2, 4, 5 of 10.3, Reqs 3-4 of 10.5). None has a Requirements Class, a clause or a definition. MonitoringNetwork Req 6 also refers to 'AbstractMonitoringFeature', a class not present in this model.

**Proposed change.** Define ObservingCapability, Hierarchy, NetworkFacility and AnyDomainLink normatively (with Requirements Classes), or replace the references with concepts this document does define. Remove 'AbstractMonitoringFeature'.

**Triage note.** Holds in full, and reframed. Whatever the provenance of ObservingCapability, Hierarchy, NetworkFacility and AnyDomainLink, a reader of OMS-L alone cannot resolve them: they carry normative obligations in 25 statements with no definition and no normative reference to where they are defined. Either define them here or reference their source normatively. CONFIRMED AND LOCATED. ObservingCapability is ISO/DIS 19156 10.5, a full Basic Observations class with /req/obs-basic/ObservingCapability and /conf/obs-basic/ObservingCapability (Annex A.3.10). OMS-L omits it from the fold yet relies on it in 10.1, 10.2 Req 4, 10.3 Req 3 and 10.5 Req 2. Hierarchy/NetworkFacility/AnyDomainLink have zero occurrences in OMS - INSPIRE EF, new material. See F-03.

### B-21 — 10.1 vs 7.3.2-7.3.5

*Type Te (Technical) · Line 1659 vs 1018, 1053, 1081, 1108*  
*Disposition: **Holds** · Severity: **Major** (originally Major)*

**Finding.** Clause 10.1 states that identifier, name and geometry are inherited from the FeatureType stereotype and 'are not provided within this specification', but clauses 7.3.2-7.3.5 list 'id' and 'name' as attributes of MonitoringFacility, MonitoringNetwork, MonitoringProgramme and MonitoringActivity.

**Proposed change.** Remove id/name from the clause 7.3 attribute lists, or state the inheritance explicitly there.

**Triage note.** Holds in full.

### B-22 — 7.3.5 vs 10.4

*Type Te (Technical) · Line 1118 vs 1721-1722*  
*Disposition: **Holds** · Severity: **Major** (originally Major)*

**Finding.** MonitoringActivity has one association 'uses' in clause 7.3.5 and two, 'usesFacility' and 'usesNetwork', in clause 10.4.

**Proposed change.** Reconcile; the normative form should be the single source.

**Triage note.** Holds in full.

### B-23 — 7.3.2, 11.2.10, 11.6.1

*Type Te (Technical) · Line 1032, 1861, 2101*  
*Disposition: **Holds** · Severity: **Major** (originally Major)*

**Finding.** Four spellings of the same concept: attribute 'specialisedEMFType' (7.3.2), attribute 'specialisedMFType' (11.2.10), requirement identifier '/req/req-class-SpecialisedEMFTypeValue/...' and codelist class 'SpecialisedMFTypeValue' (11.6.1).

**Proposed change.** Standardise on one name, in the attribute, the codelist and the requirement identifier.

**Triage note.** Holds in full.

### B-24 — 11.6.5

*Type Te (Technical) · Line 2149*  
*Disposition: **New material** · Severity: **Major** (originally Blocking)*

**Finding.** The ResultAcquisitionSourceValue definitions are wrong. 'inSitu: The FeatureOfInterest is a sampling feature which is co-located with the ultimate FeatureOfInterest' and 'remote: The FeatureOfInterest is a sampling feature which is also the ultimate FeatureOfInterest' - the definition given for 'remote' describes identity with the ultimate FoI, i.e. in-situ observation, and says nothing about remote sensing. 'subsumed: The value is inherited from children' relies on a parent/child relationship that is not normatively defined for this property.

**Proposed change.** Correct the inSitu and remote definitions against ISO 19156:2023 and the INSPIRE EF source, and either define the inheritance semantics of 'subsumed' or remove the value.

**Triage note.** Downgraded from Blocking. Almost certainly verbatim from INSPIRE EF. Substantively wrong either way - the definition given for 'remote' describes in-situ identity - so even under a faithful-transposition policy this is a candidate for a footnote flagging the known defect. Authors to confirm provenance. CONFIRMED NOT INHERITED FROM OMS: 'ResultAcquisitionSource' has zero occurrences in ISO/DIS 19156. This is INSPIRE EF material, i.e. new content in this document, so the transposition defence does not cover it. The 'remote' definition still describes in-situ identity.

### B-25 — 7.1.8 vs 8.8

*Type Te (Technical) · Line 819 vs 1267-1297*  
*Disposition: **Inherited?** · Severity: **Major** (originally Major)*

**Finding.** Clause 7.1.8 asserts that ObservationCharacteristics has 'all of the attributes and associations as Observation, but none of the cardinality limitations (all attributes and associations have cardinality 0..*)'. Clause 8.8 does not carry Observation's unit-of-measure requirement (8.2 Req 28) or its featureOfInterest constraint (Req 15), and nowhere states the 0..* relaxation normatively.

**Proposed change.** Align the two clauses, and state the cardinality relaxation as a requirement rather than only in informative prose.

**Triage note.** Likely inherited from OMS Basic. Confirm.

### B-26 — 8, 9, 10, 11 (all)

*Type Te (Technical) · Line 1121-2161*  
*Disposition: **Withdrawn** · Severity: **Minor** (originally Blocking)*

**Finding.** No multiplicities are given for any property, apart from a handful of '-card' requirements on Observation. The stated purpose of OMS-L is to give implementers a directly usable model with 'all necessary associations', but without multiplicities the model cannot be implemented consistently or derived to an encoding.

**Proposed change.** Add a property table per class - name, type, multiplicity, definition, and OMS provenance - alongside each Requirements Class. This also resolves B-17 and B-25.

**Triage note.** MATERIALLY REVISED, was Blocking. My error: all ten UML diagrams in the file I received were stripped to a 24-character placeholder, so I reviewed the prose only and could not see the multiplicities, which are presumably on the diagrams. What survives, as Major: the requirement statements do not restate the multiplicities, and clause 11 gives no property types either, so the normative prose is not self-sufficient. A property table per class (name, type, multiplicity, definition, OMS provenance) would close it - and would also close B-17 and B-25. SUBSTANTIALLY WITHDRAWN now the diagrams are available. Association multiplicities ARE present and complete throughout Figures 2-9; I was wrong. What remains, as Minor and restated in F-09: OMS states attribute multiplicities (deploymentReason [0..*], validTime [0..*], horizontalPositionalAccuracy [0..1]) and the OMS-L diagrams state none.

---

## Fidelity (17)

### F-01 — 8.2 Req 18/21/24/27 vs OMS 8.2.12-8.2.15

*Type Te (Technical) · Line 1163,1169,1172,1175*  
*Disposition: **Withdrawn** · Severity: **Minor** (originally Blocking)*

**Finding.** Restore all four to recommendations under /rec/ identifiers, and add a /req/ vs /rec/ prefix check to the transposition workflow.

**Proposed change.** THE headline fidelity finding. An implementation conformant to OMS can be non-conformant to OMS-L, which is the opposite of the stated warts-and-boils policy.

**Triage note.** Four of the nine recommendations in ISO/DIS 19156 have become requirements in OMS-L, with the identifier prefix flipped from /rec/ to /req/ and SHOULD changed to shall: observerhost-con (OMS 8.2.12), observedProperty-con (8.2.13), observingProcedure-con (8.2.14) and result-con (8.2.15). The other five (uom-con, phenomenonTimeResult-con, parameter-procedure, parameter-redundant, uFoI) correctly remain recommendations, which suggests the change was accidental rather than policy. Three of the four are also unenforceable as requirements because they turn on 'suitable' and 'correspond to', which no conformance test can evaluate - which is presumably why OMS made them recommendations.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] WITHDRAWN - MY ERROR. OMS promotes these four itself between layers: recommendations at the Conceptual layer (IS 8.2.12-8.2.15, /rec/obs-cpt/) reappear as REQUIREMENTS at the Abstract Core layer (IS 9.3.6-9.3.9, /req/obs-core/Observation/*-con, lowercase 'shall'). OMS-L flattened and took the Abstract Core form, so Req 18/21/24/27 are faithful. I had read only clause 8.2 and missed the promotion in 9.3.

### F-02 — 9.7 Req 3; OMS 8.4, 11.4.4, Annex A.1.8

*Type Te (Technical) · Line 1508*  
*Disposition: **Holds** · Severity: **Blocking** (originally Blocking)*

**Finding.** Either fold Procedure into OMS-L, or change Sampler Req 3 to reference SamplingProcedure and state the omission of Procedure in the mapping annex.

**Proposed change.** New finding from the OMS comparison.

**Triage note.** The OMS Procedure class (ISO/DIS 19156 8.4, parent of ObservingProcedure) was not folded into OMS-L, but OMS 11.4.4 was retained verbatim as Sampler Req 3: 'The Procedure implemented by the Sampler.' OMS-L therefore normatively references a class it does not define. OMS also had a conformance class for it, Annex A.1.8 'Conceptual Observation - Procedure', likewise dropped.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] CONFIRMED against the published IS: Procedure is IS 8.4, and IS 11.4.4 reads 'The Procedure implemented by the Sampler' - retained verbatim as OMS-L Sampler Req 3.

### F-03 — 10.1-10.5; OMS 10.5, Annex A.3.10

*Type Te (Technical) · Line 1672,1689,1706,1734*  
*Disposition: **Holds** · Severity: **Blocking** (originally Blocking)*

**Finding.** Fold ObservingCapability into OMS-L with its own requirements and conformance class, or add a normative reference to ISO 19156:2023 10.5 at each point of use.

**Proposed change.** This is the precise, located form of B-20. Not an invented complaint and not inherited: OMS defines the class, OMS-L depends on it and omits it.

**Triage note.** ObservingCapability is a full Basic Observations class in ISO/DIS 19156 10.5, with requirements class /req/obs-basic/ObservingCapability and conformance class /conf/obs-basic/ObservingCapability (Annex A.3.10). It was not folded into OMS-L, yet OMS-L relies on it normatively: clause 10.1 prose, and observingCapability requirements in 10.2 Req 4, 10.3 Req 3 and 10.5 Req 2.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] CONFIRMED against the published IS: ObservingCapability is IS 10.5 with /req/obs-basic/ObservingCapability and /conf/obs-basic/ObservingCapability.

### F-04 — OMS 10.11

*Type Te (Technical) · Line -*  
*Disposition: **Holds** · Severity: **Major** (originally Major)*

**Finding.** State the omission and its rationale in the mapping annex.

**Proposed change.** Probably deliberate; needs recording.

**Triage note.** The OMS GenericDomainFeature class (ISO/DIS 19156 10.11) was not folded into OMS-L, with no rationale given. A reader arriving from OMS will look for it.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] CONFIRMED: GenericDomainFeature is IS 10.11, not folded.

### F-05 — 8.7; Figures 2 and 3; OMS 9.8, 10.10

*Type Te (Technical) · Line 1252-1265*  
*Disposition: **Holds** · Severity: **Blocking** (originally Blocking)*

**Finding.** Identify the source of atPosition and positionUoM. If intentional additions, give them requirements; if not, correct the diagrams to carry deploymentReason and deploymentTime. Restore deploymentTime to TM_Object or justify the narrowing.

**Proposed change.** New finding, only visible with the diagrams. The most clear-cut diagram/text conflict in the document.

**Triage note.** The Deployment class in Figures 2 and 3 shows attributes 'atPosition: Real' and 'positionUoM: CharacterString', neither of which appears anywhere in ISO/DIS 19156, and omits deploymentReason and deploymentTime, which OMS 9.8 defines (deploymentReason: CharacterString [0..*], deploymentTime: TM_Object [0..*]) and which OMS-L clause 8.7 Req 4 and Req 5 themselves require. So the diagram contradicts both OMS and OMS-L's own normative text. Separately, OMS types deploymentTime as TM_Object while OMS-L Req 5 narrows it to TM_Period.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] MAIN FINDING FIRMER, SUB-POINT WITHDRAWN. atPosition and positionUoM have ZERO occurrences in the DIS and ZERO in the published IS - they are in no edition of OMS. The deploymentTime 'narrowing' is withdrawn: IS 9.8.3 requires deploymentTime:TM_Period and OMS-L Req 5 matches. Note the IS is itself inconsistent here (its diagrams show TM_Object [0..*]), an inconsistency OMS-L inherited.

### F-06 — 8.9 Req 2; Figure 3; OMS 10.4.3

*Type Te (Technical) · Line 1310*  
*Disposition: **Holds** · Severity: **Major** (originally Major)*

**Finding.** Add collectionType to the ObservationCollection class in Figure 3.

**Proposed change.** New finding from the diagrams.

**Triage note.** ObservationCollection has an empty attribute compartment in Figure 3, although 8.9 Req 2 requires collectionType:ObservationCollectionType, 8.9 Req 3 constrains it, 8.13 defines its codelist, and OMS 10.4.3 has it as collectionType:AbstractObservationCollectionType.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] CONFIRMED, clause number updated: collectionType is IS 9.9.3 (the IS moved it up to AbstractObservationCollection; it was 10.4.3 in the DIS).

### F-07 — 8.8 Req 18; Figure 3

*Type Te (Technical) · Line 1294*  
*Disposition: **Holds** · Severity: **Minor** (originally Major)*

**Finding.** Add metadata to ObservationCharacteristics in Figure 3.

**Proposed change.** New finding from the diagrams; resolves part of B-25.

**Triage note.** ObservationCharacteristics omits the metadata attribute in Figure 3, although 8.8 Req 18 requires it and the Observation class carries 'metadata: Any' in the same figure. This also undercuts the clause 7.1.8 claim that ObservationCharacteristics has all of Observation's properties.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] RESTATED AND DOWNGRADED. In OMS, metadata is an ASSOCIATION to «interface» Any, not an attribute (IS Figure 10 shows +metadata as a role). So ObservationCharacteristics is not missing a required attribute. The real divergence is smaller: OMS-L Figures 2 and 3 model metadata as an attribute 'metadata: Any' on Observation where OMS models it as an association.

### F-08 — 8.2 Req 12; Figures 2 and 3; OMS 8.2.5

*Type Te (Technical) · Line 1160*  
*Disposition: **Holds** · Severity: **Major** (originally Major)*

**Finding.** Correct the diagrams to TM_Period.

**Proposed change.** New finding from the diagrams.

**Triage note.** validTime is typed 'TM_Object' in Figures 2 and 3, against TM_Period in OMS 8.2.5 (validTime: TM_Period [0..*]) and in OMS-L's own Req 12 (validTime:TM_Period). The diagram is wrong on both counts.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] CONFIRMED AND STRENGTHENED: the published IS shows 'validTime: TM_Period [0..*]' in all eleven of its diagrams and validTime:TM_Period in the requirement (8.2.5). OMS-L Figures 2 and 3 show TM_Object.

### F-09 — Figures 2-9; OMS 9.8, 8.2.5, 13.3, Annex C

*Type Te (Technical) · Line -*  
*Disposition: **Holds** · Severity: **Minor** (originally Minor)*

**Finding.** Add attribute multiplicities to the diagrams, matching OMS.

**Proposed change.** This is the corrected, much narrower form of B-26. Association multiplicities are present and complete - my original claim that the model has no multiplicities was wrong.

**Triage note.** The OMS-L diagrams state no attribute multiplicities. OMS states them consistently - deploymentReason: CharacterString [0..*], validTime: TM_Period [0..*], horizontalPositionalAccuracy: Any [0..1], size: PhysicalDimension [0..*], classification: StatisticalClassification [0..*]. Since the OMS-L requirement text does not state them either, attribute multiplicity is absent from OMS-L altogether.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] CONFIRMED: the IS states attribute multiplicities consistently (observationType: AbstractObservationType [0..*], parameter: NamedValue [0..*], resultQuality: Any [0..*], deploymentReason: CharacterString [0..*]). OMS-L's diagrams state none.

### F-10 — Figures 2 and 3

*Type Ed (Editorial) · Line -*  
*Disposition: **Holds** · Severity: **Minor** (originally Minor)*

**Finding.** Rename to the type names used in the requirements text.

**Proposed change.** New finding from the diagrams.

**Triage note.** Figures 2 and 3 show 'observationType: LA_ObservationType' and 'parameter: LA_NamedValue'. Neither name appears in the OMS-L text (which says ObservationType and NamedValue) nor in ISO/DIS 19156. Appears to be a residue of the modelling environment.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] CONFIRMED: the IS says NamedValue and AbstractObservationType. 'LA_' has zero occurrences in either edition of OMS.

### F-11 — 3; OMS clause 2

*Type Te (Technical) · Line 385-393*  
*Disposition: **Inherited - confirmed** · Severity: **Minor** (originally Major)*

**Finding.** Restore ISO 19109 (2025 edition) to clause 3.

**Proposed change.** Confirms C-04 and shows it is a regression against OMS rather than an isolated oversight.

**Triage note.** ISO/DIS 19156 clause 2 lists four normative references: ISO 19103, ISO 19107, ISO 19108 and ISO 19109. OMS-L clause 3 lists ISO 19103, 19107, 19108, 19123 and 19156 - dropping ISO 19109, which OMS carries normatively and which OMS-L itself uses normatively in clauses 5.2 and 6.2 for the FeatureType metaclass and the General Feature Model.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] RECLASSIFIED AS INHERITED. The published IS dropped ISO 19109 from clause 2 between DIS and IS, while continuing to use it normatively in clause 4.2 (FeatureType metaclass, GFM) and clause 6. OMS-L reproduced both the omission and the normative use. ISO's defect, faithfully inherited; log for an OMS corrigendum.

### F-12 — 8.11-8.13, 9.15-9.17; OMS 9.10, 10.12, 12.8, 13.15

*Type Te (Technical) · Line 1331,1616*  
*Disposition: **Holds** · Severity: **Minor** (originally Minor)*

**Finding.** Tidy the merged codelist descriptions so each states either extension-point or enumerated semantics, not both.

**Proposed change.** Explains and weakens A-06 - a by-product of the fold rather than a defect.

**Triage note.** OMS pairs each abstract codelist (the empty extension point) with a concrete realization carrying the enumerated values: AbstractObservationType + ObservationTypeByResultType, AbstractObservationCollectionType + ObservationCollectionType, AbstractSampleType + SampleTypeByGeometryType. OMS-L collapsed the pairs and kept both texts, which is why 9.15 reads 'The code list SampleType can be specialized as required' above a requirement reading 'An empty extension-point'.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] CONFIRMED, clause numbers updated: IS 9.11.1 / 9.11.2 (abstract) against 10.12.1 / 10.12.2, and 12.8.1 / 12.8.2 against 13.15.1.

### F-13 — 8-11 (all req classes); OMS 8.8.1, 9.2.1, 9.8.1, 10.4.1

*Type Te (Technical) · Line 1141+*  
*Disposition: **Holds** · Severity: **Major** (originally Major)*

**Finding.** Reintroduce a Name row, and replace Imports with an explicit dependency mechanism between OMS-L requirements classes - or state that OMS-L requirements classes are deliberately independent.

**Proposed change.** Root cause of A-04 and A-05. Since flattening the layers is the purpose of OMS-L, losing the mechanism that recorded the relationships deserves a deliberate decision.

**Triage note.** Every OMS requirements class carries a 'Name' row and, where it builds on another layer, an 'Imports' row (e.g. 'Imports /req/obs-cpt/Deployment', 'Imports /req/obs-core/NamedValue'). That is how OMS expresses its layering. OMS-L's requirements class tables have neither row, so the requirements-class dependency graph has been removed with nothing put in its place.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] CONFIRMED: the published IS has 87 'Imports' rows across its requirements classes. OMS-L has none.

### F-14 — Throughout; OMS throughout

*Type Ed (Editorial) · Line 1871*  
*Disposition: **Withdrawn** · Severity: **Minor** (originally Minor)*

**Finding.** Fix the stray SHALL NOT; note the drafting-style substitutions in the transposition policy statement (see A-09).

**Proposed change.** Origin of D-09.

**Triage note.** OMS uses uppercase SHALL and SHOULD throughout and the word 'may'; OMS-L systematically lowercases to 'shall' and uses 'can'. Lowercase is correct for OGC, but one uppercase 'SHALL NOT' survives in 11.2.11, and the may/can substitution means the transposition is not strictly verbatim.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] WITHDRAWN. The published IS uses lowercase shall/should throughout - zero uppercase occurrences. The uppercase SHALL was DIS-only. OMS-L's lowercase is faithful. The stray 'SHALL NOT' in 11.2.11 remains a trivial local inconsistency in new material.

### F-15 — 10, 11 and 11.6 vs OMS (whole)

*Type Ge (General / architectural) · Line 1653-2161*  
*Disposition: **New material** · Severity: **Major** (originally Major)*

**Finding.** State explicitly in clause 1 or the Preface which parts of the document are transposed from ISO 19156 and which are new material from INSPIRE EF, since the two carry different editorial freedom and different review expectations.

**Proposed change.** Reframes the whole comment sheet: most surviving blocking comments (B-02, B-03, B-05, B-18, B-23, D-11) sit in new material where the transposition defence is not available and the SWG has full freedom to fix.

**Triage note.** Clauses 10 and 11 and their six codelists have no counterpart in ISO/DIS 19156. 'MonitoringFacility', 'MonitoringNetwork', 'ResultAcquisitionSource', 'MediaValue', 'MeasurementRegimeValue' and 'SpecialisedMFType' each have zero occurrences in the OMS text. All of it is new material derived from INSPIRE EF.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] CONFIRMED: MonitoringFacility, ResultAcquisitionSource, MediaValue, MeasurementRegimeValue and SpecialisedMFType all have zero occurrences in the published IS.

### F-16 — Front matter, 3; OMS edition

*Type Te (Technical) · Line 393*  
*Disposition: **Holds** · Severity: **Minor** (originally Major)*

**Finding.** Confirm which edition was transposed. If the DIS, re-check every inherited-defect determination against the published 2023 text before deciding to preserve it.

**Proposed change.** Material for the whole inherited-defect list: faithfully preserving a wart that ISO has already removed would be the wrong call.

**Triage note.** 26-019 cites ISO 19156:2023, but the provenance evidence matches ISO/DIS 19156 Ed. 2 as sent to ISO/CS (2021-12-01, headed 'ISO 19156:2021'). The DIS ballot ran to April 2022 and the standard published in 2023; defects found in the DIS may have been corrected in response to ballot comments.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] ANSWERED. The transposition was made from the PUBLISHED IS, not the DIS. Four independent tells: lowercase shall (IS only); deploymentTime:TM_Period (IS 9.8.3; DIS said TM_Object); 'A feature CAN occur' (IS; DIS said 'may'); ISO 19109 absent from the reference list (IS clause 2 dropped it; the DIS had it). The inherited-defect list therefore stands against the standard that actually published - the risk this comment raised does not materialise.

### F-17 — OMS 10.10, /req/obs-basic/gen/link-sem

*Type Te (Technical) · Line -*  
*Disposition: **Holds** · Severity: **Minor** (originally Minor)*

**Finding.** Fold it in or record the omission in the mapping annex.

**Proposed change.** Minor fold gap.

**Triage note.** OMS Basic classes carry a 'link: URI [0..*]' attribute through /req/obs-basic/gen/link-sem (e.g. ISO/DIS 19156 10.10 Deployment). This pattern is not folded into OMS-L.

---

## References (12)

### C-01 — 3

*Type Te (Technical) · Line 385-393*  
*Disposition: **Holds** · Severity: **Major** (originally Blocking)*

**Finding.** Withdrawn normative references. ISO 19103:2015 was withdrawn 2024-09-27 and superseded by ISO 19103:2024 - which matters because every Requirements Class depends on its 'UML2 conformance class' and 'CoreTypes conformance class', and the 2024 edition changed the UML conformance structure. ISO 19123:2005 is withdrawn, replaced by ISO 19123-1:2023. ISO 19107:2019 is listed but never cited in the text.

**Proposed change.** Update to ISO 19103:2024 and ISO 19123-1:2023 and re-verify the named conformance classes against the 2024 edition of ISO 19103; cite ISO 19107 in the text or remove it. Verified against iso.org.

**Triage note.** Holds. A standard published in 2026 should not cite a withdrawn edition, even under a faithful-transposition policy - the transposition covers model content, not the reference list. The substantive part: every requirements class depends on ISO 19103:2015's 'UML2' and 'CoreTypes' conformance classes, and the 2024 edition restructured UML conformance. Those class names need re-verifying.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] REFRAMED AND DOWNGRADED. ISO 19103:2015 is what the published IS cites, so OMS-L is faithful. But all 70 requirements classes inherit a dependency on that edition's 'UML2' and 'CoreTypes' conformance classes, and it was withdrawn in 2024. Updating means re-deriving the named conformance classes and diverging from OMS - a decision for the SWG, probably with an OAB view. ISO 19123:2005 is separate and simpler: the IS does not cite it at all, so that one is OMS-L's own and should become ISO 19123-1:2023.

### C-02 — 3

*Type Ed (Editorial) · Line 393*  
*Disposition: **Holds** · Severity: **Minor** (originally Major)*

**Finding.** The ISO 19156 entry has the wrong title and a stray space: 'ISO 19156: 2023, Geographic information - Observation, measurements and Samples'. The official title is 'Geographic information - Observations, measurements and samples'.

**Proposed change.** Correct to 'ISO 19156:2023, Geographic information - Observations, measurements and samples'.

**Triage note.** Holds. Title of ISO 19156 is wrong.

### C-03 — 3

*Type Ed (Editorial) · Line 389*  
*Disposition: **Holds** · Severity: **Minor** (originally Minor)*

**Finding.** ISO 19108:2002 is current but should be cited with its technical corrigendum.

**Proposed change.** Cite 'ISO 19108:2002, Geographic information - Temporal schema' and 'ISO 19108:2002/Cor 1:2006'.

**Triage note.** Holds.

### C-04 — 3 vs 4, 5.2

*Type Te (Technical) · Line 385-393, 627-629*  
*Disposition: **Inherited - confirmed** · Severity: **Minor** (originally Blocking)*

**Finding.** Standards used normatively in the text are absent from clause 3: ISO 19109 (the FeatureType metaclass and the General Feature Model, clause 5.2 and 6.2), ISO 19136-1:2020 (the UML profile mandated in clause 5.2), ISO/IEC 19501 (the schema language mandated in clause 5.2), and ISO 19101-1, ISO 19101-2, ISO 19143, ISO 19116, ISO 9000, JCGM 200 used as definition sources.

**Proposed change.** Move the normatively used standards into clause 3 and the definition-source-only ones into clause 3 or a Bibliography, per ISO/IEC Directives Part 2.

**Triage note.** Holds. ISO 19109, ISO 19136-1 and ISO/IEC 19501 are used normatively in clause 5.2 and absent from clause 3. CONFIRMED AS A REGRESSION AGAINST OMS. ISO/DIS 19156 clause 2 lists ISO 19103, 19107, 19108 and ISO 19109. OMS-L dropped ISO 19109 while continuing to use it normatively in 5.2 and 6.2. See F-11.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] RECLASSIFIED AS INHERITED - see F-11. The published IS lists only ISO 19103, 19107 and 19108 in clause 2 while using ISO 19109 normatively. OMS-L is faithful.

### C-05 — 5.2

*Type Te (Technical) · Line 627-629*  
*Disposition: **Inherited?** · Severity: **Major** (originally Major)*

**Finding.** Clause 5.2 mandates UML per ISO/IEC 19501, i.e. UML 1.4.2. ISO/IEC 19501:2005 is formally still published but technically obsolete, and ISO 19103:2024 no longer carries UML 1.x conformance - so the schema-language statement and the ISO 19103 dependency of every Requirements Class are mutually inconsistent. The clause also contains a bracketed citation '[2]' pointing to a numbered reference list that does not exist in this document.

**Proposed change.** Cite UML 2.5.1 via ISO 19103:2024, and replace '[2]' with a proper reference to ISO 19109.

**Triage note.** The ISO/IEC 19501 citation is likely inherited from OMS. The inconsistency it creates with the ISO 19103 dependency is real and worth resolving. The stray '[2]' pointing at a non-existent numbered reference list holds.

### C-06 — 4 (multiple entries)

*Type Te (Technical) · Line 499, 513, 561, 589, 519, 525*  
*Disposition: **Holds** · Severity: **Major** (originally Major)*

**Finding.** Withdrawn or inconsistent editions inside Terms and definitions: 'observation result' cites ISO 19156:2011 while clause 3 cites the 2023 edition; ISO 19116 is cited at two editions in one clause - 2025 for positional accuracy and 2019 (withdrawn) for unit of measure; ISO 9000:2015 (procedure, process) was withdrawn 2026-05-27, superseded by ISO 9000:2026 whose title changed to 'Quality management - Fundamentals and vocabulary'; 'coverage' and 'range' cite ISO/DIS 19123-1, a draft, which has been published as ISO 19123-1:2023.

**Proposed change.** Update all four: ISO 19156:2023, ISO 19116:2025 (both entries), ISO 9000:2026, ISO 19123-1:2023. A draft must not be cited as a definition source in a Standard. Verified against iso.org.

**Triage note.** Holds. Reference hygiene is OMS-L's own responsibility.

### C-07 — 4 ('feature')

*Type Ed (Editorial) · Line 449-455*  
*Disposition: **Holds** · Severity: **Minor** (originally Major)*

**Finding.** The definition of 'feature' is corrupted: 'ion of real-world phenomena'. The word 'abstract' has been lost.

**Proposed change.** Restore 'abstraction of real-world phenomena'.

**Triage note.** Downgraded. 'ion of real-world phenomena' is very likely a docx->Markdown conversion artefact rather than a source defect - verify in the source before actioning. CONFIRMED IN THE SOURCE .docx, not a conversion artefact - I checked the document XML directly. ISO/DIS 19156 3.7 reads 'feature - abstraction of real-world phenomena'; 26-019 reads 'ion of real-world phenomena'.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] CONFIRMED as OMS-L's own: IS 3.7 reads 'feature - abstraction of real-world phenomena'. Also note IS Note 1 reads 'A feature CAN occur', matching OMS-L - further evidence the IS was the source.

### C-08 — 4

*Type Te (Technical) · Line 431-435, 457-463, 563-569, 491-505, 549-553, 577-581*  
*Disposition: **Inherited - confirmed** · Severity: **Minor** (originally Major)*

**Finding.** Terms that ISO 19156:2023 already defines are redefined here with no SOURCE: observation, observer, sample, sampler, feature-of-interest, proximate feature-of-interest, ultimate feature-of-interest, feature type, domain feature.

**Proposed change.** Add '[SOURCE: ISO 19156:2023, x.y]' to each, with 'modified -' where the wording genuinely differs. Undocumented redefinition of OMS terms is the main mechanism by which OMS-L would drift from OMS.

**Triage note.** If the terms are transposed verbatim, the fix is trivial and fully compatible with the transposition policy: add the '[SOURCE: ISO 19156:2023, x.y]' attributions. Worth doing, because undocumented redefinition is the main route by which OMS-L would silently drift from OMS. OMS itself defines these terms with no SOURCE, so OMS-L reproduced OMS practice. But OMS-L is REUSING definitions OMS originated, which is a different case: '[SOURCE: ISO 19156:2023, 3.x]' is the correct form and is fully compatible with the transposition policy. Downgraded, kept.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] CONFIRMED against the published IS clause 3.

### C-09 — 4 ('property type')

*Type Ed (Editorial) · Line 547*  
*Disposition: **Inherited - confirmed** · Severity: **Minor** (originally Minor)*

**Finding.** Note 3 to entry: Adapted from ISO 19109:2005' is an informal attribution and is inconsistent with the ISO 19109 edition cited elsewhere.

**Proposed change.** Convert to a formal '[SOURCE: ISO 19109:2025, x.y, modified - ...]'. Note ISO 19109:2015 was withdrawn 2025-07-08; the 2025 edition is also retitled 'General feature model and rules for application schema'.

**Triage note.** Likely inherited. Confirm.  ||  [IS CHECK 31 Aug, vs ISO/TC211 N5820 = published ISO 19156] CONFIRMED INHERITED: 'Note 3 to entry: Adapted from ISO 19109:2005' is verbatim IS 3.20.

### C-10 — 4 (in situ / ex situ)

*Type Ed (Editorial) · Line 437-447, 465-475*  
*Disposition: **Inherited?** · Severity: **Minor** (originally Minor)*

**Finding.** The in situ / ex situ notes use a rectal-thermometer example, and conflate two orthogonal axes: in situ vs ex situ, and direct vs remote.

**Proposed change.** Replace with a domain-neutral example and separate the two axes explicitly - this also bears on the ResultAcquisitionSourceValue defect (B-24).

**Triage note.** Likely OMS text. Out of scope under the transposition policy.

### C-11 — 4 lead-in

*Type Ed (Editorial) · Line 397*  
*Disposition: **Holds** · Severity: **Minor** (originally Minor)*

**Finding.** This document used the terms defined in Policy Directive 49' - wrong tense.

**Proposed change.** 'This document uses the terms defined in...'.

**Triage note.** Holds.

### C-12 — 5.1

*Type Ed (Editorial) · Line 607-623*  
*Disposition: **Holds** · Severity: **Minor** (originally Minor)*

**Finding.** The abbreviations table is incomplete in both directions: OMS-L, EF, WMO, WIGOS, WMDR, TSML, FoI, UoM are used in the text but not listed; EO, SOS, SWE, SensorML, 2-D and 3-D are listed but never used. The table also has an empty header row and no caption or number.

**Proposed change.** Add the missing entries, remove the unused ones, and add a numbered caption.

**Triage note.** Holds.

---

## Editorial (11)

### D-01 — All figures

*Type Ed (Editorial) · Line 693, 1129, 1133, 1376, 1382, 1670, 1676, 1754, 1758*  
*Disposition: **Withdrawn** · Severity: **Minor** (originally Major)*

**Finding.** All nine figure captions read 'Figure : <title>' with an empty number field, while the body text references Figure 1 through Figure 9. No cross-reference resolves.

**Proposed change.** Regenerate the caption fields and cross-references.

**Triage note.** Word caption fields render empty in Markdown export. Very likely a conversion artefact - verify in the source before actioning. My error not to flag this. WITHDRAWN - CONFIRMED CONVERSION ARTEFACT. The source .docx numbers all nine captions correctly via SEQ fields ('Figure 1: OGC SensorThings API data model' etc.).

### D-02 — 6.1

*Type Ed (Editorial) · Line 659-661*  
*Disposition: **Holds** · Severity: **Minor** (originally Major)*

**Finding.** The Enterprise Architect example diagram in clause 6.1 has no caption at all, so the numbering of every subsequent figure is ambiguous.

**Proposed change.** Add a numbered caption.

**Triage note.** Same - verify in the source. CONFIRMED IN THE SOURCE: nine captions for ten images; word/media/image1.png in clause 6.1 has none.

### D-03 — 8.1, 9.1, 11.1

*Type Ed (Editorial) · Line 1127, 1376-1382, 1756*  
*Disposition: **Holds** · Severity: **Minor** (originally Major)*

**Finding.** Captions and images are misplaced. In clause 9.1 'Figure : Core Sampling Schema' appears before its image; in clauses 8.1 and 11.1 an image runs into the following sentence on the same line ('![](...)In Figure 3 we see...', '![](...)When utilizing the Monitoring Extensions...').

**Proposed change.** Place each image before its caption and separate images from body text.

**Triage note.** Same - image/caption ordering and run-together text are typical Markdown export artefacts. Verify in the source. CONFIRMED IN THE SOURCE: Figure 2's caption precedes its image, and image5 sits inside the same paragraph as the body text 'In Figure 5 the additional classes...'. Only 5 of 10 images are inline, which is why the ordering reads as broken.

### D-04 — All tables

*Type Ed (Editorial) · Line 356, 607, 1141+*  
*Disposition: **Holds** · Severity: **Minor** (originally Major)*

**Finding.** No table in the document is numbered or captioned, including the submitters table, the abbreviations table and all 137 requirements and conformance class tables.

**Proposed change.** Add numbered captions, at least to the non-requirement tables, per the OGC template.

**Triage note.** Same, plus a template claim. Verify. CONFIRMED IN THE SOURCE: 139 tables, zero SEQ Table fields, zero caption paragraphs.

### D-05 — Contents

*Type Ed (Editorial) · Line 60-324*  
*Disposition: **Holds / artefact?** · Severity: **Minor** (originally Major)*

**Finding.** The table of contents is stale: the titles of clauses 8-11 omit '(normative)' as it appears in the body, the Annex entries do not match the body headings, and the page numbers reflect an earlier layout.

**Proposed change.** Regenerate after the Annex restructure (B-01).

**Triage note.** The missing '(normative)' in the clause 8-11 TOC titles holds. Page numbers and Annex entries will regenerate anyway after B-01.

### D-06 — Front matter (External identifier)

*Type Ed (Editorial) · Line 9*  
*Disposition: **Holds** · Severity: **Major** (originally Major)*

**Finding.** The external identifier is a broken template: the visible text is 'http://www.opengis.net/doc/[{doc-type/}]{standard}/26-019' but the hyperlink target is 'http://www.opengis.net/def/[{doc-type/}]{standard}/{m.n}' (percent-encoded) - 'doc' versus 'def', and neither placeholder is filled.

**Proposed change.** Replace with the actual document URI.

**Triage note.** Holds. The '/doc/' visible text against a '/def/' link target is in the link, not the rendering.

### D-07 — Keywords / Preface

*Type Ed (Editorial) · Line 330*  
*Disposition: **Holds** · Severity: **Minor** (originally Minor)*

**Finding.** The keywords line has swallowed the following heading: '...Samples, Monitoring Preface'. The 'Preface' heading has been lost.

**Proposed change.** Restore the Preface heading.

**Triage note.** Likely a conversion artefact. Verify in the source. CONFIRMED IN THE SOURCE: the text really does run '...Samples, Monitoring Preface The approved OGC...'.

### D-08 — Various

*Type Ed (Editorial) · Line 367, 899, 1112, 1672, 1820/1943/2067, 661, 675*  
*Disposition: **Holds** · Severity: **Minor** (originally Minor)*

**Finding.** Typographical defects: 'Th OMS Logical Model' (1); 'The size attribute provides describes a physical extent' (7.2.4); 'EnvironmentaMonitoringActivity' (7.3.5); 'how OMS:ObservingCapability is utilizes by' (10.1); 'was createdis provided' x3 (11.2.6, 11.3.5, 11.5.5); 'showing the associations between the interfaces This adds' - missing full stop (6.1); 'not modelled within this standard' - missing full stop (6.2); 'an MonitoringFacility' / 'an MonitoringProgramme' / 'an MonitoringActivity' in several requirements.

**Proposed change.** Editorial pass.

**Triage note.** Holds - these are real: 'Th OMS', 'createdis' x3, 'provides describes', 'EnvironmentaMonitoringActivity', 'is utilizes by'. PARTIALLY CONFIRMED: 'Th OMS', 'provides describes' and 'EnvironmentaMonitoringActivity' are in the source. 'createdis' is a conversion artefact - zero occurrences in the .docx.

### D-09 — 11.2.11

*Type Ed (Editorial) · Line 1871*  
*Disposition: **Holds** · Severity: **Minor** (originally Minor)*

**Finding.** 'Geometry and representativePoint SHALL NOT both be empty' uses upper-case SHALL NOT, whereas the rest of the document uses lower-case 'shall' per Policy Directive 49.

**Proposed change.** Use lower case.

**Triage note.** Holds. ORIGIN NOW CLEAR: OMS uses uppercase SHALL/SHOULD throughout. OMS-L lowercased systematically and this single 'SHALL NOT' was missed. See F-14.

### D-10 — Throughout

*Type Ed (Editorial) · Line -*  
*Disposition: **Holds** · Severity: **Minor** (originally Minor)*

**Finding.** British and US spelling are mixed, including between a model element and its own description: attribute 'organisationLevel' against prose 'organizational grouping'; 'specialised' against 'specialized'; 'utilisation' against 'utilization'.

**Proposed change.** Choose one convention for prose; keep model element names exactly as they are in the UML and note the convention in clause 5.3.

**Triage note.** Holds.

### D-11 — 7.3.2 note

*Type Ed (Editorial) · Line 1014*  
*Disposition: **Holds** · Severity: **Major** (originally Minor)*

**Finding.** 'Laboratories are not EnvironmentalMonitoringFacilities' uses a class name that does not exist in this model (the class is MonitoringFacility). Seven further occurrences of 'EnvironmentalMonitoringFacilities' / 'EnvironmentalMonitoringActivity' appear in clauses 7.3 and 10, including inside normative requirements (10.3 Req 1, 10.4 Req 3, 10.5 Req 5).

**Proposed change.** Replace all occurrences with the class names defined in this document.

**Triage note.** Holds. 'EnvironmentalMonitoringFacilities' appears inside three normative requirements for a class this model names MonitoringFacility.

---

## Links (6)

### E-01 — Footnote 1 (clause 2)

*Type Te (Technical) · Line 377, 2919*  
*Disposition: **Holds** · Severity: **Major** (originally Major)*

**Finding.** Broken: http://www.opengeospatial.org/cite - cited as 'the OGC Compliance Testing web site' - returns no content. The link is also given as bare text rather than a resolvable URI.

**Proposed change.** Replace with https://www.ogc.org/compliance/ (programme) and/or https://cite.ogc.org/ (test engine). Checked 2026-08-24.

**Triage note.** Holds - tested 24 Aug 2026.

### E-02 — Footnote 2 (clause 4)

*Type Te (Technical) · Line 397, 2920*  
*Disposition: **Holds** · Severity: **Major** (originally Major)*

**Finding.** Unreliable: https://portal.ogc.org/public_ogc/directives/directives.php (Policy Directive 49) did not respond on repeated attempts. It is a legacy portal PHP endpoint, not a stable citation target.

**Proposed change.** Cite the stable published policy on docs.ogc.org (e.g. https://docs.ogc.org/pol/) or https://www.ogc.org/about/policies/. Checked 2026-08-24.

**Triage note.** Holds - tested 24 Aug 2026.

### E-03 — Copyright notice

*Type Ed (Editorial) · Line 28*  
*Disposition: **Holds** · Severity: **Minor** (originally Minor)*

**Finding.** http://www.opengeospatial.org/legal/ resolves but 301-redirects to https://www.ogc.org/about/legal-notices-term-and-conditions/, and uses the retired domain over http.

**Proposed change.** Update to the https ogc.org URL. Checked 2026-08-24 - redirect works today.

**Triage note.** Holds - tested 24 Aug 2026.

### E-04 — All req/conf URIs

*Type Te (Technical) · Line 1144-2917*  
*Disposition: **Holds** · Severity: **Major** (originally Major)*

**Finding.** None of the 227 distinct opengis.net URIs resolve, including the base http://www.opengis.net/spec/OMS-L/1.0. Expected for a draft, but the token must be registered before publication. All 227 also use http:// rather than https://.

**Proposed change.** Register 'OMS-L' with the OGC Naming Authority and switch every URI to https://. Checked 2026-08-24.

**Triage note.** Holds - tested 24 Aug 2026.

### E-05 — Throughout the requirement tables

*Type Ed (Editorial) · Line 1144+*  
*Disposition: **Holds / artefact?** · Severity: **Minor** (originally Minor)*

**Finding.** The Word-to-Markdown conversion shows bold markers inside 271 of the 272 URI occurrences (e.g. '.../req-class-Observation**'). If the same character-level formatting is present in the source .docx, the hyperlinks and any automated URI extraction will be corrupted.

**Proposed change.** Verify in the source document that no formatting run boundary falls inside a URI.

**Triage note.** Flagged as a possible conversion artefact in the original review. Verify in the source.

### E-06 — Footnote 3, Footnote 4

*Type Ed (Editorial) · Line 2921-2922*  
*Disposition: **Holds** · Severity: **OK** (originally OK)*

**Finding.** Working: https://knowledge-base.inspire.ec.europa.eu/index_en (INSPIRE Knowledge Base) and https://eur-lex.europa.eu/eli/dir/2007/2/oj/eng (Directive 2007/2/EC, INSPIRE). Both resolve and point at the right resources.

**Proposed change.** No change. Checked 2026-08-24.

**Triage note.** No action.

---
