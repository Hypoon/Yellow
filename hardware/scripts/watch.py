import math
originx=1.5*25.4
originy=1.5*25.4
r1=0.5*25.4
r2=0.65*25.4
r3=0.8*25.4
for i in range(0,60):
	print('<element name="LED'+str(i+1)+'" library="SparkFun-LED" package="LED-0603" value="RED" x="'+str(originx+r1*math.cos((math.pi/2)+(-1)*math.pi*i/30))+'" y="'+str(originy+r1*math.sin((math.pi/2)+(-1)*math.pi*i/30))+'" rot="R'+str((360-i*6)+180*(i%2))+'"/>')

for i in range(0,60):
	print('<element name="LED'+str(i+61)+'" library="SparkFun-LED" package="LED-0603" value="RED" x="'+str(originx+r2*math.cos((math.pi/2)+(-1)*math.pi*i/30))+'" y="'+str(originy+r2*math.sin((math.pi/2)+(-1)*math.pi*i/30))+'" rot="R'+str((360-i*6)+180*(i%2))+'"/>')

for i in range(0,60):
	print('<element name="LED'+str(i+121)+'" library="SparkFun-LED" package="LED-0603" value="RED" x="'+str(originx+r3*math.cos((math.pi/2)+(-1)*math.pi*i/30))+'" y="'+str(originy+r3*math.sin((math.pi/2)+(-1)*math.pi*i/30))+'" rot="R'+str((360-i*6)+180*(i%2))+'"/>')
