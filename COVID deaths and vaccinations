SELECT	 *
FROM PortfolioProject..CovidDeaths 
WHERE continent is not null
ORDER BY 3,4

--SELECT	 *
--FROM PortfolioProject..CovidVaccinations
--ORDER BY 3,4

--Select Data that we are going to be using 

SELECT Location, date, total_cases, new_cases, total_deaths, population
FROM PortfolioProject..CovidDeaths 
ORDER BY 3,4

-- Looking at Total Cases vs Total Deaths 
-- Shows likelihood of dying if you contract Covid in your country

SELECT Location, date, total_cases, total_deaths,(total_deaths/total_cases) *100 AS DeathPercentage
FROM PortfolioProject..CovidDeaths 
WHERE location like'%states%'
ORDER BY 1,2



--Looking at Total Cases vs Population
--Shows what percentage of population got Covid 

SELECT Location, date, Population, total_cases, (total_deaths/population)*100 AS PercentPopulationInfected
FROM PortfolioProject..CovidDeaths 
WHERE location like'%states%'
ORDER BY 1,2

--Looking at countries with highest infection rate compared to population

SELECT Location, Population, MAX(total_cases) AS HighestInfectionCount , MAX((total_deaths/population))*100 AS PercentPopulationInfected
FROM PortfolioProject..CovidDeaths 
GROUP BY Location, Population
ORDER BY PercentPopulationInfected desc


--Showing countries with highest death count per population

SELECT Location, MAX(cast(total_deaths as int)) AS TotalDeathCount
FROM PortfolioProject..CovidDeaths 
WHERE continent is not null
GROUP BY Location
ORDER BY TotalDeathCount desc


-- Breaking things down by continent 
-- Showing the continents with the highest death count 

SELECT continent, MAX(cast(total_deaths as int)) AS TotalDeathCount
FROM PortfolioProject..CovidDeaths 
WHERE continent is not null
GROUP BY continent
ORDER BY TotalDeathCount desc


-- Global Numbers

SELECT  date, SUM(new_cases)AS total_cases, SUM(cast(new_deaths as int))AS total_deaths, SUM(cast(new_deaths AS INT))/SUM(New_Cases)*100 AS DeathPercentage
FROM PortfolioProject..CovidDeaths 
WHERE continent is not null
GROUP BY date
ORDER BY 1,2



--Looking at total population vs vaccinations 

SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
SUM(CONVERT(INT, vac.new_vaccinations )) OVER(PARTITION BY dea.location ORDER BY dea.location, dea.date)
AS RollingPeopleVaccinated
FROM PortfolioProject..CovidDeaths dea
JOIN PortfolioProject..CovidVaccinations vac
	ON dea.location = vac.location
	AND dea.date = vac.date 
WHERE dea.continent is not null
ORDER BY 2,3

WITH PopsvsVac (Continent, Location, Date, Population, New_Vaccinations, RollingPeopleVaccinated)
AS
(
SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
SUM(CONVERT(INT, vac.new_vaccinations )) OVER(PARTITION BY dea.location ORDER BY dea.location, dea.date)
AS RollingPeopleVaccinated
FROM PortfolioProject..CovidDeaths dea
JOIN PortfolioProject..CovidVaccinations vac
	ON dea.location = vac.location
	AND dea.date = vac.date 
WHERE dea.continent is not null
)
SELECT *, (RollingPeopleVaccinated/Population)*100
FROM PopsvsVac



-- Temp Table

DROP TABLE if exists #PercentPopulationVaccinated
CREATE TABLE #PercentPopulationVaccinated
(
Continent NVARCHAR(255),
Location NVARCHAR(255),
Date DATETIME, 
Population NUMERIC, 
New_Vaccinations NUMERIC,
RollingPeopleVaccinated NUMERIC
)


INSERT INTO #PercentPopulationVaccinated
SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
SUM(CONVERT(INT, vac.new_vaccinations )) OVER(PARTITION BY dea.location ORDER BY dea.location, dea.date)
AS RollingPeopleVaccinated
FROM PortfolioProject..CovidDeaths dea
JOIN PortfolioProject..CovidVaccinations vac
	ON dea.location = vac.location
	AND dea.date = vac.date 
WHERE dea.continent is not null


SELECT *, (RollingPeopleVaccinated/Population)*100
FROM #PercentPopulationVaccinated



--Creating View to store data for later visualizations

CREATE VIEW PercentPopulationVaccinated AS
SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
SUM(CONVERT(INT, vac.new_vaccinations )) OVER(PARTITION BY dea.location ORDER BY dea.location, dea.date)
AS RollingPeopleVaccinated
FROM PortfolioProject..CovidDeaths dea
JOIN PortfolioProject..CovidVaccinations vac
	ON dea.location = vac.location
	AND dea.date = vac.date 
WHERE dea.continent is not null



SELECT *
FROM PercentPopulationVaccinated 

