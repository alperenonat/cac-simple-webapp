# Gebruik een officiële Node.js-beeld als basis
FROM node:alpine

# Zet de werkdirectory in binnen de container
WORKDIR /app

# Kopieer de package.json en package-lock.json bestanden en installeer de afhankelijkheden
COPY package*.json ./
RUN npm install

# Kopieer de rest van de broncode naar de werkdirectory in de container
COPY . .

# Expose de poort waarop de app draait
EXPOSE 3000

# Start de app bij het opstarten van de container
CMD ["npm", "start"]
