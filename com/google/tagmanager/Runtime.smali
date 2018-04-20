.class Lcom/google/tagmanager/Runtime;
.super Ljava/lang/Object;
.source "Runtime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;,
        Lcom/google/tagmanager/Runtime$CachedMacro;,
        Lcom/google/tagmanager/Runtime$MacroInfo;
    }
.end annotation


# static fields
.field static final DEFAULT_RULE_NAME:Ljava/lang/String; = "Unknown"

.field private static final DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/ObjectAndStatic",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field static final EXPERIMENT_SUPPLEMENTAL_NAME_PREFIX:Ljava/lang/String; = "gaExperiment:"

.field private static final MAX_CACHE_SIZE:I = 0x100000


# instance fields
.field private final eventInfoDistributor:Lcom/google/tagmanager/EventInfoDistributor;

.field private volatile mCurrentEventName:Ljava/lang/String;

.field private final mDataLayer:Lcom/google/tagmanager/DataLayer;

.field private final mFunctionCallCache:Lcom/google/tagmanager/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/Cache",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            "Lcom/google/tagmanager/ObjectAndStatic",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMacroEvaluationCache:Lcom/google/tagmanager/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/Cache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/Runtime$CachedMacro;",
            ">;"
        }
    .end annotation
.end field

.field private final mMacroLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/Runtime$MacroInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMacroMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/FunctionCallImplementation;",
            ">;"
        }
    .end annotation
.end field

.field private final mPredicateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/FunctionCallImplementation;",
            ">;"
        }
    .end annotation
.end field

.field private final mResource:Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

.field private final mRules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackingTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/FunctionCallImplementation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 25
    new-instance v0, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/ResourceUtil$ExpandedResource;Lcom/google/tagmanager/DataLayer;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    .param p3, "dataLayer"    # Lcom/google/tagmanager/DataLayer;
    .param p4, "functionCallMacroEvaluator"    # Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;
    .param p5, "functionCallTagEvaluator"    # Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;

    .prologue
    .line 320
    new-instance v6, Lcom/google/tagmanager/NoopEventInfoDistributor;

    invoke-direct {v6}, Lcom/google/tagmanager/NoopEventInfoDistributor;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/tagmanager/Runtime;-><init>(Landroid/content/Context;Lcom/google/tagmanager/ResourceUtil$ExpandedResource;Lcom/google/tagmanager/DataLayer;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;Lcom/google/tagmanager/EventInfoDistributor;)V

    .line 322
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/ResourceUtil$ExpandedResource;Lcom/google/tagmanager/DataLayer;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;Lcom/google/tagmanager/EventInfoDistributor;)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    .param p3, "dataLayer"    # Lcom/google/tagmanager/DataLayer;
    .param p4, "functionCallMacroEvaluator"    # Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;
    .param p5, "functionCallTagEvaluator"    # Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;
    .param p6, "eventInfoDistributor"    # Lcom/google/tagmanager/EventInfoDistributor;

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    if-eqz p2, :cond_1cf

    .line 185
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/google/tagmanager/Runtime;->mResource:Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    .line 186
    new-instance v11, Ljava/util/HashSet;

    invoke-virtual/range {p2 .. p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->getRules()Ljava/util/List;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v11, p0, Lcom/google/tagmanager/Runtime;->mRules:Ljava/util/Set;

    .line 187
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/tagmanager/Runtime;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    .line 189
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/tagmanager/Runtime;->eventInfoDistributor:Lcom/google/tagmanager/EventInfoDistributor;

    .line 192
    new-instance v3, Lcom/google/tagmanager/Runtime$1;

    invoke-direct {v3, p0}, Lcom/google/tagmanager/Runtime$1;-><init>(Lcom/google/tagmanager/Runtime;)V

    .line 201
    .local v3, "functionCacheSizeManager":Lcom/google/tagmanager/CacheFactory$CacheSizeManager;, "Lcom/google/tagmanager/CacheFactory$CacheSizeManager<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;>;"
    new-instance v11, Lcom/google/tagmanager/CacheFactory;

    invoke-direct {v11}, Lcom/google/tagmanager/CacheFactory;-><init>()V

    const/high16 v12, 0x100000

    invoke-virtual {v11, v12, v3}, Lcom/google/tagmanager/CacheFactory;->createCache(ILcom/google/tagmanager/CacheFactory$CacheSizeManager;)Lcom/google/tagmanager/Cache;

    move-result-object v11

    iput-object v11, p0, Lcom/google/tagmanager/Runtime;->mFunctionCallCache:Lcom/google/tagmanager/Cache;

    .line 204
    new-instance v8, Lcom/google/tagmanager/Runtime$2;

    invoke-direct {v8, p0}, Lcom/google/tagmanager/Runtime$2;-><init>(Lcom/google/tagmanager/Runtime;)V

    .line 211
    .local v8, "macroCacheSizeManager":Lcom/google/tagmanager/CacheFactory$CacheSizeManager;, "Lcom/google/tagmanager/CacheFactory$CacheSizeManager<Ljava/lang/String;Lcom/google/tagmanager/Runtime$CachedMacro;>;"
    new-instance v11, Lcom/google/tagmanager/CacheFactory;

    invoke-direct {v11}, Lcom/google/tagmanager/CacheFactory;-><init>()V

    const/high16 v12, 0x100000

    invoke-virtual {v11, v12, v8}, Lcom/google/tagmanager/CacheFactory;->createCache(ILcom/google/tagmanager/CacheFactory$CacheSizeManager;)Lcom/google/tagmanager/Cache;

    move-result-object v11

    iput-object v11, p0, Lcom/google/tagmanager/Runtime;->mMacroEvaluationCache:Lcom/google/tagmanager/Cache;

    .line 217
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/google/tagmanager/Runtime;->mTrackingTagMap:Ljava/util/Map;

    .line 218
    new-instance v11, Lcom/google/tagmanager/ArbitraryPixelTag;

    invoke-direct {v11, p1}, Lcom/google/tagmanager/ArbitraryPixelTag;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addTrackingTag(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 219
    new-instance v11, Lcom/google/tagmanager/CustomFunctionCall;

    move-object/from16 v0, p5

    invoke-direct {v11, v0}, Lcom/google/tagmanager/CustomFunctionCall;-><init>(Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;)V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addTrackingTag(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 220
    new-instance v11, Lcom/google/tagmanager/DataLayerWriteTag;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Lcom/google/tagmanager/DataLayerWriteTag;-><init>(Lcom/google/tagmanager/DataLayer;)V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addTrackingTag(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 221
    new-instance v11, Lcom/google/tagmanager/UniversalAnalyticsTag;

    move-object/from16 v0, p3

    invoke-direct {v11, p1, v0}, Lcom/google/tagmanager/UniversalAnalyticsTag;-><init>(Landroid/content/Context;Lcom/google/tagmanager/DataLayer;)V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addTrackingTag(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 223
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/google/tagmanager/Runtime;->mPredicateMap:Ljava/util/Map;

    .line 224
    new-instance v11, Lcom/google/tagmanager/ContainsPredicate;

    invoke-direct {v11}, Lcom/google/tagmanager/ContainsPredicate;-><init>()V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 225
    new-instance v11, Lcom/google/tagmanager/EndsWithPredicate;

    invoke-direct {v11}, Lcom/google/tagmanager/EndsWithPredicate;-><init>()V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 226
    new-instance v11, Lcom/google/tagmanager/EqualsPredicate;

    invoke-direct {v11}, Lcom/google/tagmanager/EqualsPredicate;-><init>()V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 227
    new-instance v11, Lcom/google/tagmanager/GreaterEqualsPredicate;

    invoke-direct {v11}, Lcom/google/tagmanager/GreaterEqualsPredicate;-><init>()V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 228
    new-instance v11, Lcom/google/tagmanager/GreaterThanPredicate;

    invoke-direct {v11}, Lcom/google/tagmanager/GreaterThanPredicate;-><init>()V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 229
    new-instance v11, Lcom/google/tagmanager/LessEqualsPredicate;

    invoke-direct {v11}, Lcom/google/tagmanager/LessEqualsPredicate;-><init>()V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 230
    new-instance v11, Lcom/google/tagmanager/LessThanPredicate;

    invoke-direct {v11}, Lcom/google/tagmanager/LessThanPredicate;-><init>()V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 231
    new-instance v11, Lcom/google/tagmanager/RegexPredicate;

    invoke-direct {v11}, Lcom/google/tagmanager/RegexPredicate;-><init>()V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 232
    new-instance v11, Lcom/google/tagmanager/StartsWithPredicate;

    invoke-direct {v11}, Lcom/google/tagmanager/StartsWithPredicate;-><init>()V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 234
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/google/tagmanager/Runtime;->mMacroMap:Ljava/util/Map;

    .line 235
    new-instance v11, Lcom/google/tagmanager/AdvertiserIdMacro;

    invoke-direct {v11, p1}, Lcom/google/tagmanager/AdvertiserIdMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 236
    new-instance v11, Lcom/google/tagmanager/AdvertisingTrackingEnabledMacro;

    invoke-direct {v11}, Lcom/google/tagmanager/AdvertisingTrackingEnabledMacro;-><init>()V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 237
    new-instance v11, Lcom/google/tagmanager/AdwordsClickReferrerMacro;

    invoke-direct {v11, p1}, Lcom/google/tagmanager/AdwordsClickReferrerMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 238
    new-instance v11, Lcom/google/tagmanager/AppIdMacro;

    invoke-direct {v11, p1}, Lcom/google/tagmanager/AppIdMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 239
    new-instance v11, Lcom/google/tagmanager/AppNameMacro;

    invoke-direct {v11, p1}, Lcom/google/tagmanager/AppNameMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 240
    new-instance v11, Lcom/google/tagmanager/AppVersionMacro;

    invoke-direct {v11, p1}, Lcom/google/tagmanager/AppVersionMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 241
    new-instance v11, Lcom/google/tagmanager/ConstantMacro;

    invoke-direct {v11}, Lcom/google/tagmanager/ConstantMacro;-><init>()V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 242
    new-instance v11, Lcom/google/tagmanager/ContainerVersionMacro;

    invoke-direct {v11, p0}, Lcom/google/tagmanager/ContainerVersionMacro;-><init>(Lcom/google/tagmanager/Runtime;)V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 243
    new-instance v11, Lcom/google/tagmanager/CustomFunctionCall;

    move-object/from16 v0, p4

    invoke-direct {v11, v0}, Lcom/google/tagmanager/CustomFunctionCall;-><init>(Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;)V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 244
    new-instance v11, Lcom/google/tagmanager/DataLayerMacro;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Lcom/google/tagmanager/DataLayerMacro;-><init>(Lcom/google/tagmanager/DataLayer;)V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 245
    new-instance v11, Lcom/google/tagmanager/DeviceIdMacro;

    invoke-direct {v11, p1}, Lcom/google/tagmanager/DeviceIdMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 246
    new-instance v11, Lcom/google/tagmanager/DeviceNameMacro;

    invoke-direct {v11}, Lcom/google/tagmanager/DeviceNameMacro;-><init>()V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 247
    new-instance v11, Lcom/google/tagmanager/EncodeMacro;

    invoke-direct {v11}, Lcom/google/tagmanager/EncodeMacro;-><init>()V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 248
    new-instance v11, Lcom/google/tagmanager/EventMacro;

    invoke-direct {v11, p0}, Lcom/google/tagmanager/EventMacro;-><init>(Lcom/google/tagmanager/Runtime;)V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 249
    new-instance v11, Lcom/google/tagmanager/GtmVersionMacro;

    invoke-direct {v11}, Lcom/google/tagmanager/GtmVersionMacro;-><init>()V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 250
    new-instance v11, Lcom/google/tagmanager/HashMacro;

    invoke-direct {v11}, Lcom/google/tagmanager/HashMacro;-><init>()V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 251
    new-instance v11, Lcom/google/tagmanager/InstallReferrerMacro;

    invoke-direct {v11, p1}, Lcom/google/tagmanager/InstallReferrerMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 252
    new-instance v11, Lcom/google/tagmanager/JoinerMacro;

    invoke-direct {v11}, Lcom/google/tagmanager/JoinerMacro;-><init>()V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 253
    new-instance v11, Lcom/google/tagmanager/LanguageMacro;

    invoke-direct {v11}, Lcom/google/tagmanager/LanguageMacro;-><init>()V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 254
    new-instance v11, Lcom/google/tagmanager/MobileAdwordsUniqueIdMacro;

    invoke-direct {v11, p1}, Lcom/google/tagmanager/MobileAdwordsUniqueIdMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 255
    new-instance v11, Lcom/google/tagmanager/OsVersionMacro;

    invoke-direct {v11}, Lcom/google/tagmanager/OsVersionMacro;-><init>()V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 256
    new-instance v11, Lcom/google/tagmanager/PlatformMacro;

    invoke-direct {v11}, Lcom/google/tagmanager/PlatformMacro;-><init>()V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 257
    new-instance v11, Lcom/google/tagmanager/RandomMacro;

    invoke-direct {v11}, Lcom/google/tagmanager/RandomMacro;-><init>()V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 258
    new-instance v11, Lcom/google/tagmanager/RegexGroupMacro;

    invoke-direct {v11}, Lcom/google/tagmanager/RegexGroupMacro;-><init>()V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 259
    new-instance v11, Lcom/google/tagmanager/ResolutionMacro;

    invoke-direct {v11, p1}, Lcom/google/tagmanager/ResolutionMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 260
    new-instance v11, Lcom/google/tagmanager/RuntimeVersionMacro;

    invoke-direct {v11}, Lcom/google/tagmanager/RuntimeVersionMacro;-><init>()V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 261
    new-instance v11, Lcom/google/tagmanager/SdkVersionMacro;

    invoke-direct {v11}, Lcom/google/tagmanager/SdkVersionMacro;-><init>()V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 262
    new-instance v11, Lcom/google/tagmanager/TimeMacro;

    invoke-direct {v11}, Lcom/google/tagmanager/TimeMacro;-><init>()V

    invoke-virtual {p0, v11}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 265
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/google/tagmanager/Runtime;->mMacroLookup:Ljava/util/Map;

    .line 268
    iget-object v11, p0, Lcom/google/tagmanager/Runtime;->mRules:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1b4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1d8

    .line 307
    iget-object v11, p0, Lcom/google/tagmanager/Runtime;->mResource:Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    invoke-virtual {v11}, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->getAllMacros()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_1c8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2b1

    .line 315
    return-void

    .line 182
    .end local v3    # "functionCacheSizeManager":Lcom/google/tagmanager/CacheFactory$CacheSizeManager;, "Lcom/google/tagmanager/CacheFactory$CacheSizeManager<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;>;"
    .end local v8    # "macroCacheSizeManager":Lcom/google/tagmanager/CacheFactory$CacheSizeManager;, "Lcom/google/tagmanager/CacheFactory$CacheSizeManager<Ljava/lang/String;Lcom/google/tagmanager/Runtime$CachedMacro;>;"
    :cond_1cf
    new-instance v11, Ljava/lang/NullPointerException;

    const-string/jumbo v12, "resource cannot be null"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 268
    .restart local v3    # "functionCacheSizeManager":Lcom/google/tagmanager/CacheFactory$CacheSizeManager;, "Lcom/google/tagmanager/CacheFactory$CacheSizeManager<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v8    # "macroCacheSizeManager":Lcom/google/tagmanager/CacheFactory$CacheSizeManager;, "Lcom/google/tagmanager/CacheFactory$CacheSizeManager<Ljava/lang/String;Lcom/google/tagmanager/Runtime$CachedMacro;>;"
    :cond_1d8
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;

    .line 272
    .local v9, "rule":Lcom/google/tagmanager/ResourceUtil$ExpandedRule;
    invoke-interface/range {p6 .. p6}, Lcom/google/tagmanager/EventInfoDistributor;->debugMode()Z

    move-result v11

    if-nez v11, :cond_223

    .line 282
    :goto_1e4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e5
    invoke-virtual {v9}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacros()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lt v4, v11, :cond_25c

    .line 293
    const/4 v4, 0x0

    :goto_1f0
    invoke-virtual {v9}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacros()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_1b4

    .line 294
    invoke-virtual {v9}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacros()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 295
    .local v2, "function":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    const-string/jumbo v10, "Unknown"

    .line 296
    .local v10, "ruleName":Ljava/lang/String;
    invoke-interface/range {p6 .. p6}, Lcom/google/tagmanager/EventInfoDistributor;->debugMode()Z

    move-result v11

    if-nez v11, :cond_29b

    .line 299
    :cond_20d
    :goto_20d
    iget-object v11, p0, Lcom/google/tagmanager/Runtime;->mMacroLookup:Ljava/util/Map;

    invoke-static {v2}, Lcom/google/tagmanager/Runtime;->getFunctionName(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/google/tagmanager/Runtime;->getOrAddMacroInfo(Ljava/util/Map;Ljava/lang/String;)Lcom/google/tagmanager/Runtime$MacroInfo;

    move-result-object v7

    .line 300
    .local v7, "info":Lcom/google/tagmanager/Runtime$MacroInfo;
    invoke-virtual {v7, v9}, Lcom/google/tagmanager/Runtime$MacroInfo;->addRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;)V

    .line 301
    invoke-virtual {v7, v9, v2}, Lcom/google/tagmanager/Runtime$MacroInfo;->addRemoveMacroForRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)V

    .line 302
    invoke-virtual {v7, v9, v10}, Lcom/google/tagmanager/Runtime$MacroInfo;->addRemoveMacroRuleNameForRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/lang/String;)V

    .line 293
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f0

    .line 273
    .end local v2    # "function":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    .end local v4    # "i":I
    .end local v7    # "info":Lcom/google/tagmanager/Runtime$MacroInfo;
    .end local v10    # "ruleName":Ljava/lang/String;
    :cond_223
    invoke-virtual {v9}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacros()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v9}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacroRuleNames()Ljava/util/List;

    move-result-object v12

    const-string/jumbo v13, "add macro"

    invoke-static {v11, v12, v13}, Lcom/google/tagmanager/Runtime;->verifyFunctionAndNameListSizes(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v9}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacros()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v9}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacroRuleNames()Ljava/util/List;

    move-result-object v12

    const-string/jumbo v13, "remove macro"

    invoke-static {v11, v12, v13}, Lcom/google/tagmanager/Runtime;->verifyFunctionAndNameListSizes(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v9}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddTags()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v9}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddTagRuleNames()Ljava/util/List;

    move-result-object v12

    const-string/jumbo v13, "add tag"

    invoke-static {v11, v12, v13}, Lcom/google/tagmanager/Runtime;->verifyFunctionAndNameListSizes(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v9}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveTags()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v9}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveTagRuleNames()Ljava/util/List;

    move-result-object v12

    const-string/jumbo v13, "remove tag"

    invoke-static {v11, v12, v13}, Lcom/google/tagmanager/Runtime;->verifyFunctionAndNameListSizes(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1e4

    .line 283
    .restart local v4    # "i":I
    :cond_25c
    invoke-virtual {v9}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacros()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 284
    .restart local v2    # "function":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    const-string/jumbo v10, "Unknown"

    .line 285
    .restart local v10    # "ruleName":Ljava/lang/String;
    invoke-interface/range {p6 .. p6}, Lcom/google/tagmanager/EventInfoDistributor;->debugMode()Z

    move-result v11

    if-nez v11, :cond_286

    .line 288
    :cond_26f
    :goto_26f
    iget-object v11, p0, Lcom/google/tagmanager/Runtime;->mMacroLookup:Ljava/util/Map;

    invoke-static {v2}, Lcom/google/tagmanager/Runtime;->getFunctionName(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/google/tagmanager/Runtime;->getOrAddMacroInfo(Ljava/util/Map;Ljava/lang/String;)Lcom/google/tagmanager/Runtime$MacroInfo;

    move-result-object v7

    .line 289
    .restart local v7    # "info":Lcom/google/tagmanager/Runtime$MacroInfo;
    invoke-virtual {v7, v9}, Lcom/google/tagmanager/Runtime$MacroInfo;->addRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;)V

    .line 290
    invoke-virtual {v7, v9, v2}, Lcom/google/tagmanager/Runtime$MacroInfo;->addAddMacroForRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)V

    .line 291
    invoke-virtual {v7, v9, v10}, Lcom/google/tagmanager/Runtime$MacroInfo;->addAddMacroRuleNameForRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/lang/String;)V

    .line 282
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1e5

    .line 285
    .end local v7    # "info":Lcom/google/tagmanager/Runtime$MacroInfo;
    :cond_286
    invoke-virtual {v9}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacroRuleNames()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_26f

    .line 286
    invoke-virtual {v9}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacroRuleNames()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "ruleName":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .restart local v10    # "ruleName":Ljava/lang/String;
    goto :goto_26f

    .line 296
    :cond_29b
    invoke-virtual {v9}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacroRuleNames()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_20d

    .line 297
    invoke-virtual {v9}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacroRuleNames()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "ruleName":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .restart local v10    # "ruleName":Ljava/lang/String;
    goto/16 :goto_20d

    .line 307
    .end local v2    # "function":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "rule":Lcom/google/tagmanager/ResourceUtil$ExpandedRule;
    .end local v10    # "ruleName":Ljava/lang/String;
    :cond_2b1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 308
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2c1
    :goto_2c1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1c8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 309
    .restart local v2    # "function":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    invoke-virtual {v2}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->getProperties()Ljava/util/Map;

    move-result-object v11

    sget-object v12, Lcom/google/analytics/containertag/common/Key;->NOT_DEFAULT_MACRO:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v12}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v11}, Lcom/google/tagmanager/Types;->valueToBoolean(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_2c1

    .line 311
    iget-object v12, p0, Lcom/google/tagmanager/Runtime;->mMacroLookup:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v12, v11}, Lcom/google/tagmanager/Runtime;->getOrAddMacroInfo(Ljava/util/Map;Ljava/lang/String;)Lcom/google/tagmanager/Runtime$MacroInfo;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/google/tagmanager/Runtime$MacroInfo;->setDefault(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)V

    goto :goto_2c1
.end method

.method private static addFunctionImplToMap(Ljava/util/Map;Lcom/google/tagmanager/FunctionCallImplementation;)V
    .registers 5
    .param p1, "impl"    # Lcom/google/tagmanager/FunctionCallImplementation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/FunctionCallImplementation;",
            ">;",
            "Lcom/google/tagmanager/FunctionCallImplementation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 529
    .local p0, "addTo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/tagmanager/FunctionCallImplementation;>;"
    invoke-virtual {p1}, Lcom/google/tagmanager/FunctionCallImplementation;->getInstanceFunctionId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 533
    invoke-virtual {p1}, Lcom/google/tagmanager/FunctionCallImplementation;->getInstanceFunctionId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    return-void

    .line 530
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Duplicate function type name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/tagmanager/FunctionCallImplementation;->getInstanceFunctionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private calculateGenericToRun(Ljava/util/Set;Ljava/util/Set;Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .registers 14
    .param p3, "setPopulator"    # Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;
    .param p4, "debugRulesEvaluation"    # Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;",
            "Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;"
        }
    .end annotation

    .prologue
    .local p1, "rules":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/tagmanager/ResourceUtil$ExpandedRule;>;"
    .local p2, "pendingMacroExpansions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 496
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 497
    .local v0, "add":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 498
    .local v4, "remove":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    const/4 v1, 0x1

    .line 500
    .local v1, "allStatic":Z
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_22

    .line 512
    invoke-interface {v0, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 513
    invoke-interface {p4, v0}, Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;->setEnabledFunctions(Ljava/util/Set;)V

    .line 514
    new-instance v7, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-direct {v7, v0, v1}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v7

    .line 500
    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;

    .line 501
    .local v6, "rule":Lcom/google/tagmanager/ResourceUtil$ExpandedRule;
    invoke-interface {p4}, Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;->createResolvedRuleBuilder()Lcom/google/tagmanager/ResolvedRuleBuilder;

    move-result-object v2

    .line 502
    .local v2, "debugRuleBuilder":Lcom/google/tagmanager/ResolvedRuleBuilder;
    invoke-virtual {p0, v6, p2, v2}, Lcom/google/tagmanager/Runtime;->evaluatePredicatesInRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/util/Set;Lcom/google/tagmanager/ResolvedRuleBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v5

    .line 504
    .local v5, "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Ljava/lang/Boolean;>;"
    invoke-virtual {v5}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_40

    .line 507
    :goto_3c
    if-nez v1, :cond_44

    :cond_3e
    move v1, v8

    :goto_3f
    goto :goto_10

    .line 505
    :cond_40
    invoke-interface {p3, v6, v0, v4, v2}, Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;->rulePassed(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/util/Set;Ljava/util/Set;Lcom/google/tagmanager/ResolvedRuleBuilder;)V

    goto :goto_3c

    .line 507
    :cond_44
    invoke-virtual {v5}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v7

    if-eqz v7, :cond_3e

    const/4 v1, 0x1

    goto :goto_3f
.end method

.method private evaluateMacroReferenceCycleDetection(Ljava/lang/String;Ljava/util/Set;Lcom/google/tagmanager/MacroEvaluationInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .registers 24
    .param p1, "macroName"    # Ljava/lang/String;
    .param p3, "debugMacroEvaluation"    # Lcom/google/tagmanager/MacroEvaluationInfoBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/MacroEvaluationInfoBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .prologue
    .line 612
    .local p2, "pendingMacroExpansions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/tagmanager/Runtime;->mMacroEvaluationCache:Lcom/google/tagmanager/Cache;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Lcom/google/tagmanager/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/tagmanager/Runtime$CachedMacro;

    .line 613
    .local v12, "cachedResult":Lcom/google/tagmanager/Runtime$CachedMacro;
    if-nez v12, :cond_a6

    .line 619
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/tagmanager/Runtime;->mMacroLookup:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/tagmanager/Runtime$MacroInfo;

    .line 620
    .local v15, "macroInfo":Lcom/google/tagmanager/Runtime$MacroInfo;
    if-eqz v15, :cond_c0

    .line 626
    invoke-virtual {v15}, Lcom/google/tagmanager/Runtime$MacroInfo;->getRules()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v15}, Lcom/google/tagmanager/Runtime$MacroInfo;->getAddMacros()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v15}, Lcom/google/tagmanager/Runtime$MacroInfo;->getAddMacroRuleNames()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v15}, Lcom/google/tagmanager/Runtime$MacroInfo;->getRemoveMacros()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v15}, Lcom/google/tagmanager/Runtime$MacroInfo;->getRemoveMacroRuleNames()Ljava/util/Map;

    move-result-object v9

    invoke-interface/range {p3 .. p3}, Lcom/google/tagmanager/MacroEvaluationInfoBuilder;->createRulesEvaluation()Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;

    move-result-object v11

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v10, p2

    invoke-virtual/range {v3 .. v11}, Lcom/google/tagmanager/Runtime;->calculateMacrosToRun(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v17

    .line 631
    .local v17, "macrosToRun":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Ljava/util/Set<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;>;"
    const/4 v14, 0x0

    .line 632
    .local v14, "macro":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    invoke-virtual/range {v17 .. v17}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_dc

    .line 635
    invoke-virtual/range {v17 .. v17}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_e1

    .line 638
    :goto_58
    invoke-virtual/range {v17 .. v17}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "macro":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    check-cast v14, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 641
    .restart local v14    # "macro":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    :goto_68
    if-eqz v14, :cond_fc

    .line 646
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/tagmanager/Runtime;->mMacroMap:Ljava/util/Map;

    invoke-interface/range {p3 .. p3}, Lcom/google/tagmanager/MacroEvaluationInfoBuilder;->createResult()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v14, v1, v4}, Lcom/google/tagmanager/Runtime;->executeFunction(Ljava/util/Map;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v16

    .line 648
    .local v16, "macroResult":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-virtual/range {v17 .. v17}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v3

    if-nez v3, :cond_ff

    :cond_80
    const/4 v13, 0x0

    .line 651
    .local v13, "isStatic":Z
    :goto_81
    sget-object v3, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_108

    new-instance v19, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-virtual/range {v16 .. v16}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v13}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    .line 654
    .local v19, "toReturn":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    :goto_92
    invoke-virtual {v14}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->getPushAfterEvaluate()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v18

    .line 655
    .local v18, "pushAfterEvaluate":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-virtual/range {v19 .. v19}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v3

    if-nez v3, :cond_10b

    .line 658
    :goto_9c
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/google/tagmanager/Runtime;->pushUnevaluatedValueToDataLayer(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)V

    .line 659
    return-object v19

    .line 613
    .end local v13    # "isStatic":Z
    .end local v14    # "macro":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    .end local v15    # "macroInfo":Lcom/google/tagmanager/Runtime$MacroInfo;
    .end local v16    # "macroResult":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    .end local v17    # "macrosToRun":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Ljava/util/Set<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;>;"
    .end local v18    # "pushAfterEvaluate":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v19    # "toReturn":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    :cond_a6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/tagmanager/Runtime;->eventInfoDistributor:Lcom/google/tagmanager/EventInfoDistributor;

    invoke-interface {v3}, Lcom/google/tagmanager/EventInfoDistributor;->debugMode()Z

    move-result v3

    if-nez v3, :cond_e

    .line 614
    invoke-virtual {v12}, Lcom/google/tagmanager/Runtime$CachedMacro;->getPushAfterEvaluate()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/google/tagmanager/Runtime;->pushUnevaluatedValueToDataLayer(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)V

    .line 616
    invoke-virtual {v12}, Lcom/google/tagmanager/Runtime$CachedMacro;->getObjectAndStatic()Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v3

    return-object v3

    .line 622
    .restart local v15    # "macroInfo":Lcom/google/tagmanager/Runtime$MacroInfo;
    :cond_c0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid macro: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 623
    sget-object v3, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v3

    .line 633
    .restart local v14    # "macro":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    .restart local v17    # "macrosToRun":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Ljava/util/Set<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;>;"
    :cond_dc
    invoke-virtual {v15}, Lcom/google/tagmanager/Runtime$MacroInfo;->getDefault()Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    move-result-object v14

    goto :goto_68

    .line 636
    :cond_e1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Multiple macros active for macroName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto/16 :goto_58

    .line 643
    :cond_fc
    sget-object v3, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v3

    .line 648
    .restart local v16    # "macroResult":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    :cond_ff
    invoke-virtual/range {v16 .. v16}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_80

    const/4 v13, 0x1

    goto/16 :goto_81

    .line 651
    .restart local v13    # "isStatic":Z
    :cond_108
    sget-object v19, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    goto :goto_92

    .line 656
    .restart local v18    # "pushAfterEvaluate":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .restart local v19    # "toReturn":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    :cond_10b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/tagmanager/Runtime;->mMacroEvaluationCache:Lcom/google/tagmanager/Cache;

    new-instance v4, Lcom/google/tagmanager/Runtime$CachedMacro;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/google/tagmanager/Runtime$CachedMacro;-><init>(Lcom/google/tagmanager/ObjectAndStatic;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4}, Lcom/google/tagmanager/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_9c
.end method

.method private executeFunction(Ljava/util/Map;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .registers 19
    .param p2, "functionCall"    # Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    .param p4, "debugFunctionCall"    # Lcom/google/tagmanager/ResolvedFunctionCallBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/FunctionCallImplementation;",
            ">;",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/ResolvedFunctionCallBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .prologue
    .line 816
    .local p1, "implMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/tagmanager/FunctionCallImplementation;>;"
    .local p3, "pendingMacroExpansions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->getProperties()Ljava/util/Map;

    move-result-object v12

    sget-object v13, Lcom/google/analytics/containertag/common/Key;->FUNCTION:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v13}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 817
    .local v7, "functionIdValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-eqz v7, :cond_64

    .line 822
    iget-object v6, v7, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    .line 823
    .local v6, "functionId":Ljava/lang/String;
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/tagmanager/FunctionCallImplementation;

    .line 824
    .local v9, "impl":Lcom/google/tagmanager/FunctionCallImplementation;
    if-eqz v9, :cond_6d

    .line 830
    iget-object v12, p0, Lcom/google/tagmanager/Runtime;->mFunctionCallCache:Lcom/google/tagmanager/Cache;

    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Lcom/google/tagmanager/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/ObjectAndStatic;

    .line 833
    .local v3, "cachedResult":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    if-nez v3, :cond_87

    .line 838
    :cond_28
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 839
    .local v5, "expandedParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    const/4 v1, 0x1

    .line 841
    .local v1, "allParamsStatic":Z
    invoke-virtual/range {p2 .. p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->getProperties()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_3a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_90

    .line 863
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/google/tagmanager/FunctionCallImplementation;->hasRequiredKeys(Ljava/util/Set;)Z

    move-result v12

    if-eqz v12, :cond_e5

    .line 871
    if-nez v1, :cond_11d

    :cond_4c
    const/4 v2, 0x0

    .line 873
    .local v2, "cacheable":Z
    :goto_4d
    new-instance v11, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-virtual {v9, v5}, Lcom/google/tagmanager/FunctionCallImplementation;->evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v12

    invoke-direct {v11, v12, v2}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    .line 875
    .local v11, "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    if-nez v2, :cond_126

    .line 880
    :goto_58
    invoke-virtual {v11}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lcom/google/tagmanager/ResolvedFunctionCallBuilder;->setFunctionResult(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    .line 881
    return-object v11

    .line 819
    .end local v1    # "allParamsStatic":Z
    .end local v2    # "cacheable":Z
    .end local v3    # "cachedResult":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    .end local v5    # "expandedParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    .end local v6    # "functionId":Ljava/lang/String;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "impl":Lcom/google/tagmanager/FunctionCallImplementation;
    .end local v11    # "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    :cond_64
    const-string/jumbo v12, "No function id in properties"

    invoke-static {v12}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 820
    sget-object v12, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v12

    .line 826
    .restart local v6    # "functionId":Ljava/lang/String;
    .restart local v9    # "impl":Lcom/google/tagmanager/FunctionCallImplementation;
    :cond_6d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " has no backing implementation."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 827
    sget-object v12, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v12

    .line 833
    .restart local v3    # "cachedResult":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    :cond_87
    iget-object v12, p0, Lcom/google/tagmanager/Runtime;->eventInfoDistributor:Lcom/google/tagmanager/EventInfoDistributor;

    invoke-interface {v12}, Lcom/google/tagmanager/EventInfoDistributor;->debugMode()Z

    move-result v12

    if-nez v12, :cond_28

    .line 835
    return-object v3

    .line 841
    .restart local v1    # "allParamsStatic":Z
    .restart local v5    # "expandedParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_90
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 842
    .local v10, "originalParam":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lcom/google/tagmanager/ResolvedFunctionCallBuilder;->createResolvedPropertyBuilder(Ljava/lang/String;)Lcom/google/tagmanager/ResolvedPropertyBuilder;

    move-result-object v4

    .line 844
    .local v4, "debugProperty":Lcom/google/tagmanager/ResolvedPropertyBuilder;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-interface {v4, v13}, Lcom/google/tagmanager/ResolvedPropertyBuilder;->createPropertyValueBuilder(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/ValueBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-direct {p0, v12, v0, v13}, Lcom/google/tagmanager/Runtime;->macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v11

    .line 847
    .restart local v11    # "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v12, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-eq v11, v12, :cond_d0

    .line 853
    invoke-virtual {v11}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v12

    if-nez v12, :cond_d3

    .line 858
    const/4 v1, 0x0

    .line 860
    :goto_c3
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v5, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 850
    :cond_d0
    sget-object v12, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v12

    .line 856
    :cond_d3
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->updateCacheableProperty(Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    goto :goto_c3

    .line 865
    .end local v4    # "debugProperty":Lcom/google/tagmanager/ResolvedPropertyBuilder;
    .end local v10    # "originalParam":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    .end local v11    # "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    :cond_e5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Incorrect keys for function "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " required "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Lcom/google/tagmanager/FunctionCallImplementation;->getRequiredKeys()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " had "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 868
    sget-object v12, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v12

    .line 871
    :cond_11d
    invoke-virtual {v9}, Lcom/google/tagmanager/FunctionCallImplementation;->isCacheable()Z

    move-result v12

    if-eqz v12, :cond_4c

    const/4 v2, 0x1

    goto/16 :goto_4d

    .line 878
    .restart local v2    # "cacheable":Z
    .restart local v11    # "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    :cond_126
    iget-object v12, p0, Lcom/google/tagmanager/Runtime;->mFunctionCallCache:Lcom/google/tagmanager/Cache;

    move-object/from16 v0, p2

    invoke-interface {v12, v0, v11}, Lcom/google/tagmanager/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_58
.end method

.method private static getFunctionName(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Ljava/lang/String;
    .registers 3
    .param p0, "functionCall"    # Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->getProperties()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/containertag/common/Key;->INSTANCE_NAME:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v0}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getOrAddMacroInfo(Ljava/util/Map;Ljava/lang/String;)Lcom/google/tagmanager/Runtime$MacroInfo;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/Runtime$MacroInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/tagmanager/Runtime$MacroInfo;"
        }
    .end annotation

    .prologue
    .line 467
    .local p0, "macroLookup":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/tagmanager/Runtime$MacroInfo;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/Runtime$MacroInfo;

    .line 468
    .local v0, "result":Lcom/google/tagmanager/Runtime$MacroInfo;
    if-eqz v0, :cond_9

    .line 472
    :goto_8
    return-object v0

    .line 469
    :cond_9
    new-instance v0, Lcom/google/tagmanager/Runtime$MacroInfo;

    .end local v0    # "result":Lcom/google/tagmanager/Runtime$MacroInfo;
    invoke-direct {v0}, Lcom/google/tagmanager/Runtime$MacroInfo;-><init>()V

    .line 470
    .restart local v0    # "result":Lcom/google/tagmanager/Runtime$MacroInfo;
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method private macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .registers 13
    .param p1, "value"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .param p3, "debugValueBuilder"    # Lcom/google/tagmanager/ValueBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/ValueBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "pendingMacroExpansions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 710
    iget-boolean v6, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-eqz v6, :cond_26

    .line 718
    iget v6, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    packed-switch v6, :pswitch_data_176

    .line 797
    :pswitch_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 798
    sget-object v6, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v6

    .line 712
    :cond_26
    new-instance v6, Lcom/google/tagmanager/ObjectAndStatic;

    const/4 v7, 0x1

    invoke-direct {v6, p1, v7}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v6

    .line 720
    :pswitch_2d
    invoke-static {p1}, Lcom/google/tagmanager/ResourceUtil;->newValueBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v4

    .line 721
    .local v4, "newValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v6, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v6, v6

    new-array v6, v6, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v6, v4, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 722
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_39
    iget-object v6, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v6, v6

    if-lt v0, v6, :cond_44

    .line 732
    new-instance v6, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-direct {v6, v4, v8}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v6

    .line 723
    :cond_44
    iget-object v6, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v6, v6, v0

    invoke-interface {p3, v0}, Lcom/google/tagmanager/ValueBuilder;->getListItem(I)Lcom/google/tagmanager/ValueBuilder;

    move-result-object v7

    invoke-direct {p0, v6, p2, v7}, Lcom/google/tagmanager/Runtime;->macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v1

    .line 725
    .local v1, "macroExpand":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v6, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-eq v1, v6, :cond_61

    .line 729
    iget-object v7, v4, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v1}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aput-object v6, v7, v0

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 727
    :cond_61
    sget-object v6, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v6

    .line 736
    .end local v0    # "i":I
    .end local v1    # "macroExpand":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    .end local v4    # "newValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :pswitch_64
    invoke-static {p1}, Lcom/google/tagmanager/ResourceUtil;->newValueBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v4

    .line 737
    .restart local v4    # "newValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v6, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v6, v6

    iget-object v7, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v7, v7

    if-ne v6, v7, :cond_8a

    .line 742
    iget-object v6, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v6, v6

    new-array v6, v6, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v6, v4, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 743
    iget-object v6, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v6, v6

    new-array v6, v6, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v6, v4, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 744
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7f
    iget-object v6, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v6, v6

    if-lt v0, v6, :cond_a8

    .line 760
    new-instance v6, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-direct {v6, v4, v8}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v6

    .line 739
    .end local v0    # "i":I
    :cond_8a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid serving value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 740
    sget-object v6, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v6

    .line 745
    .restart local v0    # "i":I
    :cond_a8
    iget-object v6, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v6, v6, v0

    invoke-interface {p3, v0}, Lcom/google/tagmanager/ValueBuilder;->getMapKey(I)Lcom/google/tagmanager/ValueBuilder;

    move-result-object v7

    invoke-direct {p0, v6, p2, v7}, Lcom/google/tagmanager/Runtime;->macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v2

    .line 748
    .local v2, "macroExpandKey":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    iget-object v6, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v6, v6, v0

    invoke-interface {p3, v0}, Lcom/google/tagmanager/ValueBuilder;->getMapValue(I)Lcom/google/tagmanager/ValueBuilder;

    move-result-object v7

    invoke-direct {p0, v6, p2, v7}, Lcom/google/tagmanager/Runtime;->macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v3

    .line 751
    .local v3, "macroExpandValue":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v6, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-ne v2, v6, :cond_c7

    .line 754
    :cond_c4
    sget-object v6, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v6

    .line 751
    :cond_c7
    sget-object v6, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-eq v3, v6, :cond_c4

    .line 756
    iget-object v7, v4, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v2}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aput-object v6, v7, v0

    .line 757
    iget-object v7, v4, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v3}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aput-object v6, v7, v0

    .line 744
    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    .line 764
    .end local v0    # "i":I
    .end local v2    # "macroExpandKey":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    .end local v3    # "macroExpandValue":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    .end local v4    # "newValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :pswitch_e2
    iget-object v6, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-interface {p2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_105

    .line 771
    iget-object v6, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-interface {p2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 772
    iget-object v6, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-interface {p3}, Lcom/google/tagmanager/ValueBuilder;->createValueMacroEvaluationInfoExtension()Lcom/google/tagmanager/MacroEvaluationInfoBuilder;

    move-result-object v7

    invoke-direct {p0, v6, p2, v7}, Lcom/google/tagmanager/Runtime;->evaluateMacroReferenceCycleDetection(Ljava/lang/String;Ljava/util/Set;Lcom/google/tagmanager/MacroEvaluationInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v5

    .line 775
    .local v5, "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    iget-object v6, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    invoke-static {v5, v6}, Lcom/google/tagmanager/ValueEscapeUtil;->applyEscapings(Lcom/google/tagmanager/ObjectAndStatic;[I)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v5

    .line 776
    iget-object v6, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-interface {p2, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 777
    return-object v5

    .line 766
    .end local v5    # "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    :cond_105
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Macro cycle detected.  Current macro reference: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  Previous macro references: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 769
    sget-object v6, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v6

    .line 781
    :pswitch_13e
    invoke-static {p1}, Lcom/google/tagmanager/ResourceUtil;->newValueBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v4

    .line 782
    .restart local v4    # "newValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v6, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v6, v6

    new-array v6, v6, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v6, v4, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 783
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_14a
    iget-object v6, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v6, v6

    if-lt v0, v6, :cond_155

    .line 792
    new-instance v6, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-direct {v6, v4, v8}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v6

    .line 784
    :cond_155
    iget-object v6, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v6, v6, v0

    invoke-interface {p3, v0}, Lcom/google/tagmanager/ValueBuilder;->getTemplateToken(I)Lcom/google/tagmanager/ValueBuilder;

    move-result-object v7

    invoke-direct {p0, v6, p2, v7}, Lcom/google/tagmanager/Runtime;->macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v1

    .line 786
    .restart local v1    # "macroExpand":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v6, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-eq v1, v6, :cond_172

    .line 790
    iget-object v7, v4, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v1}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aput-object v6, v7, v0

    .line 783
    add-int/lit8 v0, v0, 0x1

    goto :goto_14a

    .line 788
    :cond_172
    sget-object v6, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v6

    .line 718
    nop

    :pswitch_data_176
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_64
        :pswitch_e2
        :pswitch_a
        :pswitch_a
        :pswitch_13e
    .end packed-switch
.end method

.method private pushUnevaluatedValueToDataLayer(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)V
    .registers 10
    .param p1, "pushAfterEvaluate"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 665
    .local p2, "pendingMacroExpansions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_10

    .line 668
    new-instance v6, Lcom/google/tagmanager/NoopValueBuilder;

    invoke-direct {v6}, Lcom/google/tagmanager/NoopValueBuilder;-><init>()V

    invoke-direct {p0, p1, p2, v6}, Lcom/google/tagmanager/Runtime;->macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v0

    .line 670
    .local v0, "evaluatedPush":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v6, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-ne v0, v6, :cond_11

    .line 695
    :cond_f
    :goto_f
    return-void

    .line 666
    .end local v0    # "evaluatedPush":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    :cond_10
    return-void

    .line 671
    .restart local v0    # "evaluatedPush":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    :cond_11
    invoke-virtual {v0}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v6}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v5

    .line 673
    .local v5, "pushValueAsObject":Ljava/lang/Object;
    instance-of v6, v5, Ljava/util/Map;

    if-nez v6, :cond_2a

    .line 678
    instance-of v6, v5, Ljava/util/List;

    if-nez v6, :cond_33

    .line 692
    const-string/jumbo v6, "pushAfterEvaluate: value not a Map or List"

    invoke-static {v6}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_f

    :cond_2a
    move-object v4, v5

    .line 676
    check-cast v4, Ljava/util/Map;

    .line 677
    .local v4, "pushValueAsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/google/tagmanager/Runtime;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    invoke-virtual {v6, v4}, Lcom/google/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_f

    .end local v4    # "pushValueAsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_33
    move-object v3, v5

    .line 681
    check-cast v3, Ljava/util/List;

    .line 682
    .local v3, "pushValueAsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 683
    .local v2, "item":Ljava/lang/Object;
    instance-of v6, v2, Ljava/util/Map;

    if-nez v6, :cond_4f

    .line 688
    const-string/jumbo v6, "pushAfterEvaluate: value not a Map"

    invoke-static {v6}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_3a

    :cond_4f
    move-object v4, v2

    .line 685
    check-cast v4, Ljava/util/Map;

    .line 686
    .restart local v4    # "pushValueAsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/google/tagmanager/Runtime;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    invoke-virtual {v6, v4}, Lcom/google/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_3a
.end method

.method private static verifyFunctionAndNameListSizes(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .param p2, "operation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 899
    .local p0, "functionList":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    .local p1, "ruleNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 903
    :goto_a
    return-void

    .line 900
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid resource: imbalance of rule names of functions for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " operation. Using default rule name instead"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->i(Ljava/lang/String;)V

    goto :goto_a
.end method


# virtual methods
.method addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V
    .registers 3
    .param p1, "macro"    # Lcom/google/tagmanager/FunctionCallImplementation;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mMacroMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/tagmanager/Runtime;->addFunctionImplToMap(Ljava/util/Map;Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 539
    return-void
.end method

.method addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V
    .registers 3
    .param p1, "predicate"    # Lcom/google/tagmanager/FunctionCallImplementation;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 548
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mPredicateMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/tagmanager/Runtime;->addFunctionImplToMap(Ljava/util/Map;Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 549
    return-void
.end method

.method addTrackingTag(Lcom/google/tagmanager/FunctionCallImplementation;)V
    .registers 3
    .param p1, "tag"    # Lcom/google/tagmanager/FunctionCallImplementation;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mTrackingTagMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/tagmanager/Runtime;->addFunctionImplToMap(Ljava/util/Map;Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 544
    return-void
.end method

.method calculateMacrosToRun(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .registers 15
    .param p1, "macroName"    # Ljava/lang/String;
    .param p8, "debugRulesEvaluation"    # Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 404
    .local p2, "rules":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/tagmanager/ResourceUtil$ExpandedRule;>;"
    .local p3, "addMacros":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;>;"
    .local p4, "addMacroRuleNames":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p5, "removeMacros":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;>;"
    .local p6, "removeMacroRuleNames":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p7, "pendingMacroExpansions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/tagmanager/Runtime$3;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/tagmanager/Runtime$3;-><init>(Lcom/google/tagmanager/Runtime;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-direct {p0, p2, p7, v0, p8}, Lcom/google/tagmanager/Runtime;->calculateGenericToRun(Ljava/util/Set;Ljava/util/Set;Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v0

    return-object v0
.end method

.method calculateTagsToRun(Ljava/util/Set;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .registers 5
    .param p2, "debugRulesEvaluation"    # Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            ">;",
            "Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 445
    .local p1, "rules":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/tagmanager/ResourceUtil$ExpandedRule;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lcom/google/tagmanager/Runtime$4;

    invoke-direct {v1, p0}, Lcom/google/tagmanager/Runtime$4;-><init>(Lcom/google/tagmanager/Runtime;)V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/tagmanager/Runtime;->calculateGenericToRun(Ljava/util/Set;Ljava/util/Set;Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v0

    return-object v0
.end method

.method public evaluateMacroReference(Ljava/lang/String;)Lcom/google/tagmanager/ObjectAndStatic;
    .registers 6
    .param p1, "macroName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic",
            "<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    iget-object v2, p0, Lcom/google/tagmanager/Runtime;->eventInfoDistributor:Lcom/google/tagmanager/EventInfoDistributor;

    invoke-interface {v2, p1}, Lcom/google/tagmanager/EventInfoDistributor;->createMacroEvalutionEventInfo(Ljava/lang/String;)Lcom/google/tagmanager/EventInfoBuilder;

    move-result-object v0

    .line 367
    .local v0, "eventInfoBuilder":Lcom/google/tagmanager/EventInfoBuilder;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Lcom/google/tagmanager/EventInfoBuilder;->createMacroEvaluationInfoBuilder()Lcom/google/tagmanager/MacroEvaluationInfoBuilder;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/google/tagmanager/Runtime;->evaluateMacroReferenceCycleDetection(Ljava/lang/String;Ljava/util/Set;Lcom/google/tagmanager/MacroEvaluationInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v1

    .line 369
    .local v1, "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-interface {v0}, Lcom/google/tagmanager/EventInfoBuilder;->processEventInfo()V

    .line 370
    return-object v1
.end method

.method evaluatePredicate(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .registers 8
    .param p1, "predicate"    # Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    .param p3, "debugFunctionCall"    # Lcom/google/tagmanager/ResolvedFunctionCallBuilder;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/ResolvedFunctionCallBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    .local p2, "pendingMacroExpansions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/tagmanager/Runtime;->mPredicateMap:Ljava/util/Map;

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/google/tagmanager/Runtime;->executeFunction(Ljava/util/Map;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v1

    .line 559
    .local v1, "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-virtual {v1}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v2}, Lcom/google/tagmanager/Types;->valueToBoolean(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Boolean;

    move-result-object v0

    .line 560
    .local v0, "predicateResult":Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/google/tagmanager/ResolvedFunctionCallBuilder;->setFunctionResult(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    .line 561
    new-instance v2, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-virtual {v1}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v2
.end method

.method evaluatePredicatesInRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/util/Set;Lcom/google/tagmanager/ResolvedRuleBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .registers 11
    .param p1, "rule"    # Lcom/google/tagmanager/ResourceUtil$ExpandedRule;
    .param p3, "debugRuleBuilder"    # Lcom/google/tagmanager/ResolvedRuleBuilder;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/ResolvedRuleBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "pendingMacroExpansions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 573
    const/4 v0, 0x1

    .line 575
    .local v0, "allStatic":Z
    invoke-virtual {p1}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getNegativePredicates()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_34

    .line 588
    invoke-virtual {p1}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getPositivePredicates()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_73

    .line 599
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v4

    invoke-interface {p3, v4}, Lcom/google/tagmanager/ResolvedRuleBuilder;->setValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    .line 600
    new-instance v4, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v4

    .line 575
    :cond_34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 576
    .local v1, "f":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    invoke-interface {p3}, Lcom/google/tagmanager/ResolvedRuleBuilder;->createNegativePredicate()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;

    move-result-object v4

    invoke-virtual {p0, v1, p2, v4}, Lcom/google/tagmanager/Runtime;->evaluatePredicate(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v3

    .line 580
    .local v3, "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_52

    .line 584
    if-nez v0, :cond_6b

    :cond_50
    move v0, v6

    :goto_51
    goto :goto_b

    .line 581
    :cond_52
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v4

    invoke-interface {p3, v4}, Lcom/google/tagmanager/ResolvedRuleBuilder;->setValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    .line 582
    new-instance v4, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v4

    .line 584
    :cond_6b
    invoke-virtual {v3}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v4

    if-eqz v4, :cond_50

    move v0, v5

    goto :goto_51

    .line 588
    .end local v1    # "f":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    .end local v3    # "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Ljava/lang/Boolean;>;"
    :cond_73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 589
    .restart local v1    # "f":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    invoke-interface {p3}, Lcom/google/tagmanager/ResolvedRuleBuilder;->createPositivePredicate()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;

    move-result-object v4

    invoke-virtual {p0, v1, p2, v4}, Lcom/google/tagmanager/Runtime;->evaluatePredicate(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v3

    .line 593
    .restart local v3    # "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_91

    .line 597
    if-nez v0, :cond_aa

    :cond_8f
    move v0, v6

    :goto_90
    goto :goto_19

    .line 594
    :cond_91
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v4

    invoke-interface {p3, v4}, Lcom/google/tagmanager/ResolvedRuleBuilder;->setValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    .line 595
    new-instance v4, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v4

    .line 597
    :cond_aa
    invoke-virtual {v3}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v4

    if-eqz v4, :cond_8f

    move v0, v5

    goto :goto_90
.end method

.method public declared-synchronized evaluateTags(Ljava/lang/String;)V
    .registers 9
    .param p1, "currentEventName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 346
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/Runtime;->setCurrentEventName(Ljava/lang/String;)V

    .line 347
    iget-object v4, p0, Lcom/google/tagmanager/Runtime;->eventInfoDistributor:Lcom/google/tagmanager/EventInfoDistributor;

    invoke-interface {v4, p1}, Lcom/google/tagmanager/EventInfoDistributor;->createDataLayerEventEvaluationEventInfo(Ljava/lang/String;)Lcom/google/tagmanager/EventInfoBuilder;

    move-result-object v1

    .line 349
    .local v1, "eventInfoBuilder":Lcom/google/tagmanager/EventInfoBuilder;
    invoke-interface {v1}, Lcom/google/tagmanager/EventInfoBuilder;->createDataLayerEventEvaluationInfoBuilder()Lcom/google/tagmanager/DataLayerEventEvaluationInfoBuilder;

    move-result-object v0

    .line 352
    .local v0, "debugDataLayerBuilder":Lcom/google/tagmanager/DataLayerEventEvaluationInfoBuilder;
    iget-object v4, p0, Lcom/google/tagmanager/Runtime;->mRules:Ljava/util/Set;

    invoke-interface {v0}, Lcom/google/tagmanager/DataLayerEventEvaluationInfoBuilder;->createRulesEvaluation()Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/google/tagmanager/Runtime;->calculateTagsToRun(Ljava/util/Set;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_31

    .line 356
    invoke-interface {v1}, Lcom/google/tagmanager/EventInfoBuilder;->processEventInfo()V

    .line 358
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/google/tagmanager/Runtime;->setCurrentEventName(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_46

    monitor-exit p0

    .line 359
    return-void

    .line 352
    :cond_31
    :try_start_31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 353
    .local v3, "tag":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    iget-object v4, p0, Lcom/google/tagmanager/Runtime;->mTrackingTagMap:Ljava/util/Map;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Lcom/google/tagmanager/DataLayerEventEvaluationInfoBuilder;->createAndAddResult()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;

    move-result-object v6

    invoke-direct {p0, v4, v3, v5, v6}, Lcom/google/tagmanager/Runtime;->executeFunction(Ljava/util/Map;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    :try_end_45
    .catchall {:try_start_31 .. :try_end_45} :catchall_46

    goto :goto_22

    .end local v0    # "debugDataLayerBuilder":Lcom/google/tagmanager/DataLayerEventEvaluationInfoBuilder;
    .end local v1    # "eventInfoBuilder":Lcom/google/tagmanager/EventInfoBuilder;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "tag":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    :catchall_46
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method declared-synchronized getCurrentEventName()Ljava/lang/String;
    .registers 2

    .prologue
    monitor-enter p0

    .line 379
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mCurrentEventName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getResource()Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mResource:Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    return-object v0
.end method

.method declared-synchronized setCurrentEventName(Ljava/lang/String;)V
    .registers 3
    .param p1, "currentEventName"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    monitor-enter p0

    .line 375
    :try_start_1
    iput-object p1, p0, Lcom/google/tagmanager/Runtime;->mCurrentEventName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    .line 376
    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSupplementals(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/containertag/proto/Serving$Supplemental;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "supplementals":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/containertag/proto/Serving$Supplemental;>;"
    monitor-enter p0

    .line 329
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2f

    move-result v2

    if-nez v2, :cond_d

    monitor-exit p0

    .line 337
    return-void

    .line 329
    :cond_d
    :try_start_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .line 330
    .local v1, "supplemental":Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    iget-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    if-nez v2, :cond_32

    .line 332
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignored supplemental: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_2f

    goto :goto_5

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "supplemental":Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    :catchall_2f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 330
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "supplemental":Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    :cond_32
    :try_start_32
    iget-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    const-string/jumbo v3, "gaExperiment:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 335
    iget-object v2, p0, Lcom/google/tagmanager/Runtime;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    invoke-static {v2, v1}, Lcom/google/tagmanager/ExperimentMacroHelper;->handleExperimentSupplemental(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$Supplemental;)V
    :try_end_42
    .catchall {:try_start_32 .. :try_end_42} :catchall_2f

    goto :goto_5
.end method
