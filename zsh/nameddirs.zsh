typeset -A NAMED_DIRS

NAMED_DIRS=(
  dev       ~/Development/Repositories
  cinde     ~/Development/Repositories/burdanews/cin_cms_thunder
  foclp     ~/Development/Repositories/burdanews/foc_landingpage
  pbyde     ~/Development/Repositories/burdanews/pby_playboyde
  pbypp     ~/Development/Repositories/burdanews/pby_playboypremium
  pbyte     ~/Development/Repositories/burdanews/pby_tabletedition
  pbypc     ~/Development/Repositories/burdanews/pby_playmatecasting
  pbynl     ~/Development/Repositories/burdanews/pby_newsletter
  pbytools  ~/Development/Repositories/burdanews/pby_tools
  hbmlc     ~/Development/Repositories/burdanews/hbm_lottery_calendar
  hbmep     ~/Development/Repositories/burdanews/hbm_epaper
  hbmep2    ~/Development/Repositories/burdadirect/hbm-epaper
  hbmpp     ~/Development/Repositories/burdadirect/hbm-privacy
  hbmlp     ~/Development/Repositories/burdadirect/hbm-legal
  hbmin     ~/Development/Repositories/burdadirect/hbm-events
  hbmeb     ~/Development/Repositories/burdadirect/hbm-events
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
