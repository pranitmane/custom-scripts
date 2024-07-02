#!/usr/bin/env zsh
read -p "Enter the project name: " projectName
cd ~/Desktop
mkdir "$projectName"
cd "$projectName"
npm init -y && pnpm i -D @types/node typescript
tsc --init --rootDir "./src" --outDir "./dist" --declaration true
mkdir dist src
touch src/index.ts
cat <<EOL > .gitignore
# Node modules
node_modules/

# TypeScript
*.tsbuildinfo

# Output directories
dist/

# Logs
logs/
*.log
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# Optional npm cache directory
.npm

# Optional eslint cache
.eslintcache

# Mac system files
.DS_Store
EOL
git init && git add . && git commit -m "init"
echo "Your TypeScript project '$projectName' is ready."
code .
