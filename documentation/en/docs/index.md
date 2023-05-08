## Introduction

Welcome to the **Météo-France models on AWS** project.

This project is brought to you by Nicolas Baldeck and the [AWS Public Dataset Program](https://aws.amazon.com/opendata/public-datasets/).

**I serve Météo-France models data from high-performance and reliable [Amazon AWS S3](https://aws.amazon.com/s3/) hosting service.**

## Models

| Id | Name | Coverage | Grid | Doc |
| -- | ---- | -------- | ---------- | --- |
| `arome-france` | AROME | France + neighborhood | 0.025° (~2.5km) | [🔗 ](models/arome-france.md)
| `arome-france-hd` | AROME | France + neighborhood | 0.01° (~1.5km) | [🔗 ](models/arome-france-hd.md)
| `arpege-europe` | ARPEGE | Europe | 0.1° (~11km) | [🔗 ](models/arpege-europe.md)
| `arpege-world` | ARPEGE | Global | 0.5° (~55km) | [🔗 ](models/arpege-world.md)

## Available datasets

### 📂 [Browse the datasets](/)

### Original files − v1

* The original untouched files from Météo-France servers
* Downloaded with high-speed and redundant servers network
* Checked for completness and corruption
* Hosted on high-performance S3

[See documentation for v1](datasets/v1.md)


## Why

In July of 2015, Météo-France (MF) did open access to a part of it's Numerical Weather Prediction (NWP) models data.
This was a real breaktrough.

Since then, the data is officialy disseminated through MF data portal <https://donneespubliques.meteofrance.fr/>

Unfortunately, the official MF data portal is not keeping up with the load. Users are reporting issues gconsoleetting the data in a timely and reliable manner. This prevents the use of MF data on a large scale. [See testimonials](issue-testimonials.md).

I do think that MF models data are high-quality and high-interests datasets.

**I do support MF efforts to make it's data public, and want to bring our help to disseminate and enable reuse of the data in an efficient and easy way.**

That is why I developped this service enabling easy access to MF models data.

## Licence

**Both original and new data are Licensed under [French Government Open Licence](license.md)**

This work is based on open-data from Météo-France, but I am not affiliated or endorsed by Météo-France by any way.

## Updates notifications

As far as possible, my policy is to notify you in advance in the case of any event that might affect your systems.

News, updates and changes notices are published on the <br>
[mf-models-users newsletter](https://www.freelists.org/list/mf-models-users)

**I strongly recommend you to subscribe to this newsletter in order to receive notifications.**

## Availability and SLA

I aim to provide a service with industry-grade reliability.

**HOWEVER THIS SERVICE IS THE PERSONNAL PROJECT OF A SINGLE INDIVIDUAL, PROVIDED ON A BEST EFFORT BASIS WITHOUT ANY WARANTEE. IT MAY BE SUBJECT TO OUTAGES WITHOUT PRIOR NOTIFICATION.**

My systems are fully monitored with immediate email and SMS alert in case of a problem.

I am still dependent on Meteo-France servers. So if Meteo-France servers go down, there is nothing I can do. However, you will also face this problem if you download the data directly from Meteo-France servers.