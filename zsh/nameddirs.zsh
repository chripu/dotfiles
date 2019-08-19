typeset -A NAMED_DIRS

NAMED_DIRS=(
  dev       ~/Development/Repositories
  pbyde     ~/Development/Repositories/pby_playboyde
  pbypp     ~/Development/Repositories/pby_playboypremium
  pbyte     ~/Development/Repositories/pby_tabletedition
  pbypc     ~/Development/Repositories/pby_playmatecasting
  pbynl     ~/Development/Repositories/pby_newsletter
  pbytools  ~/Development/Repositories/pby_tools
  hbmlc     ~/Development/Repositories/hbm_lottery_calendar
  hbmep     ~/Development/Repositories/hbm_epaper
  hbmpp     ~/Development/Repositories/hbm_privacy
  hbmlp     ~/Development/Repositories/hbm_legal
  hbmin     ~/Development/Repositories/hbm_invitations
  cinde     ~/Development/Repositories/cin_cms_thunder
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
