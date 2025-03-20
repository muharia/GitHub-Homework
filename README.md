# GitHub-Homework

Ez a repository egy NGINX alapú Docker image-et készít és feltölti a Docker Hub-ra automatikusan. A feltöltés automatikusan elindul, ha a fő (master) branch-re pusholunk.

## **Fájlstruktúra**

- README.md - ez a fájl, egyben a repository dokumentációja
- Dockerfile - a Docker image definíciója
- index.html - a weboldal kezdőoldala, amit az nginx image-be másolunk
- .github/workflows/hw-dockerhub.yml - a GitHub Actions workflow a Docker build és push automatizálására

## **Használat**

### **Előfeltételek**

- Git megléte
- Docker megléte

### **Repository klónozása**

- Klónozzuk a repository-t

```bash
git clone https://github.com/muharia/GitHub-Homework.git
```

- lépjünk be a letöltött könyvtárba

```bash
cd GitHub-Homework
```

### **Docker image készítése és futtatása**

- Docker segítségével építsük fel az image-et

```bash
docker build -t homework:latest .
```

- Diocker segítségével indítsuk el az elkészült image-et a 80-as port átirányításával

```bash
docker run -p 80:80 homework:latest
```

Majd nyisd meg a böngészőben: http://localhost
