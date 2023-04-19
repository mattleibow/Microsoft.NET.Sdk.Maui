# remove things from the cache
Remove-Item -Recurse -Force -ErrorAction SilentlyContinue packages\microsoft.net.sdk.maui\ | Out-Null
Remove-Item -Recurse -Force -ErrorAction SilentlyContinue packages\microsoft.maui.* | Out-Null
Remove-Item -Recurse -Force -ErrorAction SilentlyContinue source\bin\ | Out-Null
Remove-Item -Recurse -Force -ErrorAction SilentlyContinue source\obj\ | Out-Null
Remove-Item -Recurse -Force -ErrorAction SilentlyContinue sample\bin\ | Out-Null
Remove-Item -Recurse -Force -ErrorAction SilentlyContinue sample\obj\ | Out-Null

# pack the new SDK
dotnet pack source

# build the app
dotnet restore sample /bl
# dotnet build sample /bl
