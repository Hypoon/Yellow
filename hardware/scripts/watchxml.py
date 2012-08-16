from xml.etree.ElementTree import Element,SubElement,ElementTree,dump
from xml.etree import ElementTree as ET
from xml.dom import minidom

DIAMETER = 52.07
XOFFSET = 12.065
YOFFSET = 12.065

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
#for i in list(layers):
#	i.tail=''
#layers.tail=''
#layers.text=''
striptextandtail(layers)

drawing.append(layers)

board = SubElement(drawing,"board")
plain = SubElement(board,"plain")
addmaxboard(plain)

lowcurve = SubElement(plain,"wire")
lowcurve.set("x1",str(XOFFSET))
lowcurve.set("x2",str(XOFFSET+DIAMETER))
lowcurve.set("y1",str(DIAMETER/2+YOFFSET))
lowcurve.set("y2",str(DIAMETER/2+YOFFSET))
lowcurve.set("width","0")
lowcurve.set("layer","20")
lowcurve.set("curve","180")

highcurve = SubElement(plain,"wire")
highcurve.set("x1",str(XOFFSET))
highcurve.set("x2",str(XOFFSET+DIAMETER))
highcurve.set("y1",str(DIAMETER/2+YOFFSET))
highcurve.set("y2",str(DIAMETER/2+YOFFSET))
highcurve.set("width","0")
highcurve.set("layer","20")
highcurve.set("curve","-180")

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

f = open('output.brd', 'w')
f.write(prettify(eagle))
f.close()
