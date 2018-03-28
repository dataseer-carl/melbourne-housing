# Melbourne housing market
Data dictionary

| | |
|--:|:--|
| Source | [Kaggle *Melbourne Housing Market*](https://www.kaggle.com/anthonypino/melbourne-housing-market) |

> This data was scraped from publicly available results posted every week from Domain.com.au

## Fields

+ **Suburb**: Suburb
+ **Address**: Address
+ **Rooms**: Number of rooms
+ **Price**: Price in dollars
+ **Method**:
	- `PI` := property passed in;
	- `PN` := sold prior not disclosed;
	- `S` := property sold;
	- `SA` := sold after auction;
	- `SN` := sold not disclosed;
	- `SP` := property sold prior;
	- `SS` := sold after auction price not disclosed.
	- `VB` := vendor bid;
	- `W` := withdrawn prior to auction;
	- `NB` := no bid;
	- `N/A` := price or highest bid not available.
+ **Type**:
	- `h` := house,cottage,villa, semi,terrace;
	- `t` := townhouse;
	- `u` := unit, duplex;
	- `br` := bedroom(s);
	- `dev site` := development site;
	- `o res` := other residential.
+ **SellerG**: Real Estate Agent
+ **Date**: Date sold
+ **Distance**: Distance from CBD
+ **Regionname**: General Region (West, North West, North, North east ...etc)
+ **Propertycount**: Number of properties that exist in the suburb.
+ **Bedroom2** : Scraped # of Bedrooms (from different source)
+ **Bathroom**: Number of Bathrooms
+ **Car**: Number of carspots
+ **Landsize**: Land Size
+ **BuildingArea**: Building Size
+ **YearBuilt**: Year the house was built
+ **CouncilArea**: Governing council for the area
+ **Lattitude**: Self explanitory
+ **Longtitude**: Self explanitory