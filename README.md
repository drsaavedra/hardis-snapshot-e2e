# hardis-snapshot-e2e

Test repository for the sfdx-hardis Pull Request that creates Pull Request scratch orgs from a snapshot of their target branch (`useScratchOrgSnapshot`). The CI jobs install sfdx-hardis from the branch [`feat/scratch-org-snapshot`](https://github.com/drsaavedra/sfdx-hardis/tree/feat/scratch-org-snapshot), not from npm.

It is a throwaway: not maintained, and deleted once the Pull Request is merged.

## What is here

- The workflows are the sfdx-hardis GitHub templates from that branch, with a step that installs sfdx-hardis from it.
- The metadata is generated (`Bench1__c` to `Bench300__c`, `BenchService` classes) to time both routes at 3,651, 7,080 and 11,772 components. No customer metadata.
- Branches starting with `hub2-` use a second Dev Hub, connected with `hardis:project:configure:auth --devhub`.

## Pull Requests

Each target branch turns `useScratchOrgSnapshot` on, or leaves it off for a control. Each Pull Request is one check:

| Pull Request | What it checks |
|---|---|
| #2 to #11 | Timings: the same change against a target branch with snapshots and one without |
| #12 | A changed scratch org definition falls back to an empty org |
| #13 | A refused snapshot signup falls back to an empty org |
| #14, #15 | Deploy mode: the delta keeps to the manifest, gets the record type it depends on, and the post-deployment command result comes from the snapshot |
| #16 | A Pull Request that adds a package gets it before the delta |

To run it yourself, fork it, add the Dev Hub secrets the workflows read and set the repository variable `USE_SCRATCH_ORGS` to `true`.
