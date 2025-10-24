# Map Sources
These are meant to serve as a repository for the map sources and other assets for MSRebirth. We ask that you follow the license (GPL 3.0) if you plan on using these maps, models, or textures anywhere. 

On the same token, please be mindful of licensing when creating or sourcing new assets.

## Structure

```tree
📂 Map Sources (This Repo)
├── 📂 level-design
|   ├── 📂 hotfixes         - Hotfixes (Most recent being Idemark).
|   ├── 📂 map              - Contains .map files which could be real sources or just decompiled sources?
|   ├── 📂 changes          - Assuming these are 
|   ├── 📂 prefabs          - Reusable brushes, logic, etc ...
|   ├── 📂 prototypes       - Contains maps that were never released or finished.
|   ├── 📂 source           - Contains map sources. Each map source should be in it's own directory of it's own name.
|   ├── 📂 testing          - These are map sources that need to be verified and tested.
|   ├── 📂 tools            - Compiler settings.
|   └── 📂 wads             - Contains the .wad files that are used by some maps. Should probably get documented in `texture-library`.
├── 📂 models-animation
|   └── 📂 source           - 3D model source files, clean rebuilds from decompiled models, or acquired with citation and license.
└── 📂 texture-library
    └── 📂 snapshots        - Temp directory for documenting and organizing texture duplicates and variations.
```

> [!NOTE]
> Some of the sources for the map may not compile or crash, please read ``MISSING.md`` to know the maps that may not work. If you find there are any WAD files missing for the maps please let us know at our Discord or by creating a Github issue.

> [!WARNING]
> ``MISSING.md`` hasn't been updated in some time. Better to ask in Discord.

## Credits
A mostly complete list of credits can be found here: https://msrebirth.net/Project-Information/credits/#map-credits
