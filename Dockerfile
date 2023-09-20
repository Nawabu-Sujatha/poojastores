FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /app
RUN dotnet build
COPY ./app
ENTRYPOINT ["dotnet", ".dll"]
EXPOSE 5000
