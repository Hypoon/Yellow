<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.1">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="Customs">
<packages>
<package name="3X2F_1MM_SMD">
<smd name="P6" x="1.6891" y="1" dx="1.7018" dy="0.6096" layer="1"/>
<smd name="P5" x="1.6891" y="0" dx="1.7018" dy="0.6096" layer="1"/>
<smd name="P4" x="1.6891" y="-1" dx="1.7018" dy="0.6096" layer="1"/>
<smd name="P1" x="-1.6891" y="1" dx="1.7018" dy="0.6096" layer="1"/>
<smd name="P2" x="-1.6891" y="0" dx="1.7018" dy="0.6096" layer="1"/>
<smd name="P3" x="-1.6891" y="-1" dx="1.7018" dy="0.6096" layer="1"/>
<wire x1="1.6891" y1="1.1397" x2="1.6891" y2="0.8603" width="0.127" layer="51"/>
<wire x1="1.6891" y1="0.8603" x2="1.27" y2="0.8603" width="0.127" layer="51"/>
<wire x1="1.27" y1="1.1397" x2="1.6891" y2="1.1397" width="0.127" layer="51"/>
<wire x1="1.6891" y1="-0.8603" x2="1.6891" y2="-1.1397" width="0.127" layer="51"/>
<wire x1="1.6891" y1="-1.1397" x2="1.27" y2="-1.1397" width="0.127" layer="51"/>
<wire x1="1.27" y1="-0.8603" x2="1.6891" y2="-0.8603" width="0.127" layer="51"/>
<wire x1="-1.27" y1="0.8603" x2="-1.6891" y2="0.8603" width="0.127" layer="51"/>
<wire x1="-1.6891" y1="0.8603" x2="-1.6891" y2="1.1397" width="0.127" layer="51"/>
<wire x1="-1.6891" y1="1.1397" x2="-1.27" y2="1.1397" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-1.1397" x2="-1.6891" y2="-1.1397" width="0.127" layer="51"/>
<wire x1="-1.6891" y1="-1.1397" x2="-1.6891" y2="-0.8603" width="0.127" layer="51"/>
<wire x1="-1.6891" y1="-0.8603" x2="-1.27" y2="-0.8603" width="0.127" layer="51"/>
<wire x1="1.6891" y1="0.1397" x2="1.6891" y2="-0.1397" width="0.127" layer="51"/>
<wire x1="1.6891" y1="-0.1397" x2="1.27" y2="-0.1397" width="0.127" layer="51"/>
<wire x1="1.27" y1="0.1397" x2="1.6891" y2="0.1397" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-0.1397" x2="-1.6891" y2="-0.1397" width="0.127" layer="51"/>
<wire x1="-1.6891" y1="-0.1397" x2="-1.6891" y2="0.1397" width="0.127" layer="51"/>
<wire x1="-1.6891" y1="0.1397" x2="-1.27" y2="0.1397" width="0.127" layer="51"/>
<wire x1="-1.27" y1="1.8175" x2="-1.27" y2="1.1397" width="0.127" layer="51"/>
<wire x1="-1.27" y1="1.1397" x2="-1.27" y2="0.8603" width="0.127" layer="51"/>
<wire x1="-1.27" y1="0.8603" x2="-1.27" y2="0.1397" width="0.127" layer="51"/>
<wire x1="-1.27" y1="0.1397" x2="-1.27" y2="-0.1397" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-0.1397" x2="-1.27" y2="-0.8603" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-0.8603" x2="-1.27" y2="-1.1397" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-1.1397" x2="-1.27" y2="-1.8175" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-1.8175" x2="1.27" y2="-1.8175" width="0.127" layer="51"/>
<wire x1="1.27" y1="-1.8175" x2="1.27" y2="-1.1397" width="0.127" layer="51"/>
<wire x1="1.27" y1="-1.1397" x2="1.27" y2="-0.8603" width="0.127" layer="51"/>
<wire x1="1.27" y1="-0.8603" x2="1.27" y2="-0.1397" width="0.127" layer="51"/>
<wire x1="1.27" y1="-0.1397" x2="1.27" y2="0.1397" width="0.127" layer="51"/>
<wire x1="1.27" y1="0.1397" x2="1.27" y2="0.8603" width="0.127" layer="51"/>
<wire x1="1.27" y1="0.8603" x2="1.27" y2="1.1397" width="0.127" layer="51"/>
<wire x1="1.27" y1="1.1397" x2="1.27" y2="1.8175" width="0.127" layer="51"/>
<wire x1="1.27" y1="1.8175" x2="-1.27" y2="1.8175" width="0.127" layer="51"/>
<wire x1="0.3476" y1="1.1524" x2="0.3476" y2="0.8476" width="0.127" layer="51"/>
<wire x1="0.3476" y1="0.8476" x2="0.6524" y2="0.8476" width="0.127" layer="51"/>
<wire x1="0.6524" y1="0.8476" x2="0.6524" y2="1.1524" width="0.127" layer="51"/>
<wire x1="0.6524" y1="1.1524" x2="0.3476" y2="1.1524" width="0.127" layer="51"/>
<wire x1="0.3476" y1="0.1524" x2="0.3476" y2="-0.1524" width="0.127" layer="51"/>
<wire x1="0.3476" y1="-0.1524" x2="0.6524" y2="-0.1524" width="0.127" layer="51"/>
<wire x1="0.6524" y1="-0.1524" x2="0.6524" y2="0.1524" width="0.127" layer="51"/>
<wire x1="0.6524" y1="0.1524" x2="0.3476" y2="0.1524" width="0.127" layer="51"/>
<wire x1="0.3476" y1="-0.8476" x2="0.3476" y2="-1.1524" width="0.127" layer="51"/>
<wire x1="0.3476" y1="-1.1524" x2="0.6524" y2="-1.1524" width="0.127" layer="51"/>
<wire x1="0.6524" y1="-1.1524" x2="0.6524" y2="-0.8476" width="0.127" layer="51"/>
<wire x1="0.6524" y1="-0.8476" x2="0.3476" y2="-0.8476" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="1.1524" x2="-0.6524" y2="0.8476" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="0.8476" x2="-0.3476" y2="0.8476" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="0.8476" x2="-0.3476" y2="1.1524" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="1.1524" x2="-0.6524" y2="1.1524" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="0.1524" x2="-0.6524" y2="-0.1524" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="-0.1524" x2="-0.3476" y2="-0.1524" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="-0.1524" x2="-0.3476" y2="0.1524" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="0.1524" x2="-0.6524" y2="0.1524" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="-0.8476" x2="-0.6524" y2="-1.1524" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="-1.1524" x2="-0.3476" y2="-1.1524" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="-1.1524" x2="-0.3476" y2="-0.8476" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="-0.8476" x2="-0.6524" y2="-0.8476" width="0.127" layer="51"/>
<text x="-1.27" y="-2.54" size="1.27" layer="25" font="vector" align="top-left">&gt;NAME</text>
</package>
<package name="2X2F_1MM_SMD">
<smd name="P4" x="1.6891" y="0.5" dx="1.7018" dy="0.6096" layer="1"/>
<smd name="P3" x="1.6891" y="-0.5" dx="1.7018" dy="0.6096" layer="1"/>
<smd name="P1" x="-1.6891" y="0.5" dx="1.7018" dy="0.6096" layer="1"/>
<smd name="P2" x="-1.6891" y="-0.5" dx="1.7018" dy="0.6096" layer="1"/>
<wire x1="1.6891" y1="-0.3603" x2="1.6891" y2="-0.6397" width="0.127" layer="51"/>
<wire x1="1.6891" y1="-0.6397" x2="1.27" y2="-0.6397" width="0.127" layer="51"/>
<wire x1="1.27" y1="-0.3603" x2="1.6891" y2="-0.3603" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-0.6397" x2="-1.6891" y2="-0.6397" width="0.127" layer="51"/>
<wire x1="-1.6891" y1="-0.6397" x2="-1.6891" y2="-0.3603" width="0.127" layer="51"/>
<wire x1="-1.6891" y1="-0.3603" x2="-1.27" y2="-0.3603" width="0.127" layer="51"/>
<wire x1="1.6891" y1="0.6397" x2="1.6891" y2="0.3603" width="0.127" layer="51"/>
<wire x1="1.6891" y1="0.3603" x2="1.27" y2="0.3603" width="0.127" layer="51"/>
<wire x1="1.27" y1="0.6397" x2="1.6891" y2="0.6397" width="0.127" layer="51"/>
<wire x1="-1.27" y1="0.3603" x2="-1.6891" y2="0.3603" width="0.127" layer="51"/>
<wire x1="-1.6891" y1="0.3603" x2="-1.6891" y2="0.6397" width="0.127" layer="51"/>
<wire x1="-1.6891" y1="0.6397" x2="-1.27" y2="0.6397" width="0.127" layer="51"/>
<wire x1="-1.27" y1="1.3175" x2="-1.27" y2="0.6397" width="0.127" layer="51"/>
<wire x1="-1.27" y1="0.6397" x2="-1.27" y2="0.3603" width="0.127" layer="51"/>
<wire x1="-1.27" y1="0.3603" x2="-1.27" y2="-0.3603" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-0.3603" x2="-1.27" y2="-0.6397" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-0.6397" x2="-1.27" y2="-1.3175" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-1.3175" x2="1.27" y2="-1.3175" width="0.127" layer="51"/>
<wire x1="1.27" y1="-1.3175" x2="1.27" y2="-0.6397" width="0.127" layer="51"/>
<wire x1="1.27" y1="-0.6397" x2="1.27" y2="-0.3603" width="0.127" layer="51"/>
<wire x1="1.27" y1="-0.3603" x2="1.27" y2="0.3603" width="0.127" layer="51"/>
<wire x1="1.27" y1="0.3603" x2="1.27" y2="0.6397" width="0.127" layer="51"/>
<wire x1="1.27" y1="0.6397" x2="1.27" y2="1.3175" width="0.127" layer="51"/>
<wire x1="1.27" y1="1.3175" x2="-1.27" y2="1.3175" width="0.127" layer="51"/>
<wire x1="0.3476" y1="0.6524" x2="0.3476" y2="0.3476" width="0.127" layer="51"/>
<wire x1="0.3476" y1="0.3476" x2="0.6524" y2="0.3476" width="0.127" layer="51"/>
<wire x1="0.6524" y1="0.3476" x2="0.6524" y2="0.6524" width="0.127" layer="51"/>
<wire x1="0.6524" y1="0.6524" x2="0.3476" y2="0.6524" width="0.127" layer="51"/>
<wire x1="0.3476" y1="-0.3476" x2="0.3476" y2="-0.6524" width="0.127" layer="51"/>
<wire x1="0.3476" y1="-0.6524" x2="0.6524" y2="-0.6524" width="0.127" layer="51"/>
<wire x1="0.6524" y1="-0.6524" x2="0.6524" y2="-0.3476" width="0.127" layer="51"/>
<wire x1="0.6524" y1="-0.3476" x2="0.3476" y2="-0.3476" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="0.6524" x2="-0.6524" y2="0.3476" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="0.3476" x2="-0.3476" y2="0.3476" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="0.3476" x2="-0.3476" y2="0.6524" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="0.6524" x2="-0.6524" y2="0.6524" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="-0.3476" x2="-0.6524" y2="-0.6524" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="-0.6524" x2="-0.3476" y2="-0.6524" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="-0.6524" x2="-0.3476" y2="-0.3476" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="-0.3476" x2="-0.6524" y2="-0.3476" width="0.127" layer="51"/>
<text x="-1.27" y="-2.04" size="1.27" layer="25" font="vector" align="top-left">&gt;NAME</text>
</package>
<package name="3X2M_1MM_SMD">
<smd name="P6" x="1.778" y="1" dx="2.413" dy="0.5588" layer="1"/>
<smd name="P5" x="1.778" y="0" dx="2.413" dy="0.5588" layer="1"/>
<smd name="P4" x="1.778" y="-1" dx="2.413" dy="0.5588" layer="1"/>
<smd name="P1" x="-1.778" y="1" dx="2.413" dy="0.5588" layer="1"/>
<smd name="P2" x="-1.778" y="0" dx="2.413" dy="0.5588" layer="1"/>
<smd name="P3" x="-1.778" y="-1" dx="2.413" dy="0.5588" layer="1"/>
<wire x1="2.6035" y1="1.1524" x2="2.6035" y2="0.8476" width="0.127" layer="51"/>
<wire x1="2.6035" y1="0.8476" x2="1.5875" y2="0.8476" width="0.127" layer="51"/>
<wire x1="1.5875" y1="1.1524" x2="2.6035" y2="1.1524" width="0.127" layer="51"/>
<wire x1="2.6035" y1="-0.8476" x2="2.6035" y2="-1.1524" width="0.127" layer="51"/>
<wire x1="2.6035" y1="-1.1524" x2="1.5875" y2="-1.1524" width="0.127" layer="51"/>
<wire x1="1.5875" y1="-0.8476" x2="2.6035" y2="-0.8476" width="0.127" layer="51"/>
<wire x1="-1.5875" y1="0.8476" x2="-2.6035" y2="0.8476" width="0.127" layer="51"/>
<wire x1="-2.6035" y1="0.8476" x2="-2.6035" y2="1.1524" width="0.127" layer="51"/>
<wire x1="-2.6035" y1="1.1524" x2="-1.5875" y2="1.1524" width="0.127" layer="51"/>
<wire x1="-1.5875" y1="-1.1524" x2="-2.6035" y2="-1.1524" width="0.127" layer="51"/>
<wire x1="-2.6035" y1="-1.1524" x2="-2.6035" y2="-0.8476" width="0.127" layer="51"/>
<wire x1="-2.6035" y1="-0.8476" x2="-1.5875" y2="-0.8476" width="0.127" layer="51"/>
<wire x1="2.6035" y1="0.1524" x2="2.6035" y2="-0.1524" width="0.127" layer="51"/>
<wire x1="2.6035" y1="-0.1524" x2="1.5875" y2="-0.1524" width="0.127" layer="51"/>
<wire x1="1.5875" y1="0.1524" x2="2.6035" y2="0.1524" width="0.127" layer="51"/>
<wire x1="-1.5875" y1="-0.1524" x2="-2.6035" y2="-0.1524" width="0.127" layer="51"/>
<wire x1="-2.6035" y1="-0.1524" x2="-2.6035" y2="0.1524" width="0.127" layer="51"/>
<wire x1="-2.6035" y1="0.1524" x2="-1.5875" y2="0.1524" width="0.127" layer="51"/>
<wire x1="-1.5875" y1="1.5" x2="-1.5875" y2="-1.5" width="0.127" layer="51"/>
<wire x1="-1.5875" y1="-1.5" x2="1.5875" y2="-1.5" width="0.127" layer="51"/>
<wire x1="1.5875" y1="-1.5" x2="1.5875" y2="1.5" width="0.127" layer="51"/>
<wire x1="1.5875" y1="1.5" x2="-1.5875" y2="1.5" width="0.127" layer="51"/>
<wire x1="0.3476" y1="1.1524" x2="0.3476" y2="0.8476" width="0.127" layer="51"/>
<wire x1="0.3476" y1="0.8476" x2="0.6524" y2="0.8476" width="0.127" layer="51"/>
<wire x1="0.6524" y1="0.8476" x2="0.6524" y2="1.1524" width="0.127" layer="51"/>
<wire x1="0.6524" y1="1.1524" x2="0.3476" y2="1.1524" width="0.127" layer="51"/>
<wire x1="0.3476" y1="0.1524" x2="0.3476" y2="-0.1524" width="0.127" layer="51"/>
<wire x1="0.3476" y1="-0.1524" x2="0.6524" y2="-0.1524" width="0.127" layer="51"/>
<wire x1="0.6524" y1="-0.1524" x2="0.6524" y2="0.1524" width="0.127" layer="51"/>
<wire x1="0.6524" y1="0.1524" x2="0.3476" y2="0.1524" width="0.127" layer="51"/>
<wire x1="0.3476" y1="-0.8476" x2="0.3476" y2="-1.1524" width="0.127" layer="51"/>
<wire x1="0.3476" y1="-1.1524" x2="0.6524" y2="-1.1524" width="0.127" layer="51"/>
<wire x1="0.6524" y1="-1.1524" x2="0.6524" y2="-0.8476" width="0.127" layer="51"/>
<wire x1="0.6524" y1="-0.8476" x2="0.3476" y2="-0.8476" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="1.1524" x2="-0.6524" y2="0.8476" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="0.8476" x2="-0.3476" y2="0.8476" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="0.8476" x2="-0.3476" y2="1.1524" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="1.1524" x2="-0.6524" y2="1.1524" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="0.1524" x2="-0.6524" y2="-0.1524" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="-0.1524" x2="-0.3476" y2="-0.1524" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="-0.1524" x2="-0.3476" y2="0.1524" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="0.1524" x2="-0.6524" y2="0.1524" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="-0.8476" x2="-0.6524" y2="-1.1524" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="-1.1524" x2="-0.3476" y2="-1.1524" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="-1.1524" x2="-0.3476" y2="-0.8476" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="-0.8476" x2="-0.6524" y2="-0.8476" width="0.127" layer="51"/>
<text x="-1.5875" y="-1.905" size="1.27" layer="25" font="vector" align="top-left">&gt;NAME</text>
</package>
<package name="3X2F_1MM_PASSTHROUGH_SMD">
<smd name="P6" x="1.8542" y="1" dx="1.3716" dy="0.6096" layer="1"/>
<smd name="P5" x="1.8542" y="0" dx="1.3716" dy="0.6096" layer="1"/>
<smd name="P4" x="1.8542" y="-1" dx="1.3716" dy="0.6096" layer="1"/>
<smd name="P1" x="-1.8542" y="1" dx="1.3716" dy="0.6096" layer="1"/>
<smd name="P2" x="-1.8542" y="0" dx="1.3716" dy="0.6096" layer="1"/>
<smd name="P3" x="-1.8542" y="-1" dx="1.3716" dy="0.6096" layer="1"/>
<wire x1="1.6891" y1="1.1397" x2="1.6891" y2="0.8603" width="0.127" layer="51"/>
<wire x1="1.6891" y1="0.8603" x2="1.27" y2="0.8603" width="0.127" layer="51"/>
<wire x1="1.27" y1="1.1397" x2="1.6891" y2="1.1397" width="0.127" layer="51"/>
<wire x1="1.6891" y1="-0.8603" x2="1.6891" y2="-1.1397" width="0.127" layer="51"/>
<wire x1="1.6891" y1="-1.1397" x2="1.27" y2="-1.1397" width="0.127" layer="51"/>
<wire x1="1.27" y1="-0.8603" x2="1.6891" y2="-0.8603" width="0.127" layer="51"/>
<wire x1="-1.27" y1="0.8603" x2="-1.6891" y2="0.8603" width="0.127" layer="51"/>
<wire x1="-1.6891" y1="0.8603" x2="-1.6891" y2="1.1397" width="0.127" layer="51"/>
<wire x1="-1.6891" y1="1.1397" x2="-1.27" y2="1.1397" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-1.1397" x2="-1.6891" y2="-1.1397" width="0.127" layer="51"/>
<wire x1="-1.6891" y1="-1.1397" x2="-1.6891" y2="-0.8603" width="0.127" layer="51"/>
<wire x1="-1.6891" y1="-0.8603" x2="-1.27" y2="-0.8603" width="0.127" layer="51"/>
<wire x1="1.6891" y1="0.1397" x2="1.6891" y2="-0.1397" width="0.127" layer="51"/>
<wire x1="1.6891" y1="-0.1397" x2="1.27" y2="-0.1397" width="0.127" layer="51"/>
<wire x1="1.27" y1="0.1397" x2="1.6891" y2="0.1397" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-0.1397" x2="-1.6891" y2="-0.1397" width="0.127" layer="51"/>
<wire x1="-1.6891" y1="-0.1397" x2="-1.6891" y2="0.1397" width="0.127" layer="51"/>
<wire x1="-1.6891" y1="0.1397" x2="-1.27" y2="0.1397" width="0.127" layer="51"/>
<wire x1="-1.27" y1="1.8175" x2="-1.27" y2="1.1397" width="0.127" layer="51"/>
<wire x1="-1.27" y1="1.1397" x2="-1.27" y2="0.8603" width="0.127" layer="51"/>
<wire x1="-1.27" y1="0.8603" x2="-1.27" y2="0.1397" width="0.127" layer="51"/>
<wire x1="-1.27" y1="0.1397" x2="-1.27" y2="-0.1397" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-0.1397" x2="-1.27" y2="-0.8603" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-0.8603" x2="-1.27" y2="-1.1397" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-1.1397" x2="-1.27" y2="-1.8175" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-1.8175" x2="1.27" y2="-1.8175" width="0.127" layer="51"/>
<wire x1="1.27" y1="-1.8175" x2="1.27" y2="-1.1397" width="0.127" layer="51"/>
<wire x1="1.27" y1="-1.1397" x2="1.27" y2="-0.8603" width="0.127" layer="51"/>
<wire x1="1.27" y1="-0.8603" x2="1.27" y2="-0.1397" width="0.127" layer="51"/>
<wire x1="1.27" y1="-0.1397" x2="1.27" y2="0.1397" width="0.127" layer="51"/>
<wire x1="1.27" y1="0.1397" x2="1.27" y2="0.8603" width="0.127" layer="51"/>
<wire x1="1.27" y1="0.8603" x2="1.27" y2="1.1397" width="0.127" layer="51"/>
<wire x1="1.27" y1="1.1397" x2="1.27" y2="1.8175" width="0.127" layer="51"/>
<wire x1="1.27" y1="1.8175" x2="-1.27" y2="1.8175" width="0.127" layer="51"/>
<wire x1="0.3476" y1="1.1524" x2="0.3476" y2="0.8476" width="0.127" layer="51"/>
<wire x1="0.3476" y1="0.8476" x2="0.6524" y2="0.8476" width="0.127" layer="51"/>
<wire x1="0.6524" y1="0.8476" x2="0.6524" y2="1.1524" width="0.127" layer="51"/>
<wire x1="0.6524" y1="1.1524" x2="0.3476" y2="1.1524" width="0.127" layer="51"/>
<wire x1="0.3476" y1="0.1524" x2="0.3476" y2="-0.1524" width="0.127" layer="51"/>
<wire x1="0.3476" y1="-0.1524" x2="0.6524" y2="-0.1524" width="0.127" layer="51"/>
<wire x1="0.6524" y1="-0.1524" x2="0.6524" y2="0.1524" width="0.127" layer="51"/>
<wire x1="0.6524" y1="0.1524" x2="0.3476" y2="0.1524" width="0.127" layer="51"/>
<wire x1="0.3476" y1="-0.8476" x2="0.3476" y2="-1.1524" width="0.127" layer="51"/>
<wire x1="0.3476" y1="-1.1524" x2="0.6524" y2="-1.1524" width="0.127" layer="51"/>
<wire x1="0.6524" y1="-1.1524" x2="0.6524" y2="-0.8476" width="0.127" layer="51"/>
<wire x1="0.6524" y1="-0.8476" x2="0.3476" y2="-0.8476" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="1.1524" x2="-0.6524" y2="0.8476" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="0.8476" x2="-0.3476" y2="0.8476" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="0.8476" x2="-0.3476" y2="1.1524" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="1.1524" x2="-0.6524" y2="1.1524" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="0.1524" x2="-0.6524" y2="-0.1524" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="-0.1524" x2="-0.3476" y2="-0.1524" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="-0.1524" x2="-0.3476" y2="0.1524" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="0.1524" x2="-0.6524" y2="0.1524" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="-0.8476" x2="-0.6524" y2="-1.1524" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="-1.1524" x2="-0.3476" y2="-1.1524" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="-1.1524" x2="-0.3476" y2="-0.8476" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="-0.8476" x2="-0.6524" y2="-0.8476" width="0.127" layer="51"/>
<text x="-1.27" y="-2.54" size="1.27" layer="25" font="vector" align="top-left">&gt;NAME</text>
<hole x="-0.5" y="1" drill="0.5588"/>
<hole x="0.5" y="1" drill="0.5588"/>
<hole x="-0.5" y="0" drill="0.5588"/>
<hole x="0.5" y="0" drill="0.5588"/>
<hole x="-0.5" y="-1" drill="0.5588"/>
<hole x="0.5" y="-1" drill="0.5588"/>
</package>
<package name="2X2M_1MM_SMD">
<smd name="P4" x="1.778" y="0.5" dx="2.413" dy="0.5588" layer="1"/>
<smd name="P3" x="1.778" y="-0.5" dx="2.413" dy="0.5588" layer="1"/>
<smd name="P1" x="-1.778" y="0.5" dx="2.413" dy="0.5588" layer="1"/>
<smd name="P2" x="-1.778" y="-0.5" dx="2.413" dy="0.5588" layer="1"/>
<wire x1="2.6035" y1="-0.3476" x2="2.6035" y2="-0.6524" width="0.127" layer="51"/>
<wire x1="2.6035" y1="-0.6524" x2="1.5875" y2="-0.6524" width="0.127" layer="51"/>
<wire x1="1.5875" y1="-0.3476" x2="2.6035" y2="-0.3476" width="0.127" layer="51"/>
<wire x1="-1.5875" y1="-0.6524" x2="-2.6035" y2="-0.6524" width="0.127" layer="51"/>
<wire x1="-2.6035" y1="-0.6524" x2="-2.6035" y2="-0.3476" width="0.127" layer="51"/>
<wire x1="-2.6035" y1="-0.3476" x2="-1.5875" y2="-0.3476" width="0.127" layer="51"/>
<wire x1="2.6035" y1="0.6524" x2="2.6035" y2="0.3476" width="0.127" layer="51"/>
<wire x1="2.6035" y1="0.3476" x2="1.5875" y2="0.3476" width="0.127" layer="51"/>
<wire x1="1.5875" y1="0.6524" x2="2.6035" y2="0.6524" width="0.127" layer="51"/>
<wire x1="-1.5875" y1="0.3476" x2="-2.6035" y2="0.3476" width="0.127" layer="51"/>
<wire x1="-2.6035" y1="0.3476" x2="-2.6035" y2="0.6524" width="0.127" layer="51"/>
<wire x1="-2.6035" y1="0.6524" x2="-1.5875" y2="0.6524" width="0.127" layer="51"/>
<wire x1="-1.5875" y1="1" x2="-1.5875" y2="-1" width="0.127" layer="51"/>
<wire x1="-1.5875" y1="-1" x2="1.5875" y2="-1" width="0.127" layer="51"/>
<wire x1="1.5875" y1="-1" x2="1.5875" y2="1" width="0.127" layer="51"/>
<wire x1="1.5875" y1="1" x2="-1.5875" y2="1" width="0.127" layer="51"/>
<wire x1="0.3476" y1="0.6524" x2="0.3476" y2="0.3476" width="0.127" layer="51"/>
<wire x1="0.3476" y1="0.3476" x2="0.6524" y2="0.3476" width="0.127" layer="51"/>
<wire x1="0.6524" y1="0.3476" x2="0.6524" y2="0.6524" width="0.127" layer="51"/>
<wire x1="0.6524" y1="0.6524" x2="0.3476" y2="0.6524" width="0.127" layer="51"/>
<wire x1="0.3476" y1="-0.3476" x2="0.3476" y2="-0.6524" width="0.127" layer="51"/>
<wire x1="0.3476" y1="-0.6524" x2="0.6524" y2="-0.6524" width="0.127" layer="51"/>
<wire x1="0.6524" y1="-0.6524" x2="0.6524" y2="-0.3476" width="0.127" layer="51"/>
<wire x1="0.6524" y1="-0.3476" x2="0.3476" y2="-0.3476" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="0.6524" x2="-0.6524" y2="0.3476" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="0.3476" x2="-0.3476" y2="0.3476" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="0.3476" x2="-0.3476" y2="0.6524" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="0.6524" x2="-0.6524" y2="0.6524" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="-0.3476" x2="-0.6524" y2="-0.6524" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="-0.6524" x2="-0.3476" y2="-0.6524" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="-0.6524" x2="-0.3476" y2="-0.3476" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="-0.3476" x2="-0.6524" y2="-0.3476" width="0.127" layer="51"/>
<text x="-1.5875" y="-1.405" size="1.27" layer="25" font="vector" align="top-left">&gt;NAME</text>
</package>
<package name="2X2F_1MM_PASSTHROUGH_SMD">
<smd name="P4" x="1.8542" y="0.5" dx="1.3716" dy="0.6096" layer="1"/>
<smd name="P3" x="1.8542" y="-0.5" dx="1.3716" dy="0.6096" layer="1"/>
<smd name="P1" x="-1.8542" y="0.5" dx="1.3716" dy="0.6096" layer="1"/>
<smd name="P2" x="-1.8542" y="-0.5" dx="1.3716" dy="0.6096" layer="1"/>
<wire x1="1.6891" y1="-0.3603" x2="1.6891" y2="-0.6397" width="0.127" layer="51"/>
<wire x1="1.6891" y1="-0.6397" x2="1.27" y2="-0.6397" width="0.127" layer="51"/>
<wire x1="1.27" y1="-0.3603" x2="1.6891" y2="-0.3603" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-0.6397" x2="-1.6891" y2="-0.6397" width="0.127" layer="51"/>
<wire x1="-1.6891" y1="-0.6397" x2="-1.6891" y2="-0.3603" width="0.127" layer="51"/>
<wire x1="-1.6891" y1="-0.3603" x2="-1.27" y2="-0.3603" width="0.127" layer="51"/>
<wire x1="1.6891" y1="0.6397" x2="1.6891" y2="0.3603" width="0.127" layer="51"/>
<wire x1="1.6891" y1="0.3603" x2="1.27" y2="0.3603" width="0.127" layer="51"/>
<wire x1="1.27" y1="0.6397" x2="1.6891" y2="0.6397" width="0.127" layer="51"/>
<wire x1="-1.27" y1="0.3603" x2="-1.6891" y2="0.3603" width="0.127" layer="51"/>
<wire x1="-1.6891" y1="0.3603" x2="-1.6891" y2="0.6397" width="0.127" layer="51"/>
<wire x1="-1.6891" y1="0.6397" x2="-1.27" y2="0.6397" width="0.127" layer="51"/>
<wire x1="-1.27" y1="1.3175" x2="-1.27" y2="0.6397" width="0.127" layer="51"/>
<wire x1="-1.27" y1="0.6397" x2="-1.27" y2="0.3603" width="0.127" layer="51"/>
<wire x1="-1.27" y1="0.3603" x2="-1.27" y2="-0.3603" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-0.3603" x2="-1.27" y2="-0.6397" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-0.6397" x2="-1.27" y2="-1.3175" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-1.3175" x2="1.27" y2="-1.3175" width="0.127" layer="51"/>
<wire x1="1.27" y1="-1.3175" x2="1.27" y2="-0.6397" width="0.127" layer="51"/>
<wire x1="1.27" y1="-0.6397" x2="1.27" y2="-0.3603" width="0.127" layer="51"/>
<wire x1="1.27" y1="-0.3603" x2="1.27" y2="0.3603" width="0.127" layer="51"/>
<wire x1="1.27" y1="0.3603" x2="1.27" y2="0.6397" width="0.127" layer="51"/>
<wire x1="1.27" y1="0.6397" x2="1.27" y2="1.3175" width="0.127" layer="51"/>
<wire x1="1.27" y1="1.3175" x2="-1.27" y2="1.3175" width="0.127" layer="51"/>
<wire x1="0.3476" y1="0.6524" x2="0.3476" y2="0.3476" width="0.127" layer="51"/>
<wire x1="0.3476" y1="0.3476" x2="0.6524" y2="0.3476" width="0.127" layer="51"/>
<wire x1="0.6524" y1="0.3476" x2="0.6524" y2="0.6524" width="0.127" layer="51"/>
<wire x1="0.6524" y1="0.6524" x2="0.3476" y2="0.6524" width="0.127" layer="51"/>
<wire x1="0.3476" y1="-0.3476" x2="0.3476" y2="-0.6524" width="0.127" layer="51"/>
<wire x1="0.3476" y1="-0.6524" x2="0.6524" y2="-0.6524" width="0.127" layer="51"/>
<wire x1="0.6524" y1="-0.6524" x2="0.6524" y2="-0.3476" width="0.127" layer="51"/>
<wire x1="0.6524" y1="-0.3476" x2="0.3476" y2="-0.3476" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="0.6524" x2="-0.6524" y2="0.3476" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="0.3476" x2="-0.3476" y2="0.3476" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="0.3476" x2="-0.3476" y2="0.6524" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="0.6524" x2="-0.6524" y2="0.6524" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="-0.3476" x2="-0.6524" y2="-0.6524" width="0.127" layer="51"/>
<wire x1="-0.6524" y1="-0.6524" x2="-0.3476" y2="-0.6524" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="-0.6524" x2="-0.3476" y2="-0.3476" width="0.127" layer="51"/>
<wire x1="-0.3476" y1="-0.3476" x2="-0.6524" y2="-0.3476" width="0.127" layer="51"/>
<text x="-1.27" y="-2.04" size="1.27" layer="25" font="vector" align="top-left">&gt;NAME</text>
<hole x="-0.5" y="0.5" drill="0.5588"/>
<hole x="0.5" y="0.5" drill="0.5588"/>
<hole x="-0.5" y="-0.5" drill="0.5588"/>
<hole x="0.5" y="-0.5" drill="0.5588"/>
</package>
</packages>
<symbols>
<symbol name="3X2">
<pin name="P1" x="-12.7" y="5.08" length="middle"/>
<pin name="P2" x="-12.7" y="0" length="middle"/>
<pin name="P3" x="-12.7" y="-5.08" length="middle"/>
<pin name="P6" x="12.7" y="5.08" length="middle" rot="R180"/>
<pin name="P5" x="12.7" y="0" length="middle" rot="R180"/>
<pin name="P4" x="12.7" y="-5.08" length="middle" rot="R180"/>
<wire x1="-7.62" y1="7.62" x2="-7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="7.62" x2="-7.62" y2="7.62" width="0.254" layer="94"/>
<text x="-7.62" y="8.89" size="2.54" layer="95" font="vector">&gt;NAME</text>
</symbol>
<symbol name="2X2">
<pin name="P1" x="-12.7" y="2.54" length="middle"/>
<pin name="P2" x="-12.7" y="-2.54" length="middle"/>
<pin name="P4" x="12.7" y="2.54" length="middle" rot="R180"/>
<pin name="P3" x="12.7" y="-2.54" length="middle" rot="R180"/>
<wire x1="-7.62" y1="5.08" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<text x="-7.62" y="6.35" size="2.54" layer="95" font="vector">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="3X2" prefix="H">
<gates>
<gate name="G$1" symbol="3X2" x="0" y="0"/>
</gates>
<devices>
<device name="M_1MM_SMD" package="3X2M_1MM_SMD">
<connects>
<connect gate="G$1" pin="P1" pad="P1"/>
<connect gate="G$1" pin="P2" pad="P2"/>
<connect gate="G$1" pin="P3" pad="P3"/>
<connect gate="G$1" pin="P4" pad="P4"/>
<connect gate="G$1" pin="P5" pad="P5"/>
<connect gate="G$1" pin="P6" pad="P6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="F_1MM_SMD" package="3X2F_1MM_SMD">
<connects>
<connect gate="G$1" pin="P1" pad="P1"/>
<connect gate="G$1" pin="P2" pad="P2"/>
<connect gate="G$1" pin="P3" pad="P3"/>
<connect gate="G$1" pin="P4" pad="P4"/>
<connect gate="G$1" pin="P5" pad="P5"/>
<connect gate="G$1" pin="P6" pad="P6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="F_1MM_PASSTHROUGH_SMD" package="3X2F_1MM_PASSTHROUGH_SMD">
<connects>
<connect gate="G$1" pin="P1" pad="P1"/>
<connect gate="G$1" pin="P2" pad="P2"/>
<connect gate="G$1" pin="P3" pad="P3"/>
<connect gate="G$1" pin="P4" pad="P4"/>
<connect gate="G$1" pin="P5" pad="P5"/>
<connect gate="G$1" pin="P6" pad="P6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="2X2" prefix="H">
<gates>
<gate name="G$1" symbol="2X2" x="0" y="0"/>
</gates>
<devices>
<device name="M_1MM_SMD" package="2X2M_1MM_SMD">
<connects>
<connect gate="G$1" pin="P1" pad="P1"/>
<connect gate="G$1" pin="P2" pad="P2"/>
<connect gate="G$1" pin="P3" pad="P3"/>
<connect gate="G$1" pin="P4" pad="P4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="F_1MM_SMD" package="2X2F_1MM_SMD">
<connects>
<connect gate="G$1" pin="P1" pad="P1"/>
<connect gate="G$1" pin="P2" pad="P2"/>
<connect gate="G$1" pin="P3" pad="P3"/>
<connect gate="G$1" pin="P4" pad="P4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="F_1MM_PASSTHROUGH_SMD" package="2X2F_1MM_PASSTHROUGH_SMD">
<connects>
<connect gate="G$1" pin="P1" pad="P1"/>
<connect gate="G$1" pin="P2" pad="P2"/>
<connect gate="G$1" pin="P3" pad="P3"/>
<connect gate="G$1" pin="P4" pad="P4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="H1" library="Customs" deviceset="3X2" device="F_1MM_SMD"/>
<part name="H2" library="Customs" deviceset="3X2" device="F_1MM_SMD"/>
<part name="H3" library="Customs" deviceset="3X2" device="F_1MM_SMD"/>
<part name="H4" library="Customs" deviceset="3X2" device="F_1MM_SMD"/>
<part name="H5" library="Customs" deviceset="3X2" device="F_1MM_SMD"/>
<part name="H6" library="Customs" deviceset="3X2" device="F_1MM_SMD"/>
<part name="H7" library="Customs" deviceset="2X2" device="F_1MM_SMD"/>
<part name="H8" library="Customs" deviceset="2X2" device="F_1MM_SMD"/>
<part name="H9" library="Customs" deviceset="2X2" device="F_1MM_SMD"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="H1" gate="G$1" x="15.24" y="78.74"/>
<instance part="H2" gate="G$1" x="43.18" y="78.74"/>
<instance part="H3" gate="G$1" x="71.12" y="78.74"/>
<instance part="H4" gate="G$1" x="99.06" y="78.74"/>
<instance part="H5" gate="G$1" x="127" y="78.74"/>
<instance part="H6" gate="G$1" x="154.94" y="78.74"/>
<instance part="H7" gate="G$1" x="15.24" y="58.42"/>
<instance part="H8" gate="G$1" x="71.12" y="58.42"/>
<instance part="H9" gate="G$1" x="127" y="58.42"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
