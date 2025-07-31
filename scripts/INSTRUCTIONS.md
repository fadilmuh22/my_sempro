# Instruksi Deployment dengan Docker Swarm

Berikut adalah langkah-langkah untuk melakukan deployment aplikasi NestJS menggunakan Docker Swarm.

## 1. Inisialisasi Docker Swarm

Inisialisasi Swarm pada node manager:

```bash
docker swarm init
```

## 2. Deploy Aplikasi

Deploy aplikasi menggunakan file `docker-compose.yml`:

```bash
docker stack deploy -c docker-compose.yml emodu
```

## 3. Verifikasi Deployment

Lihat status service yang berjalan:

```bash
docker service ls
```

Lihat detail dari salah satu service:

```bash
docker service ps emodu_nest-app
```

## 4. Scaling Service

Untuk mengubah jumlah replika (scaling), Anda dapat mengedit file `docker-compose.yml` pada bagian `replicas` dan menjalankan kembali perintah `docker stack deploy`.

Atau, Anda dapat melakukannya secara manual dengan perintah:

```bash
docker service scale emodu_nest-app=5
```
