#!/usr/bin/python

from xml.etree.ElementTree import Element,SubElement,ElementTree,dump
from xml.etree import ElementTree as ET
from xml.dom import minidom
from math import cos,sin,tan,atan,asin,acos,pi

# Diameter of PCB
DIAMETER = 50.8
# Location of center of PCB
ORIGINX=1.5*25.4
ORIGINY=1.5*25.4

ringspacing=4.0664
# Inside ring of LEDs
R1=14.147142305690299
# Middle ring of LEDs
R2=R1+ringspacing
# Outside ring of LEDs
R3=R2+ringspacing

VIASPACE = 1.577
# VIASPACE = 1.57-1.5774

# Inside ring of connectors
HRI = 10.174642305690299
# Outside ring of connectors
HRO = 24.736342305690299+3
### NOTE: above value is provided in MILLIMETERS, and therefore does not have the multiplication by 25.4 ###


def prettify(elem):
	rough_string = ET.tostring(elem, 'utf-8')
	reparsed = minidom.parseString(rough_string)
	return reparsed.toprettyxml(indent="  ",encoding="utf-8")

def addmaxboard(plain):
	wires = [SubElement(plain,"wire") for wire in range(4)]
	for i in range(4):
		wires[i].set("width","0")
		wires[i].set("layer","20")
	wires[0].set("x1","0")
	wires[0].set("y1","0")
	wires[0].set("x2","100")
	wires[0].set("y2","0")
        wires[1].set("x1","100")
        wires[1].set("y1","0")
        wires[1].set("x2","100")
        wires[1].set("y2","80")
        wires[2].set("x1","100")
        wires[2].set("y1","80")
        wires[2].set("x2","0")
        wires[2].set("y2","80")
        wires[3].set("x1","0")
        wires[3].set("y1","80")
        wires[3].set("x2","0")
        wires[3].set("y2","0")

def striptextandtail(elem):
	elem.tail=''
	elem.text=''
	for i in list(elem):
		striptextandtail(i)

def frompolar(radius,angle,coord,centerx = ORIGINX,centery = ORIGINY):
	if(coord=="x"):
		return centerx+radius*cos(pi/2-angle)
	if(coord=="y"):
		return centery+radius*sin(pi/2-angle)
	

def addelementoncircle(name,package,value,radius,angle,rotation,mirrored,centerx = ORIGINX,centery = ORIGINY):
	j = SubElement(elements,"element")
	j.set("name",name)
	j.set("library","Customs")
	j.set("package",package)
	j.set("value",value)
	j.set("x",str(frompolar(radius,angle,"x",centerx,centery)))
	j.set("y",str(frompolar(radius,angle,"y",centerx,centery)))
	if(mirrored):
		j.set("rot","MR"+str(rotation))
	else:
		j.set("rot","R"+str(rotation))

def elementring(prefix,countoffset,count,package,value,radius,rotoffset,altrot,mirrored,centerx = ORIGINX,centery = ORIGINY):
	for i in range(count):
		addelementoncircle(prefix+str(i+countoffset+1),package,value,radius,i*(2*pi)/count,(rotoffset-i*(360/count)+2*i*(360/count)*mirrored+180*(i%2)*(altrot))%360,mirrored)

def ledring(countoffset,count,signalcountoffset,value,radius,alt,innerviaspace = VIASPACE,outerviaspace = VIASPACE,centerx = ORIGINX,centery = ORIGINY):
	elementring("LED",countoffset,count,"LED-0402",value,radius,0,True,False,centerx,centery)
	for i in range(0,count/2):
		j1 = SubElement(signals,"signal")
		j1.set("name","N$"+str(i+1+signalcountoffset))
		k1 = SubElement(j1,"contactref")
		k1.set("element","LED"+str(2*i+1+alt+countoffset))
		k1.set("pad",chr(65+2*alt))
		l1 = SubElement(j1,"via")
		l1.set("x",str(frompolar(radius-innerviaspace,2*i*(2*pi/count)+pi/count+alt*(2*pi/count),"x")))
		l1.set("y",str(frompolar(radius-innerviaspace,2*i*(2*pi/count)+pi/count+alt*(2*pi/count),"y")))
		l1.set("extent","1-16")
		l1.set("drill","0.635")
		m1 = SubElement(j1,"contactref")
		m1.set("element","LED"+str((2*i+1+alt)%count+1+countoffset))
		m1.set("pad",chr(67-2*alt))
		
		n1 = SubElement(j1,"wire")
		n1.set("x1",str(frompolar((radius-0.46875),2*i*(2*pi/count)+alt*(2*pi/count),"x")))
		n1.set("y1",str(frompolar((radius-0.46875),2*i*(2*pi/count)+alt*(2*pi/count),"y")))
		n1.set("x2",str(frompolar(radius-innerviaspace,2*i*(2*pi/count)+pi/count+alt*(2*pi/count),"x")))
		n1.set("y2",str(frompolar(radius-innerviaspace,2*i*(2*pi/count)+pi/count+alt*(2*pi/count),"y")))
		n1.set("width","0.4064")
		n1.set("layer","1")
		
		o1 = SubElement(j1,"wire")
		o1.set("x1",str(frompolar(radius-0.46875,(2*i+1)*(2*pi/count)+alt*(2*pi/count),"x")))
		o1.set("y1",str(frompolar(radius-0.46875,(2*i+1)*(2*pi/count)+alt*(2*pi/count),"y")))
		o1.set("x2",str(frompolar(radius-innerviaspace,2*i*(2*pi/count)+pi/count+alt*(2*pi/count),"x")))
		o1.set("y2",str(frompolar(radius-innerviaspace,2*i*(2*pi/count)+pi/count+alt*(2*pi/count),"y")))
		o1.set("width","0.4064")
		o1.set("layer","1")

def ledring2(countoffset,count,signalcountoffset,value,radius,alt,innerviaspace = VIASPACE,outerviaspace = VIASPACE,centerx = ORIGINX,centery = ORIGINY):
	for i in range(0,count/2):
		j2 = SubElement(signals,"signal")
		j2.set("name","N$"+str(i+1+signalcountoffset+3*count/2))
		k2 = SubElement(j2,"contactref")
		k2.set("element","LED"+str(2*i+1+alt+countoffset))
		k2.set("pad",chr(67-2*alt))
		l2 = SubElement(j2,"via")
		l2.set("x",str(frompolar(radius+outerviaspace,2*i*(2*pi/count)+pi/count+alt*(2*pi/count),"x")))
		l2.set("y",str(frompolar(radius+outerviaspace,2*i*(2*pi/count)+pi/count+alt*(2*pi/count),"y")))
		l2.set("extent","1-16")
		l2.set("drill","0.635")
		m2 = SubElement(j2,"contactref")
		m2.set("element","LED"+str((2*i+1+alt)%count+1+countoffset))
		m2.set("pad",chr(65+2*alt))
		
		n2 = SubElement(j2,"wire")
		n2.set("x1",str(frompolar((radius+0.46875),2*i*(2*pi/count)+alt*(2*pi/count),"x")))
		n2.set("y1",str(frompolar((radius+0.46875),2*i*(2*pi/count)+alt*(2*pi/count),"y")))
		n2.set("x2",str(frompolar(radius+outerviaspace,2*i*(2*pi/count)+pi/count+alt*(2*pi/count),"x")))
		n2.set("y2",str(frompolar(radius+outerviaspace,2*i*(2*pi/count)+pi/count+alt*(2*pi/count),"y")))
		n2.set("width","0.4064")
		n2.set("layer","1")
		
		o2 = SubElement(j2,"wire")
		o2.set("x1",str(frompolar(radius+0.46875,(2*i+1)*(2*pi/count)+alt*(2*pi/count),"x")))
		o2.set("y1",str(frompolar(radius+0.46875,(2*i+1)*(2*pi/count)+alt*(2*pi/count),"y")))
		o2.set("x2",str(frompolar(radius+outerviaspace,2*i*(2*pi/count)+pi/count+alt*(2*pi/count),"x")))
		o2.set("y2",str(frompolar(radius+outerviaspace,2*i*(2*pi/count)+pi/count+alt*(2*pi/count),"y")))
		o2.set("width","0.4064")
		o2.set("layer","1")




eagle = Element("eagle")
eagle.set("version","6.2")

drawing = SubElement(eagle,"drawing")

settings = SubElement(drawing,"settings")
setting1 = SubElement(settings,"setting")
setting1.set("alwaysvectorfont","yes")
setting2 = SubElement(settings,"setting")
setting2.set("verticaltext","up")

grid = SubElement(drawing,"grid")
grid.set("distance","0.05")
grid.set("unitdist","inch")
grid.set("unit","inch")
grid.set("style","lines")
grid.set("multiple","1")
grid.set("display","no")
grid.set("altdistance","0.0125")
grid.set("altunitdist","inch")
grid.set("altunit","inch")

layers = ET.parse('layers.brd').getroot()
striptextandtail(layers)

drawing.append(layers)

board = SubElement(drawing,"board")
plain = SubElement(board,"plain")

### Board dimensions defined below ###

addmaxboard(plain)

lowcurve = SubElement(plain,"wire")
lowcurve.set("x1",str(ORIGINX-DIAMETER/2))
lowcurve.set("x2",str(ORIGINX+DIAMETER/2))
lowcurve.set("y1",str(ORIGINY))
lowcurve.set("y2",str(ORIGINY))
lowcurve.set("width","0")
lowcurve.set("layer","20")
lowcurve.set("curve","180")

highcurve = SubElement(plain,"wire")
highcurve.set("x1",str(ORIGINX-DIAMETER/2))
highcurve.set("x2",str(ORIGINX+DIAMETER/2))
highcurve.set("y1",str(ORIGINY))
highcurve.set("y2",str(ORIGINY))
highcurve.set("width","0")
highcurve.set("layer","20")
highcurve.set("curve","-180")

### Board dimensions defined above ###

libraries = ET.parse('libraries.brd').getroot()
striptextandtail(libraries)

board.append(libraries)

designrules = ET.parse('designrules.brd').getroot()
striptextandtail(designrules)

board.append(designrules)

autorouter = ET.parse('autorouter.brd').getroot()
striptextandtail(autorouter)

board.append(autorouter)

elements = SubElement(board,"elements")
signals = SubElement(board,"signals")

### Board design starts here ###

ledring(0,120,0,"RED",R1,False)
ledring(120,120,60,"GREEN",R2,True)
ledring(240,120,120,"BLUE",R3,False)
ledring2(0,120,0,"RED",R1,False)
ledring2(120,120,60,"GREEN",R2,True)
ledring2(240,120,120,"BLUE",R3,False)

elementring("H",0,6,"3X2_1MM_SMD","2X3",HRI,0,False,True)
elementring("H",6,6,"3X2_1MM_SMD","2X3",HRI-3,0,False,True)
elementring("H",12,6,"2X2_1MM_SMD","2X2",HRO,180,False,True)

### Board design ends here ###

f = open('output120c.brd', 'w')
f.write(prettify(eagle))
f.close()
