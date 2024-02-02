<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis maxScale="0" version="3.8.3-Zanzibar" minScale="1e+08" styleCategories="AllStyleCategories" hasScaleBasedVisibilityFlag="0">
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
    <rasterrenderer opacity="1" alphaBand="-1" band="1" type="paletted">
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
        <paletteEntry color="#fdccb8" value="1" alpha="255" label="1"/>
        <paletteEntry color="#fc8f6f" value="2" alpha="255" label="2"/>
        <paletteEntry color="#f44d37" value="3" alpha="255" label="3"/>
        <paletteEntry color="#c5161b" value="4" alpha="255" label="4"/>
        <paletteEntry color="#ffffff" value="5" alpha="255" label="5"/>
      </colorPalette>
      <colorramp name="[source]" type="gradient">
        <prop v="255,245,240,255" k="color1"/>
        <prop v="103,0,13,255" k="color2"/>
        <prop v="0" k="discrete"/>
        <prop v="gradient" k="rampType"/>
        <prop v="0.13;254,224,210,255:0.26;252,187,161,255:0.39;252,146,114,255:0.52;251,106,74,255:0.65;239,59,44,255:0.78;203,24,29,255:0.9;165,15,21,255" k="stops"/>
      </colorramp>
    </rasterrenderer>
    <brightnesscontrast brightness="0" contrast="0"/>
    <huesaturation saturation="0" grayscaleMode="0" colorizeBlue="128" colorizeGreen="128" colorizeStrength="100" colorizeOn="0" colorizeRed="255"/>
    <rasterresampler maxOversampling="2"/>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
