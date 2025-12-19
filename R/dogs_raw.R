#' Raw Auckland Council Animal Management dog population data
#'
#' Raw data relating to the Auckland dog population as at FY 2025, provided by Auckland Council Animal Management via a LGOIA request.
#'
#' @format A dataframe with 131,132 rows and 14 columns:
#' \describe{
#'   \item{id}{Unique dog ID}
#'   \item{owner_reg}{Whether the dog is registered under a special condition such as RDOL or Super Gold Card discount} 
#'   \item{name}{Dog's name}
#'   \item{last_registered}{Year the dog was last registered}
#'   \item{breed_1}{Primary or first breed}
#'   \item{breed_2}{Secondary or second breed}
#'   \item{sex}{Dog's sex}
#'   \item{dob}{Dog's date of birth}
#'   \item{age_group}{Sex of the dog}
#'   \item{desexed}{Sex of the dog}
#'   \item{classification_owner}{Whether the owner is probationary or disqualified}
#'   \item{classification}{Whether the dog is classifed as menacing or dangerous}
#'   \item{suburb}{Suburb dog resgistered in}
#'   \item{area}{Area dog registered in}
#' }
#' @source Auckland Council Animal Management, LGOIA request number 8140017948
"dogs_raw"