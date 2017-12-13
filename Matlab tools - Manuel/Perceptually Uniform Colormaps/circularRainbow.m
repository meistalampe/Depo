
% Filename : circularRainbow.m
% Authors  : Peter Kovesi | Manuel C. Kohl
% Date     : 14.12.2016

function rgbMap = circularRainbow(n)
	
	rgbValues = [
	   0.937688000000000   0.333524000000000   0.948091000000000
	   0.943832000000000   0.342828000000000   0.942393000000000
	   0.949390000000000   0.352750000000000   0.936128000000000
	   0.954392000000000   0.363232000000000   0.929311000000000
	   0.958860000000000   0.374216000000000   0.921979000000000
	   0.962829000000000   0.385575000000000   0.914155000000000
	   0.966340000000000   0.397272000000000   0.905883000000000
	   0.969436000000000   0.409209000000000   0.897208000000000
	   0.972159000000000   0.421299000000000   0.888172000000000
	   0.974539000000000   0.433497000000000   0.878829000000000
	   0.976626000000000   0.445734000000000   0.869226000000000
	   0.978446000000000   0.457972000000000   0.859397000000000
	   0.980040000000000   0.470168000000000   0.849387000000000
	   0.981421000000000   0.482281000000000   0.839222000000000
	   0.982617000000000   0.494300000000000   0.828938000000000
	   0.983645000000000   0.506196000000000   0.818543000000000
	   0.984527000000000   0.517989000000000   0.808076000000000
	   0.985266000000000   0.529642000000000   0.797533000000000
	   0.985878000000000   0.541157000000000   0.786940000000000
	   0.986372000000000   0.552554000000000   0.776288000000000
	   0.986756000000000   0.563819000000000   0.765594000000000
	   0.987036000000000   0.574940000000000   0.754857000000000
	   0.987225000000000   0.585954000000000   0.744073000000000
	   0.987329000000000   0.596830000000000   0.733261000000000
	   0.987359000000000   0.607585000000000   0.722406000000000
	   0.987323000000000   0.618208000000000   0.711527000000000
	   0.987233000000000   0.628715000000000   0.700603000000000
	   0.987102000000000   0.639094000000000   0.689645000000000
	   0.986942000000000   0.649357000000000   0.678645000000000
	   0.986769000000000   0.659488000000000   0.667616000000000
	   0.986595000000000   0.669503000000000   0.656545000000000
	   0.986436000000000   0.679384000000000   0.645426000000000
	   0.986305000000000   0.689155000000000   0.634284000000000
	   0.986211000000000   0.698787000000000   0.623088000000000
	   0.986165000000000   0.708312000000000   0.611844000000000
	   0.986172000000000   0.717716000000000   0.600553000000000
	   0.986236000000000   0.727001000000000   0.589203000000000
	   0.986356000000000   0.736180000000000   0.577794000000000
	   0.986531000000000   0.745264000000000   0.566320000000000
	   0.986753000000000   0.754257000000000   0.554758000000000
	   0.987015000000000   0.763154000000000   0.543105000000000
	   0.987306000000000   0.771982000000000   0.531342000000000
	   0.987613000000000   0.780738000000000   0.519460000000000
	   0.987915000000000   0.789439000000000   0.507436000000000
	   0.988199000000000   0.798073000000000   0.495260000000000
	   0.988446000000000   0.806659000000000   0.482912000000000
	   0.988635000000000   0.815182000000000   0.470388000000000
	   0.988746000000000   0.823650000000000   0.457646000000000
	   0.988752000000000   0.832060000000000   0.444700000000000
	   0.988628000000000   0.840393000000000   0.431506000000000
	   0.988343000000000   0.848634000000000   0.418045000000000
	   0.987865000000000   0.856767000000000   0.404327000000000
	   0.987155000000000   0.864764000000000   0.390333000000000
	   0.986163000000000   0.872591000000000   0.376069000000000
	   0.984851000000000   0.880197000000000   0.361516000000000
	   0.983160000000000   0.887543000000000   0.346700000000000
	   0.981048000000000   0.894578000000000   0.331631000000000
	   0.978455000000000   0.901226000000000   0.316372000000000
	   0.975339000000000   0.907443000000000   0.300918000000000
	   0.971656000000000   0.913155000000000   0.285373000000000
	   0.967365000000000   0.918306000000000   0.269826000000000
	   0.962437000000000   0.922845000000000   0.254315000000000
	   0.956863000000000   0.926719000000000   0.238952000000000
	   0.950639000000000   0.929902000000000   0.223876000000000
	   0.943771000000000   0.932362000000000   0.209203000000000
	   0.936285000000000   0.934099000000000   0.195058000000000
	   0.928203000000000   0.935119000000000   0.181532000000000
	   0.919585000000000   0.935443000000000   0.168836000000000
	   0.910473000000000   0.935102000000000   0.156970000000000
	   0.900913000000000   0.934145000000000   0.146103000000000
	   0.890971000000000   0.932627000000000   0.136225000000000
	   0.880697000000000   0.930612000000000   0.127473000000000
	   0.870144000000000   0.928148000000000   0.119769000000000
	   0.859367000000000   0.925314000000000   0.113150000000000
	   0.848400000000000   0.922162000000000   0.107415000000000
	   0.837288000000000   0.918740000000000   0.102569000000000
	   0.826051000000000   0.915112000000000   0.098502000000000
	   0.814723000000000   0.911316000000000   0.095091000000000
	   0.803324000000000   0.907388000000000   0.092162000000000
	   0.791866000000000   0.903355000000000   0.089659000000000
	   0.780359000000000   0.899246000000000   0.087518000000000
	   0.768811000000000   0.895079000000000   0.085510000000000
	   0.757233000000000   0.890864000000000   0.083837000000000
	   0.745619000000000   0.886624000000000   0.082243000000000
	   0.733976000000000   0.882352000000000   0.080673000000000
	   0.722295000000000   0.878067000000000   0.079194000000000
	   0.710601000000000   0.873765000000000   0.077792000000000
	   0.698863000000000   0.869457000000000   0.076415000000000
	   0.687099000000000   0.865139000000000   0.075063000000000
	   0.675294000000000   0.860818000000000   0.073757000000000
	   0.663455000000000   0.856488000000000   0.072319000000000
	   0.651565000000000   0.852155000000000   0.071005000000000
	   0.639628000000000   0.847804000000000   0.069678000000000
	   0.627641000000000   0.843452000000000   0.068313000000000
	   0.615598000000000   0.839095000000000   0.066946000000000
	   0.603505000000000   0.834729000000000   0.065602000000000
	   0.591341000000000   0.830355000000000   0.064284000000000
	   0.579114000000000   0.825970000000000   0.063016000000000
	   0.566812000000000   0.821583000000000   0.061599000000000
	   0.554426000000000   0.817184000000000   0.060374000000000
	   0.541951000000000   0.812777000000000   0.059088000000000
	   0.529396000000000   0.808369000000000   0.057695000000000
	   0.516724000000000   0.803948000000000   0.056522000000000
	   0.503949000000000   0.799524000000000   0.055189000000000
	   0.491057000000000   0.795083000000000   0.053903000000000
	   0.478012000000000   0.790640000000000   0.052644000000000
	   0.464840000000000   0.786193000000000   0.051424000000000
	   0.451514000000000   0.781731000000000   0.050257000000000
	   0.438032000000000   0.777261000000000   0.049220000000000
	   0.424375000000000   0.772770000000000   0.048120000000000
	   0.410564000000000   0.768269000000000   0.047322000000000
	   0.396557000000000   0.763754000000000   0.046740000000000
	   0.382394000000000   0.759216000000000   0.046427000000000
	   0.368078000000000   0.754661000000000   0.046596000000000
	   0.353614000000000   0.750060000000000   0.047299000000000
	   0.339062000000000   0.745430000000000   0.048740000000000
	   0.324426000000000   0.740751000000000   0.050897000000000
	   0.309837000000000   0.736016000000000   0.054069000000000
	   0.295322000000000   0.731217000000000   0.058336000000000
	   0.281049000000000   0.726343000000000   0.063783000000000
	   0.267165000000000   0.721371000000000   0.070322000000000
	   0.253870000000000   0.716308000000000   0.077992000000000
	   0.241338000000000   0.711121000000000   0.086870000000000
	   0.229810000000000   0.705805000000000   0.096608000000000
	   0.219614000000000   0.700353000000000   0.107413000000000
	   0.210918000000000   0.694751000000000   0.118989000000000
	   0.203999000000000   0.689009000000000   0.131291000000000
	   0.198943000000000   0.683096000000000   0.144224000000000
	   0.195928000000000   0.677034000000000   0.157682000000000
	   0.194864000000000   0.670809000000000   0.171614000000000
	   0.195597000000000   0.664426000000000   0.185943000000000
	   0.197953000000000   0.657910000000000   0.200497000000000
	   0.201632000000000   0.651248000000000   0.215333000000000
	   0.206391000000000   0.644457000000000   0.230304000000000
	   0.211828000000000   0.637562000000000   0.245381000000000
	   0.217714000000000   0.630567000000000   0.260517000000000
	   0.223814000000000   0.623480000000000   0.275653000000000
	   0.229923000000000   0.616316000000000   0.290713000000000
	   0.235925000000000   0.609097000000000   0.305738000000000
	   0.241618000000000   0.601816000000000   0.320644000000000
	   0.246935000000000   0.594504000000000   0.335432000000000
	   0.251836000000000   0.587158000000000   0.350083000000000
	   0.256216000000000   0.579800000000000   0.364592000000000
	   0.260111000000000   0.572415000000000   0.378970000000000
	   0.263461000000000   0.565010000000000   0.393203000000000
	   0.266243000000000   0.557617000000000   0.407304000000000
	   0.268465000000000   0.550209000000000   0.421268000000000
	   0.270134000000000   0.542804000000000   0.435128000000000
	   0.271218000000000   0.535387000000000   0.448859000000000
	   0.271734000000000   0.527982000000000   0.462471000000000
	   0.271701000000000   0.520573000000000   0.476000000000000
	   0.271122000000000   0.513171000000000   0.489416000000000
	   0.269969000000000   0.505756000000000   0.502754000000000
	   0.268234000000000   0.498366000000000   0.516003000000000
	   0.265977000000000   0.490956000000000   0.529190000000000
	   0.263162000000000   0.483520000000000   0.542278000000000
	   0.259815000000000   0.476095000000000   0.555286000000000
	   0.255941000000000   0.468642000000000   0.568216000000000
	   0.251617000000000   0.461165000000000   0.581055000000000
	   0.246802000000000   0.453652000000000   0.593797000000000
	   0.241605000000000   0.446094000000000   0.606425000000000
	   0.236047000000000   0.438486000000000   0.618943000000000
	   0.230168000000000   0.430809000000000   0.631314000000000
	   0.224104000000000   0.423032000000000   0.643534000000000
	   0.217927000000000   0.415169000000000   0.655603000000000
	   0.211702000000000   0.407184000000000   0.667494000000000
	   0.205504000000000   0.399058000000000   0.679192000000000
	   0.199449000000000   0.390795000000000   0.690701000000000
	   0.193673000000000   0.382343000000000   0.702012000000000
	   0.188179000000000   0.373723000000000   0.713124000000000
	   0.182998000000000   0.364881000000000   0.724042000000000
	   0.178289000000000   0.355845000000000   0.734770000000000
	   0.173922000000000   0.346566000000000   0.745302000000000
	   0.169985000000000   0.337070000000000   0.755664000000000
	   0.166387000000000   0.327320000000000   0.765861000000000
	   0.163120000000000   0.317346000000000   0.775902000000000
	   0.160049000000000   0.307119000000000   0.785807000000000
	   0.157238000000000   0.296666000000000   0.795575000000000
	   0.154570000000000   0.285952000000000   0.805220000000000
	   0.152024000000000   0.275051000000000   0.814744000000000
	   0.149664000000000   0.263945000000000   0.824140000000000
	   0.147444000000000   0.252636000000000   0.833404000000000
	   0.145543000000000   0.241182000000000   0.842515000000000
	   0.144017000000000   0.229604000000000   0.851446000000000
	   0.143121000000000   0.217998000000000   0.860186000000000
	   0.143053000000000   0.206386000000000   0.868690000000000
	   0.144045000000000   0.194808000000000   0.876912000000000
	   0.146305000000000   0.183361000000000   0.884837000000000
	   0.150065000000000   0.172187000000000   0.892412000000000
	   0.155365000000000   0.161400000000000   0.899600000000000
	   0.162302000000000   0.151032000000000   0.906369000000000
	   0.170751000000000   0.141359000000000   0.912696000000000
	   0.180618000000000   0.132437000000000   0.918560000000000
	   0.191735000000000   0.124462000000000   0.923961000000000
	   0.203887000000000   0.117652000000000   0.928885000000000
	   0.216808000000000   0.112135000000000   0.933354000000000
	   0.230285000000000   0.107942000000000   0.937390000000000
	   0.244173000000000   0.105248000000000   0.941008000000000
	   0.258283000000000   0.104034000000000   0.944254000000000
	   0.272456000000000   0.104173000000000   0.947160000000000
	   0.286585000000000   0.105597000000000   0.949767000000000
	   0.300591000000000   0.108073000000000   0.952118000000000
	   0.314397000000000   0.111532000000000   0.954258000000000
	   0.327961000000000   0.115651000000000   0.956218000000000
	   0.341257000000000   0.120310000000000   0.958033000000000
	   0.354259000000000   0.125435000000000   0.959731000000000
	   0.366979000000000   0.130836000000000   0.961339000000000
	   0.379418000000000   0.136365000000000   0.962880000000000
	   0.391595000000000   0.142096000000000   0.964362000000000
	   0.403518000000000   0.147862000000000   0.965807000000000
	   0.415202000000000   0.153628000000000   0.967221000000000
	   0.426686000000000   0.159414000000000   0.968604000000000
	   0.437993000000000   0.165152000000000   0.969962000000000
	   0.449134000000000   0.170885000000000   0.971293000000000
	   0.460135000000000   0.176498000000000   0.972606000000000
	   0.471061000000000   0.182036000000000   0.973886000000000
	   0.481915000000000   0.187511000000000   0.975137000000000
	   0.492732000000000   0.192804000000000   0.976352000000000
	   0.503569000000000   0.197982000000000   0.977523000000000
	   0.514456000000000   0.203022000000000   0.978633000000000
	   0.525406000000000   0.207899000000000   0.979689000000000
	   0.536474000000000   0.212587000000000   0.980667000000000
	   0.547669000000000   0.217088000000000   0.981567000000000
	   0.559028000000000   0.221368000000000   0.982381000000000
	   0.570568000000000   0.225422000000000   0.983096000000000
	   0.582302000000000   0.229249000000000   0.983716000000000
	   0.594235000000000   0.232843000000000   0.984237000000000
	   0.606358000000000   0.236227000000000   0.984653000000000
	   0.618678000000000   0.239354000000000   0.984965000000000
	   0.631160000000000   0.242265000000000   0.985178000000000
	   0.643789000000000   0.244961000000000   0.985296000000000
	   0.656562000000000   0.247499000000000   0.985325000000000
	   0.669430000000000   0.249819000000000   0.985273000000000
	   0.682370000000000   0.252030000000000   0.985147000000000
	   0.695371000000000   0.254083000000000   0.984956000000000
	   0.708386000000000   0.256007000000000   0.984709000000000
	   0.721386000000000   0.257863000000000   0.984407000000000
	   0.734366000000000   0.259680000000000   0.984054000000000
	   0.747284000000000   0.261432000000000   0.983653000000000
	   0.760121000000000   0.263191000000000   0.983207000000000
	   0.772859000000000   0.264941000000000   0.982712000000000
	   0.785479000000000   0.266761000000000   0.982159000000000
	   0.797943000000000   0.268669000000000   0.981533000000000
	   0.810234000000000   0.270687000000000   0.980822000000000
	   0.822330000000000   0.272847000000000   0.980006000000000
	   0.834182000000000   0.275246000000000   0.979052000000000
	   0.845756000000000   0.277908000000000   0.977932000000000
	   0.857023000000000   0.280889000000000   0.976608000000000
	   0.867940000000000   0.284304000000000   0.975035000000000
	   0.878448000000000   0.288192000000000   0.973174000000000
	   0.888519000000000   0.292629000000000   0.970965000000000
	   0.898101000000000   0.297682000000000   0.968371000000000
	   0.907167000000000   0.303395000000000   0.965334000000000
	   0.915672000000000   0.309845000000000   0.961820000000000
	   0.923611000000000   0.316999000000000   0.957797000000000
	   0.930949000000000   0.324889000000000   0.953227000000000
	];
	
    if nargin < 1
       n = size(get(gcf, 'Colormap'), 1);
    end
	
	rgbMap = interp1(linspace(0, 1, size(rgbValues, 1)), rgbValues, linspace(0, 1, n), 'spline');

end