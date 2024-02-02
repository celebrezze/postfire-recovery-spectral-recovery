<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.8.3-Zanzibar" styleCategories="AllStyleCategories" minScale="1e+08" hasScaleBasedVisibilityFlag="0" maxScale="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <customproperties>
    <property value="false" key="WMSBackgroundLayer"/>
    <property value="false" key="WMSPublishDataSourceUrl"/>
    <property value="0" key="embeddedWidgets/count"/>
    <property value="Value" key="identify/format"/>
  </customproperties>
  <pipe>
    <rasterrenderer band="1" opacity="1" type="paletted" alphaBand="-1">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>None</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Estimated</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
      <colorPalette>
        <paletteEntry color="#fdccb8" alpha="255" value="1" label="1"/>
        <paletteEntry color="#fc8f6f" alpha="255" value="2" label="2"/>
        <paletteEntry color="#f44d37" alpha="255" value="3" label="3"/>
        <paletteEntry color="#c5161b" alpha="255" value="4" label="4"/>
        <paletteEntry color="#ffffff" alpha="255" value="5" label="5"/>
      </colorPalette>
      <colorramp name="[source]" type="gradient">
        <prop k="color1" v="255,245,240,255"/>
        <prop k="color2" v="103,0,13,255"/>
        <prop k="discrete" v="0"/>
        <prop k="rampType" v="gradient"/>
        <prop k="stops" v="0.13;254,224,210,255:0.26;252,187,161,255:0.39;252,146,114,255:0.52;251,106,74,255:0.65;239,59,44,255:0.78;203,24,29,255:0.9;165,15,21,255"/>
      </colorramp>
    </rasterrenderer>
    <brightnesscontrast contrast="0" brightness="0"/>
    <huesaturation saturation="0" grayscaleMode="0" colorizeStrength="100" colorizeBlue="128" colorizeGreen="128" colorizeOn="0" colorizeRed="255"/>
    <rasterresampler maxOversampling="2"/>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
