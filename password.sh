for i in {1..100}; do
  echo "$(openssl rand -hex 16)" >> passwords.sh
done
