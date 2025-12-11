#' Auckland Council Animal Management service data 
#'
#' Data relating to requests for service from Auckland Council Animal Management annual reports.
#'
#' @format A dataframe with 12 rows and 23 columns:
#' \describe{
#'   \item{year}{Financial year data was reported}
#'   \item{p1_central}{Priority 1 requests for service completed in the central region}
#'   \item{p1_north}{Priority 1 requests for service completed in the northern region}
#'   \item{p1_south}{Priority 1 requests for service completed in the southern region}
#'   \item{p1_west}{Priority 1 requests for service completed in the western region}
#'   \item{p1_east}{Priority 1 requests for service completed in the eastern region}
#'   \item{p1_other}{Priority 1 requests for service completed in other regions}
#'   \item{p2_central}{Priority 2 requests for service completed in the central region}
#'   \item{p2_north}{Priority 2 requests for service completed in the northern region}
#'   \item{p2_south}{Priority 2 requests for service completed in the southern region}
#'   \item{p2_west}{Priority 2 requests for service completed in the western region}
#'   \item{p2_east}{Priority 2 requests for service completed in the eastern region}
#'   \item{p2_other}{Priority 2 requests for service completed in other regions}
#'   \item{agg_animals}{Requests relating to dogs being aggressive to animals}
#'   \item{agg_people}{Requests relating to dogs being aggressive to people}
#'   \item{attack_animals}{Requests relating to a dog attack against an animal}
#'   \item{attack_people}{Requests relating to a dog attack against a person}
#'   \item{barking}{Requests relating to a dog barking}
#'   \item{bylaw_breach}{Requests relating to a bylaw breach}
#'   \item{pickup_dog}{Requests relating to picking up a contained dog}
#'   \item{roaming}{Requests relating to a roaming dog}
#'   \item{unregistered_dog}{Requests relating to an unregistered dog}
#'   \item{welfare}{Requests relating to a welfare check on a dog}
#' }
#' @source \url{https://www.aucklandcouncil.govt.nz/en/plans-policies-bylaws-reports-projects/our-policies/policy-on-dogs.html}
"service"