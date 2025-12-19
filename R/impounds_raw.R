#' Raw Auckland Council Animal Management dog impound data
#'
#' Raw data relating to impounded dogs in Auckland as at FY 2024, provided by Auckland Council Animal Management via a LGOIA request.
#'
#' @format A dataframe with 19,699 rows and 32 columns:
#' \describe{
#'   \item{docket_id}{Unique impound ID}
#'   \item{shelter}{Shelter dog is impounded at (Henderson = HAS, Manukau = MAS, Silverdale = SAS)} 
#'   \item{team}{Animal Management field team which picked up the dog}
#'   \item{impound_date}{Date the dog was impounded}
#'   \item{exit_date}{Date dog left impound}
#'   \item{status}{Status of dog in impound}
#'   \item{rfs_id}{Request for service ID}
#'   \item{street}{Street dog picked up}
#'   \item{suburb}{Suburb dog picked up}
#'   \item{s57_type}{Reason for pickup if under section 57 of the Dog Control Act - Dogs attacking persons or animals}
#'   \item{severity}{0-5 scale of attack severity}
#'   \item{breed_1}{Primary or first breed}
#'   \item{breed_2}{Secondary or second breed}
#'   \item{sex}{Dog's sex}
#'   \item{desexed}{Sex of the dog}
#'   \item{age_appx}{Approximate age of dog}
#'   \item{name}{Dog's name}
#'   \item{dog_id}{Dog ID}
#'   \item{classified}{Whether the dog has a classification as menacing or dangerous}
#'   \item{classification_current}{Current dog classification - dangerous or menacing}
#'   \item{classification_req}{}
#'   \item{classification_new}{}
#'   \item{classification_issued}{Whether the dog has been issued with a new classification as a result of impounding}
#'   \item{registered}{Whether the dog is registered}
#'   \item{reg_issued}{}
#'   \item{microchipped}{Whether the dog is microchipped}
#'   \item{microchip_id}{Microchip ID number}
#'   \item{microchip_issued}{}
#'   \item{known}{Whether the dog is known to Animal Management}
#'   \item{euthanasia_reason}{Reason for dog to be euthanised}
#'   \item{days_in_shelter}{Number of days dog was in shelter}
#' }
#' @source Auckland Council Animal Management, LGOIA request number 8140017948
"impounds_raw"
