FROM mcr.microsoft.com/dotnet/sdk:3.1
WORKDIR /app/
COPY PoojaStores /app/
RUN dotnet build
RUN dotnet publish -c Release -o out
EXPOSE 5000
ENTRYPOINT ["dotnet", "run", "--urls", "http://0.0.0.0:5000"]
