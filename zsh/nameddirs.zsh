typeset -A NAMED_DIRS

NAMED_DIRS=(
  dev       ~/Development/Repositories
  pbyde     ~/Development/Repositories/pby_playboyde
  pbypp     ~/Development/Repositories/pby_playboyplus
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
