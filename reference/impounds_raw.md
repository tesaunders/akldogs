# Raw Auckland Council Animal Management dog impound data

Raw data relating to impounded dogs in Auckland as at FY 2024, provided
by Auckland Council Animal Management via a LGOIA request.

## Usage

``` r
impounds_raw
```

## Format

A dataframe with 19,699 rows and 32 columns:

- docket_id:

  Unique impound ID

- shelter:

  Shelter dog is impounded at (Henderson = HAS, Manukau = MAS,
  Silverdale = SAS)

- team:

  Animal Management field team which picked up the dog

- impound_date:

  Date the dog was impounded

- exit_date:

  Date dog left impound

- status:

  Status of dog in impound

- rfs_id:

  Request for service ID

- street:

  Street dog picked up

- suburb:

  Suburb dog picked up

- s57_type:

  Reason for pickup if under section 57 of the Dog Control Act - Dogs
  attacking persons or animals

- severity:

  0-5 scale of attack severity

- breed_1:

  Primary or first breed

- breed_2:

  Secondary or second breed

- sex:

  Dog's sex

- desexed:

  Sex of the dog

- age_appx:

  Approximate age of dog

- name:

  Dog's name

- dog_id:

  Dog ID

- classified:

  Whether the dog has a classification as menacing or dangerous

- classification_current:

  Current dog classification - dangerous or menacing

- classification_req:

- classification_new:

- classification_issued:

  Whether the dog has been issued with a new classification as a result
  of impounding

- registered:

  Whether the dog is registered

- reg_issued:

- microchipped:

  Whether the dog is microchipped

- microchip_id:

  Microchip ID number

- microchip_issued:

- known:

  Whether the dog is known to Animal Management

- euthanasia_reason:

  Reason for dog to be euthanised

- days_in_shelter:

  Number of days dog was in shelter

## Source

Auckland Council Animal Management, LGOIA request number 8140017948
