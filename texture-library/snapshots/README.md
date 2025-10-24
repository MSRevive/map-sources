# How Map Reports Are Generated

You don't have to follow this exact process, I'm mostly just documenting it for myself and to store the regex.

## Tools Used

| Tool Name | Release Page |
| :-- | :-- |
| HalfLife.UnifiedSdk.MapDecompiler | [https://github.com/twhl-community/HalfLife.UnifiedSdk.MapDecompiler](https://github.com/twhl-community/HalfLife.UnifiedSdk.MapDecompiler/releases/latest) |
| resguy | [https://github.com/wootguy/resguy](https://github.com/wootguy/resguy/releases/latest) |
| Wally | [https://github.com/Ty-Matthews-VisualStudio/Wally](https://github.com/Ty-Matthews-VisualStudio/Wally/releases/latest) |

## Table of contents

[1. Generate A Resource File](#1-generate-a-resource-file)

[2. Decompile The .BSP](#2-decompile-the-bsp)

[3. Extract Embedded Textures](#3-extract-embedded-textures)

[4. Clean The Output](#4-clean-the-output)

---

## 1. Generate A Resource File

1. Generate a `.res` using [resguy](https://github.com/wootguy/resguy/releases/latest) and rename it to `mapname.md`

2. This lists all the game assets used in the map including any `mapname.wad` texture libraries that aren't embedded and creates a good starting point for the report.

## 2. Decompile The .BSP

1. Decompile the `mapname.bsp` using [HalfLife.UnifiedSdk.MapDecompiler](https://github.com/twhl-community/HalfLife.UnifiedSdk.MapDecompiler/releases/latest) and put it in it's own folder.

2. This creates a `mapname_generated.wad` of all the embedded textures we can use as a reference to verify usage and identify any variations.

## 3. Extract Embedded Textures

1. Open `mapname_generated.wad` in [Wally](https://github.com/Ty-Matthews-VisualStudio/Wally/releases/latest)

2. Click the `[…]` button next to the image list to select all textures.

3. Select `Package → Export Selected` from the file menu. 

> [!IMPORTANT]
> Ensure `Display summary when finished` is checked :white_check_mark:.

> [!NOTE]
> This allows us to …
 > - Export all the map's included textures into a directory where we can compare and document any variation from Master Sword's shared `.wad` textures.
 > - Generate a list of textures we can include in the report.

4. When the export is complete, highlight the entire contents of `Export Summary` window (unfortunately a manual process as you cannot Ctrl + A) and copy all the text. (**See the example below**).

**Example Output**

```

Export !tex1 --> !tex1.bmp
 === OK ===

Export -0~tex2 --> -0~tex2.bmp
 === OK ===
 
Export {tex3 --> {tex3.bmp
 === OK ===

```

5. Paste the output at the end of the `mapname.res` file.

### 4. Clean The Output

To clean up the text, use `Ctrl + H` / `Replace All`.

> [!IMPORTANT]
> Ensure `Use Regular Expression` is the only option checked.

Copy-paste these into their respective fields.

### Find
<div style="text-align: right">Click to copy ↓</div>

```regex
Export\s+(\S+)[\s\S]*?=== OK ===\n?
```

#### `Replace` 
<div style="text-align: right">Click to copy ↓</div>

```regex
$1
```

> [!NOTE]
> The regex accounts for any special characters in the texture name

