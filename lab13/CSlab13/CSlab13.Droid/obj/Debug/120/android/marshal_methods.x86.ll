; ModuleID = 'obj\Debug\120\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\120\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [266 x i32] [
	i32 26230656, ; 0: Microsoft.Extensions.DependencyModel => 0x1903f80 => 32
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 81
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 104
	i32 39109920, ; 3: Newtonsoft.Json.dll => 0x254c520 => 39
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 99
	i32 101534019, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 91
	i32 117431740, ; 6: System.Runtime.InteropServices => 0x6ffddbc => 118
	i32 120558881, ; 7: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 91
	i32 159306688, ; 8: System.ComponentModel.Annotations => 0x97ed3c0 => 4
	i32 165246403, ; 9: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 66
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 92
	i32 209399409, ; 11: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 64
	i32 220171995, ; 12: System.Diagnostics.Debug => 0xd1f8edb => 10
	i32 230216969, ; 13: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 76
	i32 230752869, ; 14: Microsoft.CSharp.dll => 0xdc10265 => 130
	i32 231814094, ; 15: System.Globalization => 0xdd133ce => 121
	i32 232815796, ; 16: System.Web.Services => 0xde07cb4 => 116
	i32 278686392, ; 17: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 80
	i32 280482487, ; 18: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 74
	i32 318968648, ; 19: Xamarin.AndroidX.Activity.dll => 0x13031348 => 56
	i32 321597661, ; 20: System.Numerics => 0x132b30dd => 109
	i32 342366114, ; 21: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 78
	i32 385762202, ; 22: System.Memory.dll => 0x16fe439a => 51
	i32 417568165, ; 23: CSlab13 => 0x18e395a5 => 16
	i32 442565967, ; 24: System.Collections => 0x1a61054f => 5
	i32 450948140, ; 25: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 73
	i32 459347974, ; 26: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 122
	i32 465846621, ; 27: mscorlib => 0x1bc4415d => 38
	i32 469710990, ; 28: System.dll => 0x1bff388e => 49
	i32 476646585, ; 29: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 74
	i32 486930444, ; 30: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 85
	i32 498788369, ; 31: System.ObjectModel => 0x1dbae811 => 125
	i32 513247710, ; 32: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 36
	i32 526420162, ; 33: System.Transactions.dll => 0x1f6088c2 => 110
	i32 530272170, ; 34: System.Linq.Queryable => 0x1f9b4faa => 13
	i32 539058512, ; 35: Microsoft.Extensions.Logging => 0x20216150 => 34
	i32 540030774, ; 36: System.IO.FileSystem.dll => 0x20303736 => 3
	i32 545304856, ; 37: System.Runtime.Extensions => 0x2080b118 => 2
	i32 605376203, ; 38: System.IO.Compression.FileSystem => 0x24154ecb => 114
	i32 627609679, ; 39: Xamarin.AndroidX.CustomView => 0x2568904f => 70
	i32 663517072, ; 40: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 96
	i32 666292255, ; 41: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 61
	i32 690569205, ; 42: System.Xml.Linq.dll => 0x29293ff5 => 55
	i32 705287210, ; 43: CSlab13.dll => 0x2a09d42a => 16
	i32 734394913, ; 44: CSlab13.Droid.dll => 0x2bc5fa21 => 0
	i32 748832960, ; 45: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 42
	i32 775507847, ; 46: System.IO.Compression => 0x2e394f87 => 113
	i32 789151979, ; 47: Microsoft.Extensions.Options => 0x2f0980eb => 35
	i32 809851609, ; 48: System.Drawing.Common.dll => 0x30455ad9 => 112
	i32 843511501, ; 49: Xamarin.AndroidX.Print => 0x3246f6cd => 88
	i32 877678880, ; 50: System.Globalization.dll => 0x34505120 => 121
	i32 880660139, ; 51: Remotion.Linq => 0x347dceab => 40
	i32 928116545, ; 52: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 104
	i32 955402788, ; 53: Newtonsoft.Json => 0x38f24a24 => 39
	i32 967690846, ; 54: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 78
	i32 974778368, ; 55: FormsViewGroup.dll => 0x3a19f000 => 17
	i32 975236339, ; 56: System.Diagnostics.Tracing => 0x3a20ecf3 => 131
	i32 975874589, ; 57: System.Xml.XDocument => 0x3a2aaa1d => 120
	i32 992768348, ; 58: System.Collections.dll => 0x3b2c715c => 5
	i32 994442037, ; 59: System.IO.FileSystem => 0x3b45fb35 => 3
	i32 1012816738, ; 60: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 90
	i32 1028951442, ; 61: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 30
	i32 1034459858, ; 62: Remotion.Linq.dll => 0x3da89ad2 => 40
	i32 1035644815, ; 63: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 60
	i32 1042160112, ; 64: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 101
	i32 1044663988, ; 65: System.Linq.Expressions.dll => 0x3e444eb4 => 123
	i32 1052210849, ; 66: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 82
	i32 1098259244, ; 67: System => 0x41761b2c => 49
	i32 1099692271, ; 68: Microsoft.DotNet.PlatformAbstractions => 0x418bf8ef => 20
	i32 1157931901, ; 69: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 21
	i32 1175144683, ; 70: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 94
	i32 1202000627, ; 71: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 21
	i32 1204270330, ; 72: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 61
	i32 1204575371, ; 73: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 26
	i32 1267360935, ; 74: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 95
	i32 1292207520, ; 75: SQLitePCLRaw.core.dll => 0x4d0585a0 => 43
	i32 1293217323, ; 76: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 72
	i32 1324164729, ; 77: System.Linq => 0x4eed2679 => 8
	i32 1364015309, ; 78: System.IO => 0x514d38cd => 7
	i32 1365406463, ; 79: System.ServiceModel.Internals.dll => 0x516272ff => 106
	i32 1376866003, ; 80: Xamarin.AndroidX.SavedState => 0x52114ed3 => 90
	i32 1395857551, ; 81: Xamarin.AndroidX.Media.dll => 0x5333188f => 86
	i32 1406073936, ; 82: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 67
	i32 1411638395, ; 83: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 52
	i32 1454233054, ; 84: SQLitePCLRaw.lib.e_sqlite3.dll => 0x56add5de => 44
	i32 1457743152, ; 85: System.Runtime.Extensions.dll => 0x56e36530 => 2
	i32 1460219004, ; 86: Xamarin.Forms.Xaml => 0x57092c7c => 102
	i32 1461234159, ; 87: System.Collections.Immutable.dll => 0x5718a9ef => 46
	i32 1462112819, ; 88: System.IO.Compression.dll => 0x57261233 => 113
	i32 1469204771, ; 89: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 59
	i32 1470490898, ; 90: Microsoft.Extensions.Primitives => 0x57a5e912 => 36
	i32 1479771757, ; 91: System.Collections.Immutable => 0x5833866d => 46
	i32 1490351284, ; 92: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 19
	i32 1543031311, ; 93: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 126
	i32 1550322496, ; 94: System.Reflection.Extensions.dll => 0x5c680b40 => 12
	i32 1565862583, ; 95: System.IO.FileSystem.Primitives => 0x5d552ab7 => 9
	i32 1582372066, ; 96: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 71
	i32 1592978981, ; 97: System.Runtime.Serialization.dll => 0x5ef2ee25 => 15
	i32 1622152042, ; 98: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 84
	i32 1622358360, ; 99: System.Dynamic.Runtime => 0x60b33958 => 124
	i32 1624863272, ; 100: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 98
	i32 1636350590, ; 101: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 69
	i32 1639515021, ; 102: System.Net.Http.dll => 0x61b9038d => 14
	i32 1639986890, ; 103: System.Text.RegularExpressions => 0x61c036ca => 126
	i32 1657153582, ; 104: System.Runtime => 0x62c6282e => 53
	i32 1658251792, ; 105: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 103
	i32 1688112883, ; 106: Microsoft.Data.Sqlite => 0x649e8ef3 => 19
	i32 1689493916, ; 107: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 22
	i32 1701541528, ; 108: System.Diagnostics.Debug.dll => 0x656b7698 => 10
	i32 1726116996, ; 109: System.Reflection.dll => 0x66e27484 => 6
	i32 1729485958, ; 110: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 65
	i32 1765942094, ; 111: System.Reflection.Extensions => 0x6942234e => 12
	i32 1766324549, ; 112: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 92
	i32 1770582343, ; 113: Microsoft.Extensions.Logging.dll => 0x6988f147 => 34
	i32 1776026572, ; 114: System.Core.dll => 0x69dc03cc => 47
	i32 1788241197, ; 115: Xamarin.AndroidX.Fragment => 0x6a96652d => 73
	i32 1808609942, ; 116: Xamarin.AndroidX.Loader => 0x6bcd3296 => 84
	i32 1813201214, ; 117: Xamarin.Google.Android.Material => 0x6c13413e => 103
	i32 1824175904, ; 118: System.Text.Encoding.Extensions => 0x6cbab720 => 129
	i32 1828688058, ; 119: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 33
	i32 1858542181, ; 120: System.Linq.Expressions => 0x6ec71a65 => 123
	i32 1878053835, ; 121: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 102
	i32 1885316902, ; 122: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 62
	i32 1886040351, ; 123: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 24
	i32 1894524299, ; 124: Microsoft.DotNet.PlatformAbstractions.dll => 0x70ec258b => 20
	i32 1919157823, ; 125: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 87
	i32 1968388702, ; 126: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 29
	i32 2014489277, ; 127: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 24
	i32 2019465201, ; 128: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 82
	i32 2019533804, ; 129: SQLitePCLRaw.lib.e_sqlite3 => 0x785fa3ec => 44
	i32 2048278909, ; 130: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 28
	i32 2055257422, ; 131: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 79
	i32 2079903147, ; 132: System.Runtime.dll => 0x7bf8cdab => 53
	i32 2097448633, ; 133: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 75
	i32 2103459038, ; 134: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 45
	i32 2126786730, ; 135: Xamarin.Forms.Platform.Android => 0x7ec430aa => 100
	i32 2181898931, ; 136: Microsoft.Extensions.Options.dll => 0x820d22b3 => 35
	i32 2192057212, ; 137: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 33
	i32 2193016926, ; 138: System.ObjectModel.dll => 0x82b6c85e => 125
	i32 2197979891, ; 139: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 32
	i32 2201231467, ; 140: System.Net.Http => 0x8334206b => 14
	i32 2217644978, ; 141: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 94
	i32 2244775296, ; 142: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 85
	i32 2252897993, ; 143: Microsoft.EntityFrameworkCore => 0x86487ec9 => 22
	i32 2256548716, ; 144: Xamarin.AndroidX.MultiDex => 0x8680336c => 87
	i32 2261435625, ; 145: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 77
	i32 2266799131, ; 146: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 27
	i32 2279755925, ; 147: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 89
	i32 2315684594, ; 148: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 57
	i32 2340441535, ; 149: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 117
	i32 2368005991, ; 150: System.Xml.ReaderWriter.dll => 0x8d24e767 => 127
	i32 2371007202, ; 151: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 29
	i32 2435904999, ; 152: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 105
	i32 2454642406, ; 153: System.Text.Encoding.dll => 0x924edee6 => 128
	i32 2465273461, ; 154: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 42
	i32 2471841756, ; 155: netstandard.dll => 0x93554fdc => 107
	i32 2475788418, ; 156: Java.Interop.dll => 0x93918882 => 18
	i32 2490993605, ; 157: System.AppContext.dll => 0x94798bc5 => 1
	i32 2501346920, ; 158: System.Data.DataSetExtensions => 0x95178668 => 111
	i32 2505896520, ; 159: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 81
	i32 2562349572, ; 160: Microsoft.CSharp => 0x98ba5a04 => 130
	i32 2581819634, ; 161: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 95
	i32 2585220780, ; 162: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 129
	i32 2620871830, ; 163: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 69
	i32 2633051222, ; 164: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 80
	i32 2634653062, ; 165: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 23
	i32 2664396074, ; 166: System.Xml.XDocument.dll => 0x9ecf752a => 120
	i32 2693849962, ; 167: System.IO.dll => 0xa090e36a => 7
	i32 2715334215, ; 168: System.Threading.Tasks.dll => 0xa1d8b647 => 119
	i32 2732626843, ; 169: Xamarin.AndroidX.Activity => 0xa2e0939b => 56
	i32 2737747696, ; 170: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 59
	i32 2766581644, ; 171: Xamarin.Forms.Core => 0xa4e6af8c => 99
	i32 2778768386, ; 172: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 97
	i32 2810250172, ; 173: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 67
	i32 2819470561, ; 174: System.Xml.dll => 0xa80db4e1 => 54
	i32 2847789619, ; 175: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 23
	i32 2853208004, ; 176: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 97
	i32 2855708567, ; 177: Xamarin.AndroidX.Transition => 0xaa36a797 => 93
	i32 2900621748, ; 178: System.Dynamic.Runtime.dll => 0xace3f9b4 => 124
	i32 2901442782, ; 179: System.Reflection => 0xacf080de => 6
	i32 2903344695, ; 180: System.ComponentModel.Composition => 0xad0d8637 => 115
	i32 2905242038, ; 181: mscorlib.dll => 0xad2a79b6 => 38
	i32 2916838712, ; 182: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 98
	i32 2921128767, ; 183: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 58
	i32 2978675010, ; 184: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 72
	i32 3024354802, ; 185: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 76
	i32 3044182254, ; 186: FormsViewGroup => 0xb57288ee => 17
	i32 3069363400, ; 187: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 25
	i32 3075834255, ; 188: System.Threading.Tasks => 0xb755818f => 119
	i32 3098610405, ; 189: CSlab13.Droid => 0xb8b10ae5 => 0
	i32 3111772706, ; 190: System.Runtime.Serialization => 0xb979e222 => 15
	i32 3147165239, ; 191: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 131
	i32 3195844289, ; 192: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 25
	i32 3204380047, ; 193: System.Data.dll => 0xbefef58f => 108
	i32 3211777861, ; 194: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 71
	i32 3220365878, ; 195: System.Threading => 0xbff2e236 => 11
	i32 3247949154, ; 196: Mono.Security => 0xc197c562 => 132
	i32 3258312781, ; 197: Xamarin.AndroidX.CardView => 0xc235e84d => 65
	i32 3265493905, ; 198: System.Linq.Queryable.dll => 0xc2a37b91 => 13
	i32 3267021929, ; 199: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 63
	i32 3280506390, ; 200: System.ComponentModel.Annotations.dll => 0xc3888e16 => 4
	i32 3299363146, ; 201: System.Text.Encoding => 0xc4a8494a => 128
	i32 3317135071, ; 202: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 70
	i32 3317144872, ; 203: System.Data => 0xc5b79d28 => 108
	i32 3340431453, ; 204: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 62
	i32 3353484488, ; 205: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 75
	i32 3360279109, ; 206: SQLitePCLRaw.core => 0xc849ca45 => 43
	i32 3362522851, ; 207: Xamarin.AndroidX.Core => 0xc86c06e3 => 68
	i32 3366347497, ; 208: Java.Interop => 0xc8a662e9 => 18
	i32 3374999561, ; 209: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 89
	i32 3395150330, ; 210: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 52
	i32 3404865022, ; 211: System.ServiceModel.Internals => 0xcaf21dfe => 106
	i32 3421170118, ; 212: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 28
	i32 3428513518, ; 213: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 31
	i32 3429136800, ; 214: System.Xml => 0xcc6479a0 => 54
	i32 3430777524, ; 215: netstandard => 0xcc7d82b4 => 107
	i32 3476120550, ; 216: Mono.Android => 0xcf3163e6 => 37
	i32 3486566296, ; 217: System.Transactions => 0xcfd0c798 => 110
	i32 3501239056, ; 218: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 63
	i32 3509114376, ; 219: System.Xml.Linq => 0xd128d608 => 55
	i32 3536029504, ; 220: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 100
	i32 3543730307, ; 221: SQLitePCLRaw.batteries_green.dll => 0xd3390883 => 41
	i32 3567349600, ; 222: System.ComponentModel.Composition.dll => 0xd4a16f60 => 115
	i32 3608519521, ; 223: System.Linq.dll => 0xd715a361 => 8
	i32 3619031819, ; 224: System.Interactive.Async => 0xd7b60b0b => 50
	i32 3624195450, ; 225: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 117
	i32 3627220390, ; 226: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 88
	i32 3632359727, ; 227: Xamarin.Forms.Platform => 0xd881692f => 101
	i32 3633644679, ; 228: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 58
	i32 3638274909, ; 229: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 9
	i32 3641597786, ; 230: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 79
	i32 3641967938, ; 231: SQLitePCLRaw.batteries_green => 0xd9140542 => 41
	i32 3645089577, ; 232: System.ComponentModel.DataAnnotations => 0xd943a729 => 105
	i32 3646051564, ; 233: System.Interactive.Async.dll => 0xd95254ec => 50
	i32 3657292374, ; 234: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 27
	i32 3672681054, ; 235: Mono.Android.dll => 0xdae8aa5e => 37
	i32 3676310014, ; 236: System.Web.Services.dll => 0xdb2009fe => 116
	i32 3682565725, ; 237: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 64
	i32 3689375977, ; 238: System.Drawing.Common => 0xdbe768e9 => 112
	i32 3718780102, ; 239: Xamarin.AndroidX.Annotation => 0xdda814c6 => 57
	i32 3748608112, ; 240: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 48
	i32 3754567612, ; 241: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 45
	i32 3758932259, ; 242: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 77
	i32 3786282454, ; 243: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 66
	i32 3822602673, ; 244: Xamarin.AndroidX.Media => 0xe3d849b1 => 86
	i32 3829621856, ; 245: System.Numerics.dll => 0xe4436460 => 109
	i32 3841636137, ; 246: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 30
	i32 3849253459, ; 247: System.Runtime.InteropServices.dll => 0xe56ef253 => 118
	i32 3885922214, ; 248: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 93
	i32 3896760992, ; 249: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 68
	i32 3920810846, ; 250: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 114
	i32 3921031405, ; 251: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 96
	i32 3928044579, ; 252: System.Xml.ReaderWriter => 0xea213423 => 127
	i32 3945713374, ; 253: System.Data.DataSetExtensions.dll => 0xeb2ecede => 111
	i32 3955647286, ; 254: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 60
	i32 4025784931, ; 255: System.Memory => 0xeff49a63 => 51
	i32 4073602200, ; 256: System.Threading.dll => 0xf2ce3c98 => 11
	i32 4101842092, ; 257: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 26
	i32 4105002889, ; 258: Mono.Security.dll => 0xf4ad5f89 => 132
	i32 4126470640, ; 259: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 31
	i32 4130442656, ; 260: System.AppContext => 0xf6318da0 => 1
	i32 4151237749, ; 261: System.Core => 0xf76edc75 => 47
	i32 4181436372, ; 262: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 122
	i32 4182413190, ; 263: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 83
	i32 4213026141, ; 264: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 48
	i32 4292120959 ; 265: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 83
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [266 x i32] [
	i32 32, i32 81, i32 104, i32 39, i32 99, i32 91, i32 118, i32 91, ; 0..7
	i32 4, i32 66, i32 92, i32 64, i32 10, i32 76, i32 130, i32 121, ; 8..15
	i32 116, i32 80, i32 74, i32 56, i32 109, i32 78, i32 51, i32 16, ; 16..23
	i32 5, i32 73, i32 122, i32 38, i32 49, i32 74, i32 85, i32 125, ; 24..31
	i32 36, i32 110, i32 13, i32 34, i32 3, i32 2, i32 114, i32 70, ; 32..39
	i32 96, i32 61, i32 55, i32 16, i32 0, i32 42, i32 113, i32 35, ; 40..47
	i32 112, i32 88, i32 121, i32 40, i32 104, i32 39, i32 78, i32 17, ; 48..55
	i32 131, i32 120, i32 5, i32 3, i32 90, i32 30, i32 40, i32 60, ; 56..63
	i32 101, i32 123, i32 82, i32 49, i32 20, i32 21, i32 94, i32 21, ; 64..71
	i32 61, i32 26, i32 95, i32 43, i32 72, i32 8, i32 7, i32 106, ; 72..79
	i32 90, i32 86, i32 67, i32 52, i32 44, i32 2, i32 102, i32 46, ; 80..87
	i32 113, i32 59, i32 36, i32 46, i32 19, i32 126, i32 12, i32 9, ; 88..95
	i32 71, i32 15, i32 84, i32 124, i32 98, i32 69, i32 14, i32 126, ; 96..103
	i32 53, i32 103, i32 19, i32 22, i32 10, i32 6, i32 65, i32 12, ; 104..111
	i32 92, i32 34, i32 47, i32 73, i32 84, i32 103, i32 129, i32 33, ; 112..119
	i32 123, i32 102, i32 62, i32 24, i32 20, i32 87, i32 29, i32 24, ; 120..127
	i32 82, i32 44, i32 28, i32 79, i32 53, i32 75, i32 45, i32 100, ; 128..135
	i32 35, i32 33, i32 125, i32 32, i32 14, i32 94, i32 85, i32 22, ; 136..143
	i32 87, i32 77, i32 27, i32 89, i32 57, i32 117, i32 127, i32 29, ; 144..151
	i32 105, i32 128, i32 42, i32 107, i32 18, i32 1, i32 111, i32 81, ; 152..159
	i32 130, i32 95, i32 129, i32 69, i32 80, i32 23, i32 120, i32 7, ; 160..167
	i32 119, i32 56, i32 59, i32 99, i32 97, i32 67, i32 54, i32 23, ; 168..175
	i32 97, i32 93, i32 124, i32 6, i32 115, i32 38, i32 98, i32 58, ; 176..183
	i32 72, i32 76, i32 17, i32 25, i32 119, i32 0, i32 15, i32 131, ; 184..191
	i32 25, i32 108, i32 71, i32 11, i32 132, i32 65, i32 13, i32 63, ; 192..199
	i32 4, i32 128, i32 70, i32 108, i32 62, i32 75, i32 43, i32 68, ; 200..207
	i32 18, i32 89, i32 52, i32 106, i32 28, i32 31, i32 54, i32 107, ; 208..215
	i32 37, i32 110, i32 63, i32 55, i32 100, i32 41, i32 115, i32 8, ; 216..223
	i32 50, i32 117, i32 88, i32 101, i32 58, i32 9, i32 79, i32 41, ; 224..231
	i32 105, i32 50, i32 27, i32 37, i32 116, i32 64, i32 112, i32 57, ; 232..239
	i32 48, i32 45, i32 77, i32 66, i32 86, i32 109, i32 30, i32 118, ; 240..247
	i32 93, i32 68, i32 114, i32 96, i32 127, i32 111, i32 60, i32 51, ; 248..255
	i32 11, i32 26, i32 132, i32 31, i32 1, i32 47, i32 122, i32 83, ; 256..263
	i32 48, i32 83 ; 264..265
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
