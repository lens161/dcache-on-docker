cd "$(dirname "$0")/infra" && docker compose up -d
sleep 0.5
cd "../core" && docker compose up -d
sleep 0.5
cd "../main" && docker compose up -d
sleep 0.5
cd "../remote" && docker compose up -d
sleep 0.5
cd "../client" && docker compose up -d

# echo "waiting for NFS doors to be ready..."
# while ! nc -z localhost 2049 2>/dev/null; do sleep 1; done
# while ! nc -z localhost 2149 2>/dev/null; do sleep 1; done

# sudo umount ~/mnt/dcache-main 2>/dev/null
# sudo umount ~/mnt/dcache-remote 2>/dev/null
# mkdir -p ~/mnt/dcache-main
# mkdir -p ~/mnt/dcache-remote
# sudo mount_nfs -o vers=4,port=2049,resvport localhost:/ ~/mnt/dcache-main
# sudo mount_nfs -o vers=4,port=2149,resvport localhost:/ ~/mnt/dcache-remote
# echo "mounted."