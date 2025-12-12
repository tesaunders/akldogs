# akldogs

This package contains data taken from Auckland Council’s annual Animal
Management reports relating to dogs and their management in Auckland,
and provides the following data tables:

- `dogs`: the Auckland dog population
- `owners`: Auckland dog owners
- `enforcement`: compliance and enforcement activities
- `impounds`: outcomes of dogs entering shelters
- `service`: Animal Management requests for service

## Installation

You can install akldogs from [GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("tesaunders/akldogs")
```

## Data

Data in this package is sourced from Auckland Council Animal Management
[annual
reports](https://www.aucklandcouncil.govt.nz/en/plans-policies-bylaws-reports-projects/our-policies/policy-on-dogs.html).
This package contains the most relevant data for looking at dog control
activities, so some data from these reports have been omitted. Animal
Management has changed the way they report data in their reports over
time, and other data is missing from earlier reports, so please note the
following:

- A reduction in the known dog population from FY2017 to FY2018 is
  likely due to the removal of duplicate entries in the Auckland Council
  database.
- Where percentages are given instead of whole numbers, the numbers have
  been derived from the proportions and given to the nearest whole
  number, as is the case with some desexing data.
- Some data which is reported as split between multiple categories has
  been combined, as is the case with some desexing data, figures for
  roaming dogs, and figures for dog attacks on animals and stock.
- Numbers of Responsible Dog Owner Licence (RDOL) holders relates to
  owners, not the number of dogs which are registered to an owner
  holding a RDOL.
- The ‘unregistered dog’ data in `enforcement` can include proactive
  work, rather than just requests for service.
- ‘East’ team was added to the requests for service data from 2024, and
  some earlier teams were removed and the numbers added to ‘other’
  categories for the two priority types between FY2015-FY2017 and
  FY2021-FY2022.

## Data licencing

The data provided in Auckland Council reports is subject to the
following [copyright
provisions](https://www.aucklandcouncil.govt.nz/en/terms-and-conditions.html):

You are permitted to access, view, print, and copy the material for
non-commercial personal or internal business purposes. You may also
reproduce material free of charge and without further permission, so
long as you:

- do so for informational purposes
- reproduce it accurately
- do not use it in a misleading or derogatory context
- acknowledge that the information is sourced from Auckland Council and
  is subject to copyright.

You are not permitted to copy and sell or exploit for commercial
purposes, any material.
