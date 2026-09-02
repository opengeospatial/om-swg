# OGC 26-019 — fidelity review, addendum against the published ISO 19156

**Reviewer:** Frederic Houbie, OGC Architecture Board
**Now compared against:** ISO/TC 211 N 5820, *Text for ISO 19156, Geographic information — Observations, measurements and samples, as sent to ISO/CS for publication* (2022-11-01, headed "ISO 19156:2022(E)") — i.e. the text that published as ISO 19156:2023
**Supersedes:** the DIS-based conclusions in the fidelity review of 31 August 2026
**Date:** 31 August 2026

---

## 1. F-16 is answered, and the answer is good news

**The transposition was made from the published International Standard, not the DIS.** Four independent tells:

| Evidence | DIS (2021-12) | Published IS | 26-019 |
|---|---|---|---|
| Case of the obligation verb | uppercase `SHALL` / `SHOULD` (101 / 9 occurrences) | lowercase "shall" / "should" (**zero** uppercase) | lowercase | 
| `deploymentTime` type in the requirement | `TM_Object` | `TM_Period` (9.8.3) | `TM_Period` (Req 5) |
| Note 1 to *feature* | "A feature **may** occur…" | "A feature **can** occur…" | "can" |
| ISO 19109 in normative references | present | **removed** | absent |

So the inherited-defect list in my fidelity review stands against the standard that actually published. That removes the risk I flagged — you are not preserving warts that ISO has since fixed.

It also means several of my findings need re-attributing, and **my headline finding was wrong.**

---

## 2. F-01 — withdrawn. I got this wrong.

I reported that four of OMS's nine recommendations had been silently escalated to requirements in OMS-L, and called it the headline fidelity finding. **That is incorrect and I withdraw it.**

OMS promotes these four itself, between layers. At the Conceptual layer they are recommendations (IS 8.2.12–8.2.15, `/rec/obs-cpt/Observation/…-con`). At the **Abstract Core** layer the same four constraints reappear as **requirements** (IS 9.3.6–9.3.9, `/req/obs-core/Observation/…-con`):

> **IS 9.3.6 Constraint Observer or Host** — Requirement `/req/obs-core/Observation/observerhost-con` — "At least one Observer or Host **shall** be provided"

and correspondingly 9.3.7 `observedProperty-con`, 9.3.8 `observingProcedure-con`, 9.3.9 `result-con`. OMS's `AbstractObservation` requirements class lists all four as `Requirement` rows *and* carries the Conceptual-layer recommendations alongside.

OMS-L flattened the layers and took the Abstract Core form. **Req 18, 21, 24 and 27 are faithful transpositions.** My error: I read only clause 8.2 in the DIS, saw the recommendations, and did not check whether clause 9.3 promoted them. That is exactly the failure mode of reviewing a layered standard one layer at a time — the thing your document exists to prevent.

The observation underneath it survives only as a remark, not a finding: three of the four ("suitable", "correspond to") are not testable as requirements. But that is OMS's problem, inherited faithfully, and out of scope for you.

---

## 3. Other corrections

**F-14 — withdrawn.** The published IS uses lowercase "shall" and "should" throughout; zero uppercase. OMS-L's lowercase is faithful, not a drafting-style change. The stray uppercase `SHALL NOT` in 11.2.11 remains a local inconsistency, but it is in new material and trivial. (This was also my strongest single tell that you worked from the IS.)

**F-11 and C-04 — reclassified as inherited.** The published IS lists only three normative references in clause 2 — ISO 19103, ISO 19107, ISO 19108 — having **dropped ISO 19109 between DIS and IS**, while continuing to use it normatively in clause 4.2 (the «FeatureType» metaclass and the General Feature Model) and clause 6 ("The conformance rules for Models in general are described in ISO 19109"). OMS-L reproduced both halves: the omission and the normative use. So the gap is real but it is ISO's, faithfully inherited. Log for an OMS corrigendum; not a finding against 26-019.

**C-09 — inherited.** "Note 3 to entry: Adapted from ISO 19109:2005" is verbatim IS 3.20.

**F-07 — restated and downgraded.** I said `ObservationCharacteristics` was missing a required `metadata` attribute. In OMS, `metadata` is an **association** to `«interface» Any`, not an attribute — IS Figure 10 shows `+metadata` as a role. The real divergence is different and smaller: **OMS-L's Figures 2 and 3 model `metadata` as an attribute (`metadata: Any`) on `Observation`, where OMS models it as an association.** Worth aligning, but Minor.

**F-05 — the narrowing sub-point is withdrawn**, the main finding stands and is now firmer. IS 9.8.3 requires `deploymentTime:TM_Period`, so OMS-L Req 5 is faithful. (Note the IS is itself internally inconsistent here — its diagrams show `deploymentTime: TM_Object [0..*]` — an inconsistency OMS-L has inherited.) The core of F-05 is unaffected and now checked against both editions: **`atPosition` and `positionUoM` have zero occurrences in the DIS and zero in the published IS.** They are in your Figures 2 and 3, in no edition of OMS, and in none of your own requirements. This stays blocking.

**C-01 — reframed, downgraded to Major.** ISO 19103:2015 is what the published IS cites, so OMS-L is faithful. But every OMS-L requirements class inherits a dependency on ISO 19103:2015's "UML2" and "CoreTypes" conformance classes, and that edition was withdrawn in 2024. For a standard publishing in 2026 this is a decision rather than a typo: updating to ISO 19103:2024 means re-deriving the named conformance classes across all 70 requirements classes, and diverging from OMS in the process. Worth an explicit SWG position, and probably an OAB view. ISO 19123:2005 is separate and simpler — the IS does not cite it at all, so that one is yours and should go to ISO 19123-1:2023.

---

## 4. Confirmed against the published IS — unchanged

Everything below was re-checked against N 5820 and holds, with IS clause numbers (which differ from the DIS in places):

**Still blocking:**
- **F-02** — `Procedure` is IS **8.4**; IS **11.4.4** reads "The **Procedure** implemented by the Sampler", retained verbatim as OMS-L Sampler Req 3. Class dropped, dependent text kept.
- **F-03** — `ObservingCapability` is IS **10.5**, with `/req/obs-basic/ObservingCapability` and `/conf/obs-basic/ObservingCapability`. Not folded; relied on in OMS-L 10.1, 10.2 Req 4, 10.3 Req 3, 10.5 Req 2.
- **F-05** — as above.

**Still holding:**
- **F-04** — `GenericDomainFeature` is IS **10.11**, not folded.
- **F-06** — `collectionType` is IS **9.9.3** (moved up to `AbstractObservationCollection` in the IS, from 10.4.3 in the DIS). Absent from OMS-L's Figure 3 despite Req 2 of 8.9 requiring it.
- **F-08** — the IS shows `validTime: TM_Period [0..*]` in all eleven of its diagrams and `validTime:TM_Period` in the requirement (8.2.5). OMS-L Figures 2 and 3 show `TM_Object`. Diagram error.
- **F-09** — the IS states attribute multiplicities consistently (`observationType: AbstractObservationType [0..*]`, `parameter: NamedValue [0..*]`, `resultQuality: Any [0..*]`, `deploymentReason: CharacterString [0..*]`). OMS-L's diagrams state none.
- **F-10** — the IS says `NamedValue` and `AbstractObservationType`; `LA_` has **zero** occurrences in either edition. The `LA_NamedValue` / `LA_ObservationType` names in OMS-L Figures 2 and 3 come from somewhere else.
- **F-12** — codelist pairing confirmed: IS 9.11.1 / 9.11.2 (abstract) against 10.12.1 / 10.12.2, and 12.8.1 / 12.8.2 against 13.15.1.
- **F-13** — the IS has **87** `Imports` rows across its requirements classes. OMS-L has none.
- **F-15** — clauses 10 and 11 have no counterpart: `MonitoringFacility`, `ResultAcquisitionSource`, `MediaValue`, `MeasurementRegimeValue`, `SpecialisedMFType` all have zero occurrences in the published IS.
- **B-11** — the IS names it `ObservationTypeByResultType-**con**` (10.12.2); OMS-L labels both requirements `-sem`. OMS-L's slip.
- **C-07** — IS **3.7** reads "feature — **abstraction** of real-world phenomena"; 26-019 reads "ion of real-world phenomena". Confirmed in your source `.docx`.

**Inherited, confirmed against the published IS, out of scope:** B-12 (IS 10.12.2 constrains the same 7 of 10 values), B-15 (IS 8.2.3, 8.2.4, 9.3.3 carry all three statements), B-16 first half (IS 9.3.8 reads "The ObservingProcedure referenced by **procedure**"), B-19 (IS **13.3.5** still reads "If **horizontal** positional accuracy information … the attribute `verticalPositionalAccuracy:Any` shall be used"), B-06 / B-07 (IS 9.2.1 and 9.9.1 reuse identifiers across layers), C-08, C-09, A-03.

Also resolved: **B-16's second half** — `Domain`, `DomainProxy` and `Range` are association names in IS Figure 10, so they are genuine model elements, merely undocumented in OMS-L's text.

---

## 5. Where this leaves things

**Blocking: 10, down from 13 in the original review** (F-01 withdrawn, C-01 downgraded to Major).

| ID | Finding | Location |
|---|---|---|
| B-02 | 22 conformance classes reference non-existent requirements classes | New material (clause 11 / Annex) |
| B-05 | No clause 11 requirement is addressable from its own class | New material |
| B-01 | Annex A not structured as an annex | Whole document |
| B-03 | Three `additionalDescription` conformance classes with no requirement | New material |
| B-20 / F-03 | `ObservingCapability` relied on, not defined | Fold gap |
| F-02 | `Procedure` dropped, dependent text kept | Fold gap |
| F-05 | `Deployment` diagram attributes exist in no edition of OMS | Diagram |
| A-05 | Clause 2 mandates conformance via a non-existent Annex A | Whole document |
| A-07 | Unfilled URI template, unregistered `OMS-L`, version mismatch | Whole document |

Immediately behind them, C-01 (the ISO 19103:2015 dependency) is now Major rather than blocking, but it is the one that needs a decision rather than an edit — see §3.

**The shape of the conclusion has not changed, but the balance has moved further in your favour.** Of my 85 comments, 11 are now confirmed inherited verbatim from the published standard and withdrawn as findings against 26-019; 6 more are withdrawn as my own miscalibration or as conversion artefacts. What is left is concentrated in three places: **the conformance/URI apparatus, the four UML diagram divergences, and the three unfolded OMS classes.** Almost none of it is in the transposed prose of clauses 8 and 9, which is the part you were most concerned about — and on the evidence of this pass, that prose is a careful and largely accurate fold.

**One methodological note, since it caused my F-01 error.** The PDF text extraction interleaves the two-column requirement tables in both ISO documents, so contiguous-phrase searching is unreliable — "referenced by procedure" returns zero hits in the IS even though the phrase is there. I re-read the surrounding lines for every sensitive determination in this addendum, but if you want to check any of it yourself, read the lines rather than trusting a grep.

**Two questions remain open, both for you:**

1. **Where did `Deployment.atPosition` and `positionUoM` come from?** Zero occurrences in either edition of OMS. They look like they belong to a "position on a platform" concept — WMDR would be my guess. If they are intended additions they need requirements; if not, the diagrams need correcting.
2. **What is the SWG's position on the ISO 19103:2015 dependency?** Faithful to OMS, withdrawn since 2024, and load-bearing for all 70 requirements classes. I don't think there is a clean answer and it may be worth putting to the OAB rather than deciding in the SWG.
