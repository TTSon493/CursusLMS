�D
TD:\FPT\Semester 6\Project_Cursus\Backend_Cursus\Cursus.LMS\Cursus.LMS.API\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Services 
. 
AddControllers 
(  
)  !
;! "
builder 
. 
Services 
. "
AddHttpContextAccessor '
(' (
)( )
;) *
builder 
. 
Services 
. 
AddHttpClient 
( 
)  
;  !
builder 
. 
Services 
. 
AddDbContext 
<  
ApplicationDbContext 2
>2 3
(3 4
options4 ;
=>< >
{ 
options 
. 
UseSqlServer 
( 
builder  
.  !
Configuration! .
.. /
GetConnectionString/ B
(B C"
StaticConnectionStringC Y
.Y Z#
SQLDB_DefaultConnectionZ q
)q r
)r s
;s t
} 
) 
; 
builder 
. 
Services 
. 
	Configure 
< .
"DataProtectionTokenProviderOptions =
>= >
(> ?
options? F
=>G I
options 
. 
TokenLifespan 
= 
TimeSpan $
.$ %
FromMinutes% 0
(0 1
$num1 3
)3 4
)4 5
;5 6
builder!! 
.!! 
Services!! 
.!! 
AddAutoMapper!! 
(!! 
typeof!! %
(!!% &
AutoMapperProfile!!& 7
)!!7 8
)!!8 9
;!!9 :
builder%% 
.%% 
Services%% 
.%% 
RegisterServices%% !
(%%! "
)%%" #
;%%# $
builder)) 
.)) 
Services)) 
.)) 
AddFirebaseServices)) $
())$ %
)))% &
;))& '
builder-- 
.-- 
AddRedisCache-- 
(-- 
)-- 
;-- 
builder11 
.11 
AddHangfireServices11 
(11 
)11 
;11 
builder33 
.33 
Services33 
.33 #
AddEndpointsApiExplorer33 (
(33( )
)33) *
;33* +
builder77 
.77  
AddAppAuthentication77 
(77 
)77 
;77 
builder99 
.99 
Services99 
.99 
AddAuthorization99 !
(99! "
)99" #
;99# $
builder== 
.== 
AddSwaggerGen== 
(== 
)== 
;== 
builder@@ 
.@@ 
Services@@ 
.@@ 

AddSignalR@@ 
(@@ 
)@@ 
;@@ 
builderBB 
.BB 
ServicesBB 
.BB 
AddCorsBB 
(BB 
optionsBB  
=>BB! #
{CC 
varDD 
originDefaultDD 
=DD 
builderDD 
.DD  
ConfigurationDD  -
[DD- .
$strDD. D
]DDD E
;DDE F
varEE 
originFirebaseEE 
=EE 
builderEE  
.EE  !
ConfigurationEE! .
[EE. /
$strEE/ M
]EEM N
;EEN O
varFF 
originVercelFF 
=FF 
builderFF 
.FF 
ConfigurationFF ,
[FF, -
$strFF- I
]FFI J
;FFJ K
varGG 
	originK8SGG 
=GG 
builderGG 
.GG 
ConfigurationGG )
[GG) *
$strGG* C
]GGC D
;GGD E
optionsHH 
.HH 
	AddPolicyHH 
(HH 
$strHH +
,HH+ ,
builderII 
=>II 
builderII 
.JJ 
WithOriginsJJ 
(JJ 
originDefaultJJ &
,JJ& '
originFirebaseJJ( 6
,JJ6 7
originVercelJJ8 D
,JJD E
	originK8SJJF O
)JJO P
.KK 
AllowAnyHeaderKK 
(KK 
)KK 
.LL 
AllowAnyMethodLL 
(LL 
)LL 
.MM 
AllowCredentialsMM 
(MM 
)MM 
)MM  
;MM  !
}NN 
)NN 
;NN 
builderQQ 
.QQ 
ServicesQQ 
.QQ +
AddApplicationInsightsTelemetryQQ 0
(QQ0 1
builderQQ1 8
.QQ8 9
ConfigurationQQ9 F
[QQF G
$strQQG o
]QQo p
)QQp q
;QQq r
varSS 
appSS 
=SS 	
builderSS
 
.SS 
BuildSS 
(SS 
)SS 
;SS 
ApplyMigrationUU 
(UU 
)UU 
;UU 
StripeConfigurationWW 
.WW 
ApiKeyWW 
=WW 
builderWW $
.WW$ %
ConfigurationWW% 2
.WW2 3

GetSectionWW3 =
(WW= >
$strWW> P
)WWP Q
.WWQ R
GetWWR U
<WWU V
stringWWV \
>WW\ ]
(WW] ^
)WW^ _
;WW_ `
ifZZ 
(ZZ 
appZZ 
.ZZ 
EnvironmentZZ 
.ZZ 
IsDevelopmentZZ !
(ZZ! "
)ZZ" #
)ZZ# $
{[[ 
app\\ 
.\\ 

UseSwagger\\ 
(\\ 
)\\ 
;\\ 
app]] 
.]] 
UseSwaggerUI]] 
(]] 
)]] 
;]] 
}^^ 
app`` 
.`` 
UseCors`` 
(`` 
$str`` !
)``! "
;``" #
appbb 
.bb  
UseHangfireDashboardbb 
(bb 
)bb 
;bb 
appdd 
.dd  
MapHangfireDashboarddd 
(dd 
$strdd $
)dd$ %
;dd% &
RecurringJobff 
.ff 
AddOrUpdateff 
<ff 
IAuthServiceff %
>ff% &
(ff& '
jobff' *
=>ff+ -
jobff. 1
.ff1 2
SendClearEmailff2 @
(ff@ A
$numffA B
)ffB C
,ffC D
$strffE R
)ffR S
;ffS T
RecurringJobgg 
.gg 
AddOrUpdategg 
<gg 
IAuthServicegg %
>gg% &
(gg& '
jobgg' *
=>gg+ -
jobgg. 1
.gg1 2
	ClearUsergg2 ;
(gg; <
)gg< =
,gg= >
$strgg? L
)ggL M
;ggM N
appii 
.ii 
UseHttpsRedirectionii 
(ii 
)ii 
;ii 
appkk 
.kk 
UseAuthenticationkk 
(kk 
)kk 
;kk 
appmm 
.mm 
UseAuthorizationmm 
(mm 
)mm 
;mm 
appoo 
.oo 
MapControllersoo 
(oo 
)oo 
;oo 
appqq 
.qq 
MapHubqq 

<qq
 
NotificationHubqq 
>qq 
(qq 
$strqq 0
)qq0 1
.qq1 2 
RequireAuthorizationqq2 F
(qqF G
)qqG H
;qqH I
appss 
.ss 
Runss 
(ss 
)ss 	
;ss	 

voiduu 
ApplyMigrationuu 
(uu 
)uu 
{vv 
usingww 	
(ww
 
varww 
scopeww 
=ww 
appww 
.ww 
Servicesww #
.ww# $
CreateScopeww$ /
(ww/ 0
)ww0 1
)ww1 2
{xx 
varyy 
contextyy 
=yy 
scopeyy 
.yy 
ServiceProvideryy +
.yy+ ,
GetRequiredServiceyy, >
<yy> ? 
ApplicationDbContextyy? S
>yyS T
(yyT U
)yyU V
;yyV W
if{{ 

({{ 
context{{ 
.{{ 
Database{{ 
.{{  
GetPendingMigrations{{ 1
({{1 2
){{2 3
.{{3 4
Any{{4 7
({{7 8
){{8 9
){{9 :
{|| 	
context}} 
.}} 
Database}} 
.}} 
Migrate}} $
(}}$ %
)}}% &
;}}& '
}~~ 	
} 
}�� �*
wD:\FPT\Semester 6\Project_Cursus\Backend_Cursus\Cursus.LMS\Cursus.LMS.API\Extentions\WebApplicationBuilderExtensions.cs
	namespace 	
Cursus
 
. 
LMS 
. 
API 
. 

Extentions #
;# $
public 
static 
class +
WebApplicationBuilderExtensions 3
{ 
public		 

static		 !
WebApplicationBuilder		 ' 
AddAppAuthentication		( <
(		< =
this		= A!
WebApplicationBuilder		B W
builder		X _
)		_ `
{

 
builder 
. 
Services 
. 
AddAuthentication *
(* +
options+ 2
=>3 5
{ 	
options 
. 
DefaultScheme !
=" #
JwtBearerDefaults$ 5
.5 6 
AuthenticationScheme6 J
;J K
options 
. %
DefaultAuthenticateScheme -
=. /
JwtBearerDefaults0 A
.A B 
AuthenticationSchemeB V
;V W
options 
. "
DefaultChallengeScheme *
=+ ,
JwtBearerDefaults- >
.> ? 
AuthenticationScheme? S
;S T
} 	
)	 

.
 
AddJwtBearer 
( 
options 
=>  "
{ 	
options 
. 
	SaveToken 
= 
true  $
;$ %
options 
.  
RequireHttpsMetadata (
=) *
false+ 0
;0 1
options 
. %
TokenValidationParameters -
=. /
new0 3%
TokenValidationParameters4 M
(M N
)N O
{ 
ValidateIssuer 
=  
true! %
,% &
ValidateAudience  
=! "
true# '
,' (
ValidIssuer 
= 
builder %
.% &
Configuration& 3
[3 4
$str4 E
]E F
,F G
ValidAudience 
= 
builder  '
.' (
Configuration( 5
[5 6
$str6 I
]I J
,J K
IssuerSigningKey  
=! "
new# & 
SymmetricSecurityKey' ;
(; <
Encoding< D
.D E
UTF8E I
.I J
GetBytesJ R
(R S
builderS Z
.Z [
Configuration[ h
[h i
$stri u
]u v
)v w
)w x
} 
; 
} 	
)	 

;
 
return 
builder 
; 
} 
public!! 

static!! !
WebApplicationBuilder!! '
AddSwaggerGen!!( 5
(!!5 6
this!!6 :!
WebApplicationBuilder!!; P
builder!!Q X
)!!X Y
{"" 
builder## 
.## 
Services## 
.## 
AddSwaggerGen## &
(##& '
options##' .
=>##/ 1
{$$ 	
options%% 
.%% !
AddSecurityDefinition%% )
(%%) *
name%%* .
:%%. /
$str%%0 8
,%%8 9
securityScheme%%: H
:%%H I
new%%J M!
OpenApiSecurityScheme%%N c
(%%c d
)%%d e
{&& 
Name'' 
='' 
$str'' &
,''& '
In(( 
=(( 
	Microsoft(( 
.(( 
OpenApi(( &
.((& '
Models((' -
.((- .
ParameterLocation((. ?
.((? @
Header((@ F
,((F G
Description)) 
=)) 
$str)) _
,))_ `
Type** 
=** 
	Microsoft**  
.**  !
OpenApi**! (
.**( )
Models**) /
.**/ 0
SecuritySchemeType**0 B
.**B C
ApiKey**C I
,**I J
BearerFormat++ 
=++ 
$str++ $
,++$ %
Scheme,, 
=,, 
$str,, !
}-- 
)-- 
;-- 
options.. 
... "
AddSecurityRequirement.. *
(..* +
new..+ .&
OpenApiSecurityRequirement../ I
(..I J
)..J K
{// 
{00 
new11 !
OpenApiSecurityScheme11 -
(11- .
)11. /
{22 
Name33 
=33 
$str33 '
,33' (
In44 
=44 
ParameterLocation44 .
.44. /
Header44/ 5
,445 6
	Reference55 !
=55" #
new55$ '
OpenApiReference55( 8
(558 9
)559 :
{66 
Id77 
=77  
$str77! )
,77) *
Type88  
=88! "
ReferenceType88# 0
.880 1
SecurityScheme881 ?
}99 
}:: 
,:: 
new;; 
List;; 
<;; 
string;; #
>;;# $
(;;$ %
);;% &
}<< 
}== 
)== 
;== 
}>> 	
)>>	 

;>>
 
return@@ 
builder@@ 
;@@ 
}AA 
}BB �?
sD:\FPT\Semester 6\Project_Cursus\Backend_Cursus\Cursus.LMS\Cursus.LMS.API\Extentions\ServiceCollectionExtensions.cs
	namespace		 	
Cursus		
 
.		 
LMS		 
.		 
API		 
.		 

Extentions		 #
;		# $
public 
static 
class '
ServiceCollectionExtensions /
{ 
public 

static 
IServiceCollection $
RegisterServices% 5
(5 6
this6 :
IServiceCollection; M
servicesN V
)V W
{ 
services 
. 
	AddScoped 
< 
IUnitOfWork &
,& '

UnitOfWork( 2
>2 3
(3 4
)4 5
;5 6
services 
. 
	AddScoped 
< 
IBaseService '
,' (
BaseService) 4
>4 5
(5 6
)6 7
;7 8
services 
. 
	AddScoped 
< 
IAuthService '
,' (
AuthService) 4
>4 5
(5 6
)6 7
;7 8
services 
. 
	AddScoped 
< 
IEmailService (
,( )
EmailService* 6
>6 7
(7 8
)8 9
;9 :
services 
. 
	AddScoped 
< 
ITokenService (
,( )
TokenService* 6
>6 7
(7 8
)8 9
;9 :
services 
. 
	AddScoped 
< 
IRedisService (
,( )
RedisService* 6
>6 7
(7 8
)8 9
;9 :
services 
. 
	AddScoped 
< 
ICategoryService +
,+ ,
CategoryService- <
>< =
(= >
)> ?
;? @
services 
. 
	AddScoped 
< 
IInstructorService -
,- .
InstructorService/ @
>@ A
(A B
)B C
;C D
services   
.   
	AddScoped   
<   "
IUserManagerRepository   1
,  1 2!
UserManagerRepository  3 H
>  H I
(  I J
)  J K
;  K L
services"" 
."" 
	AddScoped"" 
<"" 
IClosedXMLService"" ,
,"", -
ClosedXMLService"". >
>""> ?
(""? @
)""@ A
;""A B
services$$ 
.$$ 
	AddScoped$$ 
<$$ 
ICourseService$$ )
,$$) *
CourseService$$+ 8
>$$8 9
($$9 :
)$$: ;
;$$; <
services&& 
.&& 
	AddScoped&& 
<&& !
ICourseVersionService&& 0
,&&0 1 
CourseVersionService&&2 F
>&&F G
(&&G H
)&&H I
;&&I J
services(( 
.(( 
	AddScoped(( 
<(( '
ICourseVersionStatusService(( 6
,((6 7&
CourseVersionStatusService((8 R
>((R S
(((S T
)((T U
;((U V
services** 
.** 
	AddScoped** 
<** (
ICourseSectionVersionService** 7
,**7 8'
CourseSectionVersionService**9 T
>**T U
(**U V
)**V W
;**W X
services,, 
.,, 
	AddScoped,, 
<,, )
ISectionDetailsVersionService,, 8
,,,8 9(
SectionDetailsVersionService,,: V
>,,V W
(,,W X
),,X Y
;,,Y Z
services.. 
... 
	AddScoped.. 
<.. 
ILevelService.. (
,..( )
LevelService..* 6
>..6 7
(..7 8
)..8 9
;..9 :
services00 
.00 
	AddScoped00 
<00 
IEmailSender00 '
,00' (
EmailSender00) 4
>004 5
(005 6
)006 7
;007 8
services22 
.22 
	AddScoped22 
<22 
ICartService22 '
,22' (
CartService22) 4
>224 5
(225 6
)226 7
;227 8
services44 
.44 
	AddScoped44 
<44  
ICourseReviewService44 /
,44/ 0
CourseReviewService441 D
>44D E
(44E F
)44F G
;44G H
services66 
.66 
	AddScoped66 
<66  
ICourseReportService66 /
,66/ 0
CourseReportService661 D
>66D E
(66E F
)66F G
;66G H
services88 
.88 
	AddScoped88 
<88 
IOrderService88 (
,88( )
OrderService88* 6
>886 7
(887 8
)888 9
;889 :
services:: 
.:: 
	AddScoped:: 
<:: 
IOrderStatusService:: .
,::. /
OrderStatusService::0 B
>::B C
(::C D
)::D E
;::E F
services<< 
.<< 
	AddScoped<< 
<<< 
IStudentsService<< +
,<<+ ,
StudentService<<- ;
><<; <
(<<< =
)<<= >
;<<> ?
services>> 
.>> 
	AddScoped>> 
<>> !
IStudentCourseService>> 0
,>>0 1 
StudentCourseService>>2 F
>>>F G
(>>G H
)>>H I
;>>I J
services@@ 
.@@ 
	AddScoped@@ 
<@@ '
IStudentCourseStatusService@@ 6
,@@6 7&
StudentCourseStatusService@@8 R
>@@R S
(@@S T
)@@T U
;@@U V
servicesBB 
.BB 
	AddScopedBB 
<BB 
IStripeServiceBB )
,BB) *
StripeServiceBB+ 8
>BB8 9
(BB9 :
)BB: ;
;BB; <
servicesDD 
.DD 
	AddScopedDD 
<DD 
ITransactionServiceDD .
,DD. /
TransactionServiceDD0 B
>DDB C
(DDC D
)DDD E
;DDE F
servicesFF 
.FF 
	AddScopedFF 
<FF 
IBalanceServiceFF *
,FF* +
BalanceServiceFF, :
>FF: ;
(FF; <
)FF< =
;FF= >
servicesHH 
.HH 
	AddScopedHH 
<HH 
IPaymentServiceHH *
,HH* +
PaymentServiceHH, :
>HH: ;
(HH; <
)HH< =
;HH= >
servicesJJ 
.JJ 
	AddScopedJJ 
<JJ "
ICourseProgressServiceJJ 1
,JJ1 2!
CourseProgressServiceJJ3 H
>JJH I
(JJI J
)JJJ K
;JJK L
servicesLL 
.LL 
	AddScopedLL 
<LL 
ICompanyServiceLL *
,LL* +
CompanyServiceLL, :
>LL: ;
(LL; <
)LL< =
;LL= >
servicesNN 
.NN 
	AddScopedNN 
<NN 
ITermOfUseServiceNN ,
,NN, -
TermOfUseServiceNN. >
>NN> ?
(NN? @
)NN@ A
;NNA B
servicesPP 
.PP 
	AddScopedPP 
<PP 
IPrivacyServicePP *
,PP* +
PrivacyServicePP, :
>PP: ;
(PP; <
)PP< =
;PP= >
servicesSS 
.SS 
AddIdentitySS 
<SS 
ApplicationUserSS ,
,SS, -
IdentityRoleSS. :
>SS: ;
(SS; <
)SS< =
.TT $
AddEntityFrameworkStoresTT %
<TT% & 
ApplicationDbContextTT& :
>TT: ;
(TT; <
)TT< =
.UU $
AddDefaultTokenProvidersUU %
(UU% &
)UU& '
;UU' (
returnXX 
servicesXX 
;XX 
}YY 
}ZZ �

nD:\FPT\Semester 6\Project_Cursus\Backend_Cursus\Cursus.LMS\Cursus.LMS.API\Extentions\RedisServiceExtensions.cs
	namespace 	
Cursus
 
. 
LMS 
. 
API 
. 

Extentions #
;# $
public 
static 
class "
RedisServiceExtensions *
{ 
public 

static !
WebApplicationBuilder '
AddRedisCache( 5
(5 6
this6 :!
WebApplicationBuilder; P
builderQ X
)X Y
{		 
string

 
connectionString

 
=

  !
builder 
. 
Configuration !
.! "

GetSection" ,
(, -
$str- 4
)4 5
[5 6"
StaticConnectionString6 L
.L M"
REDIS_ConnectionStringM c
]c d
;d e
builder 
. 
Services 
. 
AddSingleton %
<% &"
IConnectionMultiplexer& <
>< =
(= >!
ConnectionMultiplexer> S
.S T
ConnectT [
([ \
connectionString\ l
)l m
)m n
;n o
return 
builder 
; 
} 
} �
qD:\FPT\Semester 6\Project_Cursus\Backend_Cursus\Cursus.LMS\Cursus.LMS.API\Extentions\HangfireServiceExtensions.cs
	namespace 	
Cursus
 
. 
LMS 
. 
API 
. 

Extentions #
;# $
public 
static 
class %
HangfireServiceExtensions -
{ 
public 

static !
WebApplicationBuilder '
AddHangfireServices( ;
(; <
this< @!
WebApplicationBuilderA V
builderW ^
)^ _
{		 
builder

 
.

 
Services

 
.

 
AddHangfire

 $
(

$ %
config

% +
=>

, .
config

/ 5
. %
SetDataCompatibilityLevel &
(& '
CompatibilityLevel' 9
.9 :
Version_180: E
)E F
. /
#UseSimpleAssemblyNameTypeSerializer 0
(0 1
)1 2
. ,
 UseRecommendedSerializerSettings -
(- .
). /
. 
UseSqlServerStorage  
(  !
builder 
. 
Configuration %
.% &
GetConnectionString& 9
(9 :"
StaticConnectionString: P
.P Q#
SQLDB_DefaultConnectionQ h
)h i
)i j
) 	
;	 

builder 
. 
Services 
. 
AddHangfireServer *
(* +
)+ ,
;, -
return 
builder 
; 
} 
} �
qD:\FPT\Semester 6\Project_Cursus\Backend_Cursus\Cursus.LMS\Cursus.LMS.API\Extentions\FirebaseServiceExtensions.cs
	namespace 	
Cursus
 
. 
LMS 
. 
API 
. 

Extentions #
;# $
public		 
static		 
class		 %
FirebaseServiceExtensions		 -
{

 
public 

static 
IServiceCollection $
AddFirebaseServices% 8
(8 9
this9 =
IServiceCollection> P
servicesQ Y
)Y Z
{ 
var 
credentialPath 
= 
Path !
.! "
Combine" )
() *
	Directory* 3
.3 4
GetCurrentDirectory4 G
(G H
)H I
,I J
$str H
)H I
;I J
FirebaseApp 
. 
Create 
( 
new 

AppOptions )
() *
)* +
{ 	

Credential 
= 
GoogleCredential )
.) *
FromFile* 2
(2 3
credentialPath3 A
)A B
} 	
)	 

;
 
services 
. 
AddSingleton 
( 
StorageClient +
.+ ,
Create, 2
(2 3
GoogleCredential3 C
.C D
FromFileD L
(L M
credentialPathM [
)[ \
)\ ]
)] ^
;^ _
services 
. 
	AddScoped 
< 
IFirebaseService +
,+ ,
FirebaseService- <
>< =
(= >
)> ?
;? @
return 
services 
; 
} 
} �W
jD:\FPT\Semester 6\Project_Cursus\Backend_Cursus\Cursus.LMS\Cursus.LMS.API\Controllers\WebsiteController.cs
	namespace 	
Cursus
 
. 
LMS 
. 
API 
. 
Controllers $
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public		 

class		 
WebsiteController		 "
:		# $
ControllerBase		% 3
{

 
private 
readonly 
ICompanyService (
_companyService) 8
;8 9
private 
readonly 
ITermOfUseService *
_termOfUseService+ <
;< =
private 
readonly 
IPrivacyService (
_privacyService) 8
;8 9
public 
WebsiteController  
( 	
ICompanyService 
companyService *
,* +
ITermOfUseService 
termOfUseService .
,. /
IPrivacyService 
privacyService *
) 	
{ 	
_companyService 
= 
companyService ,
;, -
_termOfUseService 
= 
termOfUseService  0
;0 1
_privacyService 
= 
privacyService ,
;, -
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
async 
Task 
< 
ActionResult &
<& '
ResponseDTO' 2
>2 3
>3 4

GetCompany5 ?
(? @
)@ A
{ 	
var   
responseDto   
=   
await   #
_companyService  $ 3
.  3 4

GetCompany  4 >
(  > ?
)  ? @
;  @ A
return!! 

StatusCode!! 
(!! 
responseDto!! )
.!!) *

StatusCode!!* 4
,!!4 5
responseDto!!6 A
)!!A B
;!!B C
}"" 	
[$$ 	
HttpPut$$	 
($$ 
$str$$ 
)$$ 
]$$ 
public%% 
async%% 
Task%% 
<%% 
ActionResult%% &
<%%& '
ResponseDTO%%' 2
>%%2 3
>%%3 4
UpdateCompany%%5 B
(%%B C
[%%C D
FromBody%%D L
]%%L M
UpdateCompanyDTO%%N ^

companyDto%%_ i
)%%i j
{&& 	
var'' 
responseDto'' 
='' 
await'' #
_companyService''$ 3
.''3 4
UpdateCompany''4 A
(''A B

companyDto''B L
)''L M
;''M N
return(( 

StatusCode(( 
((( 
responseDto(( )
.(() *

StatusCode((* 4
,((4 5
responseDto((6 A
)((A B
;((B C
})) 	
[// 	
HttpGet//	 
(// 
$str// 
)// 
]// 
public00 
async00 
Task00 
<00 
ActionResult00 &
<00& '
ResponseDTO00' 2
>002 3
>003 4
GetPrivacies005 A
(00A B
)00B C
{11 	
var22 
responseDto22 
=22 
await22 #
_privacyService22$ 3
.223 4
GetPrivacies224 @
(22@ A
)22A B
;22B C
return33 

StatusCode33 
(33 
responseDto33 )
.33) *

StatusCode33* 4
,334 5
responseDto336 A
)33A B
;33B C
}44 	
[66 	
HttpGet66	 
(66 
$str66 $
)66$ %
]66% &
public77 
async77 
Task77 
<77 
ActionResult77 &
<77& '
ResponseDTO77' 2
>772 3
>773 4

GetPrivacy775 ?
(77? @
Guid77@ D
id77E G
)77G H
{88 	
var99 
responseDto99 
=99 
await99 #
_privacyService99$ 3
.993 4

GetPrivacy994 >
(99> ?
id99? A
)99A B
;99B C
return:: 

StatusCode:: 
(:: 
responseDto:: )
.::) *

StatusCode::* 4
,::4 5
responseDto::6 A
)::A B
;::B C
};; 	
[== 	
HttpPost==	 
(== 
$str== 
)== 
]== 
public>> 
async>> 
Task>> 
<>> 
ActionResult>> &
<>>& '
ResponseDTO>>' 2
>>>2 3
>>>3 4
CreatePrivacy>>5 B
(>>B C
[>>C D
FromBody>>D L
]>>L M
CreatePrivacyDTO>>N ^

privacyDto>>_ i
)>>i j
{?? 	
var@@ 
responseDto@@ 
=@@ 
await@@ #
_privacyService@@$ 3
.@@3 4
CreatePrivacy@@4 A
(@@A B

privacyDto@@B L
)@@L M
;@@M N
returnAA 

StatusCodeAA 
(AA 
responseDtoAA )
.AA) *

StatusCodeAA* 4
,AA4 5
responseDtoAA6 A
)AAA B
;AAB C
}BB 	
[DD 	
HttpPutDD	 
(DD 
$strDD 
)DD 
]DD 
publicEE 
asyncEE 
TaskEE 
<EE 
ActionResultEE &
<EE& '
ResponseDTOEE' 2
>EE2 3
>EE3 4
UpdatePrivacyEE5 B
(EEB C
[EEC D
FromBodyEED L
]EEL M
UpdatePrivacyDTOEEN ^

privacyDtoEE_ i
)EEi j
{FF 	
varGG 
responseDtoGG 
=GG 
awaitGG #
_privacyServiceGG$ 3
.GG3 4
UpdatePrivacyGG4 A
(GGA B

privacyDtoGGB L
)GGL M
;GGM N
returnHH 

StatusCodeHH 
(HH 
responseDtoHH )
.HH) *

StatusCodeHH* 4
,HH4 5
responseDtoHH6 A
)HHA B
;HHB C
}II 	
[KK 	

HttpDeleteKK	 
(KK 
$strKK '
)KK' (
]KK( )
publicLL 
asyncLL 
TaskLL 
<LL 
ActionResultLL &
<LL& '
ResponseDTOLL' 2
>LL2 3
>LL3 4
DeletePrivacyLL5 B
(LLB C
GuidLLC G
idLLH J
)LLJ K
{MM 	
varNN 
responseDtoNN 
=NN 
awaitNN #
_privacyServiceNN$ 3
.NN3 4
DeletePrivacyNN4 A
(NNA B
idNNB D
)NND E
;NNE F
returnOO 

StatusCodeOO 
(OO 
responseDtoOO )
.OO) *

StatusCodeOO* 4
,OO4 5
responseDtoOO6 A
)OOA B
;OOB C
}PP 	
[VV 	
HttpGetVV	 
(VV 
$strVV 
)VV 
]VV  
publicWW 
asyncWW 
TaskWW 
<WW 
ActionResultWW &
<WW& '
ResponseDTOWW' 2
>WW2 3
>WW3 4
GetTermOfUsesWW5 B
(WWB C
)WWC D
{XX 	
varYY 
responseDtoYY 
=YY 
awaitYY #
_termOfUseServiceYY$ 5
.YY5 6
GetTermOfUsesYY6 C
(YYC D
)YYD E
;YYE F
returnZZ 

StatusCodeZZ 
(ZZ 
responseDtoZZ )
.ZZ) *

StatusCodeZZ* 4
,ZZ4 5
responseDtoZZ6 A
)ZZA B
;ZZB C
}[[ 	
[]] 	
HttpGet]]	 
(]] 
$str]] (
)]]( )
]]]) *
public^^ 
async^^ 
Task^^ 
<^^ 
ActionResult^^ &
<^^& '
ResponseDTO^^' 2
>^^2 3
>^^3 4
GetTermOfUse^^5 A
(^^A B
Guid^^B F
id^^G I
)^^I J
{__ 	
var`` 
responseDto`` 
=`` 
await`` #
_termOfUseService``$ 5
.``5 6
GetTermOfUse``6 B
(``B C
id``C E
)``E F
;``F G
returnaa 

StatusCodeaa 
(aa 
responseDtoaa )
.aa) *

StatusCodeaa* 4
,aa4 5
responseDtoaa6 A
)aaA B
;aaB C
}bb 	
[dd 	
HttpPostdd	 
(dd 
$strdd 
)dd  
]dd  !
publicee 
asyncee 
Taskee 
<ee 
ActionResultee &
<ee& '
ResponseDTOee' 2
>ee2 3
>ee3 4
CreateTermOfUseee5 D
(eeD E
[eeE F
FromBodyeeF N
]eeN O
CreateTermOfUseDTOeeP b
termOfUseDtoeec o
)eeo p
{ff 	
vargg 
responseDtogg 
=gg 
awaitgg #
_termOfUseServicegg$ 5
.gg5 6
CreateTermOfUsegg6 E
(ggE F
termOfUseDtoggF R
)ggR S
;ggS T
returnhh 

StatusCodehh 
(hh 
responseDtohh )
.hh) *

StatusCodehh* 4
,hh4 5
responseDtohh6 A
)hhA B
;hhB C
}ii 	
[kk 	
HttpPutkk	 
(kk 
$strkk 
)kk 
]kk  
publicll 
asyncll 
Taskll 
<ll 
ActionResultll &
<ll& '
ResponseDTOll' 2
>ll2 3
>ll3 4
UpdateTermOfUsell5 D
(llD E
[llE F
FromBodyllF N
]llN O
UpdateTermOfUseDTOllP b
termOfUseDtollc o
)llo p
{mm 	
varnn 
responseDtonn 
=nn 
awaitnn #
_termOfUseServicenn$ 5
.nn5 6
UpdateTermOfUsenn6 E
(nnE F
termOfUseDtonnF R
)nnR S
;nnS T
returnoo 

StatusCodeoo 
(oo 
responseDtooo )
.oo) *

StatusCodeoo* 4
,oo4 5
responseDtooo6 A
)ooA B
;ooB C
}pp 	
[rr 	

HttpDeleterr	 
(rr 
$strrr +
)rr+ ,
]rr, -
publicss 
asyncss 
Taskss 
<ss 
ActionResultss &
<ss& '
ResponseDTOss' 2
>ss2 3
>ss3 4
DeleteTermOfUsess5 D
(ssD E
GuidssE I
idssJ L
)ssL M
{tt 	
varuu 
responseDtouu 
=uu 
awaituu #
_termOfUseServiceuu$ 5
.uu5 6
DeleteTermOfUseuu6 E
(uuE F
iduuF H
)uuH I
;uuI J
returnvv 

StatusCodevv 
(vv 
responseDtovv )
.vv) *

StatusCodevv* 4
,vv4 5
responseDtovv6 A
)vvA B
;vvB C
}ww 	
}zz 
}{{ ۝
jD:\FPT\Semester 6\Project_Cursus\Backend_Cursus\Cursus.LMS\Cursus.LMS.API\Controllers\StudentController.cs
	namespace 	
Cursus
 
. 
LMS 
. 
API 
. 
Controllers $
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
StudentController "
:# $
ControllerBase% 3
{ 
private 
readonly 
IStudentsService )
_studentsService* :
;: ;
public 
StudentController  
(  !
IStudentsService! 1
studentsService2 A
)A B
{ 	
_studentsService 
= 
studentsService .
;. /
} 	
[ 	
HttpGet	 
] 
[ 	
	Authorize	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
ResponseDTO' 2
>2 3
>3 4
GetAllStudent5 B
( 	
[ 
	FromQuery 
] 
string 
? 
filterOn  (
,( )
[ 
	FromQuery 
] 
string 
? 
filterQuery  +
,+ ,
[ 
	FromQuery 
] 
string 
? 
sortBy  &
,& '
[ 
	FromQuery 
] 
bool 
? 
isAscending )
,) *
[   
	FromQuery   
]   
int   

pageNumber   &
=  ' (
$num  ) *
,  * +
[!! 
	FromQuery!! 
]!! 
int!! 
pageSize!! $
=!!% &
$num!!' )
)"" 	
{## 	
var$$ 
responseDto$$ 
=$$ 
await%% 
_studentsService%% &
.%%& '
GetAllStudent%%' 4
(%%4 5
User%%5 9
,%%9 :
filterOn%%; C
,%%C D
filterQuery%%E P
,%%P Q
sortBy%%R X
,%%X Y
isAscending%%Z e
,%%e f

pageNumber%%g q
,%%q r
pageSize&& 
)&& 
;&& 
return'' 

StatusCode'' 
('' 
responseDto'' )
.'') *

StatusCode''* 4
,''4 5
responseDto''6 A
)''A B
;''B C
}(( 	
[** 	
HttpGet**	 
]** 
[++ 	
Route++	 
(++ 
$str++ !
)++! "
]++" #
[,, 	
	Authorize,,	 
],, 
public-- 
async-- 
Task-- 
<-- 
ActionResult-- &
<--& '
ResponseDTO--' 2
>--2 3
>--3 4
GetStudentById--5 C
(--C D
[--D E
	FromRoute--E N
]--N O
Guid--P T
	studentId--U ^
)--^ _
{.. 	
var// 
responseDto// 
=// 
await// #
_studentsService//$ 4
.//4 5
GetById//5 <
(//< =
	studentId//= F
)//F G
;//G H
return00 

StatusCode00 
(00 
responseDto00 )
.00) *

StatusCode00* 4
,004 5
responseDto006 A
)00A B
;00B C
}11 	
[33 	
HttpPut33	 
]33 
[44 	
	Authorize44	 
(44 
Roles44 
=44 
StaticUserRoles44 *
.44* +
AdminStudent44+ 7
)447 8
]448 9
public55 
async55 
Task55 
<55 
ActionResult55 &
<55& '
ResponseDTO55' 2
>552 3
>553 4
UpdateStudent555 B
(55B C
[55C D
FromBody55D L
]55L M
UpdateStudentDTO55N ^
updateStudentDTO55_ o
)55o p
{66 	
var77 
responseDto77 
=77 
await77 #
_studentsService77$ 4
.774 5

UpdateById775 ?
(77? @
updateStudentDTO77@ P
)77P Q
;77Q R
return88 

StatusCode88 
(88 
responseDto88 )
.88) *

StatusCode88* 4
,884 5
responseDto886 A
)88A B
;88B C
}99 	
[;; 	
HttpPost;;	 
];; 
[<< 	
Route<<	 
(<< 
$str<< *
)<<* +
]<<+ ,
[== 	
	Authorize==	 
(== 
Roles== 
=== 
StaticUserRoles== *
.==* +
Admin==+ 0
)==0 1
]==1 2
public>> 
async>> 
Task>> 
<>> 
ActionResult>> &
<>>& '
ResponseDTO>>' 2
>>>2 3
>>>3 4
ActivateStudent>>5 D
(>>D E
[>>E F
	FromRoute>>F O
]>>O P
Guid>>Q U
	studentId>>V _
)>>_ `
{?? 	
var@@ 
responseDto@@ 
=@@ 
await@@ #
_studentsService@@$ 4
.@@4 5
ActivateStudent@@5 D
(@@D E
User@@E I
,@@I J
	studentId@@K T
)@@T U
;@@U V
returnAA 

StatusCodeAA 
(AA 
responseDtoAA )
.AA) *

StatusCodeAA* 4
,AA4 5
responseDtoAA6 A
)AAA B
;AAB C
}BB 	
[DD 	
HttpPostDD	 
]DD 
[EE 	
RouteEE	 
(EE 
$strEE ,
)EE, -
]EE- .
[FF 	
	AuthorizeFF	 
(FF 
RolesFF 
=FF 
StaticUserRolesFF *
.FF* +
AdminFF+ 0
)FF0 1
]FF1 2
publicGG 
asyncGG 
TaskGG 
<GG 
ActionResultGG &
<GG& '
ResponseDTOGG' 2
>GG2 3
>GG3 4
DeactiveStudentGG5 D
(GGD E
[GGE F
	FromRouteGGF O
]GGO P
GuidGGQ U
	studentIdGGV _
)GG_ `
{HH 	
varII 
responseDtoII 
=II 
awaitII #
_studentsServiceII$ 4
.II4 5
DeactivateStudentII5 F
(IIF G
UserIIG K
,IIK L
	studentIdIIM V
)IIV W
;IIW X
returnJJ 

StatusCodeJJ 
(JJ 
responseDtoJJ )
.JJ) *

StatusCodeJJ* 4
,JJ4 5
responseDtoJJ6 A
)JJA B
;JJB C
}KK 	
[MM 	
HttpGetMM	 
]MM 
[NN 	
RouteNN	 
(NN 
$strNN .
)NN. /
]NN/ 0
[OO 	
	AuthorizeOO	 
(OO 
RolesOO 
=OO 
StaticUserRolesOO *
.OO* +
AdminOO+ 0
)OO0 1
]OO1 2
publicPP 
asyncPP 
TaskPP 
<PP 
ActionResultPP &
<PP& '
ResponseDTOPP' 2
>PP2 3
>PP3 4&
GetTotalCoursesStudentByIdPP5 O
(PPO P
[PPP Q
	FromRoutePPQ Z
]PPZ [
GuidPP\ `
	studentIdPPa j
)PPj k
{QQ 	
varRR 
responseDtoRR 
=RR 
awaitRR #
_studentsServiceRR$ 4
.RR4 5"
GetStudentTotalCoursesRR5 K
(RRK L
	studentIdRRL U
)RRU V
;RRV W
returnSS 

StatusCodeSS 
(SS 
responseDtoSS )
.SS) *

StatusCodeSS* 4
,SS4 5
responseDtoSS6 A
)SSA B
;SSB C
}TT 	
[VV 	
HttpGetVV	 
]VV 
[WW 	
RouteWW	 
(WW 
$strWW )
)WW) *
]WW* +
[XX 	
	AuthorizeXX	 
(XX 
RolesXX 
=XX 
StaticUserRolesXX *
.XX* +
AdminXX+ 0
)XX0 1
]XX1 2
publicYY 
asyncYY 
TaskYY 
<YY 
ActionResultYY &
<YY& '
ResponseDTOYY' 2
>YY2 3
>YY3 4
GetStudentCommentsYY5 G
(ZZ 	
[[[ 
	FromRoute[[ 
][[ 
Guid[[ 
	studentId[[ &
,[[& '
[\\ 
	FromQuery\\ 
]\\ 
int\\ 

pageNumber\\ &
=\\' (
$num\\) *
,\\* +
[]] 
	FromQuery]] 
]]] 
int]] 
pageSize]] $
=]]% &
$num]]' )
)^^ 	
{__ 	
var`` 
responseDto`` 
=`` 
await`` #
_studentsService``$ 4
.``4 5 
GetAllStudentComment``5 I
(``I J
	studentId``J S
,``S T

pageNumber``U _
,``_ `
pageSize``a i
)``i j
;``j k
returnaa 

StatusCodeaa 
(aa 
responseDtoaa )
.aa) *

StatusCodeaa* 4
,aa4 5
responseDtoaa6 A
)aaA B
;aaB C
}bb 	
[dd 	
HttpPostdd	 
]dd 
[ee 	
Routeee	 
(ee 
$stree 
)ee 
]ee 
[ff 	
	Authorizeff	 
(ff 
Rolesff 
=ff 
StaticUserRolesff *
.ff* +
Adminff+ 0
)ff0 1
]ff1 2
publicgg 
asyncgg 
Taskgg 
<gg 
ActionResultgg &
<gg& '
ResponseDTOgg' 2
>gg2 3
>gg3 4 
CreateStudentCommentgg5 I
(ggI J#
CreateStudentCommentDTOhh ##
createStudentCommentDtohh$ ;
)hh; <
{ii 	
varjj 
responseDtojj 
=jj 
awaitjj #
_studentsServicejj$ 4
.jj4 5 
CreateStudentCommentjj5 I
(jjI J
UserjjJ N
,jjN O#
createStudentCommentDtojjP g
)jjg h
;jjh i
returnkk 

StatusCodekk 
(kk 
responseDtokk )
.kk) *

StatusCodekk* 4
,kk4 5
responseDtokk6 A
)kkA B
;kkB C
}ll 	
[nn 	
HttpPutnn	 
]nn 
[oo 	
Routeoo	 
(oo 
$stroo 
)oo 
]oo 
[pp 	
	Authorizepp	 
(pp 
Rolespp 
=pp 
StaticUserRolespp *
.pp* +
Adminpp+ 0
)pp0 1
]pp1 2
publicqq 
asyncqq 
Taskqq 
<qq 
ActionResultqq &
<qq& '
ResponseDTOqq' 2
>qq2 3
>qq3 4 
UpdateStudentCommentqq5 I
(qqI J#
UpdateStudentCommentDTOrr ##
updateStudentCommentDtorr$ ;
)rr; <
{ss 	
vartt 
responseDtott 
=tt 
awaittt #
_studentsServicett$ 4
.tt4 5 
UpdateStudentCommenttt5 I
(ttI J
UserttJ N
,ttN O#
updateStudentCommentDtottP g
)ttg h
;tth i
returnuu 

StatusCodeuu 
(uu 
responseDtouu )
.uu) *

StatusCodeuu* 4
,uu4 5
responseDtouu6 A
)uuA B
;uuB C
}vv 	
[xx 	

HttpDeletexx	 
]xx 
[yy 	
Routeyy	 
(yy 
$stryy )
)yy) *
]yy* +
[zz 	
	Authorizezz	 
(zz 
Roleszz 
=zz 
StaticUserRoleszz *
.zz* +
Adminzz+ 0
)zz0 1
]zz1 2
public{{ 
async{{ 
Task{{ 
<{{ 
ActionResult{{ &
<{{& '
ResponseDTO{{' 2
>{{2 3
>{{3 4 
DeleteStudentComment{{5 I
({{I J
[{{J K
	FromRoute{{K T
]{{T U
Guid{{V Z
	commentId{{[ d
){{d e
{|| 	
var}} 
responseDto}} 
=}} 
await}} #
_studentsService}}$ 4
.}}4 5 
DeleteStudentComment}}5 I
(}}I J
	commentId}}J S
)}}S T
;}}T U
return~~ 

StatusCode~~ 
(~~ 
responseDto~~ )
.~~) *

StatusCode~~* 4
,~~4 5
responseDto~~6 A
)~~A B
;~~B C
} 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� .
)
��. /
]
��/ 0
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Admin
��+ 0
)
��0 1
]
��1 2
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4
ExportStudent
��5 B
(
�� 	
[
�� 
	FromRoute
�� 
]
�� 
int
�� 
month
�� !
,
��! "
[
�� 
	FromRoute
�� 
]
�� 
int
�� 
year
��  
)
�� 	
{
�� 	
var
�� 
userId
�� 
=
�� 
User
�� 
.
�� 
Claims
�� $
.
��$ %
FirstOrDefault
��% 3
(
��3 4
x
��4 5
=>
��6 8
x
��9 :
.
��: ;
Type
��; ?
==
��@ B

ClaimTypes
��C M
.
��M N
NameIdentifier
��N \
)
��\ ]
?
��] ^
.
��^ _
Value
��_ d
;
��d e
BackgroundJob
�� 
.
�� 
Enqueue
�� !
<
��! "
IStudentsService
��" 2
>
��2 3
(
��3 4
job
��4 7
=>
��8 :
job
��; >
.
��> ?
ExportStudents
��? M
(
��M N
userId
��N T
,
��T U
month
��V [
,
��[ \
year
��] a
)
��a b
)
��b c
;
��c d
return
�� 
Ok
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� $
)
��$ %
]
��% &
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Admin
��+ 0
)
��0 1
]
��1 2
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (#
DownloadStudentExport
��) >
(
��> ?
[
��? @
	FromRoute
��@ I
]
��I J
string
��K Q
fileName
��R Z
)
��Z [
{
�� 	
var
�� "
closedXmlResponseDto
�� $
=
��% &
await
��' ,
_studentsService
��- =
.
��= >
DownloadStudents
��> N
(
��N O
fileName
��O W
)
��W X
;
��X Y
var
�� 
stream
�� 
=
�� "
closedXmlResponseDto
�� -
.
��- .
Stream
��. 4
;
��4 5
var
�� 
contentType
�� 
=
�� "
closedXmlResponseDto
�� 2
.
��2 3
ContentType
��3 >
;
��> ?
if
�� 
(
�� 
stream
�� 
is
�� 
null
�� 
||
�� !
contentType
��" -
is
��. 0
null
��1 5
)
��5 6
{
�� 
return
�� 
NotFound
�� 
(
��  
)
��  !
;
��! "
}
�� 
return
�� 
File
�� 
(
�� 
stream
�� 
,
�� 
contentType
��  +
,
��+ ,
fileName
��- 5
)
��5 6
;
��6 7
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 4
)
��4 5
]
��5 6
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
AdminStudent
��+ 7
)
��7 8
]
��8 9
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4*
TotalPricesCourseByStudentId
��5 Q
(
��Q R
[
��R S
	FromRoute
��S \
]
��\ ]
Guid
��^ b
	studentId
��c l
)
��l m
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_studentsService
��$ 4
.
��4 5+
TotalPricesCoursesByStudentId
��5 R
(
��R S
	studentId
��S \
)
��\ ]
;
��] ^
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� (
)
��( )
]
��) *
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
AdminStudent
��+ 7
)
��7 8
]
��8 9
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4&
GetAllCoursesByStudentId
��5 M
(
��M N
[
��N O
	FromRoute
��O X
]
��X Y
Guid
��Z ^
	studentId
��_ h
)
��h i
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_studentsService
��$ 4
.
��4 5%
GetAllCourseByStudentId
��5 L
(
��L M
	studentId
��M V
)
��V W
;
��W X
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 5
)
��5 6
]
��6 7
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
AdminStudent
��+ 7
)
��7 8
]
��8 9
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4*
GetAllCoursesStudentEnrolled
��5 Q
(
��Q R
[
��R S
	FromRoute
��S \
]
��\ ]
Guid
��^ b
	studentId
��c l
)
��l m
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_studentsService
��$ 4
.
��4 5)
GetAllCourseStudentEnrolled
��5 P
(
��P Q
	studentId
��Q Z
)
��Z [
;
��[ \
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
}
�� 
}�� �=
jD:\FPT\Semester 6\Project_Cursus\Backend_Cursus\Cursus.LMS\Cursus.LMS.API\Controllers\PaymentController.cs
	namespace		 	
Cursus		
 
.		 
LMS		 
.		 
API		 
.		 
Controllers		 $
{

 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
PaymentController "
:# $
ControllerBase% 3
{ 
private 
readonly 
IPaymentService (
_paymentService) 8
;8 9
private 
readonly 
ITransactionService ,
_transactionService- @
;@ A
public 
PaymentController  
(  !
IPaymentService! 0
paymentService1 ?
,? @
ITransactionServiceA T
transactionServiceU g
)g h
{ 	
_paymentService 
= 
paymentService ,
;, -
_transactionService 
=  !
transactionService" 4
;4 5
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str 
) 
] 
[ 	
	Authorize	 
( 
Roles 
= 
StaticUserRoles *
.* +
AdminInstructor+ :
): ;
]; <
public 
async 
Task 
< 
ActionResult &
<& '
ResponseDTO' 2
>2 3
>3 4!
GetTransactionHistory5 J
( 	
[ 
	FromQuery 
] 
string 
? 
userId  &
,& '
[ 
	FromQuery 
] 
string 
? 
filterOn  (
,( )
[ 
	FromQuery 
] 
string 
? 
filterQuery  +
,+ ,
[   
	FromQuery   
]   
string   
?   
sortBy    &
,  & '
[!! 
	FromQuery!! 
]!! 
bool!! 
?!! 
isAscending!! )
,!!) *
["" 
	FromQuery"" 
]"" 
int"" 

pageNumber"" &
=""' (
$num"") *
,""* +
[## 
	FromQuery## 
]## 
int## 
pageSize## $
=##% &
$num##' (
)$$ 	
{%% 	
var&& 
responseDto&& 
=&& 
await&& #
_transactionService&&$ 7
.&&7 8
GetTransactions&&8 G
('' 
User(( 
,(( 
userId)) 
,)) 
filterOn** 
,** 
filterQuery++ 
,++ 
sortBy,, 
,,, 
isAscending-- 
,-- 

pageNumber.. 
,.. 
pageSize// 
)00 
;00 
return11 

StatusCode11 
(11 
responseDto11 )
.11) *

StatusCode11* 4
,114 5
responseDto116 A
)11A B
;11B C
}22 	
[55 	
HttpPost55	 
]55 
[66 	
Route66	 
(66 
$str66 
)66  
]66  !
[77 	
	Authorize77	 
(77 
Roles77 
=77 
StaticUserRoles77 *
.77* +

Instructor77+ 5
)775 6
]776 7
public88 
async88 
Task88 
<88 
ActionResult88 &
<88& '
ResponseDTO88' 2
>882 3
>883 4(
CreateStripeConnectedAccount885 Q
(99 	+
CreateStripeConnectedAccountDTO:: ++
createStripeConnectedAccountDto::, K
);; 	
{<< 	
var== 
responseDto== 
=== 
await== #
_paymentService==$ 3
.==3 4(
CreateStripeConnectedAccount==4 P
(==P Q
User==Q U
,==U V+
createStripeConnectedAccountDto==W v
)==v w
;==w x
return>> 

StatusCode>> 
(>> 
responseDto>> )
.>>) *

StatusCode>>* 4
,>>4 5
responseDto>>6 A
)>>A B
;>>B C
}?? 	
[AA 	
HttpPostAA	 
]AA 
[BB 	
RouteBB	 
(BB 
$strBB  
)BB  !
]BB! "
[CC 	
	AuthorizeCC	 
(CC 
RolesCC 
=CC 
StaticUserRolesCC *
.CC* +
AdminCC+ 0
)CC0 1
]CC1 2
publicDD 
asyncDD 
TaskDD 
<DD 
ActionResultDD &
<DD& '
ResponseDTODD' 2
>DD2 3
>DD3 4 
CreateStripeTransferDD5 I
(EE 	#
CreateStripeTransferDTOFF ##
createStripeTransferDtoFF$ ;
)FF; <
{GG 	
varHH 
responseDtoHH 
=HH 
awaitHH #
_paymentServiceHH$ 3
.HH3 4 
CreateStripeTransferHH4 H
(HHH I#
createStripeTransferDtoHHI `
)HH` a
;HHa b
returnII 

StatusCodeII 
(II 
responseDtoII )
.II) *

StatusCodeII* 4
,II4 5
responseDtoII6 A
)IIA B
;IIB C
}JJ 	
[LL 	
HttpPostLL	 
]LL 
[MM 	
RouteMM	 
(MM 
$strMM 
)MM 
]MM  
[NN 	
	AuthorizeNN	 
(NN 
RolesNN 
=NN 
StaticUserRolesNN *
.NN* +

InstructorNN+ 5
)NN5 6
]NN6 7
publicOO 
asyncOO 
TaskOO 
<OO 
ActionResultOO &
<OO& '
ResponseDTOOO' 2
>OO2 3
>OO3 4
CreateStripePayoutOO5 G
(OOG H!
CreateStripePayoutDTOOOH ]!
createStripePayoutDtoOO^ s
)OOs t
{PP 	
varQQ 
responseDtoQQ 
=QQ 
awaitQQ #
_paymentServiceQQ$ 3
.QQ3 4
CreateStripePayoutQQ4 F
(QQF G
UserQQG K
,QQK L!
createStripePayoutDtoQQM b
)QQb c
;QQc d
returnRR 

StatusCodeRR 
(RR 
responseDtoRR )
.RR) *

StatusCodeRR* 4
,RR4 5
responseDtoRR6 A
)RRA B
;RRB C
}SS 	
[UU 	
HttpPostUU	 
]UU 
[VV 	
RouteVV	 
(VV 
$strVV 
)VV 
]VV 
[WW 	
	AuthorizeWW	 
(WW 
RolesWW 
=WW 
StaticUserRolesWW *
.WW* +

InstructorWW+ 5
)WW5 6
]WW6 7
publicXX 
asyncXX 
TaskXX 
<XX 
ActionResultXX &
<XX& '
ResponseDTOXX' 2
>XX2 3
>XX3 4
AddStripeCardXX5 B
(YY 	
AddStripeCardDTOZZ 
addStripeCardDtoZZ -
)[[ 	
{\\ 	
var]] 
responseDto]] 
=]] 
await]] #
_paymentService]]$ 3
.]]3 4
AddStripeCard]]4 A
(]]A B
addStripeCardDto]]B R
)]]R S
;]]S T
return^^ 

StatusCode^^ 
(^^ 
responseDto^^ )
.^^) *

StatusCode^^* 4
,^^4 5
responseDto^^6 A
)^^A B
;^^B C
}__ 	
}`` 
}aa �?
hD:\FPT\Semester 6\Project_Cursus\Backend_Cursus\Cursus.LMS\Cursus.LMS.API\Controllers\OrderController.cs
	namespace 	
Cursus
 
. 
LMS 
. 
API 
. 
Controllers $
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class 
OrderController  
:! "
ControllerBase# 1
{ 
private 
readonly 
IOrderService &
_orderService' 4
;4 5
public 
OrderController 
( 
IOrderService ,
orderService- 9
)9 :
{ 	
_orderService 
= 
orderService (
;( )
} 	
[ 	
HttpPost	 
] 
[ 	
	Authorize	 
( 
Roles 
= 
StaticUserRoles *
.* +
Student+ 2
)2 3
]3 4
public 
async 
Task 
< 
ActionResult &
<& '
ResponseDTO' 2
>2 3
>3 4
CreateOrder5 @
(@ A
)A B
{ 	
var 
responseDto 
= 
await #
_orderService$ 1
.1 2
CreateOrder2 =
(= >
User> B
)B C
;C D
return 

StatusCode 
( 
responseDto )
.) *

StatusCode* 4
,4 5
responseDto6 A
)A B
;B C
} 	
[ 	
HttpGet	 
] 
[ 	
	Authorize	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
ResponseDTO' 2
>2 3
>3 4
	GetOrders5 >
( 	
[   
	FromQuery   
]   
Guid   
?   
	studentId   '
,  ' (
[!! 
	FromQuery!! 
]!! 
string!! 
?!! 
filterOn!!  (
,!!( )
["" 
	FromQuery"" 
]"" 
string"" 
?"" 
filterQuery""  +
,""+ ,
[## 
	FromQuery## 
]## 
string## 
?## 
sortBy##  &
,##& '
[$$ 
	FromQuery$$ 
]$$ 
bool$$ 
?$$ 
isAscending$$ )
,$$) *
[%% 
	FromQuery%% 
]%% 
int%% 

pageNumber%% &
=%%' (
$num%%) *
,%%* +
[&& 
	FromQuery&& 
]&& 
int&& 
pageSize&& $
=&&% &
$num&&' (
)'' 	
{(( 	
var)) 
responseDto)) 
=)) 
await)) #
_orderService))$ 1
.))1 2
	GetOrders))2 ;
(** 
User++ 
,++ 
	studentId,, 
,,, 
filterOn-- 
,-- 
filterQuery.. 
,.. 
sortBy// 
,// 
isAscending00 
,00 

pageNumber11 
,11 
pageSize22 
)33 
;33 
return55 

StatusCode55 
(55 
responseDto55 )
.55) *

StatusCode55* 4
,554 5
responseDto556 A
)55A B
;55B C
}66 	
[88 	
HttpGet88	 
]88 
[99 	
Route99	 
(99 
$str99 %
)99% &
]99& '
[:: 	
	Authorize::	 
]:: 
public;; 
async;; 
Task;; 
<;; 
ActionResult;; &
<;;& '
ResponseDTO;;' 2
>;;2 3
>;;3 4
GetOrder;;5 =
(;;= >
[;;> ?
	FromRoute;;? H
];;H I
Guid;;J N
orderHeaderId;;O \
);;\ ]
{<< 	
var== 
responseDto== 
=== 
await== #
_orderService==$ 1
.==1 2
GetOrder==2 :
(==: ;
User==; ?
,==? @
orderHeaderId==A N
)==N O
;==O P
return>> 

StatusCode>> 
(>> 
responseDto>> )
.>>) *

StatusCode>>* 4
,>>4 5
responseDto>>6 A
)>>A B
;>>B C
}?? 	
[AA 	
HttpPostAA	 
]AA 
[BB 	
RouteBB	 
(BB 
$strBB  
)BB  !
]BB! "
[CC 	
	AuthorizeCC	 
(CC 
RolesCC 
=CC 
StaticUserRolesCC *
.CC* +
StudentCC+ 2
)CC2 3
]CC3 4
publicDD 
asyncDD 
TaskDD 
<DD 
ActionResultDD &
<DD& '
ResponseDTODD' 2
>DD2 3
>DD3 4
PayWithStripeDD5 B
(EE 	
[FF 
FromBodyFF 
]FF 
PayWithStripeDTOFF '
payWithStripeDtoFF( 8
)GG 	
{HH 	
varII 
responseDtoII 
=II 
awaitII #
_orderServiceII$ 1
.II1 2
PayWithStripeII2 ?
(II? @
UserII@ D
,IID E
payWithStripeDtoIIF V
)IIV W
;IIW X
returnJJ 

StatusCodeJJ 
(JJ 
responseDtoJJ )
.JJ) *

StatusCodeJJ* 4
,JJ4 5
responseDtoJJ6 A
)JJA B
;JJB C
}KK 	
[MM 	
HttpPostMM	 
]MM 
[NN 	
RouteNN	 
(NN 
$strNN  
)NN  !
]NN! "
[OO 	
	AuthorizeOO	 
(OO 
RolesOO 
=OO 
StaticUserRolesOO *
.OO* +
AdminStudentOO+ 7
)OO7 8
]OO8 9
publicPP 
asyncPP 
TaskPP 
<PP 
ActionResultPP &
<PP& '
ResponseDTOPP' 2
>PP2 3
>PP3 4
ValidateWithStripePP5 G
(QQ 	
[RR 
FromBodyRR 
]RR !
ValidateWithStripeDTORR ,!
validateWithStripeDtoRR- B
)SS 	
{TT 	
varUU 
responseDtoUU 
=UU 
awaitUU #
_orderServiceUU$ 1
.UU1 2
ValidateWithStripeUU2 D
(UUD E
UserUUE I
,UUI J!
validateWithStripeDtoUUK `
)UU` a
;UUa b
returnVV 

StatusCodeVV 
(VV 
responseDtoVV )
.VV) *

StatusCodeVV* 4
,VV4 5
responseDtoVV6 A
)VVA B
;VVB C
}WW 	
[YY 	
HttpPutYY	 
]YY 
[ZZ 	
RouteZZ	 
(ZZ 
$strZZ -
)ZZ- .
]ZZ. /
[[[ 	
	Authorize[[	 
([[ 
Roles[[ 
=[[ 
StaticUserRoles[[ *
.[[* +
Admin[[+ 0
)[[0 1
][[1 2
public\\ 
async\\ 
Task\\ 
<\\ 
ActionResult\\ &
<\\& '
ResponseDTO\\' 2
>\\2 3
>\\3 4
ConfirmOrder\\5 A
(\\A B
[\\B C
	FromRoute\\C L
]\\L M
Guid\\N R
orderHeaderId\\S `
)\\` a
{]] 	
var^^ 
responseDto^^ 
=^^ 
await^^ #
_orderService^^$ 1
.^^1 2
ConfirmOrder^^2 >
(^^> ?
User^^? C
,^^C D
orderHeaderId^^E R
)^^R S
;^^S T
return__ 

StatusCode__ 
(__ 
responseDto__ )
.__) *

StatusCode__* 4
,__4 5
responseDto__6 A
)__A B
;__B C
}`` 	
}aa 
}bb �1
hD:\FPT\Semester 6\Project_Cursus\Backend_Cursus\Cursus.LMS\Cursus.LMS.API\Controllers\LevelController.cs
	namespace 	
Cursus
 
. 
LMS 
. 
API 
. 
Controllers $
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class 
LevelController  
:! "
ControllerBase# 1
{ 
private 
readonly 
ILevelService &
_levelService' 4
;4 5
public 
LevelController 
( 
ILevelService ,
levelService- 9
)9 :
{ 	
_levelService 
= 
levelService (
;( )
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
ResponseDTO' 2
>2 3
>3 4
	GetLevels5 >
( 	
[ 
	FromQuery 
] 
string 
? 
filterOn  (
,( )
[ 
	FromQuery 
] 
string 
? 
filterQuery  +
,+ ,
[ 
	FromQuery 
] 
string 
? 
sortBy  &
,& '
[ 
	FromQuery 
] 
bool 
? 
isAscending )
,) *
[ 
	FromQuery 
] 
int 

pageNumber &
=' (
$num) *
,* +
[ 
	FromQuery 
] 
int 
pageSize $
=% &
$num' (
) 	
{ 	
var 
responseDto 
= 
await #
_levelService$ 1
.1 2
	GetLevels2 ;
(   
User!! 
,!! 
filterOn"" 
,"" 
filterQuery## 
,## 
sortBy$$ 
,$$ 
isAscending%% 
,%% 

pageNumber&& 
,&& 
pageSize'' 
)(( 
;(( 
return)) 

StatusCode)) 
()) 
responseDto)) )
.))) *

StatusCode))* 4
,))4 5
responseDto))6 A
)))A B
;))B C
}** 	
[,, 	
HttpGet,,	 
],, 
[-- 	
Route--	 
(-- 
$str-- 
)--  
]--  !
public.. 
async.. 
Task.. 
<.. 
ActionResult.. &
<..& '
ResponseDTO..' 2
>..2 3
>..3 4
GetLevel..5 =
(// 	
[00 
	FromRoute00 
]00 
Guid00 
levelId00 $
)11 	
{22 	
var33 
responseDto33 
=33 
await33 #
_levelService33$ 1
.331 2
GetLevel332 :
(33: ;
User33; ?
,33? @
levelId33A H
)33H I
;33I J
return44 

StatusCode44 
(44 
responseDto44 )
.44) *

StatusCode44* 4
,444 5
responseDto446 A
)44A B
;44B C
}55 	
[77 	
HttpPost77	 
]77 
[88 	
	Authorize88	 
(88 
Roles88 
=88 
StaticUserRoles88 *
.88* +
Admin88+ 0
)880 1
]881 2
public99 
async99 
Task99 
<99 
ActionResult99 &
<99& '
ResponseDTO99' 2
>992 3
>993 4
CreateLevel995 @
(:: 	
[;; 
FromBody;; 
];; 
CreateLevelDTO;; %
createLevelDto;;& 4
)<< 	
{== 	
var>> 
responseDto>> 
=>> 
await>> #
_levelService>>$ 1
.>>1 2
CreateLevel>>2 =
(>>= >
User>>> B
,>>B C
createLevelDto>>D R
)>>R S
;>>S T
return?? 

StatusCode?? 
(?? 
responseDto?? )
.??) *

StatusCode??* 4
,??4 5
responseDto??6 A
)??A B
;??B C
}@@ 	
[BB 	
HttpPutBB	 
]BB 
publicCC 
asyncCC 
TaskCC 
<CC 
ActionResultCC &
<CC& '
ResponseDTOCC' 2
>CC2 3
>CC3 4
UpdateLevelCC5 @
(DD 	
[EE 
FromBodyEE 
]EE 
UpdateLevelDTOEE %
updateLevelDtoEE& 4
)FF 	
{GG 	
varHH 
responseDtoHH 
=HH 
awaitHH #
_levelServiceHH$ 1
.HH1 2
UpdateLevelHH2 =
(HH= >
UserHH> B
,HHB C
updateLevelDtoHHD R
)HHR S
;HHS T
returnII 

StatusCodeII 
(II 
responseDtoII )
.II) *

StatusCodeII* 4
,II4 5
responseDtoII6 A
)IIA B
;IIB C
}JJ 	
[LL 	

HttpDeleteLL	 
]LL 
[MM 	
RouteMM	 
(MM 
$strMM 
)MM  
]MM  !
publicNN 
asyncNN 
TaskNN 
<NN 
ActionResultNN &
<NN& '
ResponseDTONN' 2
>NN2 3
>NN3 4
DeleteLevelNN5 @
(OO 	
[PP 
	FromRoutePP 
]PP 
GuidPP 
levelIdPP $
)QQ 	
{RR 	
varSS 
responseDtoSS 
=SS 
awaitSS #
_levelServiceSS$ 1
.SS1 2
DeleteLevelSS2 =
(SS= >
UserSS> B
,SSB C
levelIdSSD K
)SSK L
;SSL M
returnTT 

StatusCodeTT 
(TT 
responseDtoTT )
.TT) *

StatusCodeTT* 4
,TT4 5
responseDtoTT6 A
)TTA B
;TTB C
}UU 	
}VV 
}WW ��
mD:\FPT\Semester 6\Project_Cursus\Backend_Cursus\Cursus.LMS\Cursus.LMS.API\Controllers\InstructorController.cs
	namespace		 	
Cursus		
 
.		 
LMS		 
.		 
API		 
.		 
Controllers		 $
{

 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class  
InstructorController %
:& '
ControllerBase( 6
{ 
private 
readonly 
IInstructorService +
_instructorService, >
;> ?
private 
readonly 
IPaymentService (
_paymentService) 8
;8 9
public  
InstructorController #
(# $
IInstructorService$ 6
instructorService7 H
,H I
IPaymentServiceJ Y
paymentServiceZ h
)h i
{ 	
_instructorService 
=  
instructorService! 2
;2 3
_paymentService 
= 
paymentService ,
;, -
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
ResponseDTO' 2
>2 3
>3 4
GetAllInstructor5 E
( 	
[ 
	FromQuery 
] 
string 
? 
filterOn  (
,( )
[ 
	FromQuery 
] 
string 
? 
filterQuery  +
,+ ,
[ 
	FromQuery 
] 
string 
? 
sortBy  &
,& '
[ 
	FromQuery 
] 
bool 
? 
isAscending )
,) *
[ 
	FromQuery 
] 
int 

pageNumber &
=' (
$num) *
,* +
[   
	FromQuery   
]   
int   
pageSize   $
=  % &
$num  ' )
)!! 	
{"" 	
var## 
responseDto## 
=## 
await$$ 
_instructorService$$ (
.$$( )
GetAll$$) /
($$/ 0
User$$0 4
,$$4 5
filterOn$$6 >
,$$> ?
filterQuery$$@ K
,$$K L
sortBy$$M S
,$$S T
isAscending$$U `
,$$` a

pageNumber$$b l
,$$l m
pageSize$$n v
)$$v w
;$$w x
return%% 

StatusCode%% 
(%% 
responseDto%% )
.%%) *

StatusCode%%* 4
,%%4 5
responseDto%%6 A
)%%A B
;%%B C
}&& 	
[(( 	
HttpGet((	 
](( 
[)) 	
Route))	 
()) 
$str)) $
)))$ %
]))% &
public** 
async** 
Task** 
<** 
ActionResult** &
<**& '
ResponseDTO**' 2
>**2 3
>**3 4
GetInstructorById**5 F
(**F G
[**G H
	FromRoute**H Q
]**Q R
Guid**S W
instructorId**X d
)**d e
{++ 	
var,, 
responseDto,, 
=,, 
await,, #
_instructorService,,$ 6
.,,6 7
GetById,,7 >
(,,> ?
instructorId,,? K
),,K L
;,,L M
return-- 

StatusCode-- 
(-- 
responseDto-- )
.--) *

StatusCode--* 4
,--4 5
responseDto--6 A
)--A B
;--B C
}.. 	
[00 	
HttpGet00	 
]00 
[11 	
Route11	 
(11 
$str11 1
)111 2
]112 3
public22 
async22 
Task22 
<22 
ActionResult22 &
<22& '
ResponseDTO22' 2
>222 3
>223 4)
GetTotalCoursesInstructorById225 R
(22R S
[22S T
	FromRoute22T ]
]22] ^
Guid22_ c
instructorId22d p
)22p q
{33 	
var44 
responseDto44 
=44 
await44 #
_instructorService44$ 6
.446 7%
GetInstructorTotalCourses447 P
(44P Q
instructorId44Q ]
)44] ^
;44^ _
return55 

StatusCode55 
(55 
responseDto55 )
.55) *

StatusCode55* 4
,554 5
responseDto556 A
)55A B
;55B C
}66 	
[88 	
HttpGet88	 
]88 
[99 	
Route99	 
(99 
$str99 1
)991 2
]992 3
public:: 
async:: 
Task:: 
<:: 
ActionResult:: &
<::& '
ResponseDTO::' 2
>::2 3
>::3 4(
GetTotalRatingInstructorById::5 Q
(::Q R
[::R S
	FromRoute::S \
]::\ ]
Guid::^ b
instructorId::c o
)::o p
{;; 	
var<< 
responseDto<< 
=<< 
await<< #
_instructorService<<$ 6
.<<6 7$
GetInstructorTotalRating<<7 O
(<<O P
instructorId<<P \
)<<\ ]
;<<] ^
return== 

StatusCode== 
(== 
responseDto== )
.==) *

StatusCode==* 4
,==4 5
responseDto==6 A
)==A B
;==B C
}>> 	
[@@ 	
HttpGet@@	 
]@@ 
[AA 	
RouteAA	 
(AA 
$strAA 7
)AA7 8
]AA8 9
[BB 	
	AuthorizeBB	 
(BB 
RolesBB 
=BB 
StaticUserRolesBB *
.BB* +
AdminInstructorBB+ :
)BB: ;
]BB; <
publicCC 
asyncCC 
TaskCC 
<CC 
ActionResultCC &
<CC& '
ResponseDTOCC' 2
>CC2 3
>CC3 4-
!GetTotalEarnedMoneyInstructorByIdCC5 V
(CCV W
[CCW X
	FromRouteCCX a
]CCa b
GuidCCc g
instructorIdCCh t
)CCt u
{DD 	
varEE 
responseDtoEE 
=EE 
awaitEE #
_instructorServiceEE$ 6
.EE6 7$
GetInstructorEarnedMoneyEE7 O
(EEO P
instructorIdEEP \
)EE\ ]
;EE] ^
returnFF 

StatusCodeFF 
(FF 
responseDtoFF )
.FF) *

StatusCodeFF* 4
,FF4 5
responseDtoFF6 A
)FFA B
;FFB C
}GG 	
[II 	
HttpGetII	 
]II 
[JJ 	
RouteJJ	 
(JJ 
$strJJ 7
)JJ7 8
]JJ8 9
[KK 	
	AuthorizeKK	 
(KK 
RolesKK 
=KK 
StaticUserRolesKK *
.KK* +
AdminInstructorKK+ :
)KK: ;
]KK; <
publicLL 
asyncLL 
TaskLL 
<LL 
ActionResultLL &
<LL& '
ResponseDTOLL' 2
>LL2 3
>LL3 4-
!GetTotalPayoutMoneyInstructorByIdLL5 V
(LLV W
[LLW X
	FromRouteLLX a
]LLa b
GuidLLc g
instructorIdLLh t
)LLt u
{MM 	
varNN 
responseDtoNN 
=NN 
awaitNN #
_instructorServiceNN$ 6
.NN6 7$
GetInstructorPayoutMoneyNN7 O
(NNO P
instructorIdNNP \
)NN\ ]
;NN] ^
returnOO 

StatusCodeOO 
(OO 
responseDtoOO )
.OO) *

StatusCodeOO* 4
,OO4 5
responseDtoOO6 A
)OOA B
;OOB C
}PP 	
[RR 	
HttpPutRR	 
]RR 
[SS 	
	AuthorizeSS	 
(SS 
RolesSS 
=SS 
StaticUserRolesSS *
.SS* +
AdminInstructorSS+ :
)SS: ;
]SS; <
publicTT 
asyncTT 
TaskTT 
<TT 
ActionResultTT &
<TT& '
ResponseDTOTT' 2
>TT2 3
>TT3 4 
UpdateInstructorByIdTT5 I
(TTI J
[TTJ K
FromBodyTTK S
]TTS T
UpdateInstructorDTOTTU h
instructorDtoTTi v
)TTv w
{UU 	
varVV 
responseDtoVV 
=VV 
awaitVV #
_instructorServiceVV$ 6
.VV6 7

UpdateByIdVV7 A
(VVA B
instructorDtoVVB O
)VVO P
;VVP Q
returnWW 

StatusCodeWW 
(WW 
responseDtoWW )
.WW) *

StatusCodeWW* 4
,WW4 5
responseDtoWW6 A
)WWA B
;WWB C
}XX 	
[ZZ 	
HttpPostZZ	 
]ZZ 
[[[ 	
Route[[	 
([[ 
$str[[ +
)[[+ ,
][[, -
[\\ 	
	Authorize\\	 
(\\ 
Roles\\ 
=\\ 
StaticUserRoles\\ *
.\\* +
Admin\\+ 0
)\\0 1
]\\1 2
public]] 
async]] 
Task]] 
<]] 
ActionResult]] &
<]]& '
ResponseDTO]]' 2
>]]2 3
>]]3 4
AcceptInstructor]]5 E
(]]E F
[]]F G
	FromRoute]]G P
]]]P Q
Guid]]R V
instructorId]]W c
)]]c d
{^^ 	
var__ 
responseDto__ 
=__ 
await__ #
_instructorService__$ 6
.__6 7
AcceptInstructor__7 G
(__G H
User__H L
,__L M
instructorId__N Z
)__Z [
;__[ \
return`` 

StatusCode`` 
(`` 
responseDto`` )
.``) *

StatusCode``* 4
,``4 5
responseDto``6 A
)``A B
;``B C
}aa 	
[cc 	
HttpPostcc	 
]cc 
[dd 	
Routedd	 
(dd 
$strdd +
)dd+ ,
]dd, -
[ee 	
	Authorizeee	 
(ee 
Rolesee 
=ee 
StaticUserRolesee *
.ee* +
Adminee+ 0
)ee0 1
]ee1 2
publicff 
asyncff 
Taskff 
<ff 
ActionResultff &
<ff& '
ResponseDTOff' 2
>ff2 3
>ff3 4
RejectInstructorff5 E
(ffE F
[ffF G
	FromRouteffG P
]ffP Q
GuidffR V
instructorIdffW c
)ffc d
{gg 	
varhh 
responseDtohh 
=hh 
awaithh #
_instructorServicehh$ 6
.hh6 7
RejectInstructorhh7 G
(hhG H
UserhhH L
,hhL M
instructorIdhhN Z
)hhZ [
;hh[ \
returnii 

StatusCodeii 
(ii 
responseDtoii )
.ii) *

StatusCodeii* 4
,ii4 5
responseDtoii6 A
)iiA B
;iiB C
}jj 	
[oo 	
HttpGetoo	 
]oo 
[pp 	
Routepp	 
(pp 
$strpp ,
)pp, -
]pp- .
[qq 	
	Authorizeqq	 
(qq 
Rolesqq 
=qq 
StaticUserRolesqq *
.qq* +
AdminInstructorqq+ :
)qq: ;
]qq; <
publicrr 
asyncrr 
Taskrr 
<rr 
ActionResultrr &
<rr& '
ResponseDTOrr' 2
>rr2 3
>rr3 4#
GetAllInstructorCommentrr5 L
(ss 	
[tt 
	FromRoutett 
]tt 
Guidtt 
instructorIdtt )
,tt) *
[uu 
	FromQueryuu 
]uu 
intuu 

pageNumberuu &
=uu' (
$numuu) *
,uu* +
[vv 
	FromQueryvv 
]vv 
intvv 
pageSizevv $
=vv% &
$numvv' )
)ww 	
{xx 	
varyy 
responseDtoyy 
=yy 
awaityy #
_instructorServiceyy$ 6
.yy6 7#
GetAllInstructorCommentyy7 N
(yyN O
instructorIdyyO [
,yy[ \

pageNumberyy] g
,yyg h
pageSizeyyi q
)yyq r
;yyr s
returnzz 

StatusCodezz 
(zz 
responseDtozz )
.zz) *

StatusCodezz* 4
,zz4 5
responseDtozz6 A
)zzA B
;zzB C
}{{ 	
[}} 	
HttpPost}}	 
]}} 
[~~ 	
Route~~	 
(~~ 
$str~~ 
)~~ 
]~~ 
[ 	
	Authorize	 
( 
Roles 
= 
StaticUserRoles *
.* +
Admin+ 0
)0 1
]1 2
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4%
CreateInstructorComment
��5 L
(
�� 	(
CreateInstructorCommentDTO
�� &%
createInstructorComment
��' >
)
��> ?
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� # 
_instructorService
��$ 6
.
��6 7%
CreateInstructorComment
��7 N
(
��N O
User
��O S
,
��S T%
createInstructorComment
��U l
)
��l m
;
��m n
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpPut
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Admin
��+ 0
)
��0 1
]
��1 2
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4%
UpdateInstructorComment
��5 L
(
�� 	(
UpdateInstructorCommentDTO
�� &%
updateInstructorComment
��' >
)
��> ?
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� # 
_instructorService
��$ 6
.
��6 7%
UpdateInstructorComment
��7 N
(
��N O
User
��O S
,
��S T%
updateInstructorComment
��U l
)
��l m
;
��m n
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	

HttpDelete
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� )
)
��) *
]
��* +
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Admin
��+ 0
)
��0 1
]
��1 2
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4%
DeleteInstructorComment
��5 L
(
�� 	
[
�� 
	FromRoute
�� 
]
�� 
Guid
�� 
	commentId
�� &
)
�� 	
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� # 
_instructorService
��$ 6
.
��6 7%
DeleteInstructorComment
��7 N
(
��N O
	commentId
��O X
)
��X Y
;
��Y Z
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� .
)
��. /
]
��/ 0
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Admin
��+ 0
)
��0 1
]
��1 2
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4
ExportInstructor
��5 E
(
�� 	
[
�� 
	FromRoute
�� 
]
�� 
int
�� 
month
�� !
,
��! "
[
�� 
	FromRoute
�� 
]
�� 
int
�� 
year
��  
)
�� 	
{
�� 	
var
�� 
userId
�� 
=
�� 
User
�� 
.
�� 
Claims
�� $
.
��$ %
FirstOrDefault
��% 3
(
��3 4
x
��4 5
=>
��6 8
x
��9 :
.
��: ;
Type
��; ?
==
��@ B

ClaimTypes
��C M
.
��M N
NameIdentifier
��N \
)
��\ ]
?
��] ^
.
��^ _
Value
��_ d
;
��d e
BackgroundJob
�� 
.
�� 
Enqueue
�� !
<
��! " 
IInstructorService
��" 4
>
��4 5
(
��5 6
job
��6 9
=>
��: <
job
��= @
.
��@ A
ExportInstructors
��A R
(
��R S
userId
��S Y
,
��Y Z
month
��[ `
,
��` a
year
��b f
)
��f g
)
��g h
;
��h i
return
�� 
Ok
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� $
)
��$ %
]
��% &
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Admin
��+ 0
)
��0 1
]
��1 2
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '"
ClosedXMLResponseDTO
��' ;
>
��; <
>
��< = 
DownloadInstructor
��> P
(
�� 	
[
�� 
	FromRoute
�� 
]
�� 
string
�� 
fileName
�� '
)
�� 	
{
�� 	
var
�� "
closedXmlResponseDto
�� $
=
��% &
await
��' , 
_instructorService
��- ?
.
��? @!
DownloadInstructors
��@ S
(
��S T
fileName
��T \
)
��\ ]
;
��] ^
var
�� 
stream
�� 
=
�� "
closedXmlResponseDto
�� -
.
��- .
Stream
��. 4
;
��4 5
var
�� 
contentType
�� 
=
�� "
closedXmlResponseDto
�� 2
.
��2 3
ContentType
��3 >
;
��> ?
if
�� 
(
�� 
stream
�� 
is
�� 
null
�� 
||
�� !
contentType
��" -
is
��. 0
null
��1 5
)
��5 6
{
�� 
return
�� 
NotFound
�� 
(
��  
)
��  !
;
��! "
}
�� 
return
�� 
File
�� 
(
�� 
stream
�� 
,
�� 
contentType
��  +
,
��+ ,
fileName
��- 5
)
��5 6
;
��6 7
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Admin
��+ 0
)
��0 1
]
��1 2
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4'
GetTopInstructorsByPayout
��5 N
(
�� 	
[
�� 
	FromQuery
�� 
]
�� 
int
�� 
topN
��  
,
��  !
[
�� 
	FromQuery
�� 
]
�� 
int
�� 
?
�� 

filterYear
�� '
,
��' (
[
�� 
	FromQuery
�� 
]
�� 
int
�� 
?
�� 
filterMonth
�� (
,
��( )
[
�� 
	FromQuery
�� 
]
�� 
int
�� 
?
�� 
filterQuarter
�� *
)
�� 	
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_paymentService
��$ 3
.
��3 4'
GetTopInstructorsByPayout
��4 M
(
�� 
topN
�� 
,
�� 

filterYear
�� 
,
�� 
filterMonth
�� 
,
�� 
filterQuarter
�� 
)
�� 
;
�� 
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Admin
��+ 0
)
��0 1
]
��1 2
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4)
GetLeastInstructorsByPayout
��5 P
(
�� 	
[
�� 
	FromQuery
�� 
]
�� 
int
�� 
topN
��  
,
��  !
[
�� 
	FromQuery
�� 
]
�� 
int
�� 
?
�� 

filterYear
�� '
,
��' (
[
�� 
	FromQuery
�� 
]
�� 
int
�� 
?
�� 
filterMonth
�� (
,
��( )
[
�� 
	FromQuery
�� 
]
�� 
int
�� 
?
�� 
filterQuarter
�� *
)
�� 	
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_paymentService
��$ 3
.
��3 4)
GetLeastInstructorsByPayout
��4 O
(
�� 
topN
�� 
,
�� 

filterYear
�� 
,
�� 
filterMonth
�� 
,
�� 
filterQuarter
�� 
)
�� 
;
�� 
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
}
�� 
}�� �M
pD:\FPT\Semester 6\Project_Cursus\Backend_Cursus\Cursus.LMS\Cursus.LMS.API\Controllers\EmailTemplateController.cs
	namespace 	
Cursus
 
. 
LMS 
. 
API 
. 
Controllers $
{		 
[

 
Route

 

(


 
$str

 
)

 
]

 
[ 
ApiController 
] 
[ 
	Authorize 
( 
Roles 
= 
StaticUserRoles &
.& '
Admin' ,
), -
]- .
public 

class #
EmailTemplateController (
:) *
ControllerBase+ 9
{ 
private 
readonly 
IUnitOfWork $
_unitOfWork% 0
;0 1
private 
readonly 
IEmailService &
_emailService' 4
;4 5
public #
EmailTemplateController &
(& '
IUnitOfWork' 2

unitOfWork3 =
,= >
IEmailService? L
emailServiceM Y
)Y Z
{ 	
_unitOfWork 
= 

unitOfWork $
;$ %
_emailService 
= 
emailService (
;( )
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
ResponseDTO' 2
>2 3
>3 4 
GetAllEmailTemplates5 I
(I J
[ 
	FromQuery 
] 
string 
? 
filterOn  (
,( )
[ 
	FromQuery 
] 
string 
? 
filterQuery  +
,+ ,
[   
	FromQuery   
]   
string   
?   
sortBy    &
,  & '
[!! 
	FromQuery!! 
]!! 
bool!! 
?!! 
isAscending!! )
,!!) *
["" 
	FromQuery"" 
]"" 
int"" 

pageNumber"" &
=""' (
$num"") *
,""* +
[## 
	FromQuery## 
]## 
int## 
pageSize## $
=##% &
$num##' )
)##) *
{$$ 	
var&& 
responseDto&& 
=&& 
await'' 
_emailService'' #
.''# $
GetAll''$ *
(''* +
User''+ /
,''/ 0
filterOn''1 9
,''9 :
filterQuery''; F
,''F G
sortBy''H N
,''N O
isAscending''P [
,''[ \

pageNumber''] g
,''g h
pageSize''i q
)''q r
;''r s
return(( 

StatusCode(( 
((( 
responseDto(( )
.(() *

StatusCode((* 4
,((4 5
responseDto((6 A
)((A B
;((B C
})) 	
[00 	
HttpGet00	 
(00 
$str00 
)00 
]00 
public11 
async11 
Task11 
<11 
ActionResult11 &
<11& '
ResponseDTO11' 2
>112 3
>113 4 
GetEmailTemplateById115 I
(11I J
Guid11J N
id11O Q
)11Q R
{22 	
var33 
emailTemplate33 
=33 
await33  %
_unitOfWork33& 1
.331 2#
EmailTemplateRepository332 I
.33I J
GetAsync33J R
(33R S
x33S T
=>33U W
x33X Y
.33Y Z
Id33Z \
==33] _
id33` b
)33b c
;33c d
if44 
(44 
emailTemplate44 
==44  
null44! %
)44% &
{55 
return66 
NotFound66 
(66  
new66  #
ResponseDTO66$ /
{77 
	IsSuccess88 
=88 
false88  %
,88% &
Message99 
=99 
$str99 <
}:: 
):: 
;:: 
};; 
return== 
Ok== 
(== 
new== 
ResponseDTO== %
{>> 
Result?? 
=?? 
emailTemplate?? &
,??& '
	IsSuccess@@ 
=@@ 
true@@  
,@@  !
MessageAA 
=AA 
$strAA ;
}BB 
)BB 
;BB 
}CC 	
[KK 	
HttpPutKK	 
(KK 
$strKK 
)KK 
]KK 
publicLL 
asyncLL 
TaskLL 
<LL 
ActionResultLL &
<LL& '
ResponseDTOLL' 2
>LL2 3
>LL3 4
UpdateEmailTemplateLL5 H
(LLH I
GuidLLI M
idLLN P
,LLP Q"
UpdateEmailTemplateDTOMM ""
updateEmailTemplateDTOMM# 9
)MM9 :
{NN 	
varOO 
emailTemplateOO 
=OO 
awaitOO  %
_unitOfWorkOO& 1
.OO1 2#
EmailTemplateRepositoryOO2 I
.OOI J
GetAsyncOOJ R
(OOR S
xOOS T
=>OOU W
xOOX Y
.OOY Z
IdOOZ \
==OO] _
idOO` b
)OOb c
;OOc d
ifQQ 
(QQ 
emailTemplateQQ 
==QQ  
nullQQ! %
)QQ% &
{RR 
returnSS 
NotFoundSS 
(SS  
newSS  #
ResponseDTOSS$ /
{TT 
	IsSuccessUU 
=UU 
falseUU  %
,UU% &
MessageVV 
=VV 
$strVV <
}WW 
)WW 
;WW 
}XX 
emailTemplate[[ 
.[[ 
TemplateName[[ &
=[[' ("
updateEmailTemplateDTO[[) ?
.[[? @
TemplateName[[@ L
;[[L M
emailTemplate\\ 
.\\ 

SenderName\\ $
=\\% &"
updateEmailTemplateDTO\\' =
.\\= >

SenderName\\> H
;\\H I
emailTemplate]] 
.]] 
SenderEmail]] %
=]]& '"
updateEmailTemplateDTO]]( >
.]]> ?
SenderEmail]]? J
;]]J K
emailTemplate^^ 
.^^ 
Category^^ "
=^^# $"
updateEmailTemplateDTO^^% ;
.^^; <
Category^^< D
;^^D E
emailTemplate__ 
.__ 
SubjectLine__ %
=__& '"
updateEmailTemplateDTO__( >
.__> ?
SubjectLine__? J
;__J K
emailTemplate`` 
.`` 
PreHeaderText`` '
=``( )"
updateEmailTemplateDTO``* @
.``@ A
PreHeaderText``A N
;``N O
emailTemplateaa 
.aa 
PersonalizationTagsaa -
=aa. /"
updateEmailTemplateDTOaa0 F
.aaF G
PersonalizationTagsaaG Z
;aaZ [
emailTemplatebb 
.bb 
BodyContentbb %
=bb& '"
updateEmailTemplateDTObb( >
.bb> ?
BodyContentbb? J
;bbJ K
emailTemplatecc 
.cc 
FooterContentcc '
=cc( )"
updateEmailTemplateDTOcc* @
.cc@ A
FooterContentccA N
;ccN O
emailTemplatedd 
.dd 
CallToActiondd &
=dd' ("
updateEmailTemplateDTOdd) ?
.dd? @
CallToActiondd@ L
;ddL M
emailTemplateee 
.ee 
Languageee "
=ee# $"
updateEmailTemplateDTOee% ;
.ee; <
Languageee< D
;eeD E
emailTemplateff 
.ff 
RecipientTypeff '
=ff( )"
updateEmailTemplateDTOff* @
.ff@ A
RecipientTypeffA N
;ffN O
_unitOfWorkhh 
.hh #
EmailTemplateRepositoryhh /
.hh/ 0
Updatehh0 6
(hh6 7
emailTemplatehh7 D
)hhD E
;hhE F
awaitii 
_unitOfWorkii 
.ii 
	SaveAsyncii '
(ii' (
)ii( )
;ii) *
returnkk 
Okkk 
(kk 
newkk 
ResponseDTOkk %
{ll 
Resultmm 
=mm 
emailTemplatemm &
,mm& '
	IsSuccessnn 
=nn 
truenn  
,nn  !
Messageoo 
=oo 
$stroo >
}pp 
)pp 
;pp 
}qq 	
[xx 	

HttpDeletexx	 
(xx 
$strxx 
)xx  
]xx  !
publicyy 
ActionResultyy 
<yy 
ResponseDTOyy '
>yy' (
DeleteEmailTemplateyy) <
(yy< =
Guidyy= A
idyyB D
)yyD E
{zz 	
return{{ 

BadRequest{{ 
({{ 
new{{ !
ResponseDTO{{" -
{|| 
	IsSuccess}} 
=}} 
false}} !
,}}! "
Message~~ 
=~~ 
$str~~ C
} 
) 
; 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
ActionResult
�� 
<
�� 
ResponseDTO
�� '
>
��' (!
CreateEmailTemplate
��) <
(
��< =$
CreateEmailTemplateDTO
��= S$
createEmailTemplateDTO
��T j
)
��j k
{
�� 	
return
�� 

BadRequest
�� 
(
�� 
new
�� !
ResponseDTO
��" -
{
�� 
	IsSuccess
�� 
=
�� 
false
�� !
,
��! "
Message
�� 
=
�� 
$str
�� B
}
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
pD:\FPT\Semester 6\Project_Cursus\Backend_Cursus\Cursus.LMS\Cursus.LMS.API\Controllers\CourseVersionController.cs
	namespace		 	
Cursus		
 
.		 
LMS		 
.		 
API		 
.		 
Controllers		 $
{

 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class #
CourseVersionController (
:) *
ControllerBase+ 9
{ 
private 
readonly !
ICourseVersionService .!
_courseVersionService/ D
;D E
private 
readonly (
ICourseSectionVersionService 5(
_courseSectionVersionService6 R
;R S
private 
readonly )
ISectionDetailsVersionService 6)
_sectionDetailsVersionService7 T
;T U
public #
CourseVersionController &
(& '!
ICourseVersionService' < 
courseVersionService= Q
,Q R(
ICourseSectionVersionService ('
courseSectionVersionService) D
,D E)
ISectionDetailsVersionService )(
sectionDetailsVersionService* F
)F G
{ 	!
_courseVersionService !
=" # 
courseVersionService$ 8
;8 9(
_courseSectionVersionService (
=) *'
courseSectionVersionService+ F
;F G)
_sectionDetailsVersionService )
=* +(
sectionDetailsVersionService, H
;H I
} 	
[ 	
HttpGet	 
] 
[ 	
	Authorize	 
] 
public   
async   
Task   
<   
ActionResult   &
<  & '
ResponseDTO  ' 2
>  2 3
>  3 4
GetCourseVersions  5 F
(!! 	
["" 
	FromQuery"" 
]"" 
Guid"" 
?"" 
courseId"" &
,""& '
[## 
	FromQuery## 
]## 
string## 
?## 
filterOn##  (
,##( )
[$$ 
	FromQuery$$ 
]$$ 
string$$ 
?$$ 
filterQuery$$  +
,$$+ ,
[%% 
	FromQuery%% 
]%% 
string%% 
?%% 
sortBy%%  &
,%%& '
[&& 
	FromQuery&& 
]&& 
bool&& 
?&& 
isAscending&& )
,&&) *
['' 
	FromQuery'' 
]'' 
int'' 

pageNumber'' &
=''' (
$num'') *
,''* +
[(( 
	FromQuery(( 
](( 
int(( 
pageSize(( $
=((% &
$num((' (
))) 	
{** 	
var++ 
responseDto++ 
=++ 
await++ #!
_courseVersionService++$ 9
.++9 :
GetCourseVersions++: K
(,, 
User-- 
,-- 
courseId.. 
,.. 
filterOn// 
,// 
filterQuery00 
,00 
sortBy11 
,11 
isAscending22 
,22 

pageNumber33 
,33 
pageSize44 
)55 
;55 
return77 

StatusCode77 
(77 
responseDto77 )
.77) *

StatusCode77* 4
,774 5
responseDto776 A
)77A B
;77B C
}88 	
[:: 	
HttpGet::	 
]:: 
[;; 	
Route;;	 
(;; 
$str;;  
);;  !
];;! "
[<< 	
	Authorize<<	 
]<< 
public== 
async== 
Task== 
<== 
ActionResult== &
<==& '
ResponseDTO==' 2
>==2 3
>==3 4
GetCourseVersion==5 E
(==E F
[==F G
	FromRoute==G P
]==P Q
Guid==R V
courseId==W _
)==_ `
{>> 	
var?? 
responseDto?? 
=?? 
await?? #!
_courseVersionService??$ 9
.??9 :
GetCourseVersion??: J
(??J K
User??K O
,??O P
courseId??Q Y
)??Y Z
;??Z [
return@@ 

StatusCode@@ 
(@@ 
responseDto@@ )
.@@) *

StatusCode@@* 4
,@@4 5
responseDto@@6 A
)@@A B
;@@B C
}AA 	
[CC 	
HttpPostCC	 
]CC 
[DD 	
RouteDD	 
(DD 
$strDD 
)DD 
]DD 
[EE 	
	AuthorizeEE	 
(EE 
RolesEE 
=EE 
StaticUserRolesEE *
.EE* +

InstructorEE+ 5
)EE5 6
]EE6 7
publicFF 
asyncFF 
TaskFF 
<FF 
ActionResultFF &
<FF& '
ResponseDTOFF' 2
>FF2 3
>FF3 4"
CreateCourseAndVersionFF5 K
(GG 	(
CreateNewCourseAndVersionDTOHH ((
createNewCourseAndVersionDtoHH) E
)II 	
{JJ 	
varKK 
responseDtoKK 
=KK 
awaitKK #!
_courseVersionServiceKK$ 9
.KK9 :"
CreateCourseAndVersionKK: P
(KKP Q
UserKKQ U
,KKU V(
createNewCourseAndVersionDtoKKW s
)KKs t
;KKt u
returnLL 

StatusCodeLL 
(LL 
responseDtoLL )
.LL) *

StatusCodeLL* 4
,LL4 5
responseDtoLL6 A
)LLA B
;LLB C
}MM 	
[OO 	
HttpPostOO	 
]OO 
[PP 	
RoutePP	 
(PP 
$strPP 
)PP 
]PP 
[QQ 	
	AuthorizeQQ	 
(QQ 
RolesQQ 
=QQ 
StaticUserRolesQQ *
.QQ* +

InstructorQQ+ 5
)QQ5 6
]QQ6 7
publicRR 
asyncRR 
TaskRR 
<RR 
ActionResultRR &
<RR& '
ResponseDTORR' 2
>RR2 3
>RR3 4
CloneCourseVersionRR5 G
(SS 	
[TT 
FromBodyTT 
]TT !
CloneCourseVersionDTOTT ,!
cloneCourseVersionDtoTT- B
)UU 	
{VV 	
varWW 
responseDtoWW 
=WW 
awaitWW #!
_courseVersionServiceWW$ 9
.WW9 :
CloneCourseVersionWW: L
(WWL M
UserWWM Q
,WWQ R!
cloneCourseVersionDtoWWS h
)WWh i
;WWi j
returnXX 

StatusCodeXX 
(XX 
responseDtoXX )
.XX) *

StatusCodeXX* 4
,XX4 5
responseDtoXX6 A
)XXA B
;XXB C
}YY 	
[[[ 	
HttpPut[[	 
][[ 
[\\ 	
Route\\	 
(\\ 
$str\\ 
)\\ 
]\\ 
[]] 	
	Authorize]]	 
(]] 
Roles]] 
=]] 
StaticUserRoles]] *
.]]* +

Instructor]]+ 5
)]]5 6
]]]6 7
public^^ 
async^^ 
Task^^ 
<^^ 
ActionResult^^ &
<^^& '
ResponseDTO^^' 2
>^^2 3
>^^3 4
EditCourseVersion^^5 F
(__ 	
[`` 
FromBody`` 
]``  
EditCourseVersionDTO`` + 
editCourseVersionDto``, @
)``@ A
{aa 	
varbb 
responseDtobb 
=bb 
awaitbb #!
_courseVersionServicebb$ 9
.bb9 :
EditCourseVersionbb: K
(bbK L
UserbbL P
,bbP Q 
editCourseVersionDtobbR f
)bbf g
;bbg h
returncc 

StatusCodecc 
(cc 
responseDtocc )
.cc) *

StatusCodecc* 4
,cc4 5
responseDtocc6 A
)ccA B
;ccB C
}dd 	
[ff 	

HttpDeleteff	 
]ff 
[gg 	
Routegg	 
(gg 
$strgg '
)gg' (
]gg( )
[hh 	
	Authorizehh	 
(hh 
Roleshh 
=hh 
StaticUserRoleshh *
.hh* +

Instructorhh+ 5
)hh5 6
]hh6 7
publicii 
asyncii 
Taskii 
<ii 
ActionResultii &
<ii& '
ResponseDTOii' 2
>ii2 3
>ii3 4
RemoveCourseVersionii5 H
(iiH I
[iiI J
	FromRouteiiJ S
]iiS T
GuidiiU Y
courseIdiiZ b
)iib c
{jj 	
varkk 
responseDtokk 
=kk 
awaitkk #!
_courseVersionServicekk$ 9
.kk9 :
RemoveCourseVersionkk: M
(kkM N
UserkkN R
,kkR S
courseIdkkT \
)kk\ ]
;kk] ^
returnll 

StatusCodell 
(ll 
responseDtoll )
.ll) *

StatusCodell* 4
,ll4 5
responseDtoll6 A
)llA B
;llB C
}mm 	
[oo 	
HttpPostoo	 
]oo 
[pp 	
Routepp	 
(pp 
$strpp '
)pp' (
]pp( )
[qq 	
	Authorizeqq	 
(qq 
Rolesqq 
=qq 
StaticUserRolesqq *
.qq* +
Adminqq+ 0
)qq0 1
]qq1 2
publicrr 
asyncrr 
Taskrr 
<rr 
ActionResultrr &
<rr& '
ResponseDTOrr' 2
>rr2 3
>rr3 4
AcceptCourseVersionrr5 H
(rrH I
[rrI J
	FromRouterrJ S
]rrS T
GuidrrU Y
courseIdrrZ b
)rrb c
{ss 	
vartt 
responseDtott 
=tt 
awaittt #!
_courseVersionServicett$ 9
.tt9 :
AcceptCourseVersiontt: M
(ttM N
UserttN R
,ttR S
courseIdttT \
)tt\ ]
;tt] ^
returnuu 

StatusCodeuu 
(uu 
responseDtouu )
.uu) *

StatusCodeuu* 4
,uu4 5
responseDtouu6 A
)uuA B
;uuB C
}vv 	
[xx 	
HttpPostxx	 
]xx 
[yy 	
Routeyy	 
(yy 
$stryy '
)yy' (
]yy( )
[zz 	
	Authorizezz	 
(zz 
Roleszz 
=zz 
StaticUserRoleszz *
.zz* +
Adminzz+ 0
)zz0 1
]zz1 2
public{{ 
async{{ 
Task{{ 
<{{ 
ActionResult{{ &
<{{& '
ResponseDTO{{' 2
>{{2 3
>{{3 4
RejectCourseVersion{{5 H
({{H I
[{{I J
	FromRoute{{J S
]{{S T
Guid{{U Y
courseId{{Z b
){{b c
{|| 	
var}} 
responseDto}} 
=}} 
await}} #!
_courseVersionService}}$ 9
.}}9 :
RejectCourseVersion}}: M
(}}M N
User}}N R
,}}R S
courseId}}T \
)}}\ ]
;}}] ^
return~~ 

StatusCode~~ 
(~~ 
responseDto~~ )
.~~) *

StatusCode~~* 4
,~~4 5
responseDto~~6 A
)~~A B
;~~B C
} 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� '
)
��' (
]
��( )
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +

Instructor
��+ 5
)
��5 6
]
��6 7
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4!
SubmitCourseVersion
��5 H
(
��H I
[
��I J
	FromRoute
��J S
]
��S T
Guid
��U Y
courseId
��Z b
)
��b c
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� ##
_courseVersionService
��$ 9
.
��9 :!
SubmitCourseVersion
��: M
(
��M N
User
��N R
,
��R S
courseId
��T \
)
��\ ]
;
��] ^
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� &
)
��& '
]
��' (
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +

Instructor
��+ 5
)
��5 6
]
��6 7
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4 
MergeCourseVersion
��5 G
(
��G H
[
��H I
	FromRoute
��I R
]
��R S
Guid
��T X
courseId
��Y a
)
��a b
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� ##
_courseVersionService
��$ 9
.
��9 : 
MergeCourseVersion
��: L
(
��L M
User
��M Q
,
��Q R
courseId
��S [
)
��[ \
;
��\ ]
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 2
)
��2 3
]
��3 4
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +

Instructor
��+ 5
)
��5 6
]
��6 7
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4+
UploadCourseVersionBackground
��5 R
(
�� 	
[
�� 
	FromRoute
�� 
]
�� 
Guid
�� 
courseVersionId
�� ,
,
��, -.
 UploadCourseVersionBackgroundImg
�� ,.
 uploadCourseVersionBackgroundImg
��- M
)
�� 	
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_courseVersionService
�� +
.
��+ ,.
 UploadCourseVersionBackgroundImg
��, L
(
�� 
User
�� 
,
�� 
courseVersionId
�� #
,
��# $.
 uploadCourseVersionBackgroundImg
�� 4
)
�� 
;
�� 
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 2
)
��2 3
]
��3 4
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& ',
DisplayCourseVersionBackground
��( F
(
�� 	
[
�� 
	FromRoute
�� 
]
�� 
Guid
�� 
courseVersionId
�� ,
)
�� 	
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� ##
_courseVersionService
��$ 9
.
��9 :/
!DisplayCourseVersionBackgroundImg
��: [
(
��[ \
User
��\ `
,
��` a
courseVersionId
��b q
)
��q r
;
��r s
if
�� 
(
�� 
responseDto
�� 
is
�� 
null
�� #
)
��# $
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
return
�� 
File
�� 
(
�� 
responseDto
�� #
,
��# $
$str
��% 0
)
��0 1
;
��1 2
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
AdminInstructor
��+ :
)
��: ;
]
��; <
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4'
GetCourseVersionsComments
��5 N
(
�� 	
[
�� 
	FromQuery
�� 
]
�� 
[
�� 
Required
�� !
]
��! "
Guid
��# '
courseVersionId
��( 7
,
��7 8
[
�� 
	FromQuery
�� 
]
�� 
string
�� 
?
�� 
filterOn
��  (
,
��( )
[
�� 
	FromQuery
�� 
]
�� 
string
�� 
?
�� 
filterQuery
��  +
,
��+ ,
[
�� 
	FromQuery
�� 
]
�� 
string
�� 
?
�� 
sortBy
��  &
,
��& '
[
�� 
	FromQuery
�� 
]
�� 
int
�� 

pageNumber
�� &
=
��' (
$num
��) *
,
��* +
[
�� 
	FromQuery
�� 
]
�� 
int
�� 
pageSize
�� $
=
��% &
$num
��' )
)
�� 	
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� ##
_courseVersionService
��$ 9
.
��9 :'
GetCourseVersionsComments
��: S
(
�� 
User
�� 
,
�� 
courseVersionId
�� 
,
��  
filterOn
�� 
,
�� 
filterQuery
�� 
,
�� 
sortBy
�� 
,
�� 

pageNumber
�� 
,
�� 
pageSize
�� 
)
�� 
;
�� 
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� )
)
��) *
]
��* +
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
AdminInstructor
��+ :
)
��: ;
]
��; <
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4%
GetCourseVersionComment
��5 L
(
��L M
[
��M N
	FromRoute
��N W
]
��W X
Guid
��Y ]
	commentId
��^ g
)
��g h
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� ##
_courseVersionService
��$ 9
.
��9 :%
GetCourseVersionComment
��: Q
(
��Q R
User
��R V
,
��V W
	commentId
��X a
)
��a b
;
��b c
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Admin
��+ 0
)
��0 1
]
��1 2
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4(
CreateCourseVersionComment
��5 O
(
�� 	,
CreateCourseVersionCommentsDTO
�� *,
createCourseVersionCommentsDto
��+ I
)
�� 	
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_courseVersionService
�� +
.
��+ ,(
CreateCourseVersionComment
��, F
(
��F G
User
��G K
,
��K L,
createCourseVersionCommentsDto
��M k
)
��k l
;
��l m
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpPut
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Admin
��+ 0
)
��0 1
]
��1 2
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4&
EditCourseVersionComment
��5 M
(
�� 	*
EditCourseVersionCommentsDTO
�� (*
editCourseVersionCommentsDto
��) E
)
�� 	
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� ##
_courseVersionService
��$ 9
.
��9 :&
EditCourseVersionComment
��: R
(
��R S
User
��S W
,
��W X*
editCourseVersionCommentsDto
��Y u
)
��u v
;
��v w
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	

HttpDelete
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� )
)
��) *
]
��* +
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Admin
��+ 0
)
��0 1
]
��1 2
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4(
RemoveCourseVersionComment
��5 O
(
��O P
[
�� 
	FromRoute
�� 
]
�� 
Guid
�� 
	commentId
�� &
)
��& '
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_courseVersionService
�� +
.
��+ ,(
RemoveCourseVersionComment
��, F
(
��F G
User
��G K
,
��K L
	commentId
��M V
)
��V W
;
��W X
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
	Authorize
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4
GetCourseSections
��5 F
(
�� 	
[
�� 
	FromQuery
�� 
]
�� 
[
�� 
Required
�� !
]
��! "
Guid
��# '
?
��' (
courseVersionId
��) 8
,
��8 9
[
�� 
	FromQuery
�� 
]
�� 
string
�� 
?
�� 
filterOn
��  (
,
��( )
[
�� 
	FromQuery
�� 
]
�� 
string
�� 
?
�� 
filterQuery
��  +
,
��+ ,
[
�� 
	FromQuery
�� 
]
�� 
string
�� 
?
�� 
sortBy
��  &
,
��& '
[
�� 
	FromQuery
�� 
]
�� 
bool
�� 
?
�� 
isAscending
�� )
,
��) *
[
�� 
	FromQuery
�� 
]
�� 
int
�� 

pageNumber
�� &
=
��' (
$num
��) *
,
��* +
[
�� 
	FromQuery
�� 
]
�� 
int
�� 
pageSize
�� $
=
��% &
$num
��' (
)
�� 	
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #*
_courseSectionVersionService
��$ @
.
��@ A
GetCourseSections
��A R
(
�� 
User
�� 
,
�� 
courseVersionId
�� 
,
��  
filterOn
�� 
,
�� 
filterQuery
�� 
,
�� 
sortBy
�� 
,
�� 

pageNumber
�� 
,
�� 
pageSize
�� 
)
�� 
;
�� 
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� )
)
��) *
]
��* +
[
�� 	
	Authorize
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4
GetCourseSection
��5 E
(
��E F
[
��F G
	FromRoute
��G P
]
��P Q
Guid
��R V
	sectionId
��W `
)
��` a
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #*
_courseSectionVersionService
��$ @
.
��@ A
GetCourseSection
��A Q
(
��Q R
User
��R V
,
��V W
	sectionId
��X a
)
��a b
;
��b c
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +

Instructor
��+ 5
)
��5 6
]
��6 7
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4!
CreateCourseSection
��5 H
(
�� 	+
CreateCourseSectionVersionDTO
�� )+
createCourseSectionVersionDto
��* G
)
�� 	
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� *
_courseSectionVersionService
�� 2
.
��2 3!
CreateCourseSection
��3 F
(
��F G
User
��G K
,
��K L+
createCourseSectionVersionDto
��M j
)
��j k
;
��k l
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpPut
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +

Instructor
��+ 5
)
��5 6
]
��6 7
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4
EditCourseSection
��5 F
(
�� 	)
EditCourseSectionVersionDTO
�� '+
createCourseSectionVersionDto
��( E
)
�� 	
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #*
_courseSectionVersionService
��$ @
.
��@ A
EditCourseSection
��A R
(
��R S
User
��S W
,
��W X+
createCourseSectionVersionDto
��Y v
)
��v w
;
��w x
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	

HttpDelete
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� $
)
��$ %
]
��% &
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +

Instructor
��+ 5
)
��5 6
]
��6 7
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4!
DeleteCourseSection
��5 H
(
�� 	
[
�� 
	FromRoute
�� 
]
�� 
Guid
�� 
	sectionId
�� &
)
�� 	
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� *
_courseSectionVersionService
�� 2
.
��2 3!
RemoveCourseSection
��3 F
(
��F G
User
��G K
,
��K L
	sectionId
��M V
)
��V W
;
��W X
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
��  
)
��  !
]
��! "
[
�� 	
	Authorize
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4(
GetSectionsDetailsVersions
��5 O
(
�� 	
[
�� 
	FromQuery
�� 
]
�� 
Guid
�� 
?
�� 
courseSectionId
�� -
,
��- .
[
�� 
	FromQuery
�� 
]
�� 
string
�� 
?
�� 
filterOn
��  (
,
��( )
[
�� 
	FromQuery
�� 
]
�� 
string
�� 
?
�� 
filterQuery
��  +
,
��+ ,
[
�� 
	FromQuery
�� 
]
�� 
string
�� 
?
�� 
sortBy
��  &
,
��& '
[
�� 
	FromQuery
�� 
]
�� 
bool
�� 
?
�� 
isAscending
�� )
,
��) *
[
�� 
	FromQuery
�� 
]
�� 
int
�� 

pageNumber
�� &
=
��' (
$num
��) *
,
��* +
[
�� 
	FromQuery
�� 
]
�� 
int
�� 
pageSize
�� $
=
��% &
$num
��' (
)
�� 	
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #+
_sectionDetailsVersionService
��$ A
.
��A B(
GetSectionsDetailsVersions
��B \
(
�� 
User
�� 
,
�� 
courseSectionId
�� 
,
��  
filterOn
�� 
,
�� 
filterQuery
�� 
,
�� 
sortBy
�� 
,
�� 
isAscending
�� 
,
�� 

pageNumber
�� 
,
�� 
pageSize
�� 
)
�� 
;
�� 
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 1
)
��1 2
]
��2 3
[
�� 	
	Authorize
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4'
GetSectionsDetailsVersion
��5 N
(
��N O
[
��O P
	FromRoute
��P Y
]
��Y Z
Guid
��[ _
	detailsId
��` i
)
��i j
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #+
_sectionDetailsVersionService
��$ A
.
��A B&
GetSectionDetailsVersion
��B Z
(
��Z [
User
��[ _
,
��_ `
	detailsId
��a j
)
��j k
;
��k l
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
��  
)
��  !
]
��! "
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +

Instructor
��+ 5
)
��5 6
]
��6 7
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4)
CreateSectionDetailsVersion
��5 P
(
��P Q
[
�� 
FromBody
�� 
]
�� ,
CreateSectionDetailsVersionDTO
�� 5,
createSectionDetailsVersionDto
��6 T
)
��T U
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� +
_sectionDetailsVersionService
�� 3
.
��3 4)
CreateSectionDetailsVersion
��4 O
(
��O P
User
��P T
,
��T U,
createSectionDetailsVersionDto
��V t
)
��t u
;
��u v
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpPut
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
��  
)
��  !
]
��! "
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +

Instructor
��+ 5
)
��5 6
]
��6 7
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4'
EditSectionDetailsVersion
��5 N
(
��N O
[
�� 
FromBody
�� 
]
�� *
EditSectionDetailsVersionDTO
�� 3*
editSectionDetailsVersionDto
��4 P
)
��P Q
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� +
_sectionDetailsVersionService
�� 3
.
��3 4'
EditSectionDetailsVersion
��4 M
(
��M N
User
��N R
,
��R S*
editSectionDetailsVersionDto
��T p
)
��p q
;
��q r
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	

HttpDelete
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 1
)
��1 2
]
��2 3
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +

Instructor
��+ 5
)
��5 6
]
��6 7
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4)
RemoveSectionDetailsVersion
��5 P
(
��P Q
[
��Q R
	FromRoute
��R [
]
��[ \
Guid
��] a
	detailsId
��b k
)
��k l
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� +
_sectionDetailsVersionService
�� 3
.
��3 4)
RemoveSectionDetailsVersion
��4 O
(
��O P
User
��P T
,
��T U
	detailsId
��V _
)
��_ `
;
��` a
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 9
)
��9 :
]
��: ;
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +

Instructor
��+ 5
)
��5 6
]
��6 7
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 40
"UploadSectionDetailsVersionContent
��5 W
(
�� 	
[
�� 
	FromRoute
�� 
]
�� 
Guid
�� 
	detailsId
�� &
,
��& '3
%UploadSectionDetailsVersionContentDTO
�� 13
%uploadSectionDetailsVersionContentDto
��2 W
)
�� 	
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� +
_sectionDetailsVersionService
�� 3
.
��3 40
"UploadSectionDetailsVersionContent
��4 V
(
�� 
User
�� 
,
�� 
	detailsId
�� 
,
�� 3
%uploadSectionDetailsVersionContentDto
�� 9
)
�� 
;
�� 
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� )
)
��) *
]
��* +
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (1
#DisplaySectionDetailsVersionContent
��) L
(
�� 	
[
�� 
	FromQuery
�� 
]
�� 
Guid
�� %
sectionDetailsVersionId
�� 4
,
��4 5
[
�� 
	FromQuery
�� 
]
�� 
string
�� 
userId
�� %
,
��% &
[
�� 
	FromQuery
�� 
]
�� 
string
�� 
type
�� #
)
�� 	
{
�� 	
var
��  
contentResponseDto
�� "
=
��# $
await
�� +
_sectionDetailsVersionService
�� 3
.
��3 41
#DisplaySectionDetailsVersionContent
��4 W
(
�� %
sectionDetailsVersionId
�� +
,
��+ ,
userId
�� 
,
�� 
type
�� 
)
�� 
;
�� 
if
�� 
(
��  
contentResponseDto
�� "
.
��" #
Stream
��# )
is
��* ,
null
��- 1
)
��1 2
{
�� 
return
�� 
NotFound
�� 
(
��  
$str
��  7
)
��7 8
;
��8 9
}
�� 
if
�� 
(
��  
contentResponseDto
�� "
.
��" #
ContentType
��# .
is
��/ 1"
StaticFileExtensions
��2 F
.
��F G
Mov
��G J
or
��K M"
StaticFileExtensions
��N b
.
��b c
Mp4
��c f
)
��f g
{
�� 
return
�� 
File
�� 
(
��  
contentResponseDto
�� .
.
��. /
Stream
��/ 5
,
��5 6 
contentResponseDto
��7 I
.
��I J
ContentType
��J U
)
��U V
;
��V W
}
�� 
return
�� 
File
�� 
(
��  
contentResponseDto
�� *
.
��* +
Stream
��+ 1
,
��1 2 
contentResponseDto
��3 E
.
��E F
ContentType
��F Q
,
��Q R 
contentResponseDto
��S e
.
��e f
FileName
��f n
)
��n o
;
��o p
}
�� 	
}
�� 
}�� ��
iD:\FPT\Semester 6\Project_Cursus\Backend_Cursus\Cursus.LMS\Cursus.LMS.API\Controllers\CourseController.cs
	namespace

 	
Cursus


 
.

 
LMS

 
.

 
API

 
.

 
Controllers

 $
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
CourseController !
:" #
ControllerBase$ 2
{ 
private 
readonly 
ICourseService '
_courseService( 6
;6 7
private 
readonly  
ICourseReviewService - 
_courseReviewService. B
;B C
private 
readonly  
ICourseReportService - 
_courseReportService. B
;B C
private 
readonly "
ICourseProgressService /"
_courseProgressService0 F
;F G
public 
CourseController 
( 	
ICourseService 
courseService (
,( ) 
ICourseReviewService  
courseReviewService! 4
,4 5 
ICourseReportService  
courseReportService! 4
,4 5"
ICourseProgressService6 L!
courseProgressServiceM b
)b c
{ 	
_courseService 
= 
courseService *
;* + 
_courseReviewService  
=! "
courseReviewService# 6
;6 7 
_courseReportService  
=! "
courseReportService# 6
;6 7"
_courseProgressService "
=# $!
courseProgressService% :
;: ;
} 	
["" 	
HttpGet""	 
]"" 
public## 
async## 
Task## 
<## 
ActionResult## &
<##& '
ResponseDTO##' 2
>##2 3
>##3 4

GetCourses##5 ?
($$ 	
[%% 
	FromQuery%% 
]%% 
Guid%% 
?%% 
instructorId%% *
,%%* +
[&& 
	FromQuery&& 
]&& 
string&& 
?&& 
filterOn&&  (
,&&( )
['' 
	FromQuery'' 
]'' 
string'' 
?'' 
filterQuery''  +
,''+ ,
[(( 
	FromQuery(( 
](( 
string(( 
?(( 
sortBy((  &
,((& '
[)) 
	FromQuery)) 
])) 
bool)) 
?)) 
isAscending)) )
,))) *
[** 
	FromQuery** 
]** 
double** 
?** 
	fromPrice**  )
,**) *
[++ 
	FromQuery++ 
]++ 
double++ 
?++ 
toPrice++  '
,++' (
[,, 
	FromQuery,, 
],, 
int,, 

pageNumber,, &
=,,' (
$num,,) *
,,,* +
[-- 
	FromQuery-- 
]-- 
int-- 
pageSize-- $
=--% &
$num--' (
).. 	
{// 	
var00 
responseDto00 
=00 
await00 #
_courseService00$ 2
.002 3

GetCourses003 =
(11 
User22 
,22 
instructorId33 
,33 
filterOn44 
,44 
filterQuery55 
,55 
	fromPrice66 
,66 
toPrice77 
,77 
sortBy88 
,88 
isAscending99 
,99 

pageNumber:: 
,:: 
pageSize;; 
)<< 
;<< 
return== 

StatusCode== 
(== 
responseDto== )
.==) *

StatusCode==* 4
,==4 5
responseDto==6 A
)==A B
;==B C
}>> 	
[@@ 	
HttpGet@@	 
]@@ 
[AA 	
RouteAA	 
(AA 
$strAA  
)AA  !
]AA! "
publicBB 
asyncBB 
TaskBB 
<BB 
ActionResultBB &
<BB& '
ResponseDTOBB' 2
>BB2 3
>BB3 4
	GetCourseBB5 >
(BB> ?
[BB? @
	FromRouteBB@ I
]BBI J
GuidBBK O
courseIdBBP X
)BBX Y
{CC 	
varDD 
responseDtoDD 
=DD 
awaitDD #
_courseServiceDD$ 2
.DD2 3
	GetCourseDD3 <
(DD< =
UserDD= A
,DDA B
courseIdDDC K
)DDK L
;DDL M
returnEE 

StatusCodeEE 
(EE 
responseDtoEE )
.EE) *

StatusCodeEE* 4
,EE4 5
responseDtoEE6 A
)EEA B
;EEB C
}FF 	
[HH 	
HttpPostHH	 
]HH 
[II 	
RouteII	 
(II 
$strII )
)II) *
]II* +
[JJ 	
	AuthorizeJJ	 
(JJ 
RolesJJ 
=JJ 
StaticUserRolesJJ *
.JJ* +
AdminInstructorJJ+ :
)JJ: ;
]JJ; <
publicKK 
asyncKK 
TaskKK 
<KK 
ActionResultKK &
<KK& '
ResponseDTOKK' 2
>KK2 3
>KK3 4
ActivateCourseKK5 C
(KKC D
[KKD E
	FromRouteKKE N
]KKN O
GuidKKP T
courseIdKKU ]
)KK] ^
{LL 	
varMM 
responseDtoMM 
=MM 
awaitMM #
_courseServiceMM$ 2
.MM2 3
ActivateCourseMM3 A
(MMA B
UserMMB F
,MMF G
courseIdMMH P
)MMP Q
;MMQ R
returnNN 

StatusCodeNN 
(NN 
responseDtoNN )
.NN) *

StatusCodeNN* 4
,NN4 5
responseDtoNN6 A
)NNA B
;NNB C
}OO 	
[QQ 	
HttpPostQQ	 
]QQ 
[RR 	
RouteRR	 
(RR 
$strRR +
)RR+ ,
]RR, -
[SS 	
	AuthorizeSS	 
(SS 
RolesSS 
=SS 
StaticUserRolesSS *
.SS* +
AdminInstructorSS+ :
)SS: ;
]SS; <
publicTT 
asyncTT 
TaskTT 
<TT 
ActionResultTT &
<TT& '
ResponseDTOTT' 2
>TT2 3
>TT3 4
DeactivateCourseTT5 E
(TTE F
[TTF G
	FromRouteTTG P
]TTP Q
GuidTTR V
courseIdTTW _
)TT_ `
{UU 	
varVV 
responseDtoVV 
=VV 
awaitVV #
_courseServiceVV$ 2
.VV2 3
DeactivateCourseVV3 C
(VVC D
UserVVD H
,VVH I
courseIdVVJ R
)VVR S
;VVS T
returnWW 

StatusCodeWW 
(WW 
responseDtoWW )
.WW) *

StatusCodeWW* 4
,WW4 5
responseDtoWW6 A
)WWA B
;WWB C
}XX 	
[[[ 	
HttpGet[[	 
][[ 
[\\ 	
Route\\	 
(\\ 
$str\\ 
)\\ 
]\\ 
[]] 	
	Authorize]]	 
]]] 
public^^ 
async^^ 
Task^^ 
<^^ 
ActionResult^^ &
<^^& '
ResponseDTO^^' 2
>^^2 3
>^^3 4
GetCourseReviews^^5 E
(__ 	
[`` 
	FromQuery`` 
]`` 
Guid`` 
?`` 
courseId`` &
,``& '
[aa 
	FromQueryaa 
]aa 
stringaa 
?aa 
filterOnaa  (
,aa( )
[bb 
	FromQuerybb 
]bb 
stringbb 
?bb 
filterQuerybb  +
,bb+ ,
[cc 
	FromQuerycc 
]cc 
stringcc 
?cc 
sortBycc  &
,cc& '
[dd 
	FromQuerydd 
]dd 
booldd 
?dd 
isAscendingdd )
,dd) *
[ee 
	FromQueryee 
]ee 
intee 

pageNumberee &
=ee' (
$numee) *
,ee* +
[ff 
	FromQueryff 
]ff 
intff 
pageSizeff $
=ff% &
$numff' (
)gg 	
{hh 	
varii 
responseDtoii 
=ii 
awaitii # 
_courseReviewServiceii$ 8
.ii8 9
GetCourseReviewsii9 I
(iiI J
Userjj 
,jj 
courseIdkk 
,kk 
filterOnll 
,ll 
filterQuerymm 
,mm 
sortBynn 
,nn 
isAscendingoo 
,oo 

pageNumberpp 
,pp 
pageSizeqq 
)rr 
;rr 
returntt 

StatusCodett 
(tt 
responseDtott )
.tt) *

StatusCodett* 4
,tt4 5
responseDtott6 A
)ttA B
;ttB C
}uu 	
[ww 	
HttpGetww	 
]ww 
[xx 	
Routexx	 
(xx 
$strxx '
)xx' (
]xx( )
[yy 	
	Authorizeyy	 
]yy 
publiczz 
asynczz 
Taskzz 
<zz 
ActionResultzz &
<zz& '
ResponseDTOzz' 2
>zz2 3
>zz3 4
GetCourseReviewzz5 D
(zzD E
[zzE F
	FromRoutezzF O
]zzO P
GuidzzQ U
reviewIdzzV ^
)zz^ _
{{{ 	
try|| 
{}} 
var~~ 
responseDto~~ 
=~~  !
await~~" ' 
_courseReviewService~~( <
.~~< =
GetCourseReviewById~~= P
(~~P Q
reviewId~~Q Y
)~~Y Z
;~~Z [
return 

StatusCode !
(! "
responseDto" -
.- .

StatusCode. 8
,8 9
responseDto: E
)E F
;F G
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
return
�� 

StatusCode
�� !
(
��! "
$num
��" %
,
��% &
new
��' *
ResponseDTO
��+ 6
{
�� 
Message
�� 
=
�� 
ex
��  
.
��  !
Message
��! (
,
��( )
Result
�� 
=
�� 
null
�� !
,
��! "
	IsSuccess
�� 
=
�� 
false
��  %
,
��% &

StatusCode
�� 
=
��  
$num
��! $
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Student
��+ 2
)
��2 3
]
��3 4
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4 
CreateCourseReview
��5 G
(
��G H
[
�� 
FromBody
�� 
]
�� #
CreateCourseReviewDTO
�� ,#
createCourseReviewDto
��- B
)
��B C
{
�� 	
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 

BadRequest
�� !
(
��! "
new
��" %
ResponseDTO
��& 1
{
�� 
Message
�� 
=
�� 
$str
�� ,
,
��, -
Result
�� 
=
�� 

ModelState
�� '
,
��' (
	IsSuccess
�� 
=
�� 
false
��  %
,
��% &

StatusCode
�� 
=
��  
$num
��! $
}
�� 
)
�� 
;
�� 
}
�� 
try
�� 
{
�� 
var
�� 
responseDto
�� 
=
��  !
await
��" '"
_courseReviewService
��( <
.
��< = 
CreateCourseReview
��= O
(
��O P#
createCourseReviewDto
��P e
)
��e f
;
��f g
return
�� 

StatusCode
�� !
(
��! "
responseDto
��" -
.
��- .

StatusCode
��. 8
,
��8 9
responseDto
��: E
)
��E F
;
��F G
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
return
�� 

StatusCode
�� !
(
��! "
$num
��" %
,
��% &
new
��' *
ResponseDTO
��+ 6
{
�� 
Message
�� 
=
�� 
ex
��  
.
��  !
Message
��! (
,
��( )
Result
�� 
=
�� 
null
�� !
,
��! "
	IsSuccess
�� 
=
�� 
false
��  %
,
��% &

StatusCode
�� 
=
��  
$num
��! $
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
[
�� 	
HttpPut
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Student
��+ 2
)
��2 3
]
��3 4
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4 
UpdateCourseReview
��5 G
(
��G H
[
�� 
FromBody
�� 
]
�� #
UpdateCourseReviewDTO
�� ,#
updateCourseReviewDto
��- B
)
��B C
{
�� 	
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 

BadRequest
�� !
(
��! "
new
��" %
ResponseDTO
��& 1
{
�� 
Message
�� 
=
�� 
$str
�� ,
,
��, -
Result
�� 
=
�� 

ModelState
�� '
,
��' (
	IsSuccess
�� 
=
�� 
false
��  %
,
��% &

StatusCode
�� 
=
��  
$num
��! $
}
�� 
)
�� 
;
�� 
}
�� 
try
�� 
{
�� 
var
�� 
responseDto
�� 
=
��  !
await
��" '"
_courseReviewService
��( <
.
��< = 
UpdateCourseReview
��= O
(
��O P
User
��P T
,
��T U#
updateCourseReviewDto
��V k
)
��k l
;
��l m
return
�� 

StatusCode
�� !
(
��! "
responseDto
��" -
.
��- .

StatusCode
��. 8
,
��8 9
responseDto
��: E
)
��E F
;
��F G
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
return
�� 

StatusCode
�� !
(
��! "
$num
��" %
,
��% &
new
��' *
ResponseDTO
��+ 6
{
�� 
Message
�� 
=
�� 
ex
��  
.
��  !
Message
��! (
,
��( )
Result
�� 
=
�� 
null
�� !
,
��! "
	IsSuccess
�� 
=
�� 
false
��  %
,
��% &

StatusCode
�� 
=
��  
$num
��! $
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
[
�� 	

HttpDelete
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� '
)
��' (
]
��( )
[
�� 	
	Authorize
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4 
DeleteCourseReview
��5 G
(
��G H
[
��H I
	FromRoute
��I R
]
��R S
Guid
��T X
reviewId
��Y a
)
��a b
{
�� 	
try
�� 
{
�� 
var
�� 
responseDto
�� 
=
��  !
await
��" '"
_courseReviewService
��( <
.
��< = 
DeleteCourseReview
��= O
(
��O P
reviewId
��P X
)
��X Y
;
��Y Z
return
�� 

StatusCode
�� !
(
��! "
responseDto
��" -
.
��- .

StatusCode
��. 8
,
��8 9
responseDto
��: E
)
��E F
;
��F G
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
return
�� 

StatusCode
�� !
(
��! "
$num
��" %
,
��% &
new
��' *
ResponseDTO
��+ 6
{
�� 
Message
�� 
=
�� 
ex
��  
.
��  !
Message
��! (
,
��( )
Result
�� 
=
�� 
null
�� !
,
��! "
	IsSuccess
�� 
=
�� 
false
��  %
,
��% &

StatusCode
�� 
=
��  
$num
��! $
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
[
�� 	
HttpPut
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� ,
)
��, -
]
��- .
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +

Instructor
��+ 5
)
��5 6
]
��6 7
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4
MarkCourseReview
��5 E
(
��E F
[
��F G
	FromRoute
��G P
]
��P Q
Guid
��R V
reviewId
��W _
)
��_ `
{
�� 	
try
�� 
{
�� 
var
�� 
responseDto
�� 
=
��  !
await
��" '"
_courseReviewService
��( <
.
��< =
MarkCourseReview
��= M
(
��M N
reviewId
��N V
)
��V W
;
��W X
return
�� 

StatusCode
�� !
(
��! "
responseDto
��" -
.
��- .

StatusCode
��. 8
,
��8 9
responseDto
��: E
)
��E F
;
��F G
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
return
�� 

StatusCode
�� !
(
��! "
$num
��" %
,
��% &
new
��' *
ResponseDTO
��+ 6
{
�� 
Message
�� 
=
�� 
ex
��  
.
��  !
Message
��! (
,
��( )
Result
�� 
=
�� 
null
�� !
,
��! "
	IsSuccess
�� 
=
�� 
false
��  %
,
��% &

StatusCode
�� 
=
��  
$num
��! $
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
	Authorize
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4
GetCourseReports
��5 E
(
��E F
[
�� 
	FromQuery
�� 
]
�� 
Guid
�� 
?
�� 
courseId
�� &
,
��& '
[
�� 
	FromQuery
�� 
]
�� 
string
�� 
?
�� 
filterOn
��  (
,
��( )
[
�� 
	FromQuery
�� 
]
�� 
string
�� 
?
�� 
filterQuery
��  +
,
��+ ,
[
�� 
	FromQuery
�� 
]
�� 
string
�� 
?
�� 
sortBy
��  &
,
��& '
[
�� 
	FromQuery
�� 
]
�� 
bool
�� 
?
�� 
isAscending
�� )
,
��) *
[
�� 
	FromQuery
�� 
]
�� 
int
�� 

pageNumber
�� &
=
��' (
$num
��) *
,
��* +
[
�� 
	FromQuery
�� 
]
�� 
int
�� 
pageSize
�� $
=
��% &
$num
��' (
)
�� 	
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #"
_courseReportService
��$ 8
.
��8 9
GetCourseReports
��9 I
(
��I J
User
�� 
,
�� 
courseId
�� 
,
�� 
filterOn
�� 
,
�� 
filterQuery
�� 
,
�� 
sortBy
�� 
,
�� 
isAscending
�� 
,
�� 

pageNumber
�� 
,
�� 
pageSize
�� 
)
�� 
;
�� 
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� '
)
��' (
]
��( )
[
�� 	
	Authorize
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4
GetCourseReport
��5 D
(
��D E
[
��E F
	FromRoute
��F O
]
��O P
Guid
��Q U
reportId
��V ^
)
��^ _
{
�� 	
try
�� 
{
�� 
var
�� 
responseDto
�� 
=
��  !
await
��" '"
_courseReportService
��( <
.
��< =!
GetCourseReportById
��= P
(
��P Q
reportId
��Q Y
)
��Y Z
;
��Z [
return
�� 

StatusCode
�� !
(
��! "
responseDto
��" -
.
��- .

StatusCode
��. 8
,
��8 9
responseDto
��: E
)
��E F
;
��F G
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
return
�� 

StatusCode
�� !
(
��! "
$num
��" %
,
��% &
new
��' *
ResponseDTO
��+ 6
{
�� 
Message
�� 
=
�� 
ex
��  
.
��  !
Message
��! (
,
��( )
Result
�� 
=
�� 
null
�� !
,
��! "
	IsSuccess
�� 
=
�� 
false
��  %
,
��% &

StatusCode
�� 
=
��  
$num
��! $
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Student
��+ 2
)
��2 3
]
��3 4
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4 
CreateCourseReport
��5 G
(
��G H
[
�� 
FromBody
�� 
]
�� #
CreateCourseReportDTO
�� ,#
createCourseReportDTO
��- B
)
��B C
{
�� 	
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 

BadRequest
�� !
(
��! "
new
��" %
ResponseDTO
��& 1
{
�� 
Message
�� 
=
�� 
$str
�� ,
,
��, -
Result
�� 
=
�� 

ModelState
�� '
,
��' (
	IsSuccess
�� 
=
�� 
false
��  %
,
��% &

StatusCode
�� 
=
��  
$num
��! $
}
�� 
)
�� 
;
�� 
}
�� 
try
�� 
{
�� 
var
�� 
responseDto
�� 
=
��  !
await
��" '"
_courseReportService
��( <
.
��< = 
CreateCourseReport
��= O
(
��O P#
createCourseReportDTO
��P e
)
��e f
;
��f g
return
�� 

StatusCode
�� !
(
��! "
responseDto
��" -
.
��- .

StatusCode
��. 8
,
��8 9
responseDto
��: E
)
��E F
;
��F G
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
return
�� 

StatusCode
�� !
(
��! "
$num
��" %
,
��% &
new
��' *
ResponseDTO
��+ 6
{
�� 
Message
�� 
=
�� 
ex
��  
.
��  !
Message
��! (
,
��( )
Result
�� 
=
�� 
null
�� !
,
��! "
	IsSuccess
�� 
=
�� 
false
��  %
,
��% &

StatusCode
�� 
=
��  
$num
��! $
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
[
�� 	
HttpPut
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Student
��+ 2
)
��2 3
]
��3 4
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4 
UpdateCourseReport
��5 G
(
��G H
[
�� 
FromBody
�� 
]
�� #
UpdateCourseReportDTO
�� ,#
updateCourseReportDTO
��- B
)
��B C
{
�� 	
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 

BadRequest
�� !
(
��! "
new
��" %
ResponseDTO
��& 1
{
�� 
Message
�� 
=
�� 
$str
�� ,
,
��, -
Result
�� 
=
�� 

ModelState
�� '
,
��' (
	IsSuccess
�� 
=
�� 
false
��  %
,
��% &

StatusCode
�� 
=
��  
$num
��! $
}
�� 
)
�� 
;
�� 
}
�� 
try
�� 
{
�� 
var
�� 
responseDto
�� 
=
��  !
await
��" '"
_courseReportService
��( <
.
��< = 
UpdateCourseReport
��= O
(
��O P
User
��P T
,
��T U#
updateCourseReportDTO
��V k
)
��k l
;
��l m
return
�� 

StatusCode
�� !
(
��! "
responseDto
��" -
.
��- .

StatusCode
��. 8
,
��8 9
responseDto
��: E
)
��E F
;
��F G
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
return
�� 

StatusCode
�� !
(
��! "
$num
��" %
,
��% &
new
��' *
ResponseDTO
��+ 6
{
�� 
Message
�� 
=
�� 
ex
��  
.
��  !
Message
��! (
,
��( )
Result
�� 
=
�� 
null
�� !
,
��! "
	IsSuccess
�� 
=
�� 
false
��  %
,
��% &

StatusCode
�� 
=
��  
$num
��! $
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
[
�� 	

HttpDelete
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� '
)
��' (
]
��( )
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
AdminStudent
��+ 7
)
��7 8
]
��8 9
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4 
DeleteCourseReport
��5 G
(
��G H
[
��H I
	FromRoute
��I R
]
��R S
Guid
��T X
reportId
��Y a
)
��a b
{
�� 	
try
�� 
{
�� 
var
�� 
responseDto
�� 
=
��  !
await
��" '"
_courseReportService
��( <
.
��< = 
DeleteCourseReport
��= O
(
��O P
reportId
��P X
)
��X Y
;
��Y Z
return
�� 

StatusCode
�� !
(
��! "
responseDto
��" -
.
��- .

StatusCode
��. 8
,
��8 9
responseDto
��: E
)
��E F
;
��F G
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
return
�� 

StatusCode
�� !
(
��! "
$num
��" %
,
��% &
new
��' *
ResponseDTO
��+ 6
{
�� 
Message
�� 
=
�� 
ex
��  
.
��  !
Message
��! (
,
��( )
Result
�� 
=
�� 
null
�� !
,
��! "
	IsSuccess
�� 
=
�� 
false
��  %
,
��% &

StatusCode
�� 
=
��  
$num
��! $
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
��  
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Admin
��+ 0
)
��0 1
]
��1 2
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4$
GetTopPurchasedCourses
��5 K
(
�� 	
[
�� 
	FromQuery
�� 
]
�� 
int
�� 
?
�� 
year
�� !
,
��! "
[
�� 
	FromQuery
�� 
]
�� 
int
�� 
?
�� 
month
�� "
,
��" #
[
�� 
	FromQuery
�� 
]
�� 
int
�� 
?
�� 
quarter
�� $
,
��$ %
[
�� 
	FromQuery
�� 
]
�� 
int
�� 
top
�� 
,
��  
[
�� 
	FromQuery
�� 
]
�� 
int
�� 

pageNumber
�� &
,
��& '
[
�� 
	FromQuery
�� 
]
�� 
int
�� 
pageSize
�� $
,
��$ %
[
�� 
	FromQuery
�� 
]
�� 
string
�� 
?
�� 
byCategoryName
��  .
)
�� 	
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_courseService
��$ 2
.
��2 3$
GetTopPurchasedCourses
��3 I
(
�� 
year
�� 
,
�� 
month
�� 
,
�� 
quarter
�� 
,
�� 
top
�� 
,
�� 

pageNumber
�� 
,
�� 
pageSize
�� 
,
�� 
byCategoryName
�� 
)
�� 
;
�� 
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
��  
)
��  !
]
��! "
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Admin
��+ 0
)
��0 1
]
��1 2
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4&
GetLeastPurchasedCourses
��5 M
(
�� 	
[
�� 
	FromQuery
�� 
]
�� 
int
�� 
?
�� 
year
�� !
,
��! "
[
�� 
	FromQuery
�� 
]
�� 
int
�� 
?
�� 
month
�� "
,
��" #
[
�� 
	FromQuery
�� 
]
�� 
int
�� 
?
�� 
quarter
�� $
,
��$ %
[
�� 
	FromQuery
�� 
]
�� 
int
�� 
top
�� 
,
��  
[
�� 
	FromQuery
�� 
]
�� 
int
�� 

pageNumber
�� &
,
��& '
[
�� 
	FromQuery
�� 
]
�� 
int
�� 
pageSize
�� $
,
��$ %
[
�� 
	FromQuery
�� 
]
�� 
string
�� 
?
�� 
byCategoryName
��  .
)
�� 	
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_courseService
��$ 2
.
��2 3&
GetLeastPurchasedCourses
��3 K
(
�� 
year
�� 
,
�� 
month
�� 
,
�� 
quarter
�� 
,
�� 
top
�� 
,
�� 

pageNumber
�� 
,
�� 
pageSize
�� 
,
�� 
byCategoryName
�� 
)
�� 
;
�� 
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Student
��+ 2
)
��2 3
]
��3 4
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4
EnrollCourse
��5 A
(
��A B
[
��B C
FromBody
��C K
]
��K L
EnrollCourseDTO
��M \
enrollCourseDto
��] l
)
��l m
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_courseService
��$ 2
.
��2 3
EnrollCourse
��3 ?
(
��? @
User
��@ D
,
��D E
enrollCourseDto
��F U
)
��U V
;
��V W
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� )
)
��) *
]
��* +
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Student
��+ 2
)
��2 3
]
��3 4
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
SuggestCourses
��( 6
(
��6 7
[
��7 8
	FromRoute
��8 A
]
��A B
Guid
��C G
	studentId
��H Q
)
��Q R
{
�� 	
var
�� 
response
�� 
=
�� 
await
��  
_courseService
��! /
.
��/ 0
SuggestCourse
��0 =
(
��= >
	studentId
��> G
)
��G H
;
��H I
return
�� 

StatusCode
�� 
(
�� 
response
�� &
.
��& '

StatusCode
��' 1
,
��1 2
response
��3 ;
)
��; <
;
��< =
}
�� 	
[
�� 	
HttpGet
��	 
(
�� 
$str
�� .
)
��. /
]
��/ 0
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Student
��+ 2
)
��2 3
]
��3 4
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' ()
GetAllBookMarkedCoursesById
��) D
(
�� 	
[
�� 
	FromRoute
�� 
]
�� 
Guid
�� 
	studentId
�� &
,
��& '
[
�� 
	FromQuery
�� 
]
�� 
string
�� 
	sortOrder
�� (
=
��) *
$str
��+ 1
)
�� 	
{
�� 	
var
�� 
response
�� 
=
�� 
await
��  
_courseService
��! /
.
��/ 0)
GetAllBookMarkedCoursesById
��0 K
(
��K L
	studentId
��L U
,
��U V
	sortOrder
��W `
)
��` a
;
��a b
return
�� 

StatusCode
�� 
(
�� 
response
�� &
.
��& '

StatusCode
��' 1
,
��1 2
response
��3 ;
)
��; <
;
��< =
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Student
��+ 2
)
��2 3
]
��3 4
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '$
CreateBookMarkedCourse
��( >
(
��> ?%
CreateCourseBookmarkDTO
��? V%
createCourseBookmarkDto
��W n
)
��n o
{
�� 	
var
�� 
response
�� 
=
�� 
await
��  
_courseService
��! /
.
��/ 0$
CreateBookMarkedCourse
��0 F
(
��F G
User
��G K
,
��K L%
createCourseBookmarkDto
��M d
)
��d e
;
��e f
return
�� 

StatusCode
�� 
(
�� 
response
�� &
.
��& '

StatusCode
��' 1
,
��1 2
response
��3 ;
)
��; <
;
��< =
}
�� 	
[
�� 	

HttpDelete
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� /
)
��/ 0
]
��0 1
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Student
��+ 2
)
��2 3
]
��3 4
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '$
DeleteBookMarkedCourse
��( >
(
��> ?
[
��? @
	FromRoute
��@ I
]
��I J
Guid
��K O
bookmarkedId
��P \
)
��\ ]
{
�� 	
var
�� 
response
�� 
=
�� 
await
��  
_courseService
��! /
.
��/ 0$
DeleteBookMarkedCourse
��0 F
(
��F G
bookmarkedId
��G S
)
��S T
;
��T U
return
�� 

StatusCode
�� 
(
�� 
response
�� &
.
��& '

StatusCode
��' 1
,
��1 2
response
��3 ;
)
��; <
;
��< =
}
�� 	
[
�� 	
HttpPut
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Student
��+ 2
)
��2 3
]
��3 4
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4"
UpdateCourseProgress
��5 I
(
�� 	
[
�� 
FromBody
�� 
]
�� 
UpdateProgressDTO
�� (
updateProgressDto
��) :
)
�� 	
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #$
_courseProgressService
��$ :
.
��: ;
UpdateProgress
��; I
(
��I J
updateProgressDto
��J [
)
��[ \
;
��\ ]
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Student
��+ 2
)
��2 3
]
��3 4
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4
GetCourseProgress
��5 F
(
�� 	
[
�� 
	FromQuery
�� 
]
�� 
GetProgressDTO
�� &
getProgressDto
��' 5
)
�� 	
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #$
_courseProgressService
��$ :
.
��: ;
GetProgress
��; F
(
��F G
getProgressDto
��G U
)
��U V
;
��V W
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� $
)
��$ %
]
��% &
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Student
��+ 2
)
��2 3
]
��3 4
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4#
GetProgressPercentage
��5 J
(
�� 	
[
�� 
	FromQuery
�� 
]
�� 
GetPercentageDTO
�� (
getPercentageDto
��) 9
)
�� 	
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #$
_courseProgressService
��$ :
.
��: ;
GetPercentage
��; H
(
��H I
getPercentageDto
��I Y
)
��Y Z
;
��Z [
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� %
)
��% &
]
��& '
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4&
GetBestCoursesSuggestion
��5 M
(
��M N
)
��N O
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_courseService
��$ 2
.
��2 3&
GetBestCoursesSuggestion
��3 K
(
��K L
)
��L M
;
��M N
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� %
)
��% &
]
��& '
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4/
!GetTopCoursesByTrendingCategories
��5 V
(
��V W
)
��W X
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_courseService
��$ 2
.
��2 3/
!GetTopCoursesByTrendingCategories
��3 T
(
��T U
)
��U V
;
��V W
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� !
)
��! "
]
��" #
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4 
GetTopRatedCourses
��5 G
(
��G H
)
��H I
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_courseService
��$ 2
.
��2 3 
GetTopRatedCourses
��3 E
(
��E F
)
��F G
;
��G H
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
}
�� 
}�� �
gD:\FPT\Semester 6\Project_Cursus\Backend_Cursus\Cursus.LMS\Cursus.LMS.API\Controllers\CartController.cs
	namespace 	
Cursus
 
. 
LMS 
. 
API 
. 
Controllers $
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
[ 
	Authorize 
( 
Roles 
= 
StaticUserRoles &
.& '
Student' .
). /
]/ 0
public 

class 
CartController 
:  !
ControllerBase" 0
{ 
private 
readonly 
ICartService %
_cartService& 2
;2 3
public 
CartController 
( 
ICartService *
cartService+ 6
)6 7
{ 	
_cartService 
= 
cartService &
;& '
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
ResponseDTO' 2
>2 3
>3 4
GetCart5 <
(< =
)= >
{ 	
var 
responseDto 
= 
await #
_cartService$ 0
.0 1
GetCart1 8
(8 9
User9 =
)= >
;> ?
return 

StatusCode 
( 
responseDto )
.) *

StatusCode* 4
,4 5
responseDto6 A
)A B
;B C
} 	
[ 	
HttpPost	 
] 
[ 	
Route	 
( 
$str 
) 
] 
public 
async 
Task 
< 
ActionResult &
<& '
ResponseDTO' 2
>2 3
>3 4
	AddToCart5 >
(> ?
[? @
FromBody@ H
]H I
AddToCartDTOJ V
addToCartDtoW c
)c d
{ 	
var   
responseDto   
=   
await   #
_cartService  $ 0
.  0 1
	AddToCart  1 :
(!! 
User"" 
,"" 
addToCartDto## 
)$$ 
;$$ 
return%% 

StatusCode%% 
(%% 
responseDto%% )
.%%) *

StatusCode%%* 4
,%%4 5
responseDto%%6 A
)%%A B
;%%B C
}&& 	
[(( 	

HttpDelete((	 
](( 
[)) 	
Route))	 
()) 
$str)) )
)))) *
]))* +
public** 
async** 
Task** 
<** 
ActionResult** &
<**& '
ResponseDTO**' 2
>**2 3
>**3 4
RemoveFromCart**5 C
(**C D
[**D E
	FromRoute**E N
]**N O
Guid**P T
cartDetailsId**U b
)**b c
{++ 	
var,, 
responseDto,, 
=,, 
await,, #
_cartService,,$ 0
.,,0 1
RemoveFromCart,,1 ?
(-- 
User.. 
,.. 
cartDetailsId// 
)00 
;00 
return11 

StatusCode11 
(11 
responseDto11 )
.11) *

StatusCode11* 4
,114 5
responseDto116 A
)11A B
;11B C
}22 	
}33 
}44 �P
kD:\FPT\Semester 6\Project_Cursus\Backend_Cursus\Cursus.LMS\Cursus.LMS.API\Controllers\CategoryController.cs
	namespace 	
Cursus
 
. 
LMS 
. 
API 
. 
Controllers $
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class 
CategoryController #
:$ %
ControllerBase& 4
{ 
private 
readonly 
ICategoryService )
_categoryService* :
;: ;
public 
CategoryController !
(! "
ICategoryService" 2
categoryService3 B
)B C
{ 	
_categoryService 
= 
categoryService .
;. /
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
ResponseDTO' 2
>2 3
>3 4
GetAll5 ;
( 	
[ 
	FromQuery 
] 
string 
? 
filterOn  (
,( )
[ 
	FromQuery 
] 
string 
? 
filterQuery  +
,+ ,
[ 
	FromQuery 
] 
string 
? 
sortBy  &
,& '
[ 
	FromQuery 
] 
bool 
? 
isAscending )
,) *
[ 
	FromQuery 
] 
int 

pageNumber &
=' (
$num) *
,* +
[ 
	FromQuery 
] 
int 
pageSize $
=% &
$num' )
) 	
{ 	
var 
responseDto 
= 
await   
_categoryService   &
.  & '
GetAll  ' -
(  - .
User  . 2
,  2 3
filterOn  4 <
,  < =
filterQuery  > I
,  I J
sortBy  K Q
,  Q R
isAscending  S ^
,  ^ _

pageNumber  ` j
,  j k
pageSize  l t
)  t u
;  u v
return!! 

StatusCode!! 
(!! 
responseDto!! )
.!!) *

StatusCode!!* 4
,!!4 5
responseDto!!6 A
)!!A B
;!!B C
}"" 	
[$$ 	
HttpGet$$	 
]$$ 
[%% 	
Route%%	 
(%% 
$str%% 
)%% 
]%% 
public&& 
async&& 
Task&& 
<&& 
ActionResult&& &
<&&& '
ResponseDTO&&' 2
>&&2 3
>&&3 4
Search&&5 ;
('' 	
[(( 
	FromQuery(( 
](( 
string(( 
?(( 
filterOn((  (
,((( )
[)) 
	FromQuery)) 
])) 
string)) 
?)) 
filterQuery))  +
,))+ ,
[** 
	FromQuery** 
]** 
string** 
?** 
sortBy**  &
,**& '
[++ 
	FromQuery++ 
]++ 
bool++ 
?++ 
isAscending++ )
,++) *
[,, 
	FromQuery,, 
],, 
int,, 

pageNumber,, &
=,,' (
$num,,) *
,,,* +
[-- 
	FromQuery-- 
]-- 
int-- 
pageSize-- $
=--% &
$num--' (
).. 	
{// 	
var00 
responseDto00 
=00 
await00 #
_categoryService00$ 4
.004 5
Search005 ;
(00; <
User00< @
,00@ A
filterOn00B J
,00J K
filterQuery00L W
,00W X
sortBy00Y _
,00_ `
isAscending00a l
,00l m

pageNumber11 
,11 
pageSize11 $
)11$ %
;11% &
return22 

StatusCode22 
(22 
responseDto22 )
.22) *

StatusCode22* 4
,224 5
responseDto226 A
)22A B
;22B C
}33 	
[55 	
HttpGet55	 
]55 
[66 	
Route66	 
(66 
$str66 
)66 
]66  
public77 
async77 
Task77 
<77 
ActionResult77 &
<77& '
ResponseDTO77' 2
>772 3
>773 4
GetSubCategory775 C
(77C D
[77D E
	FromRoute77E N
]77N O
Guid77P T
id77U W
)77W X
{88 	
var99 
responseDto99 
=99 
await99 #
_categoryService99$ 4
.994 5
GetSubCategory995 C
(99C D
id99D F
)99F G
;99G H
return:: 

StatusCode:: 
(:: 
responseDto:: )
.::) *

StatusCode::* 4
,::4 5
responseDto::6 A
)::A B
;::B C
};; 	
[== 	
HttpGet==	 
]== 
[>> 	
Route>>	 
(>> 
$str>> !
)>>! "
]>>" #
public?? 
async?? 
Task?? 
<?? 
ActionResult?? &
<??& '
ResponseDTO??' 2
>??2 3
>??3 4
GetParentCategory??5 F
(??F G
[??G H
	FromRoute??H Q
]??Q R
Guid??S W
id??X Z
)??Z [
{@@ 	
varAA 
responseDtoAA 
=AA 
awaitAA #
_categoryServiceAA$ 4
.AA4 5
GetParentCategoryAA5 F
(AAF G
idAAG I
)AAI J
;AAJ K
returnBB 

StatusCodeBB 
(BB 
responseDtoBB )
.BB) *

StatusCodeBB* 4
,BB4 5
responseDtoBB6 A
)BBA B
;BBB C
}CC 	
[EE 	
HttpGetEE	 
]EE 
[FF 	
RouteFF	 
(FF 
$strFF 
)FF 
]FF 
[GG 	
	AuthorizeGG	 
]GG 
publicHH 
asyncHH 
TaskHH 
<HH 
ActionResultHH &
<HH& '
ResponseDTOHH' 2
>HH2 3
>HH3 4
GetByIdHH5 <
(HH< =
[HH= >
	FromRouteHH> G
]HHG H
GuidHHI M
idHHN P
)HHP Q
{II 	
varJJ 

responeDtoJJ 
=JJ 
awaitJJ "
_categoryServiceJJ# 3
.JJ3 4
GetJJ4 7
(JJ7 8
UserJJ8 <
,JJ< =
idJJ> @
)JJ@ A
;JJA B
returnKK 

StatusCodeKK 
(KK 

responeDtoKK (
.KK( )

StatusCodeKK) 3
,KK3 4

responeDtoKK5 ?
)KK? @
;KK@ A
}LL 	
[OO 	
HttpPostOO	 
]OO 
[PP 	
	AuthorizePP	 
(PP 
RolesPP 
=PP 
StaticUserRolesPP *
.PP* +
AdminPP+ 0
)PP0 1
]PP1 2
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
ActionResultQQ &
<QQ& '
ResponseDTOQQ' 2
>QQ2 3
>QQ3 4
CreateQQ5 ;
(QQ; <
CreateCategoryDTOQQ< M
createCategoryDtoQQN _
)QQ_ `
{RR 	
varSS 

responeDtoSS 
=SS 
awaitSS "
_categoryServiceSS# 3
.SS3 4
CreateCategorySS4 B
(SSB C
UserSSC G
,SSG H
createCategoryDtoSSI Z
)SSZ [
;SS[ \
returnTT 

StatusCodeTT 
(TT 

responeDtoTT (
.TT( )

StatusCodeTT) 3
,TT3 4

responeDtoTT5 ?
)TT? @
;TT@ A
}UU 	
[WW 	
HttpPutWW	 
]WW 
[XX 	
	AuthorizeXX	 
(XX 
RolesXX 
=XX 
StaticUserRolesXX *
.XX* +
AdminXX+ 0
)XX0 1
]XX1 2
publicYY 
asyncYY 
TaskYY 
<YY 
ActionResultYY &
<YY& '
ResponseDTOYY' 2
>YY2 3
>YY3 4
UpdateYY5 ;
(YY; <
[YY< =
FromBodyYY= E
]YYE F
UpdateCategoryDTOYYG X
updateCategoryDtoYYY j
)YYj k
{ZZ 	
var[[ 

responeDto[[ 
=[[ 
await[[ "
_categoryService[[# 3
.[[3 4
Update[[4 :
([[: ;
User[[; ?
,[[? @
updateCategoryDto[[A R
)[[R S
;[[S T
return\\ 

StatusCode\\ 
(\\ 

responeDto\\ (
.\\( )

StatusCode\\) 3
,\\3 4

responeDto\\5 ?
)\\? @
;\\@ A
}]] 	
[__ 	

HttpDelete__	 
]__ 
[`` 	
Route``	 
(`` 
$str`` 
)`` 
]`` 
[aa 	
	Authorizeaa	 
(aa 
Rolesaa 
=aa 
StaticUserRolesaa *
.aa* +
Adminaa+ 0
)aa0 1
]aa1 2
publicbb 
asyncbb 
Taskbb 
<bb 
ActionResultbb &
<bb& '
ResponseDTObb' 2
>bb2 3
>bb3 4
Deletebb5 ;
(bb; <
[bb< =
	FromRoutebb= F
]bbF G
GuidbbH L
idbbM O
)bbO P
{cc 	
vardd 

responeDtodd 
=dd 
awaitdd "
_categoryServicedd# 3
.dd3 4
Deletedd4 :
(dd: ;
Userdd; ?
,dd? @
idddA C
)ddC D
;ddD E
returnee 

StatusCodeee 
(ee 

responeDtoee (
.ee( )

StatusCodeee) 3
,ee3 4

responeDtoee5 ?
)ee? @
;ee@ A
}ff 	
}gg 
}hh և
gD:\FPT\Semester 6\Project_Cursus\Backend_Cursus\Cursus.LMS\Cursus.LMS.API\Controllers\AuthController.cs
	namespace

 	
Cursus


 
.

 
LMS

 
.

 
API

 
.

 
Controllers

 $
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
AuthController 
:  !
ControllerBase" 0
{ 
private 
readonly 
IEmailService &
_emailService' 4
;4 5
private 
readonly 
IAuthService %
_authService& 2
;2 3
private 
readonly 
UserManager $
<$ %
ApplicationUser% 4
>4 5
_userManager6 B
;B C
public 
AuthController 
( 
IEmailService +
emailService, 8
,8 9
IAuthService: F
authServiceG R
,R S
UserManager 
< 
ApplicationUser '
>' (
userManager) 4
)4 5
{ 	
_emailService 
= 
emailService (
;( )
_authService 
= 
authService &
;& '
_userManager 
= 
userManager &
;& '
} 	
[   	
HttpPost  	 
]   
[!! 	
Route!!	 
(!! 
$str!!  
)!!  !
]!!! "
public"" 
async"" 
Task"" 
<"" 
ActionResult"" &
<""& '
ResponseDTO""' 2
>""2 3
>""3 4
SignUpStudent""5 B
(""B C
[""C D
FromBody""D L
]""L M
RegisterStudentDTO""N `
registerStudentDTO""a s
)""s t
{## 	
var$$ 
responseDto$$ 
=$$ 
new$$ !
ResponseDTO$$" -
($$- .
)$$. /
;$$/ 0
if%% 
(%% 
!%% 

ModelState%% 
.%% 
IsValid%% #
)%%# $
{&& 
responseDto'' 
.'' 
	IsSuccess'' %
=''& '
false''( -
;''- .
responseDto(( 
.(( 
Message(( #
=(($ %
$str((& ;
;((; <
responseDto)) 
.)) 
Result)) "
=))# $

ModelState))% /
.))/ 0
Values))0 6
.))6 7

SelectMany))7 A
())A B
v))B C
=>))D F
v))G H
.))H I
Errors))I O
.))O P
Select))P V
())V W
e))W X
=>))Y [
e))\ ]
.))] ^
ErrorMessage))^ j
)))j k
)))k l
;))l m
return** 

BadRequest** !
(**! "
responseDto**" -
)**- .
;**. /
}++ 
try-- 
{.. 
var// 
result// 
=// 
await// "
_authService//# /
./// 0
SignUpStudent//0 =
(//= >
registerStudentDTO//> P
)//P Q
;//Q R
if00 
(00 
result00 
.00 
	IsSuccess00 $
)00$ %
{11 
return22 
Ok22 
(22 
result22 $
)22$ %
;22% &
}33 
else44 
{55 
return66 

BadRequest66 %
(66% &
result66& ,
)66, -
;66- .
}77 
}88 
catch99 
(99 
	Exception99 
e99 
)99 
{:: 
responseDto;; 
.;; 
	IsSuccess;; %
=;;& '
false;;( -
;;;- .
responseDto<< 
.<< 
Message<< #
=<<$ %
e<<& '
.<<' (
Message<<( /
;<</ 0
return== 

StatusCode== !
(==! "
StatusCodes==" -
.==- .(
Status500InternalServerError==. J
,==J K
responseDto==L W
)==W X
;==X Y
}>> 
}?? 	
[EE 	
HttpPostEE	 
]EE 
[FF 	
RouteFF	 
(FF 
$strFF #
)FF# $
]FF$ %
publicGG 
asyncGG 
TaskGG 
<GG 
ActionResultGG &
<GG& '
ResponseDTOGG' 2
>GG2 3
>GG3 4
SignUpInstructorGG5 E
(GGE F
[HH 
FromBodyHH 
]HH 
SignUpInstructorDTOHH *
signUpInstructorDtoHH+ >
)HH> ?
{II 	
varJJ 
resultJJ 
=JJ 
awaitJJ 
_authServiceJJ +
.JJ+ ,
SignUpInstructorJJ, <
(JJ< =
signUpInstructorDtoJJ= P
)JJP Q
;JJQ R
returnKK 

StatusCodeKK 
(KK 
resultKK $
.KK$ %

StatusCodeKK% /
,KK/ 0
resultKK1 7
)KK7 8
;KK8 9
}LL 	
[SS 	
HttpPostSS	 
]SS 
[TT 	
RouteTT	 
(TT 
$strTT "
)TT" #
]TT# $
[UU 	
	AuthorizeUU	 
]UU 
publicVV 
asyncVV 
TaskVV 
<VV 
ActionResultVV &
<VV& '
ResponseDTOVV' 2
>VV2 3
>VV3 4"
UploadInstructorDegreeVV5 K
(VVK L
DegreeUploadDTOVVL [
degreeUploadDtoVV\ k
)VVk l
{WW 	
varXX 
responseXX 
=XX 
awaitXX  
_authServiceXX! -
.XX- ."
UploadInstructorDegreeXX. D
(XXD E
degreeUploadDtoXXE T
.XXT U
FileXXU Y
,XXY Z
UserXX[ _
)XX_ `
;XX` a
returnYY 

StatusCodeYY 
(YY 
responseYY &
.YY& '

StatusCodeYY' 1
,YY1 2
responseYY3 ;
)YY; <
;YY< =
}ZZ 	
[`` 	
HttpGet``	 
]`` 
[aa 	
Routeaa	 
(aa 
$straa "
)aa" #
]aa# $
[bb 	
	Authorizebb	 
]bb 
publiccc 
asynccc 
Taskcc 
<cc 
IActionResultcc '
>cc' (
GetInstructorDegreecc) <
(cc< =
[cc= >
	FromQuerycc> G
]ccG H
boolccI M
DownloadccN V
=ccW X
falseccY ^
)cc^ _
{dd 	
varee 
degreeResponseDtoee !
=ee" #
awaitee$ )
_authServiceee* 6
.ee6 7
GetInstructorDegreeee7 J
(eeJ K
UsereeK O
)eeO P
;eeP Q
ifff 
(ff 
degreeResponseDtoff !
.ff! "
Streamff" (
isff) +
nullff, 0
)ff0 1
{gg 
returnhh 
NotFoundhh 
(hh  
$strhh  =
)hh= >
;hh> ?
}ii 
ifkk 
(kk 
Downloadkk 
)kk 
{ll 
returnmm 
Filemm 
(mm 
degreeResponseDtomm -
.mm- .
Streammm. 4
,mm4 5
degreeResponseDtomm6 G
.mmG H
ContentTypemmH S
,mmS T
degreeResponseDtommU f
.mmf g
FileNamemmg o
)mmo p
;mmp q
}nn 
returnpp 
Filepp 
(pp 
degreeResponseDtopp )
.pp) *
Streampp* 0
,pp0 1
degreeResponseDtopp2 C
.ppC D
ContentTypeppD O
)ppO P
;ppP Q
}qq 	
[yy 	
HttpGetyy	 
]yy 
[zz 	
Routezz	 
(zz 
$strzz 3
)zz3 4
]zz4 5
public{{ 
async{{ 
Task{{ 
<{{ 
IActionResult{{ '
>{{' (#
DisplayInstructorDegree{{) @
({{@ A
[{{A B
	FromRoute{{B K
]{{K L
string{{M S
userId{{T Z
,{{Z [
[|| 
	FromQuery|| 
]|| 
bool|| 
Download|| %
=||& '
false||( -
)||- .
{}} 	
var~~ 
degreeResponseDto~~ !
=~~" #
await~~$ )
_authService~~* 6
.~~6 7#
DisplayInstructorDegree~~7 N
(~~N O
userId~~O U
)~~U V
;~~V W
if 
( 
degreeResponseDto !
.! "
Stream" (
is) +
null, 0
)0 1
{
�� 
return
�� 
NotFound
�� 
(
��  
$str
��  =
)
��= >
;
��> ?
}
�� 
if
�� 
(
�� 
Download
�� 
)
�� 
{
�� 
return
�� 
File
�� 
(
�� 
degreeResponseDto
�� -
.
��- .
Stream
��. 4
,
��4 5
degreeResponseDto
��6 G
.
��G H
ContentType
��H S
,
��S T
degreeResponseDto
��U f
.
��f g
FileName
��g o
)
��o p
;
��p q
}
�� 
return
�� 
File
�� 
(
�� 
degreeResponseDto
�� )
.
��) *
Stream
��* 0
,
��0 1
degreeResponseDto
��2 C
.
��C D
ContentType
��D O
)
��O P
;
��P Q
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
	Authorize
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4
UploadUserAvatar
��5 E
(
��E F
AvatarUploadDTO
��F U
avatarUploadDto
��V e
)
��e f
{
�� 	
var
�� 
response
�� 
=
�� 
await
��  
_authService
��! -
.
��- .
UploadUserAvatar
��. >
(
��> ?
avatarUploadDto
��? N
.
��N O
File
��O S
,
��S T
User
��U Y
)
��Y Z
;
��Z [
return
�� 

StatusCode
�� 
(
�� 
response
�� &
.
��& '

StatusCode
��' 1
,
��1 2
response
��3 ;
)
��; <
;
��< =
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
	Authorize
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
GetUserAvatar
��) 6
(
��6 7
)
��7 8
{
�� 	
var
�� 
stream
�� 
=
�� 
await
�� 
_authService
�� +
.
��+ ,
GetUserAvatar
��, 9
(
��9 :
User
��: >
)
��> ?
;
��? @
if
�� 
(
�� 
stream
�� 
is
�� 
null
�� 
)
�� 
{
�� 
return
�� 
NotFound
�� 
(
��  
$str
��  =
)
��= >
;
��> ?
}
�� 
return
�� 
File
�� 
(
�� 
stream
�� 
,
�� 
$str
��  +
)
��+ ,
;
��, -
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� -
)
��- .
]
��. /
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
DisplayUserAvatar
��) :
(
��: ;
[
��; <
	FromRoute
��< E
]
��E F
string
��G M
userId
��N T
)
��T U
{
�� 	
var
�� 
stream
�� 
=
�� 
await
�� 
_authService
�� +
.
��+ ,
DisplayUserAvatar
��, =
(
��= >
userId
��> D
)
��D E
;
��E F
if
�� 
(
�� 
stream
�� 
is
�� 
null
�� 
)
�� 
{
�� 
return
�� 
NotFound
�� 
(
��  
$str
��  =
)
��= >
;
��> ?
}
�� 
return
�� 
File
�� 
(
�� 
stream
�� 
,
�� 
$str
��  +
)
��+ ,
;
��, -
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
��  
)
��  !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4
ForgotPassword
��5 C
(
��C D
[
��D E
FromBody
��E M
]
��M N
ForgotPasswordDTO
��O `
forgotPasswordDto
��a r
)
��r s
{
�� 	
var
�� 
result
�� 
=
�� 
await
�� 
_authService
�� +
.
��+ ,
ForgotPassword
��, :
(
��: ;
forgotPasswordDto
��; L
)
��L M
;
��M N
return
�� 

StatusCode
�� 
(
�� 
result
�� $
.
��$ %

StatusCode
��% /
,
��/ 0
result
��1 7
)
��7 8
;
��8 9
}
�� 	
[
�� 	
HttpPost
��	 
(
�� 
$str
�� "
)
��" #
]
��# $
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4
ResetPassword
��5 B
(
��B C
[
��C D
FromBody
��D L
]
��L M
ResetPasswordDTO
��N ^
resetPasswordDto
��_ o
)
��o p
{
�� 	
var
�� 
result
�� 
=
�� 
await
�� 
_authService
�� +
.
��+ ,
ResetPassword
��, 9
(
��9 :
resetPasswordDto
��: J
.
��J K
Email
��K P
,
��P Q
resetPasswordDto
��R b
.
��b c
Token
��c h
,
��h i
resetPasswordDto
��  
.
��  !
Password
��! )
)
��) *
;
��* +
return
�� 

StatusCode
�� 
(
�� 
result
�� $
.
��$ %

StatusCode
��% /
,
��/ 0
result
��1 7
)
��7 8
;
��8 9
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� "
)
��" #
]
��# $
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4
SendVerifyEmail
��5 D
(
��D E
[
��E F
FromBody
��F N
]
��N O 
SendVerifyEmailDTO
��P b
email
��c h
)
��h i
{
�� 	
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� )
.
��) *
FindByEmailAsync
��* :
(
��: ;
email
��; @
.
��@ A
Email
��A F
)
��F G
;
��G H
if
�� 
(
�� 
user
�� 
.
�� 
EmailConfirmed
�� #
)
��# $
{
�� 
return
�� 
new
�� 
ResponseDTO
�� &
(
��& '
)
��' (
{
�� 
	IsSuccess
�� 
=
�� 
true
��  $
,
��$ %
Message
�� 
=
�� 
$str
�� =
,
��= >

StatusCode
�� 
=
��  
$num
��! $
,
��$ %
Result
�� 
=
�� 
email
�� "
}
�� 
;
�� 
}
�� 
var
�� 
token
�� 
=
�� 
await
�� 
_userManager
�� *
.
��* +1
#GenerateEmailConfirmationTokenAsync
��+ N
(
��N O
user
��O S
)
��S T
;
��T U
var
�� 
confirmationLink
��  
=
��! "
$"
�� 
$str
�� N
{
��N O
user
��O S
.
��S T
Id
��T V
}
��V W
$str
��W ^
{
��^ _
Uri
��_ b
.
��b c
EscapeDataString
��c s
(
��s t
token
��t y
)
��y z
}
��z {
"
��{ |
;
��| }
var
�� 
responseDto
�� 
=
�� 
await
�� #
_authService
��$ 0
.
��0 1
SendVerifyEmail
��1 @
(
��@ A
user
��A E
.
��E F
Email
��F K
,
��K L
confirmationLink
��M ]
)
��] ^
;
��^ _
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	

ActionName
��	 
(
�� 
$str
�� "
)
��" #
]
��# $
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4
VerifyEmail
��5 @
(
��@ A
[
�� 
	FromQuery
�� 
]
�� 
string
�� 
userId
�� %
,
��% &
[
�� 
	FromQuery
�� 
]
�� 
string
�� 
token
�� $
)
��$ %
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_authService
��$ 0
.
��0 1
VerifyEmail
��1 <
(
��< =
userId
��= C
,
��C D
token
��E J
)
��J K
;
��K L
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
��  
)
��  !
]
��! "
[
�� 	
	Authorize
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4
ChangePassword
��5 C
(
��C D
ChangePasswordDTO
��D U
changePasswordDto
��V g
)
��g h
{
�� 	
var
�� 
userId
�� 
=
�� 
User
�� 
.
�� 
FindFirstValue
�� ,
(
��, -

ClaimTypes
��- 7
.
��7 8
NameIdentifier
��8 F
)
��F G
;
��G H
var
�� 
response
�� 
=
�� 
await
��  
_authService
��! -
.
��- .
ChangePassword
��. <
(
��< =
userId
��= C
,
��C D
changePasswordDto
��E V
.
��V W
OldPassword
��W b
,
��b c
changePasswordDto
�� !
.
��! "
NewPassword
��" -
,
��- .
changePasswordDto
��/ @
.
��@ A 
ConfirmNewPassword
��A S
)
��S T
;
��T U
if
�� 
(
�� 
response
�� 
.
�� 
	IsSuccess
�� "
)
��" #
{
�� 
return
�� 
Ok
�� 
(
�� 
response
�� "
.
��" #
Message
��# *
)
��* +
;
��+ ,
}
�� 
else
�� 
{
�� 
return
�� 

BadRequest
�� !
(
��! "
response
��" *
.
��* +
Message
��+ 2
)
��2 3
;
��3 4
}
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4
SignIn
��5 ;
(
��; <
[
��< =
FromBody
��= E
]
��E F
SignDTO
��G N
signDto
��O V
)
��V W
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_authService
��$ 0
.
��0 1
SignIn
��1 7
(
��7 8
signDto
��8 ?
)
��? @
;
��@ A
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4
Refresh
��5 <
(
��< =
[
��= >
FromBody
��> F
]
��F G
JwtTokenDTO
��H S
token
��T Y
)
��Y Z
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_authService
��$ 0
.
��0 1
Refresh
��1 8
(
��8 9
token
��9 >
.
��> ?
RefreshToken
��? K
)
��K L
;
��L M
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� "
)
��" #
]
��# $
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4
CheckEmailExist
��5 D
(
��D E
[
��E F
FromBody
��F N
]
��N O
string
��P V
email
��W \
)
��\ ]
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_authService
��$ 0
.
��0 1
CheckEmailExist
��1 @
(
��@ A
email
��A F
)
��F G
;
��G H
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� )
)
��) *
]
��* +
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4#
CheckPhoneNumberExist
��5 J
(
��J K
[
��K L
FromBody
��L T
]
��T U
string
��V \
phoneNumber
��] h
)
��h i
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_authService
��$ 0
.
��0 1#
CheckPhoneNumberExist
��1 F
(
��F G
phoneNumber
��G R
)
��R S
;
��S T
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
��  
)
��  !
]
��! "
[
�� 	
	Authorize
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4$
CompleteStudentProfile
��5 K
(
��K L'
CompleteStudentProfileDTO
�� %'
completeStudentProfileDto
��& ?
)
��? @
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_authService
��$ 0
.
��0 1$
CompleteStudentProfile
��1 G
(
��G H
User
��H L
,
��L M'
completeStudentProfileDto
��N g
)
��g h
;
��h i
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� #
)
��# $
]
��$ %
[
�� 	
	Authorize
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4'
CompleteInstructorProfile
��5 N
(
��N O*
CompleteInstructorProfileDTO
�� (*
completeInstructorProfileDto
��) E
)
��E F
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_authService
��$ 0
.
��0 1'
CompleteInstructorProfile
��1 J
(
��J K
User
��K O
,
��O P*
completeInstructorProfileDto
��Q m
)
��m n
;
��n o
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
��  
]
��  !
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4
SignInByGoogle
��5 C
(
��C D
SignInByGoogleDTO
��D U
signInByGoogleDto
��V g
)
��g h
{
�� 	
var
�� 
response
�� 
=
�� 
await
��  
_authService
��! -
.
��- .
SignInByGoogle
��. <
(
��< =
signInByGoogleDto
��= N
)
��N O
;
��O P
return
�� 

StatusCode
�� 
(
�� 
response
�� &
.
��& '

StatusCode
��' 1
,
��1 2
response
��3 ;
)
��; <
;
��< =
}
�� 	
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4
GetUserInfo
��5 @
(
��@ A
)
��A B
{
�� 	
var
�� 
response
�� 
=
�� 
await
��  
_authService
��! -
.
��- .
GetUserInfo
��. 9
(
��9 :
User
��: >
)
��> ?
;
��? @
return
�� 

StatusCode
�� 
(
�� 
response
�� &
.
��& '

StatusCode
��' 1
,
��1 2
response
��3 ;
)
��; <
;
��< =
}
�� 	
[
�� 	
HttpPut
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
��  
)
��  !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4
UpdateStudent
��5 B
(
��B C
[
��C D
FromBody
��D L
]
��L M%
UpdateStudentProfileDTO
��N e

studentDto
��f p
)
��p q
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_authService
��$ 0
.
��0 1
UpdateStudent
��1 >
(
��> ?

studentDto
��? I
,
��I J
User
��K O
)
��O P
;
��P Q
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpPut
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� #
)
��# $
]
��$ %
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4
UpdateInstructor
��5 E
(
��E F
[
�� 
FromBody
�� 
]
�� '
UpdateIntructorProfileDTO
�� 0
instructorDto
��1 >
)
��> ?
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_authService
��$ 0
.
��0 1
UpdateInstructor
��1 A
(
��A B
instructorDto
��B O
,
��O P
User
��Q U
)
��U V
;
��V W
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Admin
��+ 0
)
��0 1
]
��1 2
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4
LockUser
��5 =
(
��= >
[
��> ?
FromBody
��? G
]
��G H
LockUserDTO
��I T
lockUserDto
��U `
)
��` a
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_authService
��$ 0
.
��0 1
LockUser
��1 9
(
��9 :
lockUserDto
��: E
)
��E F
;
��F G
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
StaticUserRoles
�� *
.
��* +
Admin
��+ 0
)
��0 1
]
��1 2
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
ResponseDTO
��' 2
>
��2 3
>
��3 4

UnlockUser
��5 ?
(
��? @
[
��@ A
FromBody
��A I
]
��I J
LockUserDTO
��K V
lockUserDto
��W b
)
��b c
{
�� 	
var
�� 
responseDto
�� 
=
�� 
await
�� #
_authService
��$ 0
.
��0 1

UnlockUser
��1 ;
(
��; <
lockUserDto
��< G
)
��G H
;
��H I
return
�� 

StatusCode
�� 
(
�� 
responseDto
�� )
.
��) *

StatusCode
��* 4
,
��4 5
responseDto
��6 A
)
��A B
;
��B C
}
�� 	
}
�� 
}�� 