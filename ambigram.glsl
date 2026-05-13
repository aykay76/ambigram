
vec2 gsdfWinding(vec2 p, vec2 v1, vec2 v2, vec2 d_s) {
    vec2 e = v2 - v1;
	vec2 w = p - v1;
	vec2 b = w - e*clamp( dot(w,e)/dot(e,e), 0.0, 1.0 );
	d_s.x = min( d_s.x, dot(b,b) );
	// winding number from http://geomalgorithms.com/a03-_inclusion.html
	bvec3 cond = bvec3( p.y>=v1.y, 
						p.y <v2.y, 
						e.x*w.y>e.y*w.x );
	if ( all(cond) || all(not(cond)) ) {
        d_s.y=-d_s.y;
    }
    return d_s;
}

float gsdfBoxFrame3D(vec3 p, float x, float y, float z, float thick) {
vec3 dims = vec3(x,y,z);
p = abs(p)-dims;
vec3 q = abs(p+thick)-thick;
return min(min(
      length(max(vec3(p.x,q.y,q.z),0.0))+min(max(p.x,max(q.y,q.z)),0.0),
      length(max(vec3(q.x,p.y,q.z),0.0))+min(max(q.x,max(p.y,q.z)),0.0)),
      length(max(vec3(q.x,q.y,p.z),0.0))+min(max(q.x,max(q.y,p.z)),0.0));
}
float poly2Dc89rup9g4sv0o485i2m(vec2 p){
vec2[11] v=vec2[11](vec2(0.438824326,0.39849624),vec2(0.444805175,0.414559126),vec2(0.450444281,0.431305528),vec2(0.462064236,0.464798331),vec2(0.380041003,0.460697174),vec2(0.381664366,0.452836633),vec2(0.383116871,0.444976062),vec2(0.38439852,0.43711549),vec2(0.385509223,0.429254949),vec2(0.388072431,0.414046466),vec2(0.390293896,0.39849624));
const int num = v.length();
vec2 d_s = vec2(dot(p-v[0],p-v[0]), 1.0);
for( int i=0, j=num-1; i<num; j=i, i++ )
{
	d_s = gsdfWinding(p,v[i],v[j],d_s);
}
return d_s.y*sqrt(d_s.x);

}
float poly2Dcbtn8ba990dnfllbdmd(vec2 p){
vec2[21] v=vec2[21](vec2(0.135338336,0.294600129),vec2(0.058099791,0.294600129),vec2(0.058099791,0.39849624),vec2(0.168147638,0.39849624),vec2(0.161312371,0.426520824),vec2(0.15447709,0.453178376),vec2(0.085440874,0.451127797),vec2(0.081339709,0.517429948),vec2(0.202323988,0.520164013),vec2(0.334928215,0.525632262),vec2(0.463431299,0.533151031),vec2(0.574162662,0.543403924),vec2(0.583732009,0.474367708),vec2(0.541353345,0.470266551),vec2(0.529049873,0.435406685),vec2(0.516062856,0.39849624),vec2(0.609022558,0.39849624),
vec2(0.609022558,0.294600129),vec2(0.530416906,0.294600129),vec2(0.530416906,0.333561152),vec2(0.135338336,0.333561152));
const int num = v.length();
vec2 d_s = vec2(dot(p-v[0],p-v[0]), 1.0);
for( int i=0, j=num-1; i<num; j=i, i++ )
{
	d_s = gsdfWinding(p,v[i],v[j],d_s);
}
return d_s.y*sqrt(d_s.x);

}
float poly2Dc8a4vr6hpbacl4dvc83(vec2 p){
vec2[9] v=vec2[9](vec2(0.229665071,0.455228955),vec2(0.233595341,0.441216648),vec2(0.237183854,0.426520824),vec2(0.244702652,0.39849624),vec2(0.31237182,0.39849624),vec2(0.310150355,0.413533807),vec2(0.307587147,0.428571403),vec2(0.305365682,0.443267226),vec2(0.302802444,0.457279533));
const int num = v.length();
vec2 d_s = vec2(dot(p-v[0],p-v[0]), 1.0);
for( int i=0, j=num-1; i<num; j=i, i++ )
{
	d_s = gsdfWinding(p,v[i],v[j],d_s);
}
return d_s.y*sqrt(d_s.x);

}
float diff2D_poly2aguh2vcmqa9f4(vec2 p){
return max(poly2Dcbtn8ba990dnfllbdmd(p),-poly2Dc89rup9g4sv0o485i2m(p));
}
float poly2D7qqgp39elvpba75tgal(vec2 p){
vec2[70] v=vec2[70](vec2(0.61038959,-0.075871497),vec2(0.57228291,-0.068523586),vec2(0.536568701,-0.060833901),vec2(0.503246725,-0.052802458),vec2(0.472317129,-0.044429254),vec2(0.443651706,-0.035671566),vec2(0.416438818,-0.026486671),vec2(0.390678406,-0.016874572),vec2(0.366370469,-0.00683527),vec2(0.340524584,-0.017857142),vec2(0.313567996,-0.028366372),vec2(0.285500705,-0.03836295),vec2(0.256322622,-0.047846887),vec2(0.22586295,-0.057159945),vec2(0.193950772,-0.065960348),vec2(0.160586104,-0.074248113),
vec2(0.12576896,-0.082023233),vec2(0.095693775,-0.006151743),vec2(0.064935066,-0.032125767),vec2(0.015037593,0.025290499),vec2(0.043019481,0.048231378),vec2(0.056209415,0.059733853),vec2(0.068865344,0.071257688),vec2(0.080987275,0.082802892),vec2(0.092575185,0.094369449),vec2(0.103629097,0.105957359),vec2(0.114149004,0.117566638),vec2(0.12433783,0.129453599),vec2(0.134056732,0.141532794),vec2(0.143305704,0.153804243),vec2(0.152084753,0.166267931),vec2(0.160393864,0.17892386),vec2(0.168233082,0.191772044),
vec2(0.175602362,0.204812452),vec2(0.182501704,0.218045101),vec2(0.0786056,0.218045101),vec2(0.0786056,0.281613111),vec2(0.207792193,0.281613111),vec2(0.20941557,0.286397815),vec2(0.210868061,0.291182488),vec2(0.21214968,0.295967162),vec2(0.213260412,0.300751865),vec2(0.218728632,0.319890618),vec2(0.297334224,0.313055366),vec2(0.296607971,0.308954179),vec2(0.295796305,0.304853022),vec2(0.293916613,0.296650708),vec2(0.289815426,0.281613111),vec2(0.591934383,0.281613111),vec2(0.591934383,0.218045101),
vec2(0.268626094,0.218045101),vec2(0.261790842,0.203007504),vec2(0.25495556,0.187969923),vec2(0.56185919,0.187969923),vec2(0.56185919,0.127819538),vec2(0.549982905,0.115644217),vec2(0.537593961,0.103725217),vec2(0.524692416,0.092062548),vec2(0.511278152,0.080656186),vec2(0.504517615,0.075059809),vec2(0.497564912,0.069548868),vec2(0.490419924,0.064123377),vec2(0.483082682,0.058783319),vec2(0.467831492,0.048359532),vec2(0.451811343,0.038277511),vec2(0.470875353,0.033054937),vec2(0.491156846,0.027981885),
vec2(0.535372496,0.018284347),vec2(0.584458292,0.009184894),vec2(0.638414204,0.000683527));
const int num = v.length();
vec2 d_s = vec2(dot(p-v[0],p-v[0]), 1.0);
for( int i=0, j=num-1; i<num; j=i, i++ )
{
	d_s = gsdfWinding(p,v[i],v[j],d_s);
}
return d_s.y*sqrt(d_s.x);

}
float diff2D_diff2c1dlm38oioqrn(vec2 p){
return max(diff2D_poly2aguh2vcmqa9f4(p),-poly2Dc8a4vr6hpbacl4dvc83(p));
}
float poly2D4aesu42fic0h65f4k12(vec2 p){
vec2[19] v=vec2[19](vec2(0.542720437,0.261107296),vec2(0.570745051,0.205741614),vec2(0.586807907,0.17378673),vec2(0.602187276,0.140806556),vec2(0.616541326,0.108680785),vec2(0.629528344,0.077922076),vec2(0.640293896,0.051093642),vec2(0.644523203,0.039601844),vec2(0.647983551,0.029391659),vec2(0.575529695,-0.011619959),vec2(0.565276802,0.01845523),vec2(0.553656876,0.04989747),vec2(0.540840745,0.08219412),vec2(0.526999295,0.113465481),vec2(0.513157845,0.144224197),vec2(0.498974681,0.173615858),vec2(0.485475034,0.20146957),
vec2(0.478853375,0.21424298),vec2(0.472317129,0.22624743));
const int num = v.length();
vec2 d_s = vec2(dot(p-v[0],p-v[0]), 1.0);
for( int i=0, j=num-1; i<num; j=i, i++ )
{
	d_s = gsdfWinding(p,v[i],v[j],d_s);
}
return d_s.y*sqrt(d_s.x);

}
float poly2D40hr77ftqkgenvnhjbp(vec2 p){
vec2[87] v=vec2[87](vec2(0.378673941,0.350649327),vec2(0.460697174,0.347231716),vec2(0.460697174,0.010936432),vec2(0.460633099,0.005596377),vec2(0.460440844,0.000512645),vec2(0.46012044,-0.004314764),vec2(0.459671885,-0.008885851),vec2(0.45909515,-0.013200615),vec2(0.458758742,-0.015261875),vec2(0.458390266,-0.017259056),vec2(0.457989782,-0.019192155),vec2(0.457557231,-0.021061175),vec2(0.457092643,-0.022866113),vec2(0.456596017,-0.024606971),vec2(0.456061989,-0.026294427),vec2(0.455485284,-0.027939165),
vec2(0.454865843,-0.029541181),vec2(0.454203665,-0.031100476),vec2(0.453498781,-0.032617051),vec2(0.452751189,-0.03409091),vec2(0.451960862,-0.035522044),vec2(0.451127797,-0.036910459),vec2(0.450252026,-0.03825615),vec2(0.449333549,-0.039559122),vec2(0.448372364,-0.04081938),vec2(0.447368413,-0.042036913),vec2(0.446321756,-0.043211725),vec2(0.445232391,-0.044343814),vec2(0.44410032,-0.045433186),vec2(0.442925483,-0.046479836),vec2(0.44179073,-0.047571879),vec2(0.440607905,-0.048626538),vec2(0.43937701,-0.049643818),
vec2(0.438098073,-0.050623715),vec2(0.436771065,-0.051566236),vec2(0.435395986,-0.052471377),vec2(0.433972865,-0.053339135),vec2(0.432501674,-0.054169513),vec2(0.430982441,-0.054962512),vec2(0.429415137,-0.055718128),vec2(0.427799761,-0.056436367),vec2(0.426136345,-0.057117224),vec2(0.424424857,-0.057760701),vec2(0.422665298,-0.058366798),vec2(0.420857698,-0.058935508),vec2(0.419002026,-0.059466846),vec2(0.4151465,-0.060630977),vec2(0.411098748,-0.061731029),vec2(0.406858742,-0.062767006),vec2(0.402426481,-0.06373889),
vec2(0.397801995,-0.064646699),vec2(0.392985284,-0.065490425),vec2(0.382775098,-0.066985644),vec2(0.339712918,-0.072453856),vec2(0.308954179,0.010252904),vec2(0.347915232,0.015037593),vec2(0.352176607,0.015603639),vec2(0.354171127,0.015926713),vec2(0.35607484,0.016276486),vec2(0.357887775,0.016652958),vec2(0.359609932,0.017056135),vec2(0.361241341,0.01748601),vec2(0.362781942,0.017942583),vec2(0.364231765,0.018425858),vec2(0.365590811,0.018935833),vec2(0.366859078,0.01947251),vec2(0.368036538,0.020035885),
vec2(0.36912325,0.02062596),vec2(0.370119184,0.021242736),vec2(0.371024311,0.021886213),vec2(0.371838689,0.022556391),vec2(0.372666389,0.023352059),vec2(0.373440683,0.024201127),vec2(0.374161601,0.025103597),vec2(0.374829084,0.026059467),vec2(0.37544322,0.027068736),vec2(0.376003921,0.028131407),vec2(0.376511216,0.02924748),vec2(0.376965135,0.030416951),vec2(0.377365619,0.031639822),vec2(0.377712727,0.032916095),vec2(0.378006428,0.03424577),vec2(0.378246754,0.035628844),vec2(0.378433645,0.037065316),
vec2(0.378567159,0.03855519),vec2(0.378647238,0.04009847),vec2(0.378673941,0.041695144));
const int num = v.length();
vec2 d_s = vec2(dot(p-v[0],p-v[0]), 1.0);
for( int i=0, j=num-1; i<num; j=i, i++ )
{
	d_s = gsdfWinding(p,v[i],v[j],d_s);
}
return d_s.y*sqrt(d_s.x);

}
float poly2Dfl7qrleg4vabm5t4ee9(vec2 p){
vec2[30] v=vec2[30](vec2(0.190020502,0.305536568),vec2(0.198564589,0.317797303),vec2(0.207108676,0.330656171),vec2(0.224196851,0.358168125),vec2(0.23291181,0.372992098),vec2(0.241285026,0.388072431),vec2(0.249316439,0.403409094),vec2(0.257006139,0.419002026),vec2(0.264653116,0.434765846),vec2(0.271872848,0.450615168),vec2(0.278665394,0.466549903),vec2(0.285030752,0.482570052),vec2(0.291225225,0.498803794),vec2(0.296821594,0.514695764),vec2(0.301819891,0.530246019),vec2(0.306220084,0.545454502),vec2(0.388926834,0.528366327),
vec2(0.378673941,0.498974681),vec2(0.373547494,0.484449744),vec2(0.367737502,0.469583035),vec2(0.628161311,0.469583035),vec2(0.628161311,0.388243318),vec2(0.570745051,0.287081331),vec2(0.494190007,0.315105945),vec2(0.53861928,0.388243318),vec2(0.33219412,0.388243318),vec2(0.315276802,0.354408741),vec2(0.297334224,0.321257681),vec2(0.279049873,0.289644539),vec2(0.259740263,0.259056717));
const int num = v.length();
vec2 d_s = vec2(dot(p-v[0],p-v[0]), 1.0);
for( int i=0, j=num-1; i<num; j=i, i++ )
{
	d_s = gsdfWinding(p,v[i],v[j],d_s);
}
return d_s.y*sqrt(d_s.x);

}
float poly2D42vs94envmsafo8j9ba(vec2 p){
vec2[51] v=vec2[51](vec2(0.349965811,0.235816807),vec2(0.345950097,0.220309287),vec2(0.341421723,0.204545453),vec2(0.33638069,0.188525289),vec2(0.330827057,0.172248796),vec2(0.325187951,0.155886874),vec2(0.319207102,0.13961038),vec2(0.31288448,0.123419344),vec2(0.306220084,0.107313737),vec2(0.292036891,0.075529732),vec2(0.276828438,0.044429254),vec2(0.260936409,0.014695831),vec2(0.252862245,0.000598086),vec2(0.244702652,-0.012987012),vec2(0.183185235,0.020505808),vec2(0.183185235,-0.064935066),vec2(0.100478463,-0.064935066),
vec2(0.100478463,0.244702652),vec2(0.082023233,0.218728632),vec2(0.06288448,0.193438128),vec2(0.008202324,0.254272044),vec2(0.031399522,0.288448393),vec2(0.053144224,0.323308259),vec2(0.073436432,0.358851671),vec2(0.092276141,0.395078599),vec2(0.101076551,0.413608611),vec2(0.109364316,0.43228811),vec2(0.117139436,0.451117128),vec2(0.124401912,0.470095694),vec2(0.131151736,0.489223748),vec2(0.137388915,0.508501351),vec2(0.143113464,0.527928472),vec2(0.148325354,0.547505081),vec2(0.231715649,0.527682841),
vec2(0.220437452,0.491626769),vec2(0.208475724,0.457279533),vec2(0.202537581,0.440704018),vec2(0.196343124,0.424470246),vec2(0.189892337,0.408578247),vec2(0.183185235,0.393028021),vec2(0.183185235,0.046479836),vec2(0.196855769,0.069890633),vec2(0.210526302,0.095010251),vec2(0.217233405,0.108082704),vec2(0.223684207,0.121326037),vec2(0.229878679,0.134740248),vec2(0.235816807,0.148325354),vec2(0.247607648,0.176349953),vec2(0.258373201,0.204374567),vec2(0.267942578,0.232057393),vec2(0.276144892,0.259056717));
const int num = v.length();
vec2 d_s = vec2(dot(p-v[0],p-v[0]), 1.0);
for( int i=0, j=num-1; i<num; j=i, i++ )
{
	d_s = gsdfWinding(p,v[i],v[j],d_s);
}
return d_s.y*sqrt(d_s.x);

}
float poly2Dcen2sg3rvnde6lncg70(vec2 p){
vec2[17] v=vec2[17](vec2(0.364319891,0.071086809),vec2(0.377306879,0.077281266),vec2(0.38961038,0.083561175),vec2(0.401230365,0.089926518),vec2(0.412166774,0.096377306),vec2(0.422804177,0.103212573),vec2(0.432843447,0.11004784),vec2(0.442284644,0.116883114),vec2(0.451127797,0.123718381),vec2(0.285714269,0.123718381),vec2(0.29408747,0.11632774),vec2(0.302802444,0.109193437),vec2(0.31185919,0.102315448),vec2(0.321257681,0.095693775),vec2(0.331126094,0.089285716),vec2(0.34159261,0.08304853),vec2(0.352657199,0.076982222));
const int num = v.length();
vec2 d_s = vec2(dot(p-v[0],p-v[0]), 1.0);
for( int i=0, j=num-1; i<num; j=i, i++ )
{
	d_s = gsdfWinding(p,v[i],v[j],d_s);
}
return d_s.y*sqrt(d_s.x);

}
float union_diff2Dd2i4mvlhauot3(vec2 p){
float d=diff2D_diff2c1dlm38oioqrn(p);
d=min(d,poly2D7qqgp39elvpba75tgal(p));
return d;
}
float union_poly2D4vbfl5e48b8qd(vec2 p){
float d=poly2D42vs94envmsafo8j9ba(p);
d=min(d,poly2Dfl7qrleg4vabm5t4ee9(p));
d=min(d,poly2D40hr77ftqkgenvnhjbp(p));
d=min(d,poly2D4aesu42fic0h65f4k12(p));
return d;
}
float poly2D7lilh981vddsld149i1(vec2 p){
vec2[20] v=vec2[20](vec2(0.097060829,-0.005468216),vec2(0.149008885,0.003930281),vec2(0.196855769,0.014354067),vec2(0.219668493,0.019950444),vec2(0.241626799,0.025803145),vec2(0.262730688,0.031912167),vec2(0.282980174,0.038277511),vec2(0.272214621,0.046223514),vec2(0.261790812,0.054340396),vec2(0.251708806,0.062628165),vec2(0.241968542,0.071086809),vec2(0.232527331,0.079801776),vec2(0.223342434,0.088858508),vec2(0.214413866,0.098256998),vec2(0.205741614,0.107997261),vec2(0.194463417,0.093685918),
vec2(0.182501704,0.07946001),vec2(0.169856459,0.065319546),vec2(0.156527683,0.051264524),vec2(0.128332198,0.023410799));
const int num = v.length();
vec2 d_s = vec2(dot(p-v[0],p-v[0]), 1.0);
for( int i=0, j=num-1; i<num; j=i, i++ )
{
	d_s = gsdfWinding(p,v[i],v[j],d_s);
}
return d_s.y*sqrt(d_s.x);

}
float diff2D_union61t15tr8sruor(vec2 p){
return max(union_diff2Dd2i4mvlhauot3(p),-poly2Dcen2sg3rvnde6lncg70(p));
}
float translate2Dn15c7vi02nhpkb(vec2 p){
vec2 t=vec2(-15.994530678,-15.498973846);
return union_poly2D4vbfl5e48b8qd(p-t);
}
float diff2D_diff29raqs6el7eitv(vec2 p){
return max(diff2D_union61t15tr8sruor(p),-poly2D7lilh981vddsld149i1(p));
}
float extrusion_trejck916gneqj2(vec3 p){
float h=15.994530678;
float d=translate2Dn15c7vi02nhpkb(p.xy);
vec2 w = vec2( d, abs(p.z) - h );
return min(max(w.x,w.y),0.0) + length(max(w,0.0));
}
float translate2Dnf6ni8m6om0197(vec2 p){
vec2 t=vec2(-15.584415436,-15.635678291);
return diff2D_diff29raqs6el7eitv(p-t);
}
float transform0p081vgpq97i7cdm(vec3 p){
mat4 invT=mat4(1.,0.,0.,0.,0.,0.969017148,0.,0.,0.,0.,1.,0.,0.,0.,0.,1.);
return extrusion_trejck916gneqj2(((invT) * vec4(p,0.0)).xyz);
}
float extrusion_tr4qmi9vf1rr135(vec3 p){
float h=15.994530678;
float d=translate2Dnf6ni8m6om0197(p.xy);
vec2 w = vec2( d, abs(p.z) - h );
return min(max(w.x,w.y),0.0) + length(max(w,0.0));
}
float boxframe0p6447793250p6356402640p6447812320p001249576(vec3 p){
return gsdfBoxFrame3D(p,0.319890499,0.315320969,0.319891453,0.001249576);
}
float transform0p9c84ico7bnu7cm(vec3 p){
mat4 invT=mat4(-0.000000044,0.,1.,0.,0.,1.000000119,0.,0.,-1.,0.,-0.000000044,0.,0.,0.,0.,1.);
return transform0p081vgpq97i7cdm(((invT) * vec4(p,0.0)).xyz);
}
float transform0p1708dobg3gnvnp(vec3 p){
mat4 invT=mat4(0.974359095,0.,0.,0.,0.,0.977564096,0.,0.,0.,0.,1.,0.,0.,0.,0.,1.);
return extrusion_tr4qmi9vf1rr135(((invT) * vec4(p,0.0)).xyz);
}
float translaten15p65920639n15p75397682215p666437149_boxframe0p6447793250p6356402640p6447812320p001249576(vec3 p){
vec3 t=vec3(-15.65920639,-15.753976822,15.666437149);
return boxframe0p6447793250p6356402640p6447812320p001249576(p-t);
}
float intersect_trdaik9rlmo91ni(vec3 p){
return max(transform0p1708dobg3gnvnp(p),transform0p9c84ico7bnu7cm(p));
}
float union_intersect_trdaik9rlmo91ni_translaten15p65920639n15p75397682215p666437149_boxframe0p6447793250p6356402640p6447812320p001249576(vec3 p){
float d=intersect_trdaik9rlmo91ni(p);
d=min(d,translaten15p65920639n15p75397682215p666437149_boxframe0p6447793250p6356402640p6447812320p001249576(p));
return d;
}
float translaten15p65920639n15p75397682215p026654243_union_intersect_trdaik9rlmo91ni_translaten15p65920639n15p75397682215p666437149_boxframe0p6447793250p6356402640p6447812320p001249576(vec3 p){
vec3 t=vec3(-15.65920639,-15.753976822,15.026654243);
return union_intersect_trdaik9rlmo91ni_translaten15p65920639n15p75397682215p666437149_boxframe0p6447793250p6356402640p6447812320p001249576(p-t);
}
float scale_translaten15p65920639n15p75397682215p026654243_union_intersect_trdaik9rlmo91ni_translaten15p65920639n15p75397682215p666437149_boxframe0p6447793250p6356402640p6447812320p001249576(vec3 p){
float s=1.269400001;
return translaten15p65920639n15p75397682215p026654243_union_intersect_trdaik9rlmo91ni_translaten15p65920639n15p75397682215p666437149_boxframe0p6447793250p6356402640p6447812320p001249576(p/s)*s;
}

float sdf(vec3 p) { return scale_translaten15p65920639n15p75397682215p026654243_union_intersect_trdaik9rlmo91ni_translaten15p65920639n15p75397682215p666437149_boxframe0p6447793250p6356402640p6447812320p001249576(p); }

// The MIT License
// Copyright © 2023 Inigo Quilez
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

// Distance to a vesica segment with 3 square roots, and to
// a vertival vesica segment with 2 square roots.
//
// 2D version here: https://www.shadertoy.com/view/cs2yzG
//
// List of other 3D SDFs:
//    https://www.shadertoy.com/playlist/43cXRl
// and 
//     https://iquilezles.org/articles/distfunctions


// https://iquilezles.org/articles/normalsSDF
vec3 calcNormal( in vec3 pos )
{
    vec2 e = vec2(1.0,-1.0)*0.5773;
    const float eps = 0.0005;
    return normalize( e.xyy*sdf( pos + e.xyy*eps ) + 
					  e.yyx*sdf( pos + e.yyx*eps ) + 
					  e.yxy*sdf( pos + e.yxy*eps ) + 
					  e.xxx*sdf( pos + e.xxx*eps ) );
}

// Antialiasing.
#define AA 3
void mainImage(out vec4 fragColor, in vec2 fragCoord)
{
    // Mouse input for camera control
    const float PI = 3.14159265359;
    vec2 mouse = iMouse.xy / iResolution.xy;

    // Set default mouse position if not available
    if (iMouse.xy == vec2(0.0))
    {
        mouse = vec2(0.5, 0.5); // Center position
    }

    // Calculate camera angles based on mouse position
    float yaw = (mouse.x - 0.5) * 2.0 * PI;     // Yaw angle
    float pitch = (mouse.y - 0.5) * PI;         // Pitch angle
    pitch = clamp(pitch, -PI/2.0 + 0.01, PI/2.0 - 0.01); // Prevent gimbal lock

    // Camera setup
    float camDist = 3.0; // Distance from the target
    vec3 ta = vec3(0.0, 0.0, 0.0); // Camera target at the origin

    // Calculate camera position based on angles
    vec3 dir;
    dir.x = cos(pitch) * sin(yaw);
    dir.y = sin(pitch);
    dir.z = cos(pitch) * cos(yaw);

    vec3 ro = ta - dir * camDist; // Camera position

    // Camera matrix
    vec3 ww = normalize(ta - ro);                     // Forward vector
    vec3 uu = normalize(cross(ww, vec3(0.0, 1.0, 0.0))); // Right vector
    vec3 vv = cross(uu, ww);                          // Up vector

    vec3 tot = vec3(0.0);

    #if AA > 1
    for (int m = 0; m < AA; m++)
    for (int n = 0; n < AA; n++)
    {
        // Pixel coordinates
        vec2 o = vec2(float(m), float(n)) / float(AA) - 0.5;
        vec2 p = (2.0 * (fragCoord + o) - iResolution.xy) / iResolution.y;
    #else
        vec2 p = (2.0 * fragCoord - iResolution.xy) / iResolution.y;
    #endif

        // Create view ray
        vec3 rd = normalize(p.x * uu + p.y * vv + 1.5 * ww);

        // Ray marching
        const float tmax = 3.0;
        float t = 0.0;
        for (int i = 0; i < 256; i++)
        {
            vec3 pos = ro + t * rd;
            float h = sdf(pos);
            if (h < 0.0001 || t > tmax) break;
            t += h;
        }

        // Shading/lighting
        vec3 col = vec3(0.0);
        if (t < tmax)
        {
            vec3 pos = ro + t * rd;
            vec3 nor = calcNormal(pos);
            float dif = clamp(dot(nor, vec3(0.57703)), 0.0, 1.0);
            float amb = 0.5 + 0.5 * dot(nor, vec3(0.0, 1.0, 0.0));
            col = vec3(0.2, 0.3, 0.4) * amb + vec3(0.8, 0.7, 0.5) * dif;
        }

        // Gamma correction
        col = sqrt(col);
        tot += col;
    #if AA > 1
    }
    tot /= float(AA * AA);
    #endif

    fragColor = vec4(tot, 1.0);
}