## Introduction

Welcome to the **Météo-France models on AWS** project.

This project is brought to you by [OpenMeteoData SAS](https://openmeteodata.com) and [AWS Public Dataset Program](https://aws.amazon.com/opendata/public-datasets/).

**We serve Météo-France models data from high-performance and reliable [AWS S3](https://aws.amazon.com/s3/) hosting service.**

## Models

| Id | Name | Coverage | Grid | Doc |
| -- | ---- | -------- | ---------- | --- |
| `arome-france-hd` | AROME | France + neighborhood | 0.01° (~1.5km) | [🔗 ](models/arome-france-hd.md)
| `arome-france` | AROME | France + neighborhood | 0.025° (~2.5km) | [🔗 ](models/arome-france.md)
| `arpege-europe` | ARPEGE | Europe | 0.1° (~11km) | [🔗 ](models/arpege-europe.md)
| `arpege-world` | ARPEGE | Global | 0.5° (~55km) | [🔗 ](models/arpege-world.md)


## Available datasets

### **Cloud-ready − v2**

* Our improved version of the GRIB2 files from Météo-France
* Reorganised by timestep and parameter for easier use
* Fixed GRIB2 format errors
* Hosted on high-performance S3

[See documentation for v2](datasets/v2.md)

### Legacy − v1

* The original untouched files from Météo-France servers
* Downloaded with high-speed and redundant servers network
* Checked for completness and corruption
* Hosted on high-performance S3

[See documentation for v1](datasets/v1.md)



## Why

In July of 2015, Météo-France (MF) did open access to a part of it's Numerical Weather Prediction (NWP) models data.
This was a real breaktrough.

Since then, the data is officialy disseminated through MF data portal <https://donneespubliques.meteofrance.fr/>

Unfortunately, the official MF data portal is not keeping up with the load. Users are reporting issues getting the data in a timely and reliable manner. This prevents the use of MF data on a large scale. [See testimonials](issue-testimonials.md).

We do think that MF models data are high-quality and high-interests datasets.

**We do support MF efforts to make it's data public, and want to bring our help to disseminate and enable reuse of the data in an efficient and easy way.**

That is why we developped this service enabling easy access to MF models data.

## Licence

**Both original and new data is Licensed under [French Government Open Licence](https://github.com/etalab/licence-ouverte/blob/master/open-licence.md)**

Our work is based on open-data from Météo-France, but we are not affiliated or endorsed by Météo-France.

## Updates notifications

Our policy is to notify you in advance (when possible) in the case of any event that might affect your systems.

News, updates and changes notices are published here:<br>
[https://github.com/OpenMeteoData/meteo-france-models/issues/1](https://github.com/OpenMeteoData/meteo-france-models/issues/1)

We strongly recommend you to subscribe to this thread in order to receive notifications.

## Availability and SLA

We aim to provide a service with industry-grade reliability.

**HOWEVER THIS SERVICE IS PROVIDED ON A BEST EFFORT BASIS WITHOUT ANY WARANTEE. IT MAY BE SUBJECT TO OUTAGES WITHOUT PRIOR NOTIFICATION.**

Our systems are fully monitored with immediate email and SMS alert in case of a problem, and we have several people with full access to the infrastructure if something needs to be fixed urgently.
The watch team includes Nicolas Baldeck (OpenMeteoData), Vaclav Hornik (Windguru), Christian Quest.

We are still dependent on Meteo-France servers. So if Meteo-France servers go down, there is nothing we can do. However, you will also face this problem if you download the data directly from Meteo-France servers.

**On request, we can provide commercial SLA** (including access to premium Meteo-France servers). Pricing starts at €500 / month. Contact sales@openmeteodata.com for more informations.

## Contact

data@openmeteodata.com
