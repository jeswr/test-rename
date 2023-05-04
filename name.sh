name="chore(deps): bump swipl-wasm from 3.2.2 to 3.3.0"

versions=$(echo -ne $name | perl -wnE'say for/[0-9]+.[0-9]+.[0-9]+/g')

echo $versions

if   [ ! ${before[0]} == ${after[0]} ]; then
  version="BREAKING CHANGE"
  branchHead="breaking"
elif [ ! ${before[1]} == ${after[1]} ]; then
  version="feat"
  branchHead="feat"
elif [ ! ${before[2]} == ${after[2]} ]; then
  version="fix"
  branchHead="fix"
fi
