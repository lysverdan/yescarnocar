# YCNC — Fact-check notes

Internal accuracy log for the marketing/GEO pages. Not linked from the site and not in the sitemap.

---

## Standing rule — coverage claims decay

Manufacturer warranty extensions are stated as **N years from the original purchase date**, which means a claim that was accurate when a page was written goes false on a fixed schedule. Any sentence containing **"covered," "extended warranty,"** or a **year/mileage coverage figure** must carry an explicit expiry and be re-audited annually.

- **Safety recalls** are the exception — they never expire and the remedy stays free. Phrase as "check whether recall X has been performed," never "you're covered."
- **Warranty / TSB extensions** expire (usually N years from original purchase). State the window AND whether it has closed for this model year.
- **Class-action settlements** sit in between — read the condition attached. The Hyundai **Theta II** settlement, for example, is a **lifetime short-block warranty that transfers to subsequent owners**, but only where the **KSDS software update** has been installed. No KSDS, no coverage.

Found 2026-08: three live pages (2016 Civic A/C condenser + 1.5T oil-dilution note, 2015 Outback CVT extension) described lapsed coverage as active. Root cause was elapsed time, not a research error.

---

## Correction log

### 2026-08-06 — coverage-decay + precision pass
Source: independent web-sourced verification pass (app-build thread). `dateModified` bumped on every page below; `datePublished` left alone; FAQ JSON-LD updated to match visible text where the claim appeared in both.

- **2016 Honda Civic** — A/C condenser 10-yr-from-purchase extension has now closed on a 2016 car; reworded to "the bill is yours." 1.5T oil-dilution extension noted as lapsed. Refrigerant kept as cost context, not cause (cause is the manufacturing defect).
- **2015 Subaru Outback 2.5i** — CVT 10-yr/100k extension (2010–2015 Legacy/Outback) has run out on a 2015; reworded from "check whether it still applies" to "you're the warranty now."
- **2015 Hyundai Santa Fe Sport** — surfaced the still-live **lifetime short-block settlement warranty** (transfers to owners, KSDS-conditional); removed language implying a 2015-specific engine *recall* (the NHTSA engine recall 17V226 is 2013–2014 only — the 2015 sits under the settlement + KSDS campaign). Verdict stays **Bad Car**. Dropped a specific settlement dollar figure to avoid a cross-page mismatch with `carey.html`.
- **2016 Jeep Wrangler Unlimited** — 3,500 lb tow rating applies to the **3.73 or 4.10** axle, not "only the 3.73."
- **2007 Range Rover Sport HSE** — scoped the BMW M62 V8 to the **2002–2005** full-size L322 (and even that went Jaguar for 2006). HSE NA 4.4 AJ-V8 output confirmed ~300 hp.
- **2012 Volvo XC60 T6** — 325 hp is the **Polestar tune**, a $1,495 option fittable to any 2011–2012 T6 AWD, not automatic on the R-Design; reworded to verify-per-car. Meta description updated to match.
- **2016 Honda CR-V (preview)** — noted the 2.4L DI oil-dilution extended-warranty coverage has lapsed on a car this age.

Verified correct as written (no change): 2015 ML350 recall 22V955, 2013 Ford Escape recall 13S12 / 2.0L coolant-intrusion alleged in class action, 2016 Audi Q3/Q5 settlements (historical), 2016 Forester & 2017 Outback previews (both already state the oil-consumption extension has lapsed).

**Open item:** `carey.html` cites the Theta II settlement as "$760 million (2020)"; the app-team brief cites "$1.3B (final approval June 2021)." Both figures circulate — reconcile to one before either is quoted with a dollar amount again.
