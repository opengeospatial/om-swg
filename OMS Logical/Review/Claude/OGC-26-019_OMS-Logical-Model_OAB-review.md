# OAB review — OGC 26-019, OMS Logical Model v0.0.1

**Reviewer:** Frederic Houbie, OGC Architecture Board
**Document:** OGC Observations, Measurements and Samples — Logical Model, internal reference 26-019, version 0.0.1, draft
**Editor:** Kathi Schleidt (DataCove e.U.); submitters DataCove, Fraunhofer IOSB, BRGM
**Date of review:** 24 August 2026
**Comment sheet:** 68 comments — 13 blocking, 40 major, 14 minor — in the accompanying spreadsheet

---

## 1. Recommendation

**Do not approve for release to public comment in the present form. Return to the SWG for a structural and editorial pass, then re-review.**

The motivation is sound and well argued. The three-layer OMS model does impose real cost on domain modellers, the Enterprise Architect limitation on inherited associations is a genuine problem, and the WMDR and TSML experience cited in clause 6.1 is credible evidence that the flattening is needed. The Environmental Monitoring Facilities material is a valuable addition and its INSPIRE provenance is properly acknowledged.

What is not yet ready is the standard *as a normative artefact*. The requirements/conformance apparatus does not hold together: 22 conformance classes point at requirements classes that do not exist, no requirement in clause 11 is addressable from its own class, and clause 2 contains none of the content OGC policy requires of a Conformance clause. Four classes are used normatively but never defined. No property in the entire model has a stated multiplicity. Two normative references are withdrawn. These are not editorial slips — together they mean the document cannot currently be conformance-tested, and a reader cannot derive an implementation from it.

I would expect one further SWG iteration to fix most of this. Sections 2 and 3 below are the items I would want closed before release; section 4 is what I think warrants OAB discussion rather than a comment on a sheet.

---

## 2. Blocking findings

Full detail and proposed changes are in the comment sheet; comment IDs in brackets.

**The normative relationship to ISO 19156:2023 is undefined.** [A-01, A-02]
The document says domain models built on OMS-L "will be compliant with OMS", but no requirements class lists ISO 19156:2023 as a dependency, no requirement maps an OMS-L element to its OMS counterpart, and no test verifies the claim. Meanwhile every OMS concept is *re-stated* as an OMS-L "shall". So the central promise of the document is unverifiable, and the mechanism is in place for the two models to drift apart at the next ISO 19156 revision. A normative mapping annex (OMS-L element → OMS element, with the OMS layer of origin) plus ISO 19156:2023 as a dependency of every requirements class would fix both.

**The conformance apparatus is broken.** [A-05, B-01 to B-05, B-14]
- Clause 2 lists no requirements classes, no conformance classes, no standardization target, no mandatory/optional designation and no dependency structure, and cites an "Annex A (normative)" that does not exist under that name.
- The Annex is a flat sequence of heading-1s ("Annex", "Observation", "Sampling", "EF", "EF Extended") with the line "Annex A: Conformance Class Test Suite (Normative)" buried as body text.
- 22 conformance classes reference requirements classes that do not exist, because the Annex uses `req-class-MonitoringNetworkExt-*` / `MonitoringProgrammeExt-*` / `MonitoringActivityExt-*` while clause 11 defines the same classes without the `Ext` infix. Symmetrically, 20 requirements classes have no conformance class, and six codelist classes have none at all.
- Three `additionalDescription` conformance classes exist for a requirement that was never written.
- Every requirement in clause 11 is identified under a *different* class from the one that contains it (class `req-class-MonitoringFacilityExt-mediaMonitored` holds requirement `/req/req-class-MonitoringFacility/mediaMonitored`), so no clause 11 requirement is addressable.
- All 67 conformance tests are the same sentence — "Verify that all requirements from the requirements class have been fulfilled" / "Inspect the documentation" — including for the Observation class, which holds 30 requirements and 5 recommendations. There is no pass criterion anywhere.

**Four classes are referenced normatively but never defined.** [B-20]
`ObservingCapability` appears in clause 10.1 and in requirements of 10.2, 10.3 and 10.5. The association classes `Hierarchy`, `NetworkFacility` and `AnyDomainLink` are cited in eighteen requirement statements (Hierarchy 12, NetworkFacility 4, AnyDomainLink 2) as carrying "additional properties as defined in the association class". None of the four has a definition, a clause or a requirements class. Clause 10.3 Req 6 (`involvedIn`) also refers to `AbstractMonitoringFeature`, a class from the INSPIRE source that does not exist in this model, as do the `reportedTo` descriptions in clauses 7.3.2 and 7.3.3.

**No multiplicities.** [B-26]
Apart from a handful of `-card` requirements on `Observation`, no attribute or association in clauses 8–11 has a stated multiplicity, and clause 11 gives no property *types* either. For a model whose stated purpose is to hand implementers something directly usable with "all necessary associations", this is the single biggest obstacle to using it. A property table per class — name, type, multiplicity, definition, OMS provenance — would resolve this and several other comments at once.

**Encoding neutrality is broken in a logical model.** [A-03]
Clause 6.2 makes identity, name and description depend on `gml:id` / `gml:name` / `gml:description`, and explicitly scopes `gml:id` uniqueness "within the XML document"; clause 5.2 constrains the UML to the GML profile of ISO 19136-1:2020 Annex E. The intended consumers — TSML, WMDR, SensorThings, OGC API resources — are not all XML. Identity, name and description should be abstract properties of the model, with the GML mapping moved to an informative annex.

**Two normative references are withdrawn, and one is a draft.** [C-01, C-04, C-06]
Verified against iso.org:
- ISO 19103:2015 → withdrawn 2024-09-27, superseded by **ISO 19103:2024**. This one matters beyond bookkeeping: every requirements class in the document depends on ISO 19103:2015's "UML2 conformance class" and "CoreTypes conformance class", and the 2024 edition restructured UML conformance (dropping UML 1.x). Those named conformance classes must be re-verified against the new edition.
- ISO 19123:2005 → withdrawn, replaced by **ISO 19123-1:2023**; and clause 4 separately cites **ISO/DIS 19123-1**, a draft, which is that same published standard.
- ISO 9000:2015 (source for *procedure* and *process*) → withdrawn 2026-05-27, superseded by ISO 9000:2026, retitled "Quality management — Fundamentals and vocabulary".
- ISO 19116 is cited at two editions in the same clause: 2025 for *positional accuracy*, 2019 (withdrawn) for *unit of measure*.
- ISO 19109:2015 → withdrawn 2025-07-08, superseded by ISO 19109:2025, retitled "General feature model and rules for application schema" — and ISO 19109 is used normatively in clauses 5.2 and 6.2 but does not appear in clause 3 at all, along with ISO 19136-1:2020 and ISO/IEC 19501.
- The ISO 19156 title is wrong: it is "**Observations**, measurements and **samples**", not "Observation, measurements and Samples".

**URI and namespace policy is unresolved.** [A-07, D-06, E-04]
Clause 5.4 still contains the template `http://www.opengis.net/spec/{standard}/{m.n}`. All 227 distinct requirement and conformance URIs use the token `OMS-L` at version `1.0` over `http://`, while the document metadata says Version 0.0.1. `OMS-L` is not in the abbreviations list and is not registered — nothing under `opengis.net/spec/OMS-L/` resolves. The external identifier in the header is a broken template whose visible text says `/doc/` and whose link target says `/def/`.

**A codelist definition is substantively wrong.** [B-24]
`ResultAcquisitionSourceValue` defines *inSitu* as "the FeatureOfInterest is a sampling feature which is co-located with the ultimate FeatureOfInterest" and *remote* as "the FeatureOfInterest is a sampling feature which is **also** the ultimate FeatureOfInterest". The definition given for *remote* describes identity with the ultimate FoI — that is in-situ observation — and says nothing about remote sensing. `subsumed` ("the value is inherited from children") relies on a parent/child relationship this document never defines for the property. This needs checking against ISO 19156:2023 and the INSPIRE EF source. The same in-situ / ex-situ versus direct / remote conflation shows up in the clause 4 notes [C-10].

---

## 3. Other findings worth flagging

**Model consistency between the informative and normative halves.** Clause 7 restates every class and property in prose, and has already diverged from clauses 8–11: `MonitoringActivity` has one association `uses` in 7.3.5 and two, `usesFacility` and `usesNetwork`, in 10.4 [B-22]; clause 10.1 says `id`, `name` and geometry are inherited from the FeatureType stereotype and "not provided within this specification", while 7.3.2–7.3.5 list them as attributes [B-21]; the concept spelled `specialisedEMFType` in 7.3.2 is `specialisedMFType` in 11.2.10, `SpecialisedMFTypeValue` as a class and `SpecialisedEMFTypeValue` in a requirement identifier [B-23]; `EnvironmentalMonitoringFacilities` and `EnvironmentalMonitoringActivity` survive in eight places including three normative requirements [D-11]. I would shorten clause 7 to an overview rather than maintain two descriptions.

**Requirement-level defects.** `phenomenonTime` and `resultTime` are conditional in one requirement and mandatory in the next, and `resultTime` is typed both `TM_Object` and `TM_Instant` [B-15]. `ObservationTypeByResultType` enumerates ten values but constrains only seven, leaving `discrete-coverage-observation`, `discrete-point-coverage` and `timeseries-observation` with no testable meaning [B-12]. Requirements 22 and 24 of `Observation` name the role `procedure` where the model says `observingProcedure`, and `ObservationCharacteristics` requires associations named `Domain` and `Range` that are never defined [B-16]. Clause 11 systematically calls attributes associations — including the Boolean `mobile` [B-17]. `organisationLevel` requires "the association with the role **supersedes**" [B-18]. `verticalPositionalAccuracy` is introduced by "If **horizontal** positional accuracy information … is provided" [B-19]. The Observer class has two requirements numbered Req 6; SampleCollection has one with no number [B-10]. Two requirement identifiers were imported unchanged from OMS (`/req/obs-cpt/...`, `/req/obs-basic/...`) [B-06], and the Observation recommendations are identified against the ObservationCharacteristics class [B-07].

**Terms and definitions.** The definition of *feature* is corrupted to "**ion** of real-world phenomena" [C-07]. Nine terms that ISO 19156:2023 already defines — observation, observer, sample, sampler, feature-of-interest, proximate and ultimate feature-of-interest, feature type, domain feature — are redefined here with no SOURCE attribution [C-08]. This is the most likely route by which OMS-L semantics would quietly diverge from OMS.

**Presentation.** All nine figure captions read "Figure : <title>" with an empty number field while the body references Figure 1 to Figure 9, and the clause 6.1 example diagram has no caption at all, so the numbering after it is ambiguous [D-01, D-02]. In clause 9.1 the caption precedes its image; in 8.1 and 11.1 an image runs into the following sentence on the same line [D-03]. No table anywhere is numbered or captioned [D-04]. The TOC is stale and does not match the body headings [D-05]. The Keywords line has swallowed the Preface heading [D-07]. Document metadata is unresolved template text and there is no Abstract, Bibliography or revision history [A-11].

---

## 4. Points for OAB discussion

These are judgement calls rather than defects, and I would rather the Board took a view than that I filed them as comments.

**Is a flattened parallel model the right answer to the problem?** The problem is real, but the cause given in clause 6.1 is partly a tooling limitation — Enterprise Architect not displaying inherited associations. Standing up a second normative model of the same domain is a permanent maintenance obligation taken on to work around that. The alternatives worth weighing: a non-normative derived model or profile; an OGC Best Practice; or an amendment to ISO 19156 itself that adds the concrete associations. If the SWG's answer is that the parallel standard is right, the document should say so explicitly and set out how it will be kept in step with the ISO/TC 211 revision cycle. Clause 6.1 and the Preface currently leave this implicit. [A-09]

**Requirements-class granularity.** Clause 11 defines roughly forty single-property requirements classes so that implementers can "mix and match". That is a defensible design, but as written it yields a combinatorial space of conformance classes with no dependency graph, no core/extension hierarchy, and no guidance on which combinations are meaningful — and it is the direct cause of the naming mismatch in B-02 and the identifier problem in B-05. Consolidating into one `…Ext` class per monitoring class with optional properties, plus a small number of named profiles, would be more testable. [A-04]

**Codelist governance.** The codelists are specified inline, with an extensibility model that contradicts itself — several are described as "an empty extension-point" while simultaneously mandating entries — and none is published on the OGC Definitions Server. Given that these values (media monitored, measurement regime, result nature) are exactly the sort of thing communities will want to extend, the register question should be settled before publication rather than after. [A-06]

**Scope of the INSPIRE EF import.** Bringing EF into OGC is genuinely useful and the split into a European-neutral core (clause 10) and a fuller extension (clause 11) is a sensible design. Worth confirming with the SWG that the INSPIRE maintenance community is aligned on this, given clause 7.3 notes "liberal reuse of original INSPIRE texts" — the copyright and attribution position for that reuse should be explicit in the document.

**Model artefacts.** Only rendered PNGs are supplied, embedded as base64. The normative content of a logical model is the model; the OAB would normally expect the UML in a version-controlled OGC repository, with diagrams generated from it. [A-08]

---

## 5. Link check

Every external hyperlink in the document was tested on 24 August 2026.

| Link | Where | Result |
|---|---|---|
| `https://knowledge-base.inspire.ec.europa.eu/index_en` | Footnote 3 (clause 7.3.1) | **OK** — resolves, correct target |
| `https://eur-lex.europa.eu/eli/dir/2007/2/oj/eng` | Footnote 4 (clause 7.3.1) | **OK** — resolves, Directive 2007/2/EC (INSPIRE), correct target |
| `http://www.opengeospatial.org/legal/` | Copyright notice | Resolves, but 301-redirects to `https://www.ogc.org/about/legal-notices-term-and-conditions/`. Retired domain, http. **Update.** |
| `http://www.opengeospatial.org/cite` | Footnote 1, cited as "the OGC Compliance Testing web site" | **Broken** — returns no content. Also written as bare text, not a resolvable URI. Replace with `https://www.ogc.org/compliance/` and/or `https://cite.ogc.org/`. |
| `https://portal.ogc.org/public_ogc/directives/directives.php` | Footnote 2, Policy Directive 49 | **Unreliable** — no response on repeated attempts. Legacy portal endpoint, not a stable citation target. Cite the published policy on `docs.ogc.org` instead. |
| `http://www.opengis.net/spec/OMS-L/1.0` and the 226 derived req/conf URIs | Clauses 8–11 and the Annex | **Do not resolve.** Expected for a draft, but `OMS-L` must be registered with the OGC Naming Authority before publication, and all 227 should move to `https://`. |
| External identifier in the header | Front matter | **Broken by construction** — visible text `…/doc/[{doc-type/}]{standard}/26-019`, link target `…/def/[{doc-type/}]{standard}/{m.n}`. `doc` vs `def`, and no placeholder filled. |

One further caution: in the Markdown rendering of the document, 271 of the 272 URI occurrences carry bold markers *inside* the URI (`…/req-class-Observation**`). If the same character-level formatting boundary is present in the source `.docx`, the hyperlinks and any automated URI extraction will be corrupted. Worth checking in the source. [E-05]
