if [ -z $1 ];
then
  exit 1
fi
value="$1"
shift
  for i in $@;
do
  echo "$i $(grep "$i" $value -c)"
 grep -n "$i" $value | cut -d : -f 1
done