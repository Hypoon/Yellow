#!/usr/bin/python

from xml.etree.ElementTree import Element,SubElement,ElementTree,dump
from xml.etree import ElementTree as ET
from xml.dom import minidom
from math import cos,sin,tan,atan,asin,acos,pi

# Diameter of PCB
DIAMETER = 2.05*25.4
# Location of center of PCB
ORIGINX=1.5*25.4
ORIGINY=1.5*25.4

# Imaginary innermost ring of LEDs
R0=0.35*25.4
# Inside ring of LEDs
R1=0.5*25.4
# Middle ring of LEDs
R2=0.65*25.4
# Outside ring of LEDs
R3=0.8*25.4
# Imaginary outermost ring of LEDs
R4=0.95*25.4

# Inside ring of connectors
HRI = 0.325*25.4
# Outside ring of connectors
HRO = 23.8125
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

def frompolar(centerx,centery,radius,angle,coord):
	if(coord=="x"):
		return centerx+radius*cos(pi/2-angle)
	if(coord=="y"):
		return centery+radius*sin(pi/2-angle)
	

def addelementoncircle(name,package,value,centerx,centery,radius,angle,rotation,mirrored):
	j = SubElement(elements,"element")
	j.set("name",name)
	j.set("library","Customs")
	j.set("package",package)
	j.set("value",value)
	j.set("x",str(frompolar(centerx,centery,radius,angle,"x")))
	j.set("y",str(frompolar(centerx,centery,radius,angle,"y")))
	if(mirrored):
		j.set("rot","MR"+str(rotation))
	else:
		j.set("rot","R"+str(rotation))




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

### Elements defined below ###

for i in range(0,60):
	addelementoncircle("LED"+str(i+1),"LED-0603","RED",ORIGINX,ORIGINY,R1,i*pi/30,((360-i*6)+180*(i%2))%360,False)

for i in range(0,60):
	addelementoncircle("LED"+str(i+61),"LED-0603","GREEN",ORIGINX,ORIGINY,R2,i*pi/30,((360-i*6)+180*(i%2))%360,False)

for i in range(0,60):
	addelementoncircle("LED"+str(i+121),"LED-0603","BLUE",ORIGINX,ORIGINY,R3,i*pi/30,((360-i*6)+180*(i%2))%360,False)

for i in range(0,6):
	addelementoncircle("H"+str(i+1),"3X2_1MM_SMD","2X3",ORIGINX,ORIGINY,HRI,i*pi/3,i*60,True)

for i in range(0,3):
	addelementoncircle("H"+str(i+7),"2X2_1MM_SMD","2X2",ORIGINX,ORIGINY,HRO,i*2*pi/3,(180+i*120)%360,True)

### Elements defined above ###

### Signals defined below ###

signals = SubElement(board,"signals")

for i in range(0,30):
	j = SubElement(signals,"signal")
	j.set("name","N$"+str(i+1))
	k = SubElement(j,"contactref")
	k.set("element","LED"+str(2*i+1))
	k.set("pad","A")
	l = SubElement(j,"via")
	l.set("x",str(ORIGINX+0.5*(R0+R1)*cos(pi/2-2*i*pi/30-pi/60)))
	l.set("y",str(ORIGINY+0.5*(R0+R1)*sin(pi/2-2*i*pi/30-pi/60)))
	l.set("extent","1-16")
	l.set("drill","0.635")
	m = SubElement(j,"contactref")
	m.set("element","LED"+str(2*i+2))
	m.set("pad","C")
	
	n = SubElement(j,"wire")
	n.set("x1",str(ORIGINX+(R1-0.75)*cos((pi/2)-2*i*pi/30)))
	n.set("y1",str(ORIGINY+(R1-0.75)*sin((pi/2)-2*i*pi/30)))
	n.set("x2",str(ORIGINX+0.5*(R0+R1)*cos(pi/2-2*i*pi/30-pi/60)))
	n.set("y2",str(ORIGINY+0.5*(R0+R1)*sin(pi/2-2*i*pi/30-pi/60)))
	n.set("width","0.4064")
	n.set("layer","1")
	
	o = SubElement(j,"wire")
	o.set("x1",str(ORIGINX+(R1-0.75)*cos((pi/2)-(2*i+1)*pi/30)))
	o.set("y1",str(ORIGINY+(R1-0.75)*sin((pi/2)-(2*i+1)*pi/30)))
	o.set("x2",str(ORIGINX+0.5*(R0+R1)*cos(pi/2-2*i*pi/30-pi/60)))
	o.set("y2",str(ORIGINY+0.5*(R0+R1)*sin(pi/2-2*i*pi/30-pi/60)))
	o.set("width","0.4064")
	o.set("layer","1")

for i in range(0,30):
	j = SubElement(signals,"signal")
	j.set("name","N$"+str(i+31))
	k = SubElement(j,"contactref")
	k.set("element","LED"+str(2*i+62))
	k.set("pad","C")
	l = SubElement(j,"via")
	l.set("x",str(ORIGINX+0.5*(R1+R2)*cos(pi/2-2*i*pi/30-pi/30-pi/60)))
	l.set("y",str(ORIGINY+0.5*(R1+R2)*sin(pi/2-2*i*pi/30-pi/30-pi/60)))
	l.set("extent","1-16")
	l.set("drill","0.635")
	m = SubElement(j,"contactref")
	m.set("element","LED"+str((2*i+3)%60+60))
	m.set("pad","A")
	
	n = SubElement(j,"wire")
	n.set("x1",str(ORIGINX+(R2-0.75)*cos((pi/2)-(2*i+1)*pi/30)))
	n.set("y1",str(ORIGINY+(R2-0.75)*sin((pi/2)-(2*i+1)*pi/30)))
	n.set("x2",str(ORIGINX+0.5*(R1+R2)*cos(pi/2-2*i*pi/30-pi/30-pi/60)))
	n.set("y2",str(ORIGINY+0.5*(R1+R2)*sin(pi/2-2*i*pi/30-pi/30-pi/60)))
	n.set("width","0.4064")
	n.set("layer","1")
	
	o = SubElement(j,"wire")
	o.set("x1",str(ORIGINX+(R2-0.75)*cos((pi/2)-(2*i+2)*pi/30)))
	o.set("y1",str(ORIGINY+(R2-0.75)*sin((pi/2)-(2*i+2)*pi/30)))
	o.set("x2",str(ORIGINX+0.5*(R1+R2)*cos(pi/2-2*i*pi/30-pi/30-pi/60)))
	o.set("y2",str(ORIGINY+0.5*(R1+R2)*sin(pi/2-2*i*pi/30-pi/30-pi/60)))
	o.set("width","0.4064")
	o.set("layer","1")


for i in range(0,30):
	j = SubElement(signals,"signal")
	j.set("name","N$"+str(i+61))
	k = SubElement(j,"contactref")
	k.set("element","LED"+str(2*i+121))
	k.set("pad","A")
	l = SubElement(j,"via")
	l.set("x",str(ORIGINX+0.5*(R2+R3)*cos(pi/2-2*i*pi/30-pi/60)))
	l.set("y",str(ORIGINY+0.5*(R2+R3)*sin(pi/2-2*i*pi/30-pi/60)))
	l.set("extent","1-16")
	l.set("drill","0.635")
	m = SubElement(j,"contactref")
	m.set("element","LED"+str(2*i+122))
	m.set("pad","C")
	
	n = SubElement(j,"wire")
	n.set("x1",str(ORIGINX+(R3-0.75)*cos((pi/2)-2*i*pi/30)))
	n.set("y1",str(ORIGINY+(R3-0.75)*sin((pi/2)-2*i*pi/30)))
	n.set("x2",str(ORIGINX+0.5*(R2+R3)*cos(pi/2-2*i*pi/30-pi/60)))
	n.set("y2",str(ORIGINY+0.5*(R2+R3)*sin(pi/2-2*i*pi/30-pi/60)))
	n.set("width","0.4064")
	n.set("layer","1")
	
	o = SubElement(j,"wire")
	o.set("x1",str(ORIGINX+(R3-0.75)*cos((pi/2)-(2*i+1)*pi/30)))
	o.set("y1",str(ORIGINY+(R3-0.75)*sin((pi/2)-(2*i+1)*pi/30)))
	o.set("x2",str(ORIGINX+0.5*(R2+R3)*cos(pi/2-2*i*pi/30-pi/60)))
	o.set("y2",str(ORIGINY+0.5*(R2+R3)*sin(pi/2-2*i*pi/30-pi/60)))
	o.set("width","0.4064")
	o.set("layer","1")


for i in range(0,30):
	j = SubElement(signals,"signal")
	j.set("name","N$"+str(i+91))
	k = SubElement(j,"contactref")
	k.set("element","LED"+str(2*i+1))
	k.set("pad","C")
	l = SubElement(j,"via")
	l.set("x",str(ORIGINX+0.5*(R1+R2)*cos(pi/2-2*i*pi/30-pi/60)))
	l.set("y",str(ORIGINY+0.5*(R1+R2)*sin(pi/2-2*i*pi/30-pi/60)))
	l.set("extent","1-16")
	l.set("drill","0.635")
	m = SubElement(j,"contactref")
	m.set("element","LED"+str(2*i+2))
	m.set("pad","A")
	
	n = SubElement(j,"wire")
	n.set("x1",str(ORIGINX+(R1+0.75)*cos((pi/2)-2*i*pi/30)))
	n.set("y1",str(ORIGINY+(R1+0.75)*sin((pi/2)-2*i*pi/30)))
	n.set("x2",str(ORIGINX+0.5*(R1+R2)*cos(pi/2-2*i*pi/30-pi/60)))
	n.set("y2",str(ORIGINY+0.5*(R1+R2)*sin(pi/2-2*i*pi/30-pi/60)))
	n.set("width","0.4064")
	n.set("layer","1")
	
	o = SubElement(j,"wire")
	o.set("x1",str(ORIGINX+(R1+0.75)*cos((pi/2)-(2*i+1)*pi/30)))
	o.set("y1",str(ORIGINY+(R1+0.75)*sin((pi/2)-(2*i+1)*pi/30)))
	o.set("x2",str(ORIGINX+0.5*(R1+R2)*cos(pi/2-2*i*pi/30-pi/60)))
	o.set("y2",str(ORIGINY+0.5*(R1+R2)*sin(pi/2-2*i*pi/30-pi/60)))
	o.set("width","0.4064")
	o.set("layer","1")

for i in range(0,30):
	j = SubElement(signals,"signal")
	j.set("name","N$"+str(i+121))
	k = SubElement(j,"contactref")
	k.set("element","LED"+str(2*i+62))
	k.set("pad","A")
	l = SubElement(j,"via")
	l.set("x",str(ORIGINX+0.5*(R2+R3)*cos(pi/2-2*i*pi/30-pi/30-pi/60)))
	l.set("y",str(ORIGINY+0.5*(R2+R3)*sin(pi/2-2*i*pi/30-pi/30-pi/60)))
	l.set("extent","1-16")
	l.set("drill","0.635")
	m = SubElement(j,"contactref")
	m.set("element","LED"+str((2*i+3)%60+60))
	m.set("pad","C")
	
	n = SubElement(j,"wire")
	n.set("x1",str(ORIGINX+(R2+0.75)*cos((pi/2)-(2*i+1)*pi/30)))
	n.set("y1",str(ORIGINY+(R2+0.75)*sin((pi/2)-(2*i+1)*pi/30)))
	n.set("x2",str(ORIGINX+0.5*(R2+R3)*cos(pi/2-2*i*pi/30-pi/30-pi/60)))
	n.set("y2",str(ORIGINY+0.5*(R2+R3)*sin(pi/2-2*i*pi/30-pi/30-pi/60)))
	n.set("width","0.4064")
	n.set("layer","1")
	
	o = SubElement(j,"wire")
	o.set("x1",str(ORIGINX+(R2+0.75)*cos((pi/2)-(2*i+2)*pi/30)))
	o.set("y1",str(ORIGINY+(R2+0.75)*sin((pi/2)-(2*i+2)*pi/30)))
	o.set("x2",str(ORIGINX+0.5*(R2+R3)*cos(pi/2-2*i*pi/30-pi/30-pi/60)))
	o.set("y2",str(ORIGINY+0.5*(R2+R3)*sin(pi/2-2*i*pi/30-pi/30-pi/60)))
	o.set("width","0.4064")
	o.set("layer","1")

for i in range(0,30):
	j = SubElement(signals,"signal")
	j.set("name","N$"+str(i+151))
	k = SubElement(j,"contactref")
	k.set("element","LED"+str(2*i+121))
	k.set("pad","C")
	l = SubElement(j,"via")
	l.set("x",str(ORIGINX+0.5*(R3+R4)*cos(pi/2-2*i*pi/30-pi/60)))
	l.set("y",str(ORIGINY+0.5*(R3+R4)*sin(pi/2-2*i*pi/30-pi/60)))
	l.set("extent","1-16")
	l.set("drill","0.635")
	m = SubElement(j,"contactref")
	m.set("element","LED"+str(2*i+122))
	m.set("pad","A")
	
	n = SubElement(j,"wire")
	n.set("x1",str(ORIGINX+(R3+0.75)*cos((pi/2)-2*i*pi/30)))
	n.set("y1",str(ORIGINY+(R3+0.75)*sin((pi/2)-2*i*pi/30)))
	n.set("x2",str(ORIGINX+0.5*(R3+R4)*cos(pi/2-2*i*pi/30-pi/60)))
	n.set("y2",str(ORIGINY+0.5*(R3+R4)*sin(pi/2-2*i*pi/30-pi/60)))
	n.set("width","0.4064")
	n.set("layer","1")
	
	o = SubElement(j,"wire")
	o.set("x1",str(ORIGINX+(R3+0.75)*cos((pi/2)-(2*i+1)*pi/30)))
	o.set("y1",str(ORIGINY+(R3+0.75)*sin((pi/2)-(2*i+1)*pi/30)))
	o.set("x2",str(ORIGINX+0.5*(R3+R4)*cos(pi/2-2*i*pi/30-pi/60)))
	o.set("y2",str(ORIGINY+0.5*(R3+R4)*sin(pi/2-2*i*pi/30-pi/60)))
	o.set("width","0.4064")
	o.set("layer","1")



### Signals defined above ###

f = open('output.brd', 'w')
f.write(prettify(eagle))
f.close()
