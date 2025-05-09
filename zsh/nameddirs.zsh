typeset -A NAMED_DIRS

NAMED_DIRS=(
  dev       ~/Development/Repositories
  bn        ~/Development/Repositories/burdanews
  bd        ~/Development/Repositories/burdadirect
  foclp     ~/Development/Repositories/burdadirect/foc-landingpage
  hbmlc     ~/Development/Repositories/burdadirect/hbm-lottery-calendar
  hbmep     ~/Development/Repositories/burdadirect/hbm-epaper
  hbmpp     ~/Development/Repositories/burdadirect/hbm-privacy
  hbmps     ~/Development/Repositories/burdadirect/hbm-phone-services
  hbmdc     ~/Development/Repositories/burdadirect/hbm-data-catalog
  hbmlp     ~/Development/Repositories/burdadirect/hbm-legal
  grtlp     ~/Development/Repositories/burdadirect/hbm-legal
  hbmin     ~/Development/Repositories/burdadirect/hbm-events
  hbmev     ~/Development/Repositories/burdadirect/hbm-events
  hbmlg     ~/Development/Repositories/burdadirect/hbm-leadgen
  hbmlgl    ~/Development/Repositories/burdadirect/hbm-leadgen-lambda
  hbmrc     ~/Development/Repositories/burdadirect/hbm-radas-core
  hbmsp     ~/Development/Repositories/burdadirect/hbm-service-pages
  pplp      ~/Development/Repositories/burdadirect/pp-paketplus-landingpage
  paclp     ~/Development/Repositories/burdadirect/pp-pacvertise-landingpage
)

for key in ${(k)NAMED_DIRS}
do
  if [[ -d ${NAMED_DIRS[$key]} ]]; then
    export $key=${NAMED_DIRS[$key]}
  else
    unset "NAMED_DIRS[$key]"
  fi
done

function lsdirs () {
  for key in ${(k)NAMED_DIRS}
  do
    printf "%-10s %s\n" $key  ${NAMED_DIRS[$key]}
  done
}
