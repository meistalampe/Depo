
% Filename : bipolarCoolwarmLight.m
% Authors  : Kenneth Moreland | Manuel C. Kohl
% Date     : 14.12.2016

function rgbMap = bipolarCoolwarmLight(n)
	
	rgbValues = [
	   0.229805700000000   0.298717966000000   0.753683153000000
	   0.234299935000000   0.305559204000000   0.759874796000000
	   0.238810063000000   0.312388385000000   0.766005866000000
	   0.243336663000000   0.319205292000000   0.772075394000000
	   0.247880265000000   0.326009656000000   0.778082421000000
	   0.252441360000000   0.332801165000000   0.784026001000000
	   0.257020396000000   0.339579464000000   0.789905199000000
	   0.261617779000000   0.346344164000000   0.795719090000000
	   0.266233880000000   0.353094838000000   0.801466763000000
	   0.270869029000000   0.359831032000000   0.807147315000000
	   0.275523523000000   0.366552260000000   0.812759858000000
	   0.280197620000000   0.373258014000000   0.818303516000000
	   0.284891546000000   0.379947761000000   0.823777422000000
	   0.289605495000000   0.386620945000000   0.829180725000000
	   0.294339624000000   0.393276993000000   0.834512584000000
	   0.299094064000000   0.399915313000000   0.839772171000000
	   0.303868910000000   0.406535296000000   0.844958670000000
	   0.308664231000000   0.413136319000000   0.850071279000000
	   0.313480065000000   0.419717745000000   0.855109207000000
	   0.318316422000000   0.426278924000000   0.860071679000000
	   0.323173283000000   0.432819194000000   0.864957929000000
	   0.328050603000000   0.439337884000000   0.869767207000000
	   0.332948312000000   0.445834313000000   0.874498775000000
	   0.337866311000000   0.452307790000000   0.879151910000000
	   0.342804478000000   0.458757618000000   0.883725899000000
	   0.347762667000000   0.465183092000000   0.888220047000000
	   0.352740705000000   0.471583499000000   0.892633669000000
	   0.357738399000000   0.477958123000000   0.896966095000000
	   0.362755532000000   0.484306241000000   0.901216670000000
	   0.367791863000000   0.490627125000000   0.905384751000000
	   0.372847134000000   0.496920043000000   0.909469711000000
	   0.377921060000000   0.503184261000000   0.913470934000000
	   0.383013340000000   0.509419040000000   0.917387822000000
	   0.388123650000000   0.515623638000000   0.921219788000000
	   0.393251650000000   0.521797312000000   0.924966262000000
	   0.398396976000000   0.527939316000000   0.928626686000000
	   0.403559250000000   0.534048902000000   0.932200518000000
	   0.408738074000000   0.540125323000000   0.935687230000000
	   0.413933033000000   0.546167829000000   0.939086309000000
	   0.419143694000000   0.552175668000000   0.942397257000000
	   0.424369608000000   0.558148092000000   0.945619588000000
	   0.429610311000000   0.564084349000000   0.948752835000000
	   0.434865321000000   0.569983690000000   0.951796543000000
	   0.440134144000000   0.575845364000000   0.954750272000000
	   0.445416268000000   0.581668623000000   0.957613599000000
	   0.450711169000000   0.587452719000000   0.960386113000000
	   0.456018308000000   0.593196905000000   0.963067420000000
	   0.461337134000000   0.598900436000000   0.965657140000000
	   0.466667080000000   0.604562568000000   0.968154911000000
	   0.472007569000000   0.610182560000000   0.970560381000000
	   0.477358011000000   0.615759672000000   0.972873218000000
	   0.482717804000000   0.621293167000000   0.975093102000000
	   0.488086336000000   0.626782311000000   0.977219730000000
	   0.493462982000000   0.632226371000000   0.979252813000000
	   0.498847107000000   0.637624618000000   0.981192078000000
	   0.504238066000000   0.642976326000000   0.983037268000000
	   0.509635204000000   0.648280772000000   0.984788140000000
	   0.515037856000000   0.653537236000000   0.986444467000000
	   0.520445349000000   0.658745003000000   0.988006036000000
	   0.525857000000000   0.663903360000000   0.989472652000000
	   0.531272118000000   0.669011598000000   0.990844132000000
	   0.536690004000000   0.674069012000000   0.992120310000000
	   0.542109949000000   0.679074903000000   0.993301037000000
	   0.547531240000000   0.684028574000000   0.994386177000000
	   0.552953156000000   0.688929332000000   0.995375608000000
	   0.558374965000000   0.693776492000000   0.996269227000000
	   0.563795935000000   0.698569369000000   0.997066945000000
	   0.569215322000000   0.703307287000000   0.997768685000000
	   0.574632379000000   0.707989572000000   0.998374390000000
	   0.580046354000000   0.712615557000000   0.998884016000000
	   0.585456486000000   0.717184578000000   0.999297533000000
	   0.590862011000000   0.721695979000000   0.999614929000000
	   0.596262162000000   0.726149107000000   0.999836203000000
	   0.601656165000000   0.730543315000000   0.999961374000000
	   0.607043242000000   0.734877964000000   0.999990472000000
	   0.612422610000000   0.739152418000000   0.999923544000000
	   0.617793485000000   0.743366047000000   0.999760652000000
	   0.623155076000000   0.747518228000000   0.999501871000000
	   0.628506592000000   0.751608345000000   0.999147293000000
	   0.633847237000000   0.755635786000000   0.998697024000000
	   0.639176211000000   0.759599947000000   0.998151185000000
	   0.644492714000000   0.763500228000000   0.997509910000000
	   0.649795942000000   0.767336039000000   0.996773351000000
	   0.655085089000000   0.771106793000000   0.995941671000000
	   0.660359348000000   0.774811913000000   0.995015049000000
	   0.665617908000000   0.778450826000000   0.993993679000000
	   0.670859959000000   0.782022968000000   0.992877768000000
	   0.676084688000000   0.785527780000000   0.991667539000000
	   0.681291281000000   0.788964712000000   0.990363227000000
	   0.686478925000000   0.792333219000000   0.988965083000000
	   0.691646803000000   0.795632765000000   0.987473371000000
	   0.696794099000000   0.798862821000000   0.985888369000000
	   0.701919999000000   0.802022864000000   0.984210369000000
	   0.707023684000000   0.805112381000000   0.982439677000000
	   0.712104339000000   0.808130864000000   0.980576612000000
	   0.717161148000000   0.811077814000000   0.978621507000000
	   0.722193294000000   0.813952739000000   0.976574709000000
	   0.727199962000000   0.816755156000000   0.974436577000000
	   0.732180337000000   0.819484590000000   0.972207484000000
	   0.737133606000000   0.822140570000000   0.969887816000000
	   0.742058956000000   0.824722639000000   0.967477972000000
	   0.746955574000000   0.827230344000000   0.964978364000000
	   0.751822652000000   0.829663241000000   0.962389418000000
	   0.756659379000000   0.832020895000000   0.959711569000000
	   0.761464949000000   0.834302879000000   0.956945269000000
	   0.766238556000000   0.836508774000000   0.954090980000000
	   0.770979397000000   0.838638169000000   0.951149176000000
	   0.775686671000000   0.840690662000000   0.948120345000000
	   0.780359577000000   0.842665861000000   0.945004985000000
	   0.784997320000000   0.844563380000000   0.941803607000000
	   0.789599105000000   0.846382843000000   0.938516733000000
	   0.794164140000000   0.848123884000000   0.935144898000000
	   0.798691636000000   0.849786142000000   0.931688648000000
	   0.803180808000000   0.851369270000000   0.928148539000000
	   0.807630872000000   0.852872925000000   0.924525140000000
	   0.812041048000000   0.854296776000000   0.920819030000000
	   0.816410560000000   0.855640499000000   0.917030798000000
	   0.820738635000000   0.856903782000000   0.913161047000000
	   0.825024503000000   0.858086320000000   0.909210387000000
	   0.829267397000000   0.859187816000000   0.905179440000000
	   0.833466556000000   0.860207984000000   0.901068838000000
	   0.837621221000000   0.861146547000000   0.896879224000000
	   0.841730637000000   0.862003236000000   0.892611249000000
	   0.845794055000000   0.862777795000000   0.888265576000000
	   0.849810727000000   0.863469972000000   0.883842876000000
	   0.853779913000000   0.864079527000000   0.879343830000000
	   0.857700874000000   0.864606232000000   0.874769128000000
	   0.861572878000000   0.865049863000000   0.870119469000000
	   0.865395197000000   0.865410210000000   0.865395561000000
	   0.869777490000000   0.863633958000000   0.859948576000000
	   0.874064226000000   0.861776352000000   0.854466231000000
	   0.878255583000000   0.859837644000000   0.848949435000000
	   0.882351728000000   0.857818097000000   0.843399101000000
	   0.886352818000000   0.855717980000000   0.837816138000000
	   0.890259000000000   0.853537573000000   0.832201453000000
	   0.894070410000000   0.851277164000000   0.826555954000000
	   0.897787179000000   0.848937047000000   0.820880546000000
	   0.901409427000000   0.846517528000000   0.815176131000000
	   0.904937269000000   0.844018919000000   0.809443611000000
	   0.908370816000000   0.841441541000000   0.803683885000000
	   0.911710171000000   0.838785722000000   0.797897850000000
	   0.914955433000000   0.836051799000000   0.792086401000000
	   0.918106696000000   0.833240115000000   0.786250429000000
	   0.921164054000000   0.830351023000000   0.780390824000000
	   0.924127593000000   0.827384882000000   0.774508472000000
	   0.926997401000000   0.824342058000000   0.768604257000000
	   0.929773562000000   0.821222926000000   0.762679060000000
	   0.932456159000000   0.818027865000000   0.756733758000000
	   0.935045272000000   0.814757264000000   0.750769226000000
	   0.937540984000000   0.811411517000000   0.744786333000000
	   0.939943375000000   0.807991025000000   0.738785947000000
	   0.942252526000000   0.804496196000000   0.732768931000000
	   0.944468518000000   0.800927443000000   0.726736146000000
	   0.946591434000000   0.797285187000000   0.720688446000000
	   0.948621357000000   0.793569853000000   0.714626683000000
	   0.950558373000000   0.789781872000000   0.708551706000000
	   0.952402567000000   0.785921682000000   0.702464356000000
	   0.954154029000000   0.781989725000000   0.696365473000000
	   0.955812849000000   0.777986449000000   0.690255891000000
	   0.957379123000000   0.773912305000000   0.684136440000000
	   0.958852946000000   0.769767752000000   0.678007945000000
	   0.960234418000000   0.765553251000000   0.671871226000000
	   0.961523642000000   0.761269267000000   0.665727098000000
	   0.962720725000000   0.756916272000000   0.659576372000000
	   0.963825777000000   0.752494738000000   0.653419853000000
	   0.964838913000000   0.748005143000000   0.647258341000000
	   0.965760251000000   0.743447967000000   0.641092630000000
	   0.966589914000000   0.738823693000000   0.634923509000000
	   0.967328030000000   0.734132809000000   0.628751763000000
	   0.967974729000000   0.729375802000000   0.622578170000000
	   0.968530150000000   0.724553162000000   0.616403502000000
	   0.968994435000000   0.719665383000000   0.610228525000000
	   0.969367729000000   0.714712956000000   0.604054002000000
	   0.969650186000000   0.709696378000000   0.597880686000000
	   0.969841963000000   0.704616143000000   0.591709328000000
	   0.969943224000000   0.699472746000000   0.585540669000000
	   0.969954137000000   0.694266682000000   0.579375448000000
	   0.969874878000000   0.688998447000000   0.573214394000000
	   0.969705626000000   0.683668532000000   0.567058232000000
	   0.969446570000000   0.678277431000000   0.560907681000000
	   0.969097901000000   0.672825633000000   0.554763452000000
	   0.968659818000000   0.667313624000000   0.548626250000000
	   0.968132528000000   0.661741889000000   0.542496774000000
	   0.967516241000000   0.656110908000000   0.536375716000000
	   0.966811177000000   0.650421156000000   0.530263762000000
	   0.966017559000000   0.644673104000000   0.524161591000000
	   0.965135621000000   0.638867216000000   0.518069875000000
	   0.964165599000000   0.633003950000000   0.511989279000000
	   0.963107739000000   0.627083758000000   0.505920462000000
	   0.961962293000000   0.621107082000000   0.499864075000000
	   0.960729521000000   0.615074355000000   0.493820764000000
	   0.959409687000000   0.608986000000000   0.487791167000000
	   0.958003065000000   0.602842431000000   0.481775914000000
	   0.956509936000000   0.596644046000000   0.475775629000000
	   0.954930586000000   0.590391232000000   0.469790930000000
	   0.953265310000000   0.584084361000000   0.463822426000000
	   0.951514411000000   0.577723790000000   0.457870719000000
	   0.949678196000000   0.571309856000000   0.451936407000000
	   0.947756983000000   0.564842879000000   0.446020077000000
	   0.945751096000000   0.558323158000000   0.440122312000000
	   0.943660866000000   0.551750968000000   0.434243684000000
	   0.941486631000000   0.545126562000000   0.428384763000000
	   0.939228739000000   0.538450165000000   0.422546107000000
	   0.936887543000000   0.531721972000000   0.416728270000000
	   0.934463404000000   0.524942147000000   0.410931798000000
	   0.931956691000000   0.518110821000000   0.405157230000000
	   0.929367782000000   0.511228087000000   0.399405096000000
	   0.926697060000000   0.504293997000000   0.393675922000000
	   0.923944917000000   0.497308560000000   0.387970225000000
	   0.921111753000000   0.490271735000000   0.382288516000000
	   0.918197974000000   0.483183431000000   0.376631297000000
	   0.915203996000000   0.476043498000000   0.370999065000000
	   0.912130241000000   0.468851724000000   0.365392310000000
	   0.908977139000000   0.461607831000000   0.359811513000000
	   0.905745128000000   0.454311462000000   0.354257151000000
	   0.902434654000000   0.446962183000000   0.348729691000000
	   0.899046170000000   0.439559467000000   0.343229596000000
	   0.895580136000000   0.432102690000000   0.337757320000000
	   0.892037022000000   0.424591118000000   0.332313313000000
	   0.888417303000000   0.417023898000000   0.326898016000000
	   0.884721464000000   0.409400045000000   0.321511863000000
	   0.880949996000000   0.401718425000000   0.316155284000000
	   0.877103399000000   0.393977745000000   0.310828702000000
	   0.873182178000000   0.386176527000000   0.305532531000000
	   0.869186849000000   0.378313092000000   0.300267182000000
	   0.865117934000000   0.370385535000000   0.295033059000000
	   0.860975962000000   0.362391695000000   0.289830559000000
	   0.856761470000000   0.354329127000000   0.284660075000000
	   0.852475004000000   0.346195061000000   0.279521991000000
	   0.848117114000000   0.337986361000000   0.274416690000000
	   0.843688361000000   0.329699471000000   0.269344545000000
	   0.839189312000000   0.321330360000000   0.264305927000000
	   0.834620542000000   0.312874446000000   0.259301199000000
	   0.829982631000000   0.304326513000000   0.254330723000000
	   0.825276170000000   0.295680611000000   0.249394851000000
	   0.820501754000000   0.286929926000000   0.244493934000000
	   0.815659988000000   0.278066636000000   0.239628318000000
	   0.810751482000000   0.269081721000000   0.234798343000000
	   0.805776855000000   0.259964733000000   0.230004348000000
	   0.800736732000000   0.250703507000000   0.225246666000000
	   0.795631745000000   0.241283790000000   0.220525627000000
	   0.790462533000000   0.231688768000000   0.215841558000000
	   0.785229744000000   0.221898442000000   0.211194782000000
	   0.779934029000000   0.211888813000000   0.206585620000000
	   0.774576051000000   0.201630762000000   0.202014392000000
	   0.769156474000000   0.191088518000000   0.197481414000000
	   0.763675975000000   0.180217488000000   0.192987001000000
	   0.758135232000000   0.168961101000000   0.188531467000000
	   0.752534934000000   0.157246067000000   0.184115123000000
	   0.746875773000000   0.144974956000000   0.179738284000000
	   0.741158452000000   0.132014017000000   0.175401259000000
	   0.735383675000000   0.118171900000000   0.171104363000000
	   0.729552157000000   0.103159409000000   0.166847907000000
	   0.723664618000000   0.086504694000000   0.162632207000000
	   0.717721782000000   0.067344036000000   0.158457578000000
	   0.711724383000000   0.043755173000000   0.154324339000000
	   0.705673158000000   0.015556160000000   0.150232812000000
	];
	
    if nargin < 1
       n = size(get(gcf, 'Colormap'), 1);
    end
	
	rgbMap = interp1(linspace(0, 1, size(rgbValues, 1)), rgbValues, linspace(0, 1, n), 'spline');

end
