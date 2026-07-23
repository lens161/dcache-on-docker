# sudo umount /mnt/dcache-main 2>/dev/null
# sudo umount /mnt/dcache-remote 2>/dev/null

cd "$(dirname "$0")/main" && docker compose down
cd "../remote" && docker compose down
cd "../infra" && docker compose down
cd "../core" && docker compose down
