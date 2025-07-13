# Path to the .env file
$envFile = "$PSScriptRoot\.env"

# Read the .env and correctly set environment variables
Get-Content $envFile | ForEach-Object {
    if ($_ -match "^\s*([^#][^=]+)=(.+)$") {
        $key = $matches[1].Trim()
        $value = $matches[2].Trim()
        Set-Item -Path "Env:$key" -Value $value
    }
}

# Change directory to where docker-compose.yml is located
Set-Location -Path "$PSScriptRoot"

# Start the containers with --build to rebuild the image
# (needed to install gettext for the envsubst command after downloading the original image)
docker-compose up --build -d