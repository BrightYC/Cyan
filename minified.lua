local a,b,c,d,e,f,g,h,i,j,k,l,m,n={"/init.lua","/OS.lua"},{},{},unicode,computer;local function o(p)local q={e.pullSignal(p or math.huge)}q[1]=q[1]or""if#q>0 and h.n>0 and(q[1]:match"key"and not h[q[5]]or q[1]:match"cl"and not h[q[4]])then return{""}end;c[q[4]or""]=q[1]=="key_down"and 1;if c[29]and(c[56]and c[46]or c[32])then return"F"end;return table.unpack(q)end;local function r(s)local address=component.list(s)()return address and component.proxy(address)end;local function t(u,v,w)local x,y=load("return "..u,v,F,w)if not x then x,y=load(u,v,F,w)end;if x then return xpcall(x,debug.traceback)else return F,y end end;local function z(A,B)n={}for C in A:gmatch"[^\r\n]+"do n[#n+1]=C:gsub("\t",B and"    "or"")end end;local function D(p,E,G)local H,I,u,J=e.uptime()+(p or math.huge)repeat I,J,J,u=o(H-e.uptime())if I=="F"or I=="key_down"and(u==E or E==0)then if G then G()end;return 1 end until e.uptime()>=H end;local K,L,M=r"gp"or{},r"pr",component.list"sc"()local N,O=L.getData(),L.setData;L.setData=function(P,Q)N=Q and P or(N:match"[a-f-0-9]+"and N:gsub("[a-f-0-9]+",P)or P)O(N)end;L.getData=function()return N:match"[a-f-0-9]+"or N end;e.setBootAddress=L.setData;e.getBootAddress=L.getData;h=select(2,pcall(load("return "..(N:match"#(.+)*"or""))))or{}i=N:match"*"h.n=#h;for R=1,#h do h[h[R]],h[R]=1,F end;if K and M then K.bind(M)k,l=K.maxResolution()g=l/2;K.setPaletteColor(9,0x002b36)K.setPaletteColor(11,0x8cb9c5)end;local function S(T,U,V,W,X)K.setBackground(W or 0x002b36)K.setForeground(X or 0x8cb9c5)K.set(T,U,V)end;local function Y(T,U,Z,_,a0,W,X)K.setBackground(W or 0x002b36)K.setForeground(X or 0x8cb9c5)K.fill(T,U,Z,_,a0)end;local function a1()Y(1,1,k,l," ")end;local function a2(a3)return math.ceil(k/2-a3/2)end;local function a4(U,A,W,X)S(a2(d.len(A)),U,A,W,X)end;local function a5(A,a6,a7,E,G,a8,y)if K and M then z(A)local a9,U=K.set,math.ceil(g-#n/2)K.setPaletteColor(9,0x002b36)K.setPaletteColor(11,0x8cb9c5)a1()if a6 then a4(U-1,a6,0x002b36,0xFFFFFF)U=U+1 end;for R=1,#n do a4(U,n[R])U=U+1 end;if a8 and K and M then K.set=function(...)K.setPaletteColor(9,0x969696)K.setPaletteColor(11,0xb4b4b4)a9(...)K.set=a9 end end;return D(a7 or 0,E,G)end end;local function aa(y)return K and M and a5(y,[[¯\_(ツ)_/¯]],math.huge,0,e.shutdown,1)or error(y)end;local function ab(address)local r=component.proxy(address)if r and r.spaceTotal and address~=e.tmpAddress()then b[#b+1]={r,r.getLabel()or"N/A",address}for R=1,#a do if r.exists(a[R])then b[#b][4]=a[R]end end end end;local function ac()b={}ab(L.getData())for ad in pairs(component.list"f")do ab(L.getData()~=ad and ad or"")end end;local function ae(A,af)return d.len(A)>af and d.sub(A,1,af).."…"or A end;local function ag(ah,ai,U,aj,ak)local ag,al,am,an,T,ao,I,ap,u,J="",d.len(ah),1,1::aq::I,J,ap,u=o(.5)if I=="F"then ag=F;goto ar elseif I=="key_down"then if ap>=32 and d.len(al..ag)<k-al-1 then ag=d.sub(ag,1,am-1)..d.char(ap)..d.sub(ag,am,-1)am=am+1 elseif ap==8 and#ag>0 then ag=d.sub(d.sub(ag,1,am-1),1,-2)..d.sub(ag,am,-1)am=am-1 elseif ap==13 then goto ar elseif u==203 and am>1 then am=am-1 elseif u==205 and am<=d.len(ag)then am=am+1 elseif u==200 and ak then ag=ak;am=d.len(ak)+1 elseif u==208 and ak then ag=""am=1 end;an=1 elseif I:match"cl"then ag=d.sub(ag,1,am-1)..ap..d.sub(ag,am,-1)am=am+d.len(ap)elseif I~="key_up"then an=not an end;T=aj and a2(d.len(ag)+al)or ai;ao=T+al+am-1;Y(1,U,k,1," ")S(T,U,ah..ag,0x002b36,0xFFFFFF)if ao<=k then S(ao,U,K.get(ao,U),an and 0xFFFFFF or 0x002b36,an and 0x002b36 or 0xFFFFFF)end;goto aq::ar::Y(1,U,k,1," ")return ag end;local function as(...)local A=table.pack(...)for R=1,A.n do A[R]=tostring(A[R])end;z(table.concat(A,"    "),1)for R=1,#n do K.copy(1,1,k,l-1,0,-1)Y(1,l-1,k,1," ")S(1,l-1,n[R])end end;local function at(au,a8)address=ae(au[3],a8 and 36 or 6)return au[4]and("Boot%s %s from %s (%s)"):format(a8 and"ing"or"",au[4],au[2],address)or("Boot from %s (%s) is not available"):format(au[2],address)end;local function av(au)if au[4]then local aw,P,x,ax,y,av=au[1].open(au[4],"r"),""::aq::x=au[1].read(aw,math.huge)if x then P=P..x;goto aq end;au[1].close(aw)av=function()a5(at(au,1),F,.5,F,F,1)if L.getData()~=au[3]then L.setData(au[3])end;ax,y=t(P,"="..au[4])if not ax then aa(y)end;return 1 end;P=i and not j and a5("Hold any button to boot",F,math.huge,0,av)or av()end end;local function ay(az,U,aA,aB,aC)return{e=az,s=1,y=U,k=aB,b=aA,d=function(aD,aE,aF)U=aD.y;aA=aD.b;Y(1,U-1,k,3," ",0x002b36)f=aF and f or aD;local aG,aH,aI,T,aJ,aK=0,aA==1 and 6 or 8;if aC then aC(aD)end;for R=1,#aD.e do aG=aG+d.len(aD.e[R].t)+aH end;aG=aG-aH;T=a2(aG)for R=1,#aD.e do aJ,aK=aD.s==R and 1,aD.e[R]aI=d.len(aK.t)if aJ and not aE then Y(T-aH/2,U-(aA==1 and 0 or 1),aI+aH,aA==1 and 1 or 3," ",0x8cb9c5)S(T,U,aK.t,0x8cb9c5,0x002b36)else S(T,U,aK.t,0x002b36,0x8cb9c5)end;T=T+aI+aH end end}end;local function aL()j=1::aM::m=r"et"ac()local w,I,u,P,aN,aO,aP,au,r,aQ,aR,aS,aw,x,aT,aU,J=setmetatable({print=as,proxy=r,os={sleep=function(p)D(p)end},read=function(ak)as(" ")local P=ag("",1,l-1,F,ak)S(1,l-1,P)return P end},{__index=_G})aN=ay({{t="Power off",a=function()e.shutdown()end},{t="Lua",a=function()a1()::aq::P=ag("> ",1,l,F,P)if P then as("> "..P)S(1,l,">")as(select(2,t(P,"=stdin",w)))goto aq end;aP(F,F,1,1)end}},g+2,1,function()f=aO;aP(1,1,F,F)end)aN.e[#aN.e+1]=m and{t="Netboot",a=function()aS,P=ag("URL: ",F,g+7,1),""if#aS>0 then aw,x=m.request(aS),""if aw then a5("Downloading "..aS.."...")::aq::x=aw.read()if x then P=P..x;goto aq end;aw.close()a5(select(2,t(P,"=netboot"))or"is empty","Netboot:",math.huge,0)else a5("Invalid URL","Netboot:",math.huge,0)end end;aP(F,F,1,1)end}if#b>0 then aT=#aN.e+1;aO=ay({},g-2,2,function()f=aN;aP(F,F,1,1)end,function(aD)au=b[aD.s]r=au[1]aU=r.spaceTotal()aQ=r.isReadOnly()Y(1,g+5,k,3," ")a4(g+5,at(au),F,0xFFFFFF)a4(g+7,("Disk usage %s%% / %s / %s"):format(math.floor(r.spaceUsed()/(aU/100)),aQ and"Read only"or"Read & Write",aU<2^20 and"FDD"or aU<2^20*12 and"HDD"or"RAID"))for R=aT,#aN.e do aN.e[R]=F end;if aQ then aN.s=aN.s>#aN.e and#aN.e or aN.s else aN.e[aT]={t="Rename",a=function()aR=ag("New label: ",F,g+7,1)if#aR>0 then pcall(r.setLabel,aR)au[2]=ae(aR,16)aO.e[aD.s].t=ae(aR,6)end;aO:d(1,1)aN:d()end}aN.e[#aN.e+1]={t="Format",a=function()au[4]=F;r.remove("/")aO:d(1,1)aN:d()end}end;aN:d(1,1)end)for R=1,#b do aO.e[R]={t=ae(b[R][2],6),a=function(aD)av(b[aD.s])end}end else aN.y=g;aN.b=2 end;aP=function(aV,aW,aX,aY)a1()if aO then aO:d(aX,aY)aN:d(aV,aW)else a4(g+4,"No drives available",0x002b36,0xFFFFFF)aN:d()end;a4(l,"Use ← ↑ → key to move cursor; Enter to do action; CTRL+D to shutdown")end;aP(1,1)::aq::I,J,J,u=o()if I=="key_down"then if u==200 then f.k()elseif u==208 then f.k()elseif u==203 then f.s=f.s>1 and f.s-1 or#f.e;f:d()elseif u==205 then f.s=f.s<#f.e and f.s+1 or 1;f:d()elseif u==28 then f.e[f.s].a(f)end elseif I:match"component"then goto aM elseif I=="F"then e.shutdown()end;goto aq end;ac()a5("Hold CTRL to stay in bootloader",F,.5,29,aL)for R=1,#b do if av(b[R])then e.shutdown()end end;m=K and M and aL()or error"No drives available"