FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /app
COPY poojastores/trunk/*.csproj ./
RUN dotnet restore
COPY poojastores/trunk/ ./
RUN dotnet publish -c Release -o out
FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS runtime
WORKDIR /app
COPY --from=build /app/out ./
ENTRYPOINT ["dotnet", "poojastores.dll"]
