; ModuleID = 'obj\Debug\120\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\120\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [266 x i64] [
	i64 15690660930947125, ; 0: Microsoft.DotNet.PlatformAbstractions.dll => 0x37be92af148835 => 20
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 36
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 37
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 123
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 66
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 90
	i64 295915112840604065, ; 6: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 91
	i64 634308326490598313, ; 7: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 81
	i64 668723562677762733, ; 8: Microsoft.Extensions.Configuration.Binder.dll => 0x947c88986577aad => 28
	i64 702024105029695270, ; 9: System.Drawing.Common => 0x9be17343c0e7726 => 112
	i64 720058930071658100, ; 10: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 75
	i64 872800313462103108, ; 11: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 72
	i64 940822596282819491, ; 12: System.Transactions => 0xd0e792aa81923a3 => 110
	i64 996343623809489702, ; 13: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 101
	i64 1000557547492888992, ; 14: Mono.Security.dll => 0xde2b1c9cba651a0 => 132
	i64 1120440138749646132, ; 15: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 103
	i64 1301485588176585670, ; 16: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 43
	i64 1315114680217950157, ; 17: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 61
	i64 1425944114962822056, ; 18: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 15
	i64 1518315023656898250, ; 19: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 45
	i64 1624659445732251991, ; 20: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 59
	i64 1628611045998245443, ; 21: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 83
	i64 1636321030536304333, ; 22: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 76
	i64 1672383392659050004, ; 23: Microsoft.Data.Sqlite.dll => 0x17357fd5bfb48e14 => 19
	i64 1731380447121279447, ; 24: Newtonsoft.Json => 0x18071957e9b889d7 => 39
	i64 1743969030606105336, ; 25: System.Memory.dll => 0x1833d297e88f2af8 => 51
	i64 1795316252682057001, ; 26: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 60
	i64 1825687700144851180, ; 27: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 117
	i64 1836611346387731153, ; 28: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 90
	i64 1875917498431009007, ; 29: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 57
	i64 1981742497975770890, ; 30: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 82
	i64 2133195048986300728, ; 31: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 39
	i64 2136356949452311481, ; 32: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 87
	i64 2165725771938924357, ; 33: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 64
	i64 2192948757939169934, ; 34: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 21
	i64 2262844636196693701, ; 35: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 72
	i64 2284400282711631002, ; 36: System.Web.Services => 0x1fb3d1f42fd4249a => 116
	i64 2287887973817120656, ; 37: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 105
	i64 2315304989185124968, ; 38: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 3
	i64 2329709569556905518, ; 39: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 79
	i64 2337758774805907496, ; 40: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 52
	i64 2470498323731680442, ; 41: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 67
	i64 2479423007379663237, ; 42: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 94
	i64 2497223385847772520, ; 43: System.Runtime => 0x22a7eb7046413568 => 53
	i64 2547086958574651984, ; 44: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 56
	i64 2592350477072141967, ; 45: System.Xml.dll => 0x23f9e10627330e8f => 54
	i64 2624866290265602282, ; 46: mscorlib.dll => 0x246d65fbde2db8ea => 38
	i64 2656907746661064104, ; 47: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 31
	i64 2783046991838674048, ; 48: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 52
	i64 2960931600190307745, ; 49: Xamarin.Forms.Core => 0x2917579a49927da1 => 99
	i64 3017704767998173186, ; 50: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 103
	i64 3289520064315143713, ; 51: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 78
	i64 3303437397778967116, ; 52: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 58
	i64 3494946837667399002, ; 53: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 29
	i64 3522470458906976663, ; 54: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 92
	i64 3523004241079211829, ; 55: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 26
	i64 3531994851595924923, ; 56: System.Numerics => 0x31042a9aade235bb => 109
	i64 3571415421602489686, ; 57: System.Runtime.dll => 0x319037675df7e556 => 53
	i64 3638003163729360188, ; 58: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 27
	i64 3647754201059316852, ; 59: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 127
	i64 3655542548057982301, ; 60: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 29
	i64 3716579019761409177, ; 61: netstandard.dll => 0x3393f0ed5c8c5c99 => 107
	i64 3727469159507183293, ; 62: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 89
	i64 3869221888984012293, ; 63: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 34
	i64 3966267475168208030, ; 64: System.Memory => 0x370b03412596249e => 51
	i64 4009997192427317104, ; 65: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 122
	i64 4187479170553454871, ; 66: System.Linq.Expressions => 0x3a1cea1e912fa117 => 123
	i64 4337444564132831293, ; 67: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 42
	i64 4513320955448359355, ; 68: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 23
	i64 4525561845656915374, ; 69: System.ServiceModel.Internals => 0x3ece06856b710dae => 106
	i64 4612482779465751747, ; 70: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 21
	i64 4636684751163556186, ; 71: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 96
	i64 4743821336939966868, ; 72: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 4
	i64 4782108999019072045, ; 73: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 63
	i64 4794310189461587505, ; 74: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 56
	i64 4795410492532947900, ; 75: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 92
	i64 5129462924058778861, ; 76: Microsoft.Data.Sqlite => 0x472f835a350f5ced => 19
	i64 5142919913060024034, ; 77: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 100
	i64 5205316157927637098, ; 78: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 85
	i64 5348796042099802469, ; 79: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 86
	i64 5376510917114486089, ; 80: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 94
	i64 5408338804355907810, ; 81: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 93
	i64 5423376490970181369, ; 82: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 117
	i64 5446034149219586269, ; 83: System.Diagnostics.Debug => 0x4b94333452e150dd => 10
	i64 5507995362134886206, ; 84: System.Core.dll => 0x4c705499688c873e => 47
	i64 5527431512186326818, ; 85: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 9
	i64 5692067934154308417, ; 86: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 98
	i64 5896680224035167651, ; 87: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 80
	i64 6025176081837716467, ; 88: SQLitePCLRaw.lib.e_sqlite3.dll => 0x539db9b9431df3f3 => 44
	i64 6085203216496545422, ; 89: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 101
	i64 6086316965293125504, ; 90: FormsViewGroup.dll => 0x5476f10882baef80 => 17
	i64 6183170893902868313, ; 91: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 42
	i64 6319713645133255417, ; 92: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 81
	i64 6401687960814735282, ; 93: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 79
	i64 6504860066809920875, ; 94: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 64
	i64 6548213210057960872, ; 95: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 70
	i64 6560151584539558821, ; 96: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 35
	i64 6591024623626361694, ; 97: System.Web.Services.dll => 0x5b7805f9751a1b5e => 116
	i64 6659513131007730089, ; 98: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 75
	i64 6814185388980153342, ; 99: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 120
	i64 6876862101832370452, ; 100: System.Xml.Linq => 0x5f6f85a57d108914 => 55
	i64 7036436454368433159, ; 101: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 77
	i64 7103753931438454322, ; 102: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 74
	i64 7112547816752919026, ; 103: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 3
	i64 7270811800166795866, ; 104: System.Linq => 0x64e71ccf51a90a5a => 8
	i64 7338192458477945005, ; 105: System.Reflection => 0x65d67f295d0740ad => 6
	i64 7473077275758116397, ; 106: Microsoft.DotNet.PlatformAbstractions => 0x67b5b430309b3e2d => 20
	i64 7488575175965059935, ; 107: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 55
	i64 7489048572193775167, ; 108: System.ObjectModel => 0x67ee71ff6b419e3f => 125
	i64 7635363394907363464, ; 109: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 99
	i64 7654504624184590948, ; 110: System.Net.Http => 0x6a3a4366801b8264 => 14
	i64 7735176074855944702, ; 111: Microsoft.CSharp => 0x6b58dda848e391fe => 130
	i64 7820441508502274321, ; 112: System.Data => 0x6c87ca1e14ff8111 => 108
	i64 7836164640616011524, ; 113: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 59
	i64 7972383140441761405, ; 114: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 25
	i64 8044118961405839122, ; 115: System.ComponentModel.Composition => 0x6fa2739369944712 => 115
	i64 8064050204834738623, ; 116: System.Collections.dll => 0x6fe942efa61731bf => 5
	i64 8083354569033831015, ; 117: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 78
	i64 8087206902342787202, ; 118: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 48
	i64 8103644804370223335, ; 119: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 111
	i64 8113615946733131500, ; 120: System.Reflection.Extensions => 0x70995ab73cf916ec => 12
	i64 8167236081217502503, ; 121: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 18
	i64 8185542183669246576, ; 122: System.Collections => 0x7198e33f4794aa70 => 5
	i64 8290740647658429042, ; 123: System.Runtime.Extensions => 0x730ea0b15c929a72 => 2
	i64 8318905602908530212, ; 124: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 105
	i64 8518412311883997971, ; 125: System.Collections.Immutable => 0x76377add7c28e313 => 46
	i64 8601935802264776013, ; 126: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 93
	i64 8626175481042262068, ; 127: Java.Interop => 0x77b654e585b55834 => 18
	i64 8638972117149407195, ; 128: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 130
	i64 8684531736582871431, ; 129: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 114
	i64 8725526185868997716, ; 130: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 48
	i64 8856627112618224845, ; 131: Remotion.Linq => 0x7ae90f6f3bb3eccd => 40
	i64 8941376889969657626, ; 132: System.Xml.XDocument => 0x7c1626e87187471a => 120
	i64 9111603110219107042, ; 133: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 26
	i64 9250544137016314866, ; 134: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 22
	i64 9312692141327339315, ; 135: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 98
	i64 9324707631942237306, ; 136: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 60
	i64 9584643793929893533, ; 137: System.IO.dll => 0x85037ebfbbd7f69d => 7
	i64 9659729154652888475, ; 138: System.Text.RegularExpressions => 0x860e407c9991dd9b => 126
	i64 9662334977499516867, ; 139: System.Numerics.dll => 0x8617827802b0cfc3 => 109
	i64 9678050649315576968, ; 140: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 67
	i64 9711637524876806384, ; 141: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 86
	i64 9793247711277112057, ; 142: SQLitePCLRaw.batteries_green.dll => 0x87e89ae814145af9 => 41
	i64 9808709177481450983, ; 143: Mono.Android.dll => 0x881f890734e555e7 => 37
	i64 9834056768316610435, ; 144: System.Transactions.dll => 0x8879968718899783 => 110
	i64 9864956466380592553, ; 145: Microsoft.EntityFrameworkCore.Sqlite => 0x88e75da3af4ed5a9 => 24
	i64 9933555792566666578, ; 146: System.Linq.Queryable.dll => 0x89db145cf475c552 => 13
	i64 9998632235833408227, ; 147: Mono.Security => 0x8ac2470b209ebae3 => 132
	i64 10038780035334861115, ; 148: System.Net.Http.dll => 0x8b50e941206af13b => 14
	i64 10080787879360088746, ; 149: CSlab13 => 0x8be6272a7d524aaa => 16
	i64 10205853378024263619, ; 150: Microsoft.Extensions.Configuration.Binder => 0x8da279930adb4fc3 => 28
	i64 10229024438826829339, ; 151: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 70
	i64 10360651442923773544, ; 152: System.Text.Encoding => 0x8fc86d98211c1e68 => 128
	i64 10430153318873392755, ; 153: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 68
	i64 10566960649245365243, ; 154: System.Globalization.dll => 0x92a562b96dcd13fb => 121
	i64 10714184849103829812, ; 155: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 2
	i64 10807679263882430897, ; 156: SQLitePCLRaw.batteries_green => 0x95fc97076a1149b1 => 41
	i64 10811915265162633087, ; 157: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 23
	i64 10822644899632537592, ; 158: System.Linq.Queryable => 0x9631c23204ca5ff8 => 13
	i64 10843244350976052224, ; 159: Remotion.Linq.dll => 0x967af14988b04c00 => 40
	i64 10847732767863316357, ; 160: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 61
	i64 10964653383833615866, ; 161: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 131
	i64 11002576679268595294, ; 162: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 33
	i64 11023048688141570732, ; 163: System.Core => 0x98f9bc61168392ac => 47
	i64 11037814507248023548, ; 164: System.Xml => 0x992e31d0412bf7fc => 54
	i64 11162124722117608902, ; 165: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 97
	i64 11226290749488709958, ; 166: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 35
	i64 11340910727871153756, ; 167: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 69
	i64 11392833485892708388, ; 168: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 88
	i64 11398376662953476300, ; 169: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x9e2f2b2f0b71c0cc => 24
	i64 11432101114902388181, ; 170: System.AppContext => 0x9ea6fb64e61a9dd5 => 1
	i64 11485890710487134646, ; 171: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 118
	i64 11529969570048099689, ; 172: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 97
	i64 11530571088791430846, ; 173: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 34
	i64 11578238080964724296, ; 174: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 77
	i64 11580057168383206117, ; 175: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 57
	i64 11597940890313164233, ; 176: netstandard => 0xa0f429ca8d1805c9 => 107
	i64 11672361001936329215, ; 177: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 74
	i64 11743665907891708234, ; 178: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 119
	i64 12123043025855404482, ; 179: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 12
	i64 12137774235383566651, ; 180: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 95
	i64 12184379703420269620, ; 181: System.Interactive.Async.dll => 0xa9179cc8ded83434 => 50
	i64 12201331334810686224, ; 182: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 122
	i64 12269460666702402136, ; 183: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 46
	i64 12279246230491828964, ; 184: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 45
	i64 12451044538927396471, ; 185: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 73
	i64 12466513435562512481, ; 186: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 84
	i64 12487638416075308985, ; 187: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 71
	i64 12538491095302438457, ; 188: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 65
	i64 12550732019250633519, ; 189: System.IO.Compression => 0xae2d28465e8e1b2f => 113
	i64 12700543734426720211, ; 190: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 66
	i64 12708238894395270091, ; 191: System.IO => 0xb05cbbf17d3ba3cb => 7
	i64 12708922737231849740, ; 192: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 129
	i64 12843321153144804894, ; 193: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 36
	i64 12843770487262409629, ; 194: System.AppContext.dll => 0xb23e3d357debf39d => 1
	i64 12963446364377008305, ; 195: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 112
	i64 13370592475155966277, ; 196: System.Runtime.Serialization => 0xb98de304062ea945 => 15
	i64 13401370062847626945, ; 197: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 95
	i64 13454009404024712428, ; 198: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 104
	i64 13491513212026656886, ; 199: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 62
	i64 13572454107664307259, ; 200: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 89
	i64 13647894001087880694, ; 201: System.Data.dll => 0xbd670f48cb071df6 => 108
	i64 13713329104121190199, ; 202: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 124
	i64 13955418299340266673, ; 203: Microsoft.Extensions.DependencyModel.dll => 0xc1ab9b0118299cb1 => 32
	i64 13959074834287824816, ; 204: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 73
	i64 13967638549803255703, ; 205: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 100
	i64 14025502616795887014, ; 206: System.Interactive.Async => 0xc2a49851d66e35a6 => 50
	i64 14124974489674258913, ; 207: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 65
	i64 14125464355221830302, ; 208: System.Threading.dll => 0xc407bafdbc707a9e => 11
	i64 14133832980772275001, ; 209: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 22
	i64 14172845254133543601, ; 210: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 87
	i64 14254574811015963973, ; 211: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 129
	i64 14261073672896646636, ; 212: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 88
	i64 14327695147300244862, ; 213: System.Reflection.dll => 0xc6d632d338eb4d7e => 6
	i64 14486659737292545672, ; 214: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 80
	i64 14644440854989303794, ; 215: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 85
	i64 14669215534098758659, ; 216: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 31
	i64 14792063746108907174, ; 217: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 104
	i64 14852515768018889994, ; 218: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 69
	i64 14954917835170835695, ; 219: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 30
	i64 14987728460634540364, ; 220: System.IO.Compression.dll => 0xcfff1ba06622494c => 113
	i64 14988210264188246988, ; 221: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 71
	i64 15076659072870671916, ; 222: System.ObjectModel.dll => 0xd13b0d8c1620662c => 125
	i64 15133485256822086103, ; 223: System.Linq.dll => 0xd204f0a9127dd9d7 => 8
	i64 15227001540531775957, ; 224: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 27
	i64 15234786388537674379, ; 225: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 124
	i64 15370334346939861994, ; 226: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 68
	i64 15391712275433856905, ; 227: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 30
	i64 15526743539506359484, ; 228: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 128
	i64 15582737692548360875, ; 229: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 83
	i64 15609085926864131306, ; 230: System.dll => 0xd89e9cf3334914ea => 49
	i64 15620595871140898079, ; 231: Microsoft.Extensions.DependencyModel => 0xd8c7812eef49651f => 32
	i64 15661133872274321916, ; 232: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 127
	i64 15755368083429170162, ; 233: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 9
	i64 15777549416145007739, ; 234: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 91
	i64 15810740023422282496, ; 235: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 102
	i64 15817206913877585035, ; 236: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 119
	i64 16124049915765081560, ; 237: CSlab13.dll => 0xdfc421f831d845d8 => 16
	i64 16154507427712707110, ; 238: System => 0xe03056ea4e39aa26 => 49
	i64 16321164108206115771, ; 239: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 33
	i64 16392891804791780225, ; 240: SQLitePCLRaw.lib.e_sqlite3 => 0xe37f403e4206b381 => 44
	i64 16565028646146589191, ; 241: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 115
	i64 16626058293873244974, ; 242: CSlab13.Droid.dll => 0xe6bb9fedfd407b2e => 0
	i64 16649271658787075731, ; 243: CSlab13.Droid => 0xe70e185caefb7693 => 0
	i64 16755018182064898362, ; 244: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 43
	i64 16822611501064131242, ; 245: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 111
	i64 16833383113903931215, ; 246: mscorlib => 0xe99c30c1484d7f4f => 38
	i64 16890310621557459193, ; 247: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 126
	i64 17024911836938395553, ; 248: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 58
	i64 17037200463775726619, ; 249: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 76
	i64 17187273293601214786, ; 250: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 4
	i64 17333249706306540043, ; 251: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 131
	i64 17544493274320527064, ; 252: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 63
	i64 17627500474728259406, ; 253: System.Globalization => 0xf4a176498a351f4e => 121
	i64 17685921127322830888, ; 254: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 10
	i64 17704177640604968747, ; 255: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 84
	i64 17710060891934109755, ; 256: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 82
	i64 17712670374920797664, ; 257: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 118
	i64 17882897186074144999, ; 258: FormsViewGroup => 0xf82cd03e3ac830e7 => 17
	i64 17892495832318972303, ; 259: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 102
	i64 17928294245072900555, ; 260: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 114
	i64 18017743553296241350, ; 261: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 25
	i64 18025913125965088385, ; 262: System.Threading => 0xfa28e87b91334681 => 11
	i64 18116111925905154859, ; 263: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 62
	i64 18129453464017766560, ; 264: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 106
	i64 18380184030268848184 ; 265: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 96
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [266 x i32] [
	i32 20, i32 36, i32 37, i32 123, i32 66, i32 90, i32 91, i32 81, ; 0..7
	i32 28, i32 112, i32 75, i32 72, i32 110, i32 101, i32 132, i32 103, ; 8..15
	i32 43, i32 61, i32 15, i32 45, i32 59, i32 83, i32 76, i32 19, ; 16..23
	i32 39, i32 51, i32 60, i32 117, i32 90, i32 57, i32 82, i32 39, ; 24..31
	i32 87, i32 64, i32 21, i32 72, i32 116, i32 105, i32 3, i32 79, ; 32..39
	i32 52, i32 67, i32 94, i32 53, i32 56, i32 54, i32 38, i32 31, ; 40..47
	i32 52, i32 99, i32 103, i32 78, i32 58, i32 29, i32 92, i32 26, ; 48..55
	i32 109, i32 53, i32 27, i32 127, i32 29, i32 107, i32 89, i32 34, ; 56..63
	i32 51, i32 122, i32 123, i32 42, i32 23, i32 106, i32 21, i32 96, ; 64..71
	i32 4, i32 63, i32 56, i32 92, i32 19, i32 100, i32 85, i32 86, ; 72..79
	i32 94, i32 93, i32 117, i32 10, i32 47, i32 9, i32 98, i32 80, ; 80..87
	i32 44, i32 101, i32 17, i32 42, i32 81, i32 79, i32 64, i32 70, ; 88..95
	i32 35, i32 116, i32 75, i32 120, i32 55, i32 77, i32 74, i32 3, ; 96..103
	i32 8, i32 6, i32 20, i32 55, i32 125, i32 99, i32 14, i32 130, ; 104..111
	i32 108, i32 59, i32 25, i32 115, i32 5, i32 78, i32 48, i32 111, ; 112..119
	i32 12, i32 18, i32 5, i32 2, i32 105, i32 46, i32 93, i32 18, ; 120..127
	i32 130, i32 114, i32 48, i32 40, i32 120, i32 26, i32 22, i32 98, ; 128..135
	i32 60, i32 7, i32 126, i32 109, i32 67, i32 86, i32 41, i32 37, ; 136..143
	i32 110, i32 24, i32 13, i32 132, i32 14, i32 16, i32 28, i32 70, ; 144..151
	i32 128, i32 68, i32 121, i32 2, i32 41, i32 23, i32 13, i32 40, ; 152..159
	i32 61, i32 131, i32 33, i32 47, i32 54, i32 97, i32 35, i32 69, ; 160..167
	i32 88, i32 24, i32 1, i32 118, i32 97, i32 34, i32 77, i32 57, ; 168..175
	i32 107, i32 74, i32 119, i32 12, i32 95, i32 50, i32 122, i32 46, ; 176..183
	i32 45, i32 73, i32 84, i32 71, i32 65, i32 113, i32 66, i32 7, ; 184..191
	i32 129, i32 36, i32 1, i32 112, i32 15, i32 95, i32 104, i32 62, ; 192..199
	i32 89, i32 108, i32 124, i32 32, i32 73, i32 100, i32 50, i32 65, ; 200..207
	i32 11, i32 22, i32 87, i32 129, i32 88, i32 6, i32 80, i32 85, ; 208..215
	i32 31, i32 104, i32 69, i32 30, i32 113, i32 71, i32 125, i32 8, ; 216..223
	i32 27, i32 124, i32 68, i32 30, i32 128, i32 83, i32 49, i32 32, ; 224..231
	i32 127, i32 9, i32 91, i32 102, i32 119, i32 16, i32 49, i32 33, ; 232..239
	i32 44, i32 115, i32 0, i32 0, i32 43, i32 111, i32 38, i32 126, ; 240..247
	i32 58, i32 76, i32 4, i32 131, i32 63, i32 121, i32 10, i32 84, ; 248..255
	i32 82, i32 118, i32 17, i32 102, i32 114, i32 25, i32 11, i32 62, ; 256..263
	i32 106, i32 96 ; 264..265
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
