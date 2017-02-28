
# Webscraping homework

## My favorite fish

### *Colpichthys hubbsi*



```python
import urllib.request
import json
api_url = "https://fishbase.ropensci.org/species/?genus=Colpichthys&species=hubbsi"

raw_json = urllib.request.urlopen(api_url)
decoded_json = raw_json.read().decode('utf-8')
parsed_json = json.loads(decoded_json) ## we use the json.load method directly
raw_json.close()

parsed_json["data"][0]["Comments"]

```




    'Found on sandy and muddy bottoms of coastal areas, estuaries and lagoons (Ref. 9273).  Adults feed on crustaceans, gastropods, and may take in sand (Ref. 9273).'




```python
parsed_json["data"][0]["Dangerous"]
```




    'harmless'




```python
parsed_json["data"][0]["Subfamily"]
```




    'Atherinopsinae'



### Two pieces of info
*Colpichthys hubbsi* is a harmless fish found in coastal areas, esturies and lagoons. It belongs to the subfamily Atherinopsinae.



### *Lepisosteus oculatus*



```python
api_url = "https://fishbase.ropensci.org/species/?genus=Lepisosteus&species=oculatus"

raw_json = urllib.request.urlopen(api_url)
decoded_json = raw_json.read().decode('utf-8')
parsed_json = json.loads(decoded_json) ## we use the json.load method directly
raw_json.close()

parsed_json["data"][0]["Comments"]
```




    'Adults occur in quiet, clear pools and backwaters of lowland creeks, small to large rivers, oxbow lakes, swamps and sloughs.  Occasionally enter brackish waters.  A voracious predator feeding on various kinds of fishes and crustaceans.'




```python
parsed_json["data"][0]["Dangerous"]
```




    'harmless'




```python
parsed_json["data"][0]["CommonLength"]
```




    100.0



### Two pieces of info
*Lepisosteus oculatus* (the spotted gar) is a harmless fish that lives in quiet, fresh water rivers, creeks, and swamps. It is commonly found to be 100cm long.
