# Standardised breed mappings for Animal Management data

A collection of breeds compiled from Animal Management registration and
impound data, standardised via cleaning, fuzzy matching, and manual
correction. Breed names were not consistent across separate datasets
within the information release, so this table standardises breeds and
can be joined onto the cleaned datasets before analysis.

## Usage

``` r
breeds
```

## Format

Data frame with columns

- raw_name:

  All unique breeds from the registration and impound datasets.

- clean_name:

  raw_names that have been transformed to change the ordering from e.g.
  "Terrier, Airedale" to "Airedale Terrier".

- standardised_name:

  clean_names that have been fuzzy matched, with breeds from the
  registration dataset taking priority, and subsequently corrected
  manually.

## Source

Thomas E. Saunders, compiled from data provided by Auckland Council
Animal Management as part of an official information request
(#8140017948).
