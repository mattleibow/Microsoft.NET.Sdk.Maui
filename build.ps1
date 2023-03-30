# remove things from the cache
Remove-Item -recurse -force packages\microsoft.net.sdk.maui

# pack the new SDK
dotnet pack source

# build the app
dotnet build sample /bl
