FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /app
RUN dotnet build
COPY ./app
ENTRYPOINT ["dotnet", "urls" ,http:/0.0.0.0.5000"]
EXPOSE 5000
