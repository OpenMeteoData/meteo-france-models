# Partial download

In the `Legacy − v1` dataset, multiple parameters, levels and timesteps are concatenated in the same grib file.

Partial download permits do get only the parts of the GRIB file that you need.

**Due to limitations of AWS S3 technology, you can only use partial download to download a single variable/parameter/timestep at a time**

## Inventory file

Inventory file for each grib is needed in order to do partial download.

**To get the inventory file, replace `.grib2` extension with `.inv` in the url.**

A new inventory file needs to be downloaded for each GRIB file, even if it is the same parameter but a different run or timestep.

See inventory files [examples](#example-content-of-inventory-files).

## How to?

### With get_grib.pl

#### Requirements

You need an environment that includes `perl`, `grep` and `curl`. That is already the case for most unix platforms.

Download those two scripts from [NOAA CDC ](https://www.cpc.ncep.noaa.gov/products/wesley/fast_downloading_grib.html):

 * [get_inv.pl](ftp://ftp.cpc.ncep.noaa.gov/wd51we/fast_downloading_grib/get_inv.pl)
 * [get_grib.pl](ftp://ftp.cpc.ncep.noaa.gov/wd51we/fast_downloading_grib/get_grib.pl)

#### Usage

`$ get_inv.pl {INV_URL} | grep {FILTER} | get_grib.pl {GRIB_URL} {OUTPUT}`

| Variable   | Content                            |
| ---------- | ---------------------------------- |
| {INV_URL}  | Url of the `.inv` file             |
| {FILTER}   | Grep filter for the parts you want <br>*See below* |
| {GRIB_URL} | Url of the `.grib2` file           |
| {OUTPUT}   | Path to the output `.grib2` file   |

#### Examples of {FILTER} values
* temperature:<br>
  `grep -e ':TMP:'`
* rain:<br>
  `grep -e ':RPRATE:'`
* at 2 meters AGL:<br>
  `grep -e ':2 m above ground:'`
* at 10 meters AGL:<br>
  `grep -e ':10 m above ground:'`
* at altitude 3000m:<br>
  `grep -e ':3000 m above mean sea level:'`
* at 700hPa:<br>
  `grep -e ':700 mb:'`
* at mean sea level:<br>
  `grep -e ':mean sea level:'`
* at surface:<br>
  `grep -e ':surface:'`
* all isobaric layers:<br>
  `grep -e ':[0-9]* mb:'`

You can request multiple parts at once:<br>
```
$ get_inv.pl {INV_URL} | \
  grep \
  -e ':surface:' \
  -e ':2 m above ground:' \
  -e ':700 mb:' \
  -e ':[0-9]* m above mean sea level:
  -e ... | \
  get_grib.pl {GRIB_URL} {OUTPUT}
```

## Manual method

`curl http://www.example.com/file.grib2 --range 0-50,100-150`<br>
`curl http://www.example.com/file.grib2 -H "Range: bytes=0-50, 100-150"`

...
