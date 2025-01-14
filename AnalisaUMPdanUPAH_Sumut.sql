Select *
From PortofolioProjects..ump

Select *
From PortofolioProjects..upah

--ANALISA PERTUMBUHAN KENAIKAN UPAH DI SUMATERA UTARA TIAP TAHUNNYA (2015-2022)

SELECT 
  Provinsi,
  ROUND(((upah#2016 - upah#2015) / upah#2015) * 100, 2) AS Kenaikan_2016,
  ROUND(((upah#2017 - upah#2016) / upah#2016) * 100, 2) AS Kenaikan_2017,
  ROUND(((upah#2018 - upah#2017) / upah#2017) * 100, 2) AS Kenaikan_2018,
  ROUND(((upah#2019 - upah#2018) / upah#2018) * 100, 2) AS Kenaikan_2019,
  ROUND(((upah#2020 - upah#2019) / upah#2019) * 100, 2) AS Kenaikan_2020,
  ROUND(((upah#2021 - upah#2020) / upah#2020) * 100, 2) AS Kenaikan_2021,
  ROUND(((upah#2022 - upah#2021) / upah#2021) * 100, 2) AS Kenaikan_2022
FROM PortofolioProjects..upah
WHERE 
  Provinsi = 'SUMATERA UTARA';


--ANALISA PERTIUMBUHAN UMP DARI TAHUN KE TAHUN
SELECT 
  Provinsi,
  ROUND(((ump#2016 - ump#2015) / ump#2015) * 100, 2) AS Kenaikan_UMP_2016,
  ROUND(((ump#2017 - ump#2016) / ump#2016) * 100, 2) AS Kenaikan_UMP_2017,
  ROUND(((ump#2018 - ump#2017) / ump#2017) * 100, 2) AS Kenaikan_UMP_2018,
  ROUND(((ump#2019 - ump#2018) / ump#2018) * 100, 2) AS Kenaikan_UMP_2019,
  ROUND(((ump#2020 - ump#2019) / ump#2019) * 100, 2) AS Kenaikan_UMP_2020,
  ROUND(((ump#2021 - ump#2020) / ump#2020) * 100, 2) AS Kenaikan_UMP_2021,
  ROUND(((ump#2022 - ump#2021) / ump#2021) * 100, 2) AS Kenaikan_UMP_2022
FROM PortofolioProjects..ump
WHERE 
  Provinsi = 'SUMATERA UTARA';


-- Analisis Gap antara UMP dan Upah Aktual (dengan konversi upah per jam ke bulanan (173.2 jam)
SELECT 
    u.Provinsi,
    (u.upah#2015 * 173.2) - p.ump#2015 AS Gap_2015,
    ROUND((((u.upah#2015 * 173.2) - p.ump#2015) / p.ump#2015 * 100), 2) AS Gap_Persen_2015,
    (u.upah#2016 * 173.2) - p.ump#2016 AS Gap_2016,
    ROUND((((u.upah#2016 * 173.2) - p.ump#2016) / p.ump#2016 * 100), 2) AS Gap_Persen_2016,
    (u.upah#2017 * 173.2) - p.ump#2017 AS Gap_2017,
    ROUND((((u.upah#2017 * 173.2) - p.ump#2017) / p.ump#2017 * 100), 2) AS Gap_Persen_2017,
    (u.upah#2018 * 173.2) - p.ump#2018 AS Gap_2018,
    ROUND((((u.upah#2018 * 173.2) - p.ump#2018) / p.ump#2018 * 100), 2) AS Gap_Persen_2018,
    (u.upah#2019 * 173.2) - p.ump#2019 AS Gap_2019,
    ROUND((((u.upah#2019 * 173.2) - p.ump#2019) / p.ump#2019 * 100), 2) AS Gap_Persen_2019,
    (u.upah#2020 * 173.2) - p.ump#2020 AS Gap_2020,
    ROUND((((u.upah#2020 * 173.2) - p.ump#2020) / p.ump#2020 * 100), 2) AS Gap_Persen_2020,
    (u.upah#2021 * 173.2) - p.ump#2021 AS Gap_2021,
    ROUND((((u.upah#2021 * 173.2) - p.ump#2021) / p.ump#2021 * 100), 2) AS Gap_Persen_2021,
    (u.upah#2022 * 173.2) - p.ump#2022 AS Gap_2022,
    ROUND((((u.upah#2022 * 173.2) - p.ump#2022) / p.ump#2022 * 100), 2) AS Gap_Persen_2022
FROM PortofolioProjects..upah AS u
JOIN PortofolioProjects..ump AS p ON u.Provinsi = p.Provinsi
WHERE u.Provinsi = 'SUMATERA UTARA';

-- Membandingkan GAP Upah dan UMP dengan provinsi lain
SELECT 
    u.Provinsi,
    ROUND(AVG(((u.upah#2015 * 173.2) - p.ump#2015) / p.ump#2015 * 100), 2) AS Avg_Gap_Persen_2015,
    ROUND(AVG(((u.upah#2016 * 173.2) - p.ump#2016) / p.ump#2016 * 100), 2) AS Avg_Gap_Persen_2016,
    ROUND(AVG(((u.upah#2017 * 173.2) - p.ump#2017) / p.ump#2017 * 100), 2) AS Avg_Gap_Persen_2017,
    ROUND(AVG(((u.upah#2018 * 173.2) - p.ump#2018) / p.ump#2018 * 100), 2) AS Avg_Gap_Persen_2018,
    ROUND(AVG(((u.upah#2019 * 173.2) - p.ump#2019) / p.ump#2019 * 100), 2) AS Avg_Gap_Persen_2019,
    ROUND(AVG(((u.upah#2020 * 173.2) - p.ump#2020) / p.ump#2020 * 100), 2) AS Avg_Gap_Persen_2020,
    ROUND(AVG(((u.upah#2021 * 173.2) - p.ump#2021) / p.ump#2021 * 100), 2) AS Avg_Gap_Persen_2021,
    ROUND(AVG(((u.upah#2022 * 173.2) - p.ump#2022) / p.ump#2022 * 100), 2) AS Avg_Gap_Persen_2022
FROM PortofolioProjects..upah AS u
JOIN PortofolioProjects..ump AS p ON u.Provinsi = p.Provinsi
GROUP BY u.Provinsi;

