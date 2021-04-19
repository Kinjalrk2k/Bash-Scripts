function cdto() {
  path_mf="${1//'\'/"/"}"

  drive=${path_mf:0:1}
  drive="$(tr [A-Z] [a-z] <<< "$drive")"

  len=${#path_mf}
  len=$(($len-3))

  cdPath="${path_mf:3:$len}"

  echo "Moving to... "/mnt/$drive/$cdPath""

  cd "/mnt/$drive/$cdPath"
}
