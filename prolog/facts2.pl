:- discontiguous physicalObject/1.
:- discontiguous annotation/2.
:- discontiguous hasPart/2.
:- discontiguous hasText/2.
:- discontiguous token/1.
:- discontiguous meronomicFluent/1.
:- discontiguous hasWhole/2.
:- discontiguous portionMass/1.
:- discontiguous swhat/2.
:- discontiguous ptwhat/2.
:- discontiguous pwhat/2.
:- discontiguous hasComponent/2.
:- discontiguous hasValue/2.
:- discontiguous hasName/2.
:- discontiguous hasComponent2/2.
:- discontiguous hasComponent1/2.
:- discontiguous over/1.
:- discontiguous spatialFluent/1.
:- discontiguous overlying/1.
:- discontiguous componentObject/1.
:- discontiguous property/1.
:- discontiguous propertyFluent/1.
:- discontiguous cwho/2.
:- discontiguous cwhat/2.
:- discontiguous capability/1.
:- discontiguous fwhat/2.
:- discontiguous artifact/1.
:- discontiguous functionality/1.
:- discontiguous artifact/1.
:- discontiguous hasText/1.
:- discontiguous cover/1.
:- discontiguous covered/1.
:- discontiguous physicalAgent/1.
:- discontiguous action/1.
:- discontiguous materialObject/1.
:- discontiguous hasUri/2.
:- discontiguous uri/1.
:- discontiguous who/2.
:- discontiguous hasTemporalEntity2/2.
:- discontiguous hasTemporalEntity1/2.
:- discontiguous when/2.
:- discontiguous during/1.
:- discontiguous what/2.
:- discontiguous event/1.
:- discontiguous year/2.
:- discontiguous dataCalendar/1.
:- discontiguous location/1.
:- discontiguous start/1.
:- discontiguous where/2.
:- discontiguous contains/1.
:- discontiguous person/1.
:- discontiguous socialAgent/1.
:- discontiguous before/1.
:- discontiguous cwhen/2.
:- discontiguous hasEffect/2.
:- discontiguous hasCause/2.
:- discontiguous causalrelation/1.
:- discontiguous cwhy/2.
:- discontiguous causeEvent/1.
:- discontiguous after/1.
:- discontiguous causalrelation/1.
:- discontiguous causalrelation/1.
:- discontiguous overlap/1.
:- discontiguous cwhy/2.
:- discontiguous causeEvent/1.
:- discontiguous after/1.
:- discontiguous hasObject/2.
:- discontiguous proximity/1.
:- discontiguous dateCalendar/1.
:- discontiguous interval/1.
:- discontiguous begin/2.
:- discontiguous end/2.
:- discontiguous hasSubject/2.
:- discontiguous right/1.
:- discontiguous month/2.
:- discontiguous role/1.
:- discontiguous roleFluent/1.
:- discontiguous rwhat/2.
:- discontiguous day/2.
:- discontiguous finist/1.
:- discontiguous left/1.

token(tok1).
hasText(tok1, "Santa Maria del Fiore").
physicalObject(po1).
annotation(po1,tok1).

token(tok016).
hasText(tok016, "Firenze").
physicalObject(po901).
annotation(po901, tok016).

token(tok2).
hasText(tok2, "la cui costruzione fu progettata").
hasText(tok2, "progettò la costruzione").
hasText(tok2, "ha progettato").
hasText(tok2, "progettò").
action(act1).
hasObject(act1, po1).
annotation(act1,tok2).

token(tok3).
hasText(tok3, "Arnolfo di Cambio").
physicalAgent(pa1).
annotation(pa1,tok3).

event(e1).
what(e1, act1).
who(e1, po1).
who(e1, pa1).

token(tok4).
hasText(tok4, "è la terza chiesa del mondo").
propertyFluent(fprop1).
pwhat(fprop1, prop1).
property(prop1).
hasName(prop1, "è la terza chiesa del mondo").
hasComponent(prop1, po1).
annotation(prop1,tok4).

token(tok5).
hasText(tok5, "San Pietro a Roma").
physicalObject(po2).
annotation(po2, tok5).

token(tok6).
hasText(tok6, "San Paolo a Londra").
physicalObject(po3).
annotation(po3, tok6).

token(tok7).
hasText(tok25, "è la più grande in Europa").
propertyFluent(fprop2).
pwhat(fprop2, prop2).
property(prop2).
hasName(prop2, "è la più grande in Europa").
hasComponent(prop2, po1).
annotation(prop2,tok7).

token(tok9).
hasText(tok9, "1400").
dataCalendar(t1).
year(t1, 1400).
annotation(t1, tok9).

token(tok8).
hasText(tok8, "ultimazione").
hasText(tok8, "terminò").
hasText(tok8, "ultimò").
hasText(tok8, "fu ultimata").
action(act2).
hasObject(act2, po1).
annotation(act2,tok8).

event(e2).
what(e2, act2).
who(e2, po1).
when(e2, t1).
during(trel01).
when(e2, trel01).
hasTemporalEntity1(trel01, e2).
hasTemporalEntity2(trel01, t1).

token(tok10).
hasText(tok10, "lunga").
propertyFluent(fprop3).
pwhat(fprop3, prop3).
property(prop3).
hasName(prop3, "lunga").
hasComponent(prop3, po1).
hasValue(prop3, "153 metri").
annotation(prop3,tok10).

token(tok11).
hasText(tok11, "larga").
propertyFluent(fprop4).
pwhat(fprop4, prop4).
property(prop4).
hasName(prop4, "larga").
hasComponent(prop4, po1).
hasValue(prop4, "90 metri").
annotation(prop4,tok11).

token(tok12).
hasText(tok12, "alta").
propertyFluent(fprop5).
pwhat(fprop5, prop5).
property(prop5).
hasName(prop5, "alta").
hasComponent(prop5, po1).
hasValue(prop5, "90 metri").
annotation(prop5,tok12).

token(tok13).
hasText(tok13, "cattedrale fiorentina").
propertyFluent(fprop6).
pwhat(fprop6, prop6).
property(prop6).
hasName(prop6, "cattedrale fiorentina").
hasComponent(prop6, po1).
annotation(prop6,tok13).

token(tok14).
hasText(tok14,"fu intitolata cattedrale fiorentina").
action(act3).
hasObject(act3, po1).
annotation(act3,tok14).

token(tok15).
hasText(tok15, "1412").
dataCalendar(t2).
year(t2, 1412).
annotation(t2, tok15).

token(tok799).
hasText(tok799, "è la città in cui").
spatialFluent(spF799).
swhat(spF799, spRel799).
contains(spRel799).
hasComponent1(spRel799, po901).
hasComponent2(spRel799, po1).
annotation(spRel799, tok799).

event(e3).
what(e3,act3).
who(e3, po1).
where(e3, loc1).
during(trel1).
when(e3, trel1).
hasTemporalEntity1(trel1, e3).
hasTemporalEntity2(trel1, t2).

token(tok17).
hasText(tok17,"allusione al giglio").
mentalFluent(menF1).
mwhat(menF1, menF1).
desire(mact1).
hasAgent(mact1, pa1).
hasEvent(mact1, e11).
annotation(tok17, mact1).

token(tok18).
hasText(tok18, "Giglio").
physicalObject(po4).
annotation(po3, tok18).

functionality(fun1).
artifact(po4).
fwhat(fun21, canx1).
capability(canx1).
cwhat(canx1, act3).
cwho(canx1, po4).

token(tok19).
hasText(tok19,"Sorse").
hasText(tok19,"è sorta").
action(act4).
hasObject(act4, po1).
annotation(act4,tok19).

token(tok20).
hasText(tok22, "la seconda cattedrale").
physicalObject(po4).
annotation(po4, tok20).


token(tok21).
hasText(tok248, "Sopra").
spatialFluent(spF1).
swhat(spF1, spRel1).
proximity(spRel1).
hasComponent1(spRel1, po1).
hasComponent2(spRel1, po4).
annotation(spRel1, tok20).

token(tok22).
hasText(tok21, "la Firenze paleocristiana").
physicalObject(po5).
annotation(po5, tok22).

%Sorse
event(e4).
what(e4,act4).
who(e4, po1).
who(e4, po4).

token(tok23).
hasText(tok23, "Santa Reparata").
physicalAgent(pa2).
annotation(pa2,tok23).

token(tok23).
hasText(tok23,"aveva dedicato").
hasText(tok23,"dedicò").
action(act5).
hasObject(act5, po5).
hasObject(act5,pa2).
annotation(act5,tok19).

event(e5).
what(e5,act5).
who(e5, po5).
who(e5, pa2).

token(tok201).
hasText(tok201, "la prima pietra").
physicalObject(po201).
annotation(po201,tok201).

token(tok202).
hasText(tok202, "facciata").
physicalObject(po202).
annotation(po202,tok202).

token(tok203).
hasText(tok203,"venne posizionata").
hasText(tok203,"fu posta").
action(act201).
hasObject(act201, po201).
annotation(act201,tok203).

token(tok204).
hasText(tok204, "l'8 settembre 1296").
dataCalendar(t201).
year(t201, 1296).
annotation(t201, tok204).

event(e201).
what(e201,act201).
who(e201, po201).
when(e201, trel001).
during(trel001).
hasTemporalEntity1(trel001, e201).
hasTemporalEntity2(trel001, t201).

token(tok205).
hasText(tok205, "Duomo").
physicalObject(po203).
annotation(po203,tok205).

token(tok206).
hasText(tok206,"lavorò").
action(act202).
hasObject(act202, po03).
annotation(act202,tok206).

token(tok207).
hasText(tok207, "1296").
dataCalendar(t202).
year(t202, 1296).
annotation(t202, tok207).

token(tok208).
hasText(tok208, "1302").
dataCalendar(t203).
year(t203, 1302).
annotation(t203, tok208).

event(e202).
what(e202,act202).
who(e202, po203).
who(e202, pa1).
interval(int201).
begin(int201, t202).
end(int201, t203).
when(e202, trel201).
during(trel201).
hasTemporalEntity1(trel201, e202).
hasTemporalEntity2(trel201, int201).

token(tok209).
hasText(tok209,"Ideò").
action(act202).
hasObject(act202, po203).
annotation(act202,tok209).

token(tok210).
hasText(tok210, "spazi classici").
propertyFluent(fprop201).
pwhat(fprop201, prop201).
property(prop201).
hasName(prop201, "spazi classici").
hasComponent(prop201, po203).
annotation(prop201,tok210).

token(tok211).
hasText(tok211, "navate").
physicalObject(po204).
annotation(po204,tok211).

token(tok212).
hasText(tok212, "con").
meronomicFluent(merf201).
ptwhat(merf201, relPtCo201).
componentObject(relPtCo201).
hasPart(relPtCo201, po204).
hasWhole(relPtCo201, po203).
annotation(relPtCo201,tok212).

token(tok213).
hasText(tok213, "ampie").
propertyFluent(fprop202).
pwhat(fprop202, prop202).
property(prop202).
hasName(prop202, "ampie").
hasComponent(prop202, po204).
annotation(prop202,tok213).


token(tok216).
hasText(tok216, "l'altare maggiore").
physicalObject(po206).
annotation(po206,tok216).

token(tok214).
hasText(tok214, "coro").
physicalObject(po205).
annotation(po205,tok214).

token(tok215).
hasText(tok215, "vasto").
propertyFluent(fprop203).
pwhat(fprop203, prop203).
property(prop203).
hasName(prop203, "vasto").
hasComponent(prop203, po205).
annotation(prop203,tok215).

token(tok2107).
hasText(tok2107, "nel").
spatialFluent(spF2051).
swhat(spF2051, spRel2001).
proximity(spRel2001).
hasComponent1(spRel2001, po205).
hasComponent2(spRel2001, po206).
annotation(spRel2001, tok2107).

token(tok217).
hasText(tok217, "di fronte alla").
spatialFluent(spF201).
swhat(spF215, spRel201).
proximity(spRel201).
hasComponent1(spRel201, po205).
hasComponent2(spRel201, po206).
annotation(spRel201, tok217).

token(tok218).
hasText(tok218, "le tribune").
physicalObject(po207).
annotation(po207,tok218).

token(tok219).
hasText(tok219, "è circondato").
spatialFluent(spF202).
swhat(spF215, spRel202).
proximity(spRel202).
hasComponent1(spRel202, po206).
hasComponent2(spRel202, po207).
annotation(spRel202, tok219).

token(tok220).
hasText(tok220, "la Cupola").
physicalObject(po208).
annotation(po208,tok220).

token(tok221).
hasText(tok221, "su cui si innesta").
spatialFluent(spF203).
swhat(spF215, spRel203).
proximity(spRel203).
hasComponent1(spRel203, po207).
hasComponent2(spRel203, po208).
annotation(spRel203, tok221).

token(tok221).
hasText(tok221, "Il progetto").
physicalObject(po209).
annotation(po209,tok221).

token(tok222).
hasText(tok222, "struttura attuale della chiesa").
physicalObject(po210).
annotation(po210,tok222).

token(tok223).
hasText(tok223, "era notevolmente diverso").
propertyFluent(fprop204).
pwhat(fprop203, prop204).
property(prop204).
hasName(prop204, "era notevolmente diverso").
hasComponent(prop204, po209).
annotation(prop204,tok223).

token(tok224).
hasText(tok224, "edificio").
physicalObject(po211).
annotation(po211,tok224).

token(tok225).
hasText(tok225, "le prime quattro finestre").
physicalObject(po212).
annotation(po212,tok225).

token(tok226).
hasText(tok226, "sui fianchi").
spatialFluent(spF204).
swhat(spF215, spRel204).
proximity(spRel204).
hasComponent1(spRel204, po211).
hasComponent2(spRel204, po212).
annotation(spRel204, tok226).

token(tok227).
hasText(tok227, "più basse, più strette e più ravvicinate").
propertyFluent(fprop205).
pwhat(fprop203, prop205).
property(prop205).
hasName(prop205, "più basse, più strette e più ravvicinate").
hasComponent(prop205, po212).
annotation(prop205,tok227).

token(tok228).
hasText(tok228, "quelle").
physicalObject(po213).
annotation(po213,tok228).

token(tok229).
hasText(tok229, "verso est").
spatialFluent(spF205).
swhat(spF215, spRel205).
proximity(spRel205).
hasComponent1(spRel205, po212).
hasComponent2(spRel205, po213).
annotation(spRel205, tok229).

token(tok230).
hasText(tok230, "l'ampliamento").
physicalObject(po214).
annotation(po214,tok230).

token(tok231).
hasText(tok231, "fanno parte").
meronomicFluent(merf202).
ptwhat(merf202, relPtCo202).
componentObject(relPtCo202).
hasPart(relPtCo202, po213).
hasWhole(relPtCo202, po214).
annotation(relPtCo202,tok231).

token(tok232).
hasText(tok232, "Francesco Talenti").
physicalAgent(pa201).
annotation(pa201,tok232).

token(tok233).
hasText(tok233,"ha operato").
action(act203).
hasSubject(act203, pa201).
hasObject(act203, po214).
annotation(act203, tok233).

event(e203).
what(e203, act203).
who(e203, po214).
who(e203, pa201).

token(tok234).
hasText(tok234, "due campate").
physicalObject(po215).
annotation(po215,tok234).

token(tok235).
hasText(tok235, "metà della nuova facciata").
physicalObject(po216).
annotation(po216,tok235).

token(tok236).
hasText(tok236,"arriva a finire").
action(act204).
hasSubject(act204, pa1).
hasObject(act204, po215).
hasObject(act204, po216).
annotation(act204, tok236).

%%%%%%%%%%%%%%%%%%%% Terzo paragrafo %%%%%%%%%%%%%%%%

token(tok301).
hasText(tok301, "la facciata").
physicalObject(po301).
annotation(po301,tok301).

token(tok302).
hasText(tok302,"fu smantellata").
hasText(tok302,"fu rimossa").
action(act301).
hasObject(act301, po301).
annotation(act301,tok302).

token(tok303).
hasText(tok303, "1587").
dataCalendar(t301).
year(t301, 1587).
annotation(t301, tok303).

token(tok304).
hasText(tok304, "Francesco I de' Medici").
physicalAgent(pa301).
annotation(pa301,tok304).

token(tok305).
roleFluent(rolF301).
rwhat(rolF301, relrole301).
role(relrole301).
hasName(relrole301, "Granduca").
hasComponent1(relrole301, pa301).
annotation(rol301, tok305).

event(e301).
what(e301,act301).
who(e301, po301).
when(e301, trel301).
during(trel301).
hasTemporalEntity1(trel301, e301).
hasTemporalEntity2(trel301, t301).

token(tok306).
hasText(tok306,"decise di costruire").
action(act302).
hasObject(act302, po301).
hasSubject(act302, pa301).
annotation(act302,tok306).

token(tok307).
hasText(tok307, "una nuova facciata").
physicalObject(po302).
annotation(po302,tok307).

event(e3001).
what(e3001,act302).
who(e3001, pa301).
who(e3001, po302).

token(tok308).
hasText(tok308, "moderna").
propertyFluent(fprop301).
pwhat(fprop301, prop301).
property(prop301).
hasName(prop301, "moderna").
hasComponent(prop301, po302).
annotation(prop301,tok308).

token(tok309).
hasText(tok307, "le statue").
physicalObject(po303).
annotation(po303,tok309).

functionality(fun301).
artifact(po303).
fwhat(fun301, canx301).
capability(canx301).
cwhat(canx301, act302). 
cwho(canx301, po303).

token(tok310).
hasText(tok302,"Sono oggi esposte").
action(act303).
hasObject(act303, po303).
annotation(act303,tok310).

token(tok311).
hasText(tok311, "nel Museo dell'Opera del Duomo").
location(loc301).
annotation(loc301, tok311).

token(tok312).
hasText(tok312, "Alla morte").
dataCalendar(t302).
year(t302, 1310).
annotation(t302, tok312).

token(tok313).
hasText(tok313, "di Arnolfo").
physicalAgent(pa302).
annotation(pa302,tok313).

token(tok313).
hasText(tok313,"avvenuta").
action(act304).
hasObject(act313, t302).
annotation(act313,tok313).

token(tok314).
hasText(tok314, "i lavori").
physicalObject(po304).
annotation(po304,tok314).

token(tok315).
hasText(tok315,"subirono un rallentamento").
action(act305).
hasObject(act305, po304).
annotation(act305,tok315).

event(e302).
what(e302,act305).
who(e302, po301).
who(e302,pa302).
when(e302, trel302).
during(trel302).
hasTemporalEntity1(trel302, e302).
hasTemporalEntity1(trel302, t302).

token(tok316).
hasText(tok316, "Alla morte").
dataCalendar(t303).
year(t303, 1331).
annotation(t303, tok316).

token(tok317).
roleFluent(rolF302).
rwhat(rolF302, relrole302).
role(relrole302).
hasName(relrole302, "i magistrati dell'Arte della Lana").
hasComponent1(relrole302, relrole302).
annotation(rolF302, tok317).

token(tok318).
hasText(tok314, "la costruzione").
physicalObject(po305).
annotation(po305,tok318).


token(tok319).
hasText(tok319,"si assunsero la cura ").
action(act306).
hasObject(act306, po305).
annotation(act306,tok319).

token(tok320).
hasText(tok320, "1334").
dataCalendar(t304).
year(t304, 1334).
annotation(t304, tok320).

token(tok321).
hasText(tok321, "Giotto").
physicalAgent(pa303).
annotation(pa303,tok321).

token(tok322).
hasText(tok322,"fu nominato").
action(act307).
hasSubject(act307, pa303).
annotation(act307,tok322).

token(tok323).
roleFluent(rolF303).
rwhat(rolF303, relrole303).
role(relrole303).
hasName(relrole303, "capomastro dell'Opera").
hasComponent1(relrole303, pa303).
annotation(rolF303, tok323).

event(e3003).
what(e3003,act307).
who(e3003, pa303).

token(tok324).
hasText(tok324,"si occupò prevalentemente della costruzione del campanile ").
action(act308).
hasObject(act308, pa303).
annotation(act308,tok324).

token(tok325).
hasText(tok325,"morì").
action(act309).
hasSubject(act309, pa303).
annotation(act3089,tok325).

token(tok326).
hasText(tok326, "tre anni dopo").
dataCalendar(t305).
year(t304, 1337).
annotation(t305, tok326).

event(e303).
what(e303,act309).
who(e303, pa303).
when(e303, t305).
hasTemporalEntity1(t305, e303).

token(tok327).
hasText(tok327, "Giotto").
physicalAgent(pa304).
annotation(pa304,tok327).

token(tok328).
hasText(tok328, "Andrea Pisano").
physicalAgent(pa305).
annotation(pa305,tok328).

token(tok329).
hasText(tok329,"subentrò ").
action(act310).
hasObject(act310, pa305).
annotation(act310,tok329).

token(tok330).
hasText(tok330, "1348").
dataCalendar(t306).
year(t306, 1348).
annotation(t306, tok330).

token(tok331).
hasText(tok331, "la popolazione").
physicalAgent(pa306).
annotation(pa331,tok331).

token(tok332).
hasText(tok332,"peste che decimò ").
action(act311).
hasObject(act311, pa306).
annotation(act311,tok332).

event(e304).
what(e304,act311).
who(e304, pa306).
when(e304, t306).
hasTemporalEntity1(t306, e304).

token(tok333).
hasText(tok333, "terribile").
propertyFluent(fprop302).
pwhat(fprop302, prop302).
property(prop302).
hasName(prop302, "terribile").
hasComponent(prop302, e304).
annotation(prop302,tok333).


%%%%%%%%%% Quarto paragrafo %%%%%%%%%%%%%

token(tok401).
hasText(tok401,"I lavori proseguirono").
action(act401).
hasObject(act401, po1).
annotation(act401,tok401).

token(tok402).
hasText(tok402, "in seguito al concorso bandito").
dataCalendar(t401).
year(t401, 1367).
annotation(t401, tok402).

event(e401).
what(e401, act401).
when(e401, t401).
hasTemporalEntity1(t401, e401).

token(tok404).
hasText(tok404, "il modello definitivo della chiesa").
physicalObject(po401).
annotation(po401,tok404).

token(tok405).
hasText(tok405,"fù accettato").
action(act402).
hasObject(act402, po401).
annotation(act402,tok405).

token(tok406).
hasText(tok406,"proposto da").
action(act403).
hasObject(act403, po401).
annotation(act403,tok406).

%token(tok407).
%hasText(tok407, "Andrea di Bonaiuto").
%physicalAgent(pa401).
%annotation(pa401,tok407).

%token(tok408).
%hasText(tok408, "Benci").
%physicalAgent(pa402).
%annotation(pa402,tok408).

%token(tok409).
%hasText(tok409, "Andrea di Cione").
%physicalAgent(pa403).
%annotation(pa403,tok409).

token(tok410).
hasText(tok410, "Taddeo Gaddi").
physicalAgent(pa404).
annotation(pa404,tok410).

token(tok411).
hasText(tok411, "Neri di Fiorvante").
physicalAgent(pa405).
annotation(pa405,tok411).

event(e402).
what(e402, act403).
who(e402, po401).
who(e402, pa401).
who(e402, pa402).
who(e402, pa403).
who(e402, pa404).
who(e402, pa405).

token(tok412).
hasText(tok412, "1349").
dataCalendar(t402).
year(t402, 1349).
annotation(t402, tok412).

token(tok413).
hasText(tok413, "1359").
dataCalendar(t403).
year(t403, 1349).
annotation(t403, tok413).

token(tok415).
hasText(tok415, "Francesco Talenti").
physicalAgent(pa406).
annotation(pa406, tok415).

token(tok416).
hasText(tok416,"la direzione tocca a").
action(act404).
hasSubject(act404, pa406).
annotation(act404,tok416).

token(tok417).
hasText(tok417, "il campanile").
physicalObject(po402).
annotation(po402,tok417).

token(tok4106).
hasText(tok4106,"completa").
hasText(tok4106,"ha completato").
hasText(tok4106,"completò").
hasText(tok4106,"fu completato").
action(act405).
hasObject(act405, po402).
hasSubject(act405, pa406).
annotation(act405,tok4106).

event(e4053).
what(e4053,act405).
who(e4053, pa406).
who(e4053, po402).
when(e4053, trel4051).
during(trel4051).
hasTemporalEntity1(trel4051, e4053).
hasTemporalEntity2(trel4051, t403).

event(e403).
what(e403,act404).
what(e403,act405).
who(e403, pa401).
who(e403, po402).
interval(int401).
begin(int401, t402).
end(int401, t403).
when(e403, trel401).
during(trel401).
hasTemporalEntity1(trel401, e403).
hasTemporalEntity2(trel401, int401).

token(tok417).
hasText(tok417, "1378").
dataCalendar(t404).
year(t404, 1378).
annotation(t404, tok417).

token(tok418).
hasText(tok418, "la volta della navata centrale").
physicalObject(po403).
annotation(po403,tok418).

token(tok419).
hasText(tok419,"fu ultimata").
action(act406).
hasObject(act406, po403).
annotation(act406,tok419).

token(tok420).
hasText(tok420, "1380").
dataCalendar(t405).
year(t405, 1380).
annotation(t405, tok420).

token(tok421).
hasText(tok421, "le navate minori").
physicalObject(po404).
annotation(po404,tok421).

token(tok422).
hasText(tok422,"furono terminate").
action(act407).
hasObject(act407, po404).
annotation(act407,tok422).

token(tok423).
hasText(tok423, "1421").
dataCalendar(t406).
year(t406, 1421).
annotation(t406, tok423).

token(tok424).
hasText(tok424, "le tribune").
physicalObject(po405).
annotation(po405,tok424).

token(tok426).
hasText(tok426, "il tamburo della cupola").
physicalObject(po406).
annotation(po406,tok426).

token(tok425).
hasText(tok425,"furono costruite").
action(act408).
hasObject(act408, po405).
hasObject(act408, po406).
annotation(act408,tok425).

event(e404).
what(e404,act408).
who(e404, pa405).
who(e404, po406).
interval(int402).
begin(int402, t405).
end(int402, t406).
when(e404, trel402).
during(trel402).
hasTemporalEntity1(trel402, e404).
hasTemporalEntity2(trel402, int402).

%%%%%%%%%%%%%%%%%%%% Quinto paragrafo %%%%%%%%%%%%%%%%

token(tok501).
hasText(tok501, "La cupola").
physicalObject(po501).
annotation(po501,tok501).

token(tok502).
hasText(tok502, "è un capolavoro assoluto dell'arte").
propertyFluent(fprop501).
pwhat(fprop501, prop501).
property(prop501).
hasName(prop501, "è un capolavoro assoluto dell'arte").
hasComponent(prop501, po501).
annotation(prop501,tok502).

token(tok503).
hasText(tok503,"incanta").
action(act501).
hasObject(act501, po501).
annotation(act408,tok503).

token(tok504).
hasText(tok504, "fin dalla sua realizzazione").
dataCalendar(t501).
year(t501, 1420).
annotation(t501, tok504).

event(e501).
what(e501, act501).
who(e501, po501).
when(e501, t501).

token(tok505).
hasText(tok505, "è il simbolo").
action(act502).
hasObject(act502, po501).
annotation(act502, tok505).

token(tok506).
hasText(tok506, "Firenze").
location(loc501).
annotation(loc501, tok506).

token(tok507).
hasText(tok507, "del Rinascimento").
physicalObject(po502).
annotation(po502,tok507).

token(tok508).
hasText(tok508, "e dell'umanesimo").
physicalObject(po503).
annotation(po503,tok508).

functionality(fun501).
artifact(po501).
fwhat(fun501, canx501).
capability(canx501).
cwhat(canx501, act502).
cwho(canx501, po501).
cwho(canx501, po502).
cwho(canx501, po503).
cwhere(canx501, loc501).

token(tok509).
hasText(tok509, "ha un diametro di").
propertyFluent(fprop501).
pwhat(fprop501, prop501).
property(prop501).
hasName(prop501, "diametro").
hasComponent(prop501, po501).
hasValue(prop501, "45,5 metri").
annotation(prop501,tok509).

token(tok510).
hasText(tok510, "altezza totale di").
propertyFluent(fprop502).
pwhat(fprop502, prop502).
property(prop502).
hasName(prop5012, "altezza totale").
hasComponent(prop502, po501).
hasValue(prop502, "116 metri").
annotation(prop502,tok510).

token(tok511).
hasText(tok511, "è la più grande volta in muratura del mondo").
propertyFluent(fprop503).
pwhat(fprop503, prop503).
property(prop503).
hasName(prop503, "è la più grande volta in muratura del mondo").
hasComponent(prop503, po501).
annotation(prop503,tok511).

token(tok515).
hasText(tok515, "Filippo Brunelleschi").
physicalAgent(pa501).
annotation(pa501, tok515).

token(tok512).
hasText(tok505, "fu costruita").
hasText(tok505, "costruì").
action(act503).
hasObject(act503, po501).
hasSubject(act503, pa501).
annotation(act503, tok12).

token(tok513).
hasText(tok513, "1420").
dataCalendar(t502).
year(t502, 1420).
annotation(t502, tok513).

token(tok514).
hasText(tok514, "1436").
dataCalendar(t503).
year(t503, 1436).
annotation(t503, tok514).

event(e5000).
what(e5000, act503).
who(e5000, pa501).
who(e5000, po501).

event(e502).
what(e502,act503).
who(e502, pa501).
who(e502, po501).
interval(int502).
begin(int502, t502).
end(int502, t503).
when(e502, trel402).
during(trel402).
hasTemporalEntity1(trel402, e502).
hasTemporalEntity2(trel402, int502).

token(tok517).
hasText(tok517, "il progetto").
physicalObject(po504).
annotation(po504,tok517).

token(tok516).
hasText(tok516, "seguendo").
action(act504).
hasSubject(act504, pa501).
hasObject(act504, po504).
annotation(act504, tok516).

token(tok517).
hasText(tok517, "presentato al concorso indetto dall'Opera").
action(act505).
hasSubject(act505, pa501).
hasObject(act505, po504).
annotation(act505, tok517).

token(tok518).
hasText(tok518, "1418").
dataCalendar(t504).
year(t504, 1418).
annotation(t504, tok518).

event(e503).
what(e503, act505).
who(e503, po504).
who(e503, pa501).
when(e503, t504).

token(tok519).
hasText(tok519, "25 marzo del 1436").
dataCalendar(t505).
year(t505, 1418).
month(t505, 3).
day(t505, 25).
annotation(t505, tok519).

token(tok520).
hasText(tok520, "la Cattedrale Fiorentina").
physicalObject(po505).
annotation(po505,tok520).

token(tok521).
hasText(tok521, "Papa Eugenio IV").
physicalAgent(pa502).
annotation(pa502, tok521).

token(tok522).
hasText(tok522, "venne consacrata").
hasText(tok522, "consacrò").
action(act5066).
hasSubject(act5066, pa502).
hasObject(act5066, po505).
annotation(act5066, tok522).

event(e504).
what(e504, act5066).
who(e504, pa502).
who(e504, po505).
when(e504, trel5055).
during(trel5055).
hasTemporalEntity1(trel5055, e504).
hasTemporalEntity2(trel5055, t505).

%%%%%%%%%%%%%%% Sesto paragrafo %%%%%%%%%%%%%%%%%

token(tok601).
hasText(tok601, "Brunelleschi").
physicalAgent(pa601).
annotation(pa601, tok601).

token(tok602).
hasText(tok602, "L'innovazione").
action(act601).
hasSubject(act601, pa601).
annotation(act601, tok602).

token(tok603).
hasText(tok603, "mirabile").
propertyFluent(fprop601).
pwhat(fprop601, prop601).
property(prop601).
hasName(prop601, "mirabile").
hasComponent(prop601, act601).
annotation(prop601,tok603).

token(tok604).
hasText(tok604, "la cupola").
physicalObject(po601).
annotation(po602,tok604).

token(tok605).
hasText(tok605, "voltare").
action(act602).
hasComponent(act602, po601).
hasSubject(act602, pa601).
annotation(act602, tok605).

token(tok606).
hasText(tok606, "armature").
physicalObject(po602).
annotation(po602,tok606).

token(tok607).
hasText(tok607, "due cupole distinte").
physicalObject(po603).
annotation(po603,tok607).

token(tok608).
hasText(tok608, "è costituita").
meronomicFluent(merf601).
ptwhat(merf601, relPtCo601).
componentObject(relPtCo601).
hasPart(relPtCo601, po603).
annotation(relPtCo201,tok608).

token(tok609).
hasText(tok609, "Interna").
spatialFluent(spF601).
swhat(spF601, spRel601).
proximity(spRel601).
hasComponent1(spRel601, po603).
annotation(spRel601, tok609).

token(tok610).
hasText(tok610, "spessa oltre due metri").
propertyFluent(fprop602).
pwhat(fprop602, prop602).
property(prop602).
hasName(prop602, "spessa oltre due metri").
annotation(prop602,tok610).

token(tok611).
hasText(tok611, "Angolo maggiore dell'altra").
propertyFluent(fprop603).
pwhat(fprop603, prop603).
property(prop603).
hasName(prop603, "Angolo maggiore dell'altra").
annotation(prop603,tok612).

token(tok612).
hasText(tok612, "grandi archi").
physicalObject(po604).
annotation(po604,tok612).

token(tok613).
hasText(tok613, "costituita").
meronomicFluent(merf602).
ptwhat(merf602, relPtCo602).
componentObject(po604).
hasPart(relPtCo602, po604).
annotation(relPtCo602,tok613).





token(tok614).
hasText(tok612, "mattoni ").
physicalObject(po605).
annotation(po605,tok614).

token(tok615).
hasText(tok615, "in").
meronomicFluent(merf601).
ptwhat(merf601, relPtMo601).
componentObject(relPtMo601).
hasPart(relPtMo601, po605).
hasWhole(relPtMo601, po604).
annotation(relPtM601,tok615).

token(tok616).
hasText(tok616, "disposti a 'spina di pesce' " ).
spatialFluent(spF602).
swhat(spF602, spRel602).
proximity(spRel602).
hasComponent1(spRel602, po605).
annotation(spRel602, tok616).

token(tok617).
hasText(tok617, "esterna" ).
spatialFluent(spF603).
swhat(spF603, spRel603).
proximity(spRel603).
hasComponent1(spRel603, po603).
annotation(spRel603, tok617).

functionality(fun603).
artifact(po603).
fwhat(fun3, canx3).
capability(canx3).
cwho(canx3, po603).

token(tok618).
hasText(tok618, "tegole di cotto").
physicalObject(po606).
annotation(po606,tok618).

token(tok619).
hasText(tok619, "rivestita").
meronomicFluent(merf602).
ptwhat(merf602, relPtCo602).
componentObject(po604).
hasPart(relPtCo602, po604).
annotation(relPtCo602,tok619).

token(tok620).
hasText(tok620, "segnata da otto costoloni" ).
spatialFluent(spF604).
swhat(spF604, spRel604).
proximity(spRel604).
hasComponent1(spRel604, po604).
annotation(spRel604, tok620).

token(tok621).
hasText(tok621, "di marmo bianco").
meronomicFluent(merf602).
ptwhat(merf602, relPtMo602).
componentObject(relPtMo602).
hasPart(relPtMo602, po604).
hasWhole(relPtMo602, po604).
annotation(relPtMo602,tok621).


%%%%%%%%% Settimo paragrafo %%%%%%%%%


token(tok701).
hasText(tok701, "l'oculo della cupola").
physicalObject(po701).
annotation(po701,tok701).

token(tok702).
hasText(tok702, "lanterna").
physicalObject(po702).
annotation(po702,tok702).

token(tok703).
hasText(tok703, "al di sopra della").
spatialFluent(spF701).
swhat(spF701, spRel701).
proximity(spRel701).
hasComponent1(spRel701, po702).
hasComponent2(spRel701, po701).
annotation(spRel701, tok703).

token(tok704).
hasText(tok704, "grande").
propertyFluent(fprop701).
pwhat(fprop701, prop701).
property(prop701).
hasName(prop701, "grande").
hasComponent(prop701, po702).
annotation(prop701,tok704).

token(tok705).
hasText(tok705, "torre").
physicalObject(po703).
annotation(po703,tok705).

token(tok706).
hasText(tok706, "in").
meronomicFluent(merf701).
ptwhat(merf702, relPtMo701).
componentObject(po70).
hasPart(relPtMo701, po701).
annotation(relPtMo701,tok706).

token(tok7005).
hasText(tok7005, "marmo bianco").
physicalObject(po7003).
annotation(po7003,tok7005).

token(tok707).
hasText(tok707, "alta 21 metri").
propertyFluent(fprop702).
pwhat(fprop702, prop702).
property(prop702).
hasName(prop702, "alta 21 metri").
hasComponent(prop702, po703).
annotation(prop702,tok707).

token(tok708).
hasText(tok708, "che fu realizzata").
action(act701).
hasObject(act701, po703).
annotation(act701,tok708).

token(tok709).
hasText(tok709, "Dopo la morte del").
dataCalendar(t701).
year(t701, 1446).
annotation(t701, tok709).

token(tok710).
hasText(tok710, "Brunelleschi").
physicalAgent(pa701).
annotation(pa701,tok710).

token(tok711).
hasText(tok711, "il suo progetto").
physicalObject(po704).
annotation(po704,tok711).

token(tok712).
hasText(tok708, "seguendo").
action(act702).
hasObject(act702, po704).
hasSubject(act702, pa701).
annotation(act702,tok712).

token(tok713).
hasText(tok713, "la palla").
hasText(tok713, "la palla di rame").
physicalObject(po705).
annotation(po705,tok713).

token(tok714).
hasText(tok714, "al di sopra de").
spatialFluent(spF701).
swhat(spF701, spRel702).
over(spRel702).
hasComponent1(spRel702, po501).
hasComponent2(spRel702, po705).
annotation(spRel702, tok714).

token(tok715).
hasText(tok715, "si trova").
meronomicFluent(merf202).
ptwhat(merf702, relPtCo702).
componentObject(relPtCo702).
hasPart(relPtCo702, po705).
hasWhole(relPtCo702, po705).
annotation(relPtCo702,tok715).

token(tok7013).
hasText(tok7013, "rame dorato").
physicalObject(po7005).
annotation(po7005,tok7013).

token(tok716).
hasText(tok716, "di").
meronomicFluent(merf703).
ptwhat(merf703, relPtMo702).
componentObject(po705).
hasPart(relPtMo702, po7005).
annotation(relPtMo702,tok716).

token(tok717).
hasText(tok717, "con croce apicale").
propertyFluent(fprop703).
pwhat(fprop703, prop703).
property(prop703).
hasName(prop703, "con croce apicale").
annotation(prop703,tok717).

token(tok718).
hasText(tok718, "Andrea del Verrocchio").
physicalAgent(pa702).
annotation(pa702,tok718).

token(tok719).
hasText(tok719, "che la mise in opera").
action(act703).
hasObject(act703, po705).
annotation(act703,tok719).

token(tok719).
hasText(tok719, "1471").
dataCalendar(t702).
year(t702, 1471).
annotation(t702, tok719).

token(tok720).
hasText(tok720, "Cento anni dopo").
dataCalendar(t703).
year(t703, 1571).
annotation(t702, tok720).

token(tok721).
hasText(tok721, "1572").
dataCalendar(t704).
year(t704, 1572).
annotation(t704, tok721).

token(tok722).
hasText(tok722, "1579").
dataCalendar(t705).
year(t705, 1579).
annotation(t705, tok722).

token(tok723).
hasText(tok723, "la volta interna della cupola").
physicalObject(po706).
annotation(po706,tok723).

token(tok725).
hasText(tok725, "Giorgio Vasari").
physicalAgent(pa703).
annotation(pa703,tok725).

token(tok724).
hasText(tok724, "fu dipinta").
hasText(tok724, "dipinse").
action(act704).
hasObject(act704, po706).
hasSubject(act704,pa703).
annotation(act704,tok724).

event(e7024).
what(e7024,act704).
who(e7024, po706).
who(e7024, pa703).
when(e7024, trel7023).
during(trel7023).
hasTemporalEntity1(trel7023, e7024).
hasTemporalEntity2(trel7023, t704).

token(tok726).
hasText(tok726, "Federico Zuccari").
physicalAgent(pa704).
annotation(pa704,tok726).

token(tok727).
hasText(tok727, "grande").
propertyFluent(fprop704).
pwhat(fprop704, prop704).
property(prop704).
hasName(prop704, "grande").
hasComponent(prop704, po706).
annotation(prop704,tok727).

token(tok728).
hasText(tok728, "Giudizio Universale").
physicalObject(po707).
annotation(po707,tok728).

event(e701).
what(e701,act704).
who(e701, pa703).
who(e701, pa704).
who(e701, po706).
interval(int701).
begin(int701, t704).
end(int701, t705).
when(e701, trel701).
during(trel701).
hasTemporalEntity1(trel701, e701).
hasTemporalEntity2(trel701, int701).

token(tok730).
hasText(tok730, "più grande").
propertyFluent(fprop705).
pwhat(fprop705, prop705).
property(prop705).
hasName(prop705, "più grande").
annotation(prop705,tok730).

token(tok731).
hasText(tok731, "dipinto murale del mondo").
physicalObject(po708).
annotation(po708,tok731).
