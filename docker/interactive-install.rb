require "readline"

@app_path = "App"

@arguments = [
  '--skip-bundle'
].join(' ')

# Install middleman
system("middleman init #{@app_path} #{@arguments}")

# Copy the docker files
system("rsync -a /usr/src/App-Template/ /usr/src/app/#{@app_path}/")

# Copy sample files
system("cp -ra /usr/src/App-Template/.env.sample /usr/src/app/#{@app_path}/.env")
