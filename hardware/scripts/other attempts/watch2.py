import math
originx=1.5*25.4
originy=1.5*25.4
r0=0.35*25.4
r1=0.5*25.4
r2=0.65*25.4
r3=0.8*25.4
r4=0.95*25.4
for i in range(0,30):
	print('<signal name="N$'+str(i+1)+'">')
	print('<contactref element="LED'+str(2*i+1)+'" pad="A"/>')
	print('<via x="'+str(originx+0.5*(r0+r1)*math.cos((math.pi/2)+2*(-1)*math.pi*i/30-math.pi/60))+'" y="'+str(originy+0.5*(r0+r1)*math.sin((math.pi/2)+2*(-1)*math.pi*i/30-math.pi/60))+'" extent="1-16" drill="0.635"/>')
	print('<contactref element="LED'+str(2*i+2)+'" pad="C"/>')
	print('</signal>')

for i in range(0,29):
	print('<signal name="N$'+str(30+i+1)+'">')
	print('<contactref element="LED'+str(60+2*i+2)+'" pad="C"/>')
	print('<via x="'+str(originx+0.5*(r1+r2)*math.cos((math.pi/2)+2*(-1)*math.pi*i/30-math.pi/30-math.pi/60))+'" y="'+str(originy+0.5*(r1+r2)*math.sin((math.pi/2)+2*(-1)*math.pi*i/30-math.pi/30-math.pi/60))+'" extent="1-16" drill="0.635"/>')
	print('<contactref element="LED'+str(60+2*i+3)+'" pad="A"/>')
	print('</signal>')

print('<signal name="N$60">')
print('<contactref element="LED120" pad="C"/>')
print('<via x="'+str(originx+0.5*(r1+r2)*math.cos(math.pi/2+math.pi/60))+'" y="'+str(originy+0.5*(r1+r2)*math.sin(math.pi/2+math.pi/60))+'" extent="1-16" drill="0.635"/>')
print('<contactref element="LED61" pad="A"/>')
print('</signal>')

for i in range(0,30):
	print('<signal name="N$'+str(60+i+1)+'">')
	print('<contactref element="LED'+str(120+2*i+1)+'" pad="A"/>')
	print('<via x="'+str(originx+0.5*(r2+r3)*math.cos((math.pi/2)+2*(-1)*math.pi*i/30-math.pi/60))+'" y="'+str(originy+0.5*(r2+r3)*math.sin((math.pi/2)+2*(-1)*math.pi*i/30-math.pi/60))+'" extent="1-16" drill="0.635"/>')
	print('<contactref element="LED'+str(120+2*i+2)+'" pad="C"/>')
	print('</signal>')




for i in range(0,30):
	print('<signal name="N$'+str(90+i+1)+'">')
	print('<contactref element="LED'+str(2*i+1)+'" pad="C"/>')
	print('<via x="'+str(originx+0.5*(r1+r2)*math.cos((math.pi/2)+2*(-1)*math.pi*i/30-math.pi/60))+'" y="'+str(originy+0.5*(r1+r2)*math.sin((math.pi/2)+2*(-1)*math.pi*i/30-math.pi/60))+'" extent="1-16" drill="0.635"/>')
	print('<contactref element="LED'+str(2*i+2)+'" pad="A"/>')
	print('</signal>')

for i in range(0,29):
	print('<signal name="N$'+str(120+i+1)+'">')
	print('<contactref element="LED'+str(60+2*i+2)+'" pad="A"/>')
	print('<via x="'+str(originx+0.5*(r2+r3)*math.cos((math.pi/2)+2*(-1)*math.pi*i/30-math.pi/30-math.pi/60))+'" y="'+str(originy+0.5*(r2+r3)*math.sin((math.pi/2)+2*(-1)*math.pi*i/30-math.pi/30-math.pi/60))+'" extent="1-16" drill="0.635"/>')
	print('<contactref element="LED'+str(60+2*i+3)+'" pad="C"/>')
	print('</signal>')

print('<signal name="N$150">')
print('<contactref element="LED120" pad="A"/>')
print('<via x="'+str(originx+0.5*(r2+r3)*math.cos(math.pi/2+math.pi/60))+'" y="'+str(originy+0.5*(r2+r3)*math.sin(math.pi/2+math.pi/60))+'" extent="1-16" drill="0.635"/>')
print('<contactref element="LED61" pad="C"/>')
print('</signal>')

for i in range(0,30):
	print('<signal name="N$'+str(150+i+1)+'">')
	print('<contactref element="LED'+str(120+2*i+1)+'" pad="C"/>')
	print('<via x="'+str(originx+0.5*(r3+r4)*math.cos((math.pi/2)+2*(-1)*math.pi*i/30-math.pi/60))+'" y="'+str(originy+0.5*(r3+r4)*math.sin((math.pi/2)+2*(-1)*math.pi*i/30-math.pi/60))+'" extent="1-16" drill="0.635"/>')
	print('<contactref element="LED'+str(120+2*i+2)+'" pad="A"/>')
	print('</signal>')