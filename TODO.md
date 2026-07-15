# TODO — openapi_retrofit_generator

Repo follow-ups. Date every item (`Created YYYY-MM-DD`, bump `Updated` when touched);
record where an item landed (PR + merge) before pruning it.

- [ ] **Batch the e2e suite into one build_runner invocation.** (Created 2026-07-15.)
  Today every e2e case runs its own `dart run build_runner build` against a scratch
  project whose `lib/` is wiped between cases, so the suite pays the cold-start tax
  (build system boot + analyzer element model for the SDK and all deps) ~80×; the
  actual codegen work per case is small in comparison. Batching plan:
  - Generate every case into its own subfolder (`lib/<case>/<serializer>/…`) instead
    of wiping a shared `lib/`, run **one** `build_runner build` over the whole tree,
    then one `dart analyze`, and keep the per-case golden comparison as pure file
    diffs (restructure the harness from "each test generates+builds" to a
    suite-level `setUpAll` that generates+builds everything, with per-case
    compare-only tests).
  - Error attribution still works — build/analyzer error paths contain the case
    folder — but a hard build_runner crash (as opposed to per-library generator
    errors, which build_runner reports and continues past) blocks all cases at
    once, so surface the raw build output on failure.
  - Builds on the freezed-only default: the suite already runs just the serializers
    in `e2eSerializers` (`test/test_utils.dart`, `E2E_SERIALIZERS` env override).
  Expected payoff: e2e wall-clock drops from ~an hour to minutes.
