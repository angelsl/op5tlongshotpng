.class Lcom/google/tagmanager/Runtime;
.super Ljava/lang/Object;
.source "Runtime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/Runtime$CachedMacro;,
        Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;,
        Lcom/google/tagmanager/Runtime$MacroInfo;
    }
.end annotation


# static fields
.field static final DEFAULT_RULE_NAME:Ljava/lang/String; = "Unknown"

.field private static final DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/ObjectAndStatic<",
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
            "Lcom/google/tagmanager/Cache<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMacroEvaluationCache:Lcom/google/tagmanager/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/Cache<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/Runtime$CachedMacro;",
            ">;"
        }
    .end annotation
.end field

.field private final mMacroLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/Runtime$MacroInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMacroMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/FunctionCallImplementation;",
            ">;"
        }
    .end annotation
.end field

.field private final mPredicateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
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
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackingTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/FunctionCallImplementation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 25
    new-instance v0, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/ResourceUtil$ExpandedResource;Lcom/google/tagmanager/DataLayer;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    .param p3, "dataLayer"    # Lcom/google/tagmanager/DataLayer;
    .param p4, "functionCallMacroEvaluator"    # Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;
    .param p5, "functionCallTagEvaluator"    # Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;

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
    .registers 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    .param p3, "dataLayer"    # Lcom/google/tagmanager/DataLayer;
    .param p4, "functionCallMacroEvaluator"    # Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;
    .param p5, "functionCallTagEvaluator"    # Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;
    .param p6, "eventInfoDistributor"    # Lcom/google/tagmanager/EventInfoDistributor;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 180
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 181
    if-eqz v2, :cond_2e7

    .line 185
    iput-object v2, v0, Lcom/google/tagmanager/Runtime;->mResource:Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    .line 186
    new-instance v4, Ljava/util/HashSet;

    invoke-virtual/range {p2 .. p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->getRules()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v4, v0, Lcom/google/tagmanager/Runtime;->mRules:Ljava/util/Set;

    .line 187
    iput-object v3, v0, Lcom/google/tagmanager/Runtime;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    .line 189
    move-object/from16 v4, p6

    iput-object v4, v0, Lcom/google/tagmanager/Runtime;->eventInfoDistributor:Lcom/google/tagmanager/EventInfoDistributor;

    .line 192
    new-instance v5, Lcom/google/tagmanager/Runtime$1;

    invoke-direct {v5, v0}, Lcom/google/tagmanager/Runtime$1;-><init>(Lcom/google/tagmanager/Runtime;)V

    .line 201
    .local v5, "functionCacheSizeManager":Lcom/google/tagmanager/CacheFactory$CacheSizeManager;, "Lcom/google/tagmanager/CacheFactory$CacheSizeManager<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;>;"
    new-instance v6, Lcom/google/tagmanager/CacheFactory;

    invoke-direct {v6}, Lcom/google/tagmanager/CacheFactory;-><init>()V

    const/high16 v7, 0x100000

    invoke-virtual {v6, v7, v5}, Lcom/google/tagmanager/CacheFactory;->createCache(ILcom/google/tagmanager/CacheFactory$CacheSizeManager;)Lcom/google/tagmanager/Cache;

    move-result-object v6

    iput-object v6, v0, Lcom/google/tagmanager/Runtime;->mFunctionCallCache:Lcom/google/tagmanager/Cache;

    .line 204
    new-instance v6, Lcom/google/tagmanager/Runtime$2;

    invoke-direct {v6, v0}, Lcom/google/tagmanager/Runtime$2;-><init>(Lcom/google/tagmanager/Runtime;)V

    .line 211
    .local v6, "macroCacheSizeManager":Lcom/google/tagmanager/CacheFactory$CacheSizeManager;, "Lcom/google/tagmanager/CacheFactory$CacheSizeManager<Ljava/lang/String;Lcom/google/tagmanager/Runtime$CachedMacro;>;"
    new-instance v8, Lcom/google/tagmanager/CacheFactory;

    invoke-direct {v8}, Lcom/google/tagmanager/CacheFactory;-><init>()V

    invoke-virtual {v8, v7, v6}, Lcom/google/tagmanager/CacheFactory;->createCache(ILcom/google/tagmanager/CacheFactory$CacheSizeManager;)Lcom/google/tagmanager/Cache;

    move-result-object v7

    iput-object v7, v0, Lcom/google/tagmanager/Runtime;->mMacroEvaluationCache:Lcom/google/tagmanager/Cache;

    .line 217
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Lcom/google/tagmanager/Runtime;->mTrackingTagMap:Ljava/util/Map;

    .line 218
    new-instance v7, Lcom/google/tagmanager/ArbitraryPixelTag;

    invoke-direct {v7, v1}, Lcom/google/tagmanager/ArbitraryPixelTag;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addTrackingTag(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 219
    new-instance v7, Lcom/google/tagmanager/CustomFunctionCall;

    move-object/from16 v8, p5

    invoke-direct {v7, v8}, Lcom/google/tagmanager/CustomFunctionCall;-><init>(Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addTrackingTag(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 220
    new-instance v7, Lcom/google/tagmanager/DataLayerWriteTag;

    invoke-direct {v7, v3}, Lcom/google/tagmanager/DataLayerWriteTag;-><init>(Lcom/google/tagmanager/DataLayer;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addTrackingTag(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 221
    new-instance v7, Lcom/google/tagmanager/UniversalAnalyticsTag;

    invoke-direct {v7, v1, v3}, Lcom/google/tagmanager/UniversalAnalyticsTag;-><init>(Landroid/content/Context;Lcom/google/tagmanager/DataLayer;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addTrackingTag(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 223
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Lcom/google/tagmanager/Runtime;->mPredicateMap:Ljava/util/Map;

    .line 224
    new-instance v7, Lcom/google/tagmanager/ContainsPredicate;

    invoke-direct {v7}, Lcom/google/tagmanager/ContainsPredicate;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 225
    new-instance v7, Lcom/google/tagmanager/EndsWithPredicate;

    invoke-direct {v7}, Lcom/google/tagmanager/EndsWithPredicate;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 226
    new-instance v7, Lcom/google/tagmanager/EqualsPredicate;

    invoke-direct {v7}, Lcom/google/tagmanager/EqualsPredicate;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 227
    new-instance v7, Lcom/google/tagmanager/GreaterEqualsPredicate;

    invoke-direct {v7}, Lcom/google/tagmanager/GreaterEqualsPredicate;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 228
    new-instance v7, Lcom/google/tagmanager/GreaterThanPredicate;

    invoke-direct {v7}, Lcom/google/tagmanager/GreaterThanPredicate;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 229
    new-instance v7, Lcom/google/tagmanager/LessEqualsPredicate;

    invoke-direct {v7}, Lcom/google/tagmanager/LessEqualsPredicate;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 230
    new-instance v7, Lcom/google/tagmanager/LessThanPredicate;

    invoke-direct {v7}, Lcom/google/tagmanager/LessThanPredicate;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 231
    new-instance v7, Lcom/google/tagmanager/RegexPredicate;

    invoke-direct {v7}, Lcom/google/tagmanager/RegexPredicate;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 232
    new-instance v7, Lcom/google/tagmanager/StartsWithPredicate;

    invoke-direct {v7}, Lcom/google/tagmanager/StartsWithPredicate;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 234
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Lcom/google/tagmanager/Runtime;->mMacroMap:Ljava/util/Map;

    .line 235
    new-instance v7, Lcom/google/tagmanager/AdvertiserIdMacro;

    invoke-direct {v7, v1}, Lcom/google/tagmanager/AdvertiserIdMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 236
    new-instance v7, Lcom/google/tagmanager/AdvertisingTrackingEnabledMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/AdvertisingTrackingEnabledMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 237
    new-instance v7, Lcom/google/tagmanager/AdwordsClickReferrerMacro;

    invoke-direct {v7, v1}, Lcom/google/tagmanager/AdwordsClickReferrerMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 238
    new-instance v7, Lcom/google/tagmanager/AppIdMacro;

    invoke-direct {v7, v1}, Lcom/google/tagmanager/AppIdMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 239
    new-instance v7, Lcom/google/tagmanager/AppNameMacro;

    invoke-direct {v7, v1}, Lcom/google/tagmanager/AppNameMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 240
    new-instance v7, Lcom/google/tagmanager/AppVersionMacro;

    invoke-direct {v7, v1}, Lcom/google/tagmanager/AppVersionMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 241
    new-instance v7, Lcom/google/tagmanager/ConstantMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/ConstantMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 242
    new-instance v7, Lcom/google/tagmanager/ContainerVersionMacro;

    invoke-direct {v7, v0}, Lcom/google/tagmanager/ContainerVersionMacro;-><init>(Lcom/google/tagmanager/Runtime;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 243
    new-instance v7, Lcom/google/tagmanager/CustomFunctionCall;

    move-object/from16 v9, p4

    invoke-direct {v7, v9}, Lcom/google/tagmanager/CustomFunctionCall;-><init>(Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 244
    new-instance v7, Lcom/google/tagmanager/DataLayerMacro;

    invoke-direct {v7, v3}, Lcom/google/tagmanager/DataLayerMacro;-><init>(Lcom/google/tagmanager/DataLayer;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 245
    new-instance v7, Lcom/google/tagmanager/DeviceIdMacro;

    invoke-direct {v7, v1}, Lcom/google/tagmanager/DeviceIdMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 246
    new-instance v7, Lcom/google/tagmanager/DeviceNameMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/DeviceNameMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 247
    new-instance v7, Lcom/google/tagmanager/EncodeMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/EncodeMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 248
    new-instance v7, Lcom/google/tagmanager/EventMacro;

    invoke-direct {v7, v0}, Lcom/google/tagmanager/EventMacro;-><init>(Lcom/google/tagmanager/Runtime;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 249
    new-instance v7, Lcom/google/tagmanager/GtmVersionMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/GtmVersionMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 250
    new-instance v7, Lcom/google/tagmanager/HashMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/HashMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 251
    new-instance v7, Lcom/google/tagmanager/InstallReferrerMacro;

    invoke-direct {v7, v1}, Lcom/google/tagmanager/InstallReferrerMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 252
    new-instance v7, Lcom/google/tagmanager/JoinerMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/JoinerMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 253
    new-instance v7, Lcom/google/tagmanager/LanguageMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/LanguageMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 254
    new-instance v7, Lcom/google/tagmanager/MobileAdwordsUniqueIdMacro;

    invoke-direct {v7, v1}, Lcom/google/tagmanager/MobileAdwordsUniqueIdMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 255
    new-instance v7, Lcom/google/tagmanager/OsVersionMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/OsVersionMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 256
    new-instance v7, Lcom/google/tagmanager/PlatformMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/PlatformMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 257
    new-instance v7, Lcom/google/tagmanager/RandomMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/RandomMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 258
    new-instance v7, Lcom/google/tagmanager/RegexGroupMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/RegexGroupMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 259
    new-instance v7, Lcom/google/tagmanager/ResolutionMacro;

    invoke-direct {v7, v1}, Lcom/google/tagmanager/ResolutionMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 260
    new-instance v7, Lcom/google/tagmanager/RuntimeVersionMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/RuntimeVersionMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 261
    new-instance v7, Lcom/google/tagmanager/SdkVersionMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/SdkVersionMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 262
    new-instance v7, Lcom/google/tagmanager/TimeMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/TimeMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 265
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Lcom/google/tagmanager/Runtime;->mMacroLookup:Ljava/util/Map;

    .line 268
    iget-object v7, v0, Lcom/google/tagmanager/Runtime;->mRules:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1b0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_28b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;

    .line 272
    .local v10, "rule":Lcom/google/tagmanager/ResourceUtil$ExpandedRule;
    invoke-interface/range {p6 .. p6}, Lcom/google/tagmanager/EventInfoDistributor;->debugMode()Z

    move-result v11

    if-eqz v11, :cond_1f6

    .line 273
    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacros()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacroRuleNames()Ljava/util/List;

    move-result-object v12

    const-string v13, "add macro"

    invoke-static {v11, v12, v13}, Lcom/google/tagmanager/Runtime;->verifyFunctionAndNameListSizes(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacros()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacroRuleNames()Ljava/util/List;

    move-result-object v12

    const-string v13, "remove macro"

    invoke-static {v11, v12, v13}, Lcom/google/tagmanager/Runtime;->verifyFunctionAndNameListSizes(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddTags()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddTagRuleNames()Ljava/util/List;

    move-result-object v12

    const-string v13, "add tag"

    invoke-static {v11, v12, v13}, Lcom/google/tagmanager/Runtime;->verifyFunctionAndNameListSizes(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveTags()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveTagRuleNames()Ljava/util/List;

    move-result-object v12

    const-string v13, "remove tag"

    invoke-static {v11, v12, v13}, Lcom/google/tagmanager/Runtime;->verifyFunctionAndNameListSizes(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 282
    :cond_1f6
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1f7
    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacros()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_23e

    .line 283
    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacros()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 284
    .local v13, "function":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    const-string v14, "Unknown"

    .line 285
    .local v14, "ruleName":Ljava/lang/String;
    invoke-interface/range {p6 .. p6}, Lcom/google/tagmanager/EventInfoDistributor;->debugMode()Z

    move-result v15

    if-eqz v15, :cond_228

    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacroRuleNames()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v12, v15, :cond_228

    .line 286
    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacroRuleNames()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object v14, v15

    check-cast v14, Ljava/lang/String;

    .line 288
    :cond_228
    iget-object v15, v0, Lcom/google/tagmanager/Runtime;->mMacroLookup:Ljava/util/Map;

    invoke-static {v13}, Lcom/google/tagmanager/Runtime;->getFunctionName(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v15, v11}, Lcom/google/tagmanager/Runtime;->getOrAddMacroInfo(Ljava/util/Map;Ljava/lang/String;)Lcom/google/tagmanager/Runtime$MacroInfo;

    move-result-object v11

    .line 289
    .local v11, "info":Lcom/google/tagmanager/Runtime$MacroInfo;
    invoke-virtual {v11, v10}, Lcom/google/tagmanager/Runtime$MacroInfo;->addRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;)V

    .line 290
    invoke-virtual {v11, v10, v13}, Lcom/google/tagmanager/Runtime$MacroInfo;->addAddMacroForRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)V

    .line 291
    invoke-virtual {v11, v10, v14}, Lcom/google/tagmanager/Runtime$MacroInfo;->addAddMacroRuleNameForRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/lang/String;)V

    .line 282
    .end local v11    # "info":Lcom/google/tagmanager/Runtime$MacroInfo;
    .end local v13    # "function":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    .end local v14    # "ruleName":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_1f7

    .line 293
    .end local v12    # "i":I
    :cond_23e
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_240
    move/from16 v11, v16

    .end local v16    # "i":I
    .local v11, "i":I
    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacros()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_289

    .line 294
    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacros()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 295
    .local v12, "function":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    const-string v13, "Unknown"

    .line 296
    .local v13, "ruleName":Ljava/lang/String;
    invoke-interface/range {p6 .. p6}, Lcom/google/tagmanager/EventInfoDistributor;->debugMode()Z

    move-result v14

    if-eqz v14, :cond_273

    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacroRuleNames()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_273

    .line 297
    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacroRuleNames()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v13, v14

    check-cast v13, Ljava/lang/String;

    .line 299
    :cond_273
    iget-object v14, v0, Lcom/google/tagmanager/Runtime;->mMacroLookup:Ljava/util/Map;

    invoke-static {v12}, Lcom/google/tagmanager/Runtime;->getFunctionName(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/google/tagmanager/Runtime;->getOrAddMacroInfo(Ljava/util/Map;Ljava/lang/String;)Lcom/google/tagmanager/Runtime$MacroInfo;

    move-result-object v14

    .line 300
    .local v14, "info":Lcom/google/tagmanager/Runtime$MacroInfo;
    invoke-virtual {v14, v10}, Lcom/google/tagmanager/Runtime$MacroInfo;->addRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;)V

    .line 301
    invoke-virtual {v14, v10, v12}, Lcom/google/tagmanager/Runtime$MacroInfo;->addRemoveMacroForRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)V

    .line 302
    invoke-virtual {v14, v10, v13}, Lcom/google/tagmanager/Runtime$MacroInfo;->addRemoveMacroRuleNameForRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/lang/String;)V

    .line 293
    .end local v12    # "function":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    .end local v13    # "ruleName":Ljava/lang/String;
    .end local v14    # "info":Lcom/google/tagmanager/Runtime$MacroInfo;
    add-int/lit8 v16, v11, 0x1

    .end local v11    # "i":I
    .restart local v16    # "i":I
    goto :goto_240

    .line 304
    .end local v10    # "rule":Lcom/google/tagmanager/ResourceUtil$ExpandedRule;
    .end local v16    # "i":I
    :cond_289
    goto/16 :goto_1b0

    .line 307
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_28b
    iget-object v7, v0, Lcom/google/tagmanager/Runtime;->mResource:Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    invoke-virtual {v7}, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->getAllMacros()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_299
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2e6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 308
    .local v10, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_2af
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2e5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 309
    .restart local v12    # "function":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    invoke-virtual {v12}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->getProperties()Ljava/util/Map;

    move-result-object v13

    sget-object v14, Lcom/google/analytics/containertag/common/Key;->NOT_DEFAULT_MACRO:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v14}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v13}, Lcom/google/tagmanager/Types;->valueToBoolean(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_2e4

    .line 311
    iget-object v13, v0, Lcom/google/tagmanager/Runtime;->mMacroLookup:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/google/tagmanager/Runtime;->getOrAddMacroInfo(Ljava/util/Map;Ljava/lang/String;)Lcom/google/tagmanager/Runtime$MacroInfo;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/google/tagmanager/Runtime$MacroInfo;->setDefault(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)V

    .line 313
    .end local v12    # "function":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    :cond_2e4
    goto :goto_2af

    .line 314
    .end local v10    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_2e5
    goto :goto_299

    .line 315
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_2e6
    return-void

    .line 182
    .end local v5    # "functionCacheSizeManager":Lcom/google/tagmanager/CacheFactory$CacheSizeManager;, "Lcom/google/tagmanager/CacheFactory$CacheSizeManager<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;>;"
    .end local v6    # "macroCacheSizeManager":Lcom/google/tagmanager/CacheFactory$CacheSizeManager;, "Lcom/google/tagmanager/CacheFactory$CacheSizeManager<Ljava/lang/String;Lcom/google/tagmanager/Runtime$CachedMacro;>;"
    :cond_2e7
    move-object/from16 v9, p4

    move-object/from16 v8, p5

    move-object/from16 v4, p6

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "resource cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static addFunctionImplToMap(Ljava/util/Map;Lcom/google/tagmanager/FunctionCallImplementation;)V
    .registers 5
    .param p1, "impl"    # Lcom/google/tagmanager/FunctionCallImplementation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/FunctionCallImplementation;",
            ">;",
            "Lcom/google/tagmanager/FunctionCallImplementation;",
            ")V"
        }
    .end annotation

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
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 530
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate function type name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/tagmanager/FunctionCallImplementation;->getInstanceFunctionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private calculateGenericToRun(Ljava/util/Set;Ljava/util/Set;Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .registers 13
    .param p3, "setPopulator"    # Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;
    .param p4, "debugRulesEvaluation"    # Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;",
            "Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;"
        }
    .end annotation

    .line 496
    .local p1, "rules":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/tagmanager/ResourceUtil$ExpandedRule;>;"
    .local p2, "pendingMacroExpansions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 497
    .local v0, "add":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 498
    .local v1, "remove":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    const/4 v2, 0x1

    .line 500
    .local v2, "allStatic":Z
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;

    .line 501
    .local v4, "rule":Lcom/google/tagmanager/ResourceUtil$ExpandedRule;
    invoke-interface {p4}, Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;->createResolvedRuleBuilder()Lcom/google/tagmanager/ResolvedRuleBuilder;

    move-result-object v5

    .line 502
    .local v5, "debugRuleBuilder":Lcom/google/tagmanager/ResolvedRuleBuilder;
    invoke-virtual {p0, v4, p2, v5}, Lcom/google/tagmanager/Runtime;->evaluatePredicatesInRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/util/Set;Lcom/google/tagmanager/ResolvedRuleBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v6

    .line 504
    .local v6, "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Ljava/lang/Boolean;>;"
    invoke-virtual {v6}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_32

    .line 505
    invoke-interface {p3, v4, v0, v1, v5}, Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;->rulePassed(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/util/Set;Ljava/util/Set;Lcom/google/tagmanager/ResolvedRuleBuilder;)V

    .line 507
    :cond_32
    if-eqz v2, :cond_3c

    invoke-virtual {v6}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v7

    if-eqz v7, :cond_3c

    const/4 v7, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v7, 0x0

    :goto_3d
    move v2, v7

    .line 508
    .end local v4    # "rule":Lcom/google/tagmanager/ResourceUtil$ExpandedRule;
    .end local v5    # "debugRuleBuilder":Lcom/google/tagmanager/ResolvedRuleBuilder;
    .end local v6    # "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Ljava/lang/Boolean;>;"
    goto :goto_f

    .line 512
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3f
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 513
    invoke-interface {p4, v0}, Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;->setEnabledFunctions(Ljava/util/Set;)V

    .line 514
    new-instance v3, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-direct {v3, v0, v2}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v3
.end method

.method private evaluateMacroReferenceCycleDetection(Ljava/lang/String;Ljava/util/Set;Lcom/google/tagmanager/MacroEvaluationInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .registers 16
    .param p1, "macroName"    # Ljava/lang/String;
    .param p3, "debugMacroEvaluation"    # Lcom/google/tagmanager/MacroEvaluationInfoBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/MacroEvaluationInfoBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 612
    .local p2, "pendingMacroExpansions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mMacroEvaluationCache:Lcom/google/tagmanager/Cache;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/Runtime$CachedMacro;

    .line 613
    .local v0, "cachedResult":Lcom/google/tagmanager/Runtime$CachedMacro;
    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/google/tagmanager/Runtime;->eventInfoDistributor:Lcom/google/tagmanager/EventInfoDistributor;

    invoke-interface {v1}, Lcom/google/tagmanager/EventInfoDistributor;->debugMode()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 614
    invoke-virtual {v0}, Lcom/google/tagmanager/Runtime$CachedMacro;->getPushAfterEvaluate()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/google/tagmanager/Runtime;->pushUnevaluatedValueToDataLayer(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)V

    .line 616
    invoke-virtual {v0}, Lcom/google/tagmanager/Runtime$CachedMacro;->getObjectAndStatic()Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v1

    return-object v1

    .line 619
    :cond_1e
    iget-object v1, p0, Lcom/google/tagmanager/Runtime;->mMacroLookup:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/Runtime$MacroInfo;

    .line 620
    .local v1, "macroInfo":Lcom/google/tagmanager/Runtime$MacroInfo;
    if-nez v1, :cond_3f

    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid macro: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 623
    sget-object v2, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v2

    .line 626
    :cond_3f
    invoke-virtual {v1}, Lcom/google/tagmanager/Runtime$MacroInfo;->getRules()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/tagmanager/Runtime$MacroInfo;->getAddMacros()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/tagmanager/Runtime$MacroInfo;->getAddMacroRuleNames()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/tagmanager/Runtime$MacroInfo;->getRemoveMacros()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v1}, Lcom/google/tagmanager/Runtime$MacroInfo;->getRemoveMacroRuleNames()Ljava/util/Map;

    move-result-object v9

    invoke-interface {p3}, Lcom/google/tagmanager/MacroEvaluationInfoBuilder;->createRulesEvaluation()Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;

    move-result-object v11

    move-object v3, p0

    move-object v4, p1

    move-object v10, p2

    invoke-virtual/range {v3 .. v11}, Lcom/google/tagmanager/Runtime;->calculateMacrosToRun(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v2

    .line 631
    .local v2, "macrosToRun":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Ljava/util/Set<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;>;"
    const/4 v3, 0x0

    .line 632
    .local v3, "macro":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    invoke-virtual {v2}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_71

    .line 633
    invoke-virtual {v1}, Lcom/google/tagmanager/Runtime$MacroInfo;->getDefault()Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    move-result-object v3

    goto :goto_a2

    .line 635
    :cond_71
    invoke-virtual {v2}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-le v4, v5, :cond_91

    .line 636
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Multiple macros active for macroName "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 638
    :cond_91
    invoke-virtual {v2}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 641
    :goto_a2
    if-nez v3, :cond_a7

    .line 643
    sget-object v4, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v4

    .line 646
    :cond_a7
    iget-object v4, p0, Lcom/google/tagmanager/Runtime;->mMacroMap:Ljava/util/Map;

    invoke-interface {p3}, Lcom/google/tagmanager/MacroEvaluationInfoBuilder;->createResult()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;

    move-result-object v6

    invoke-direct {p0, v4, v3, p2, v6}, Lcom/google/tagmanager/Runtime;->executeFunction(Ljava/util/Map;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v4

    .line 648
    .local v4, "macroResult":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-virtual {v2}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v6

    if-eqz v6, :cond_be

    invoke-virtual {v4}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v6

    if-eqz v6, :cond_be

    goto :goto_bf

    :cond_be
    const/4 v5, 0x0

    .line 651
    .local v5, "isStatic":Z
    :goto_bf
    sget-object v6, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-ne v4, v6, :cond_c6

    sget-object v6, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    goto :goto_cf

    :cond_c6
    new-instance v6, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-virtual {v4}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    .line 654
    .local v6, "toReturn":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    :goto_cf
    invoke-virtual {v3}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->getPushAfterEvaluate()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v7

    .line 655
    .local v7, "pushAfterEvaluate":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-virtual {v6}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v8

    if-eqz v8, :cond_e3

    .line 656
    iget-object v8, p0, Lcom/google/tagmanager/Runtime;->mMacroEvaluationCache:Lcom/google/tagmanager/Cache;

    new-instance v9, Lcom/google/tagmanager/Runtime$CachedMacro;

    invoke-direct {v9, v6, v7}, Lcom/google/tagmanager/Runtime$CachedMacro;-><init>(Lcom/google/tagmanager/ObjectAndStatic;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    invoke-interface {v8, p1, v9}, Lcom/google/tagmanager/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 658
    :cond_e3
    invoke-direct {p0, v7, p2}, Lcom/google/tagmanager/Runtime;->pushUnevaluatedValueToDataLayer(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)V

    .line 659
    return-object v6
.end method

.method private executeFunction(Ljava/util/Map;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .registers 23
    .param p2, "functionCall"    # Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    .param p4, "debugFunctionCall"    # Lcom/google/tagmanager/ResolvedFunctionCallBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/FunctionCallImplementation;",
            ">;",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/ResolvedFunctionCallBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .local p1, "implMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/tagmanager/FunctionCallImplementation;>;"
    .local p3, "pendingMacroExpansions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 816
    move-object/from16 v2, p4

    invoke-virtual/range {p2 .. p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->getProperties()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/google/analytics/containertag/common/Key;->FUNCTION:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v4}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 817
    .local v3, "functionIdValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-nez v3, :cond_20

    .line 819
    const-string v4, "No function id in properties"

    invoke-static {v4}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 820
    sget-object v4, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v4

    .line 822
    :cond_20
    iget-object v4, v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    .line 823
    .local v4, "functionId":Ljava/lang/String;
    move-object/from16 v5, p1

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/tagmanager/FunctionCallImplementation;

    .line 824
    .local v6, "impl":Lcom/google/tagmanager/FunctionCallImplementation;
    if-nez v6, :cond_43

    .line 826
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has no backing implementation."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 827
    sget-object v7, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v7

    .line 830
    :cond_43
    iget-object v7, v0, Lcom/google/tagmanager/Runtime;->mFunctionCallCache:Lcom/google/tagmanager/Cache;

    invoke-interface {v7, v1}, Lcom/google/tagmanager/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/tagmanager/ObjectAndStatic;

    .line 833
    .local v7, "cachedResult":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    if-eqz v7, :cond_56

    iget-object v8, v0, Lcom/google/tagmanager/Runtime;->eventInfoDistributor:Lcom/google/tagmanager/EventInfoDistributor;

    invoke-interface {v8}, Lcom/google/tagmanager/EventInfoDistributor;->debugMode()Z

    move-result v8

    if-nez v8, :cond_56

    .line 835
    return-object v7

    .line 838
    :cond_56
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 839
    .local v8, "expandedParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    const/4 v9, 0x1

    .line 841
    .local v9, "allParamsStatic":Z
    invoke-virtual/range {p2 .. p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->getProperties()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_68
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 842
    .local v11, "originalParam":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v2, v12}, Lcom/google/tagmanager/ResolvedFunctionCallBuilder;->createResolvedPropertyBuilder(Ljava/lang/String;)Lcom/google/tagmanager/ResolvedPropertyBuilder;

    move-result-object v12

    .line 844
    .local v12, "debugProperty":Lcom/google/tagmanager/ResolvedPropertyBuilder;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-interface {v12, v14}, Lcom/google/tagmanager/ResolvedPropertyBuilder;->createPropertyValueBuilder(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/ValueBuilder;

    move-result-object v14

    move-object/from16 v15, p3

    invoke-direct {v0, v13, v15, v14}, Lcom/google/tagmanager/Runtime;->macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v13

    .line 847
    .local v13, "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v14, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-ne v13, v14, :cond_9b

    .line 850
    sget-object v14, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v14

    .line 853
    :cond_9b
    invoke-virtual {v13}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v14

    if-eqz v14, :cond_b5

    .line 856
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v3

    move-object/from16 v3, v16

    check-cast v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .end local v3    # "functionIdValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .local v17, "functionIdValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-virtual {v1, v14, v3}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->updateCacheableProperty(Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    goto :goto_b9

    .line 858
    .end local v17    # "functionIdValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .restart local v3    # "functionIdValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_b5
    move-object/from16 v17, v3

    .end local v3    # "functionIdValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .restart local v17    # "functionIdValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v3, 0x0

    .line 860
    .end local v9    # "allParamsStatic":Z
    .local v3, "allParamsStatic":Z
    move v9, v3

    .end local v3    # "allParamsStatic":Z
    .restart local v9    # "allParamsStatic":Z
    :goto_b9
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v13}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v8, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    .end local v11    # "originalParam":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    .end local v12    # "debugProperty":Lcom/google/tagmanager/ResolvedPropertyBuilder;
    .end local v13    # "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    nop

    .line 841
    move-object/from16 v3, v17

    goto :goto_68

    .line 863
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v17    # "functionIdValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .local v3, "functionIdValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_c8
    move-object/from16 v15, p3

    move-object/from16 v17, v3

    .end local v3    # "functionIdValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .restart local v17    # "functionIdValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/google/tagmanager/FunctionCallImplementation;->hasRequiredKeys(Ljava/util/Set;)Z

    move-result v3

    if-nez v3, :cond_105

    .line 865
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Incorrect keys for function "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " required "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/google/tagmanager/FunctionCallImplementation;->getRequiredKeys()Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " had "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 868
    sget-object v3, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v3

    .line 871
    :cond_105
    if-eqz v9, :cond_10f

    invoke-virtual {v6}, Lcom/google/tagmanager/FunctionCallImplementation;->isCacheable()Z

    move-result v3

    if-eqz v3, :cond_10f

    const/4 v3, 0x1

    goto :goto_110

    :cond_10f
    const/4 v3, 0x0

    .line 873
    .local v3, "cacheable":Z
    :goto_110
    new-instance v10, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-virtual {v6, v8}, Lcom/google/tagmanager/FunctionCallImplementation;->evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v11

    invoke-direct {v10, v11, v3}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    .line 875
    .local v10, "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    if-eqz v3, :cond_120

    .line 878
    iget-object v11, v0, Lcom/google/tagmanager/Runtime;->mFunctionCallCache:Lcom/google/tagmanager/Cache;

    invoke-interface {v11, v1, v10}, Lcom/google/tagmanager/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 880
    :cond_120
    invoke-virtual {v10}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-interface {v2, v11}, Lcom/google/tagmanager/ResolvedFunctionCallBuilder;->setFunctionResult(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    .line 881
    return-object v10
.end method

.method private static getFunctionName(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Ljava/lang/String;
    .registers 3
    .param p0, "functionCall"    # Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

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
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/Runtime$MacroInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/tagmanager/Runtime$MacroInfo;"
        }
    .end annotation

    .line 467
    .local p0, "macroLookup":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/tagmanager/Runtime$MacroInfo;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/Runtime$MacroInfo;

    .line 468
    .local v0, "result":Lcom/google/tagmanager/Runtime$MacroInfo;
    if-nez v0, :cond_11

    .line 469
    new-instance v1, Lcom/google/tagmanager/Runtime$MacroInfo;

    invoke-direct {v1}, Lcom/google/tagmanager/Runtime$MacroInfo;-><init>()V

    move-object v0, v1

    .line 470
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_11
    return-object v0
.end method

.method private macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .registers 11
    .param p1, "value"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .param p3, "debugValueBuilder"    # Lcom/google/tagmanager/ValueBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/ValueBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 710
    .local p2, "pendingMacroExpansions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-boolean v0, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-nez v0, :cond_b

    .line 712
    new-instance v0, Lcom/google/tagmanager/ObjectAndStatic;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v0

    .line 718
    :cond_b
    iget v0, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eq v0, v1, :cond_132

    packed-switch v0, :pswitch_data_16a

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 798
    sget-object v0, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v0

    .line 764
    :pswitch_2d
    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Macro cycle detected.  Current macro reference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Previous macro references: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 769
    sget-object v0, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v0

    .line 771
    :cond_64
    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 772
    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-interface {p3}, Lcom/google/tagmanager/ValueBuilder;->createValueMacroEvaluationInfoExtension()Lcom/google/tagmanager/MacroEvaluationInfoBuilder;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/google/tagmanager/Runtime;->evaluateMacroReferenceCycleDetection(Ljava/lang/String;Ljava/util/Set;Lcom/google/tagmanager/MacroEvaluationInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v0

    .line 775
    .local v0, "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    iget-object v1, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    invoke-static {v0, v1}, Lcom/google/tagmanager/ValueEscapeUtil;->applyEscapings(Lcom/google/tagmanager/ObjectAndStatic;[I)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v0

    .line 776
    iget-object v1, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 777
    return-object v0

    .line 736
    .end local v0    # "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    :pswitch_7f
    invoke-static {p1}, Lcom/google/tagmanager/ResourceUtil;->newValueBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    .line 737
    .local v0, "newValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v1, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v1

    iget-object v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v3, v3

    if-eq v1, v3, :cond_a6

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid serving value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 740
    sget-object v1, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v1

    .line 742
    :cond_a6
    iget-object v1, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 743
    iget-object v1, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 744
    move v1, v2

    .local v1, "i":I
    :goto_b5
    iget-object v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v3, v3

    if-ge v1, v3, :cond_f5

    .line 745
    iget-object v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v3, v3, v1

    invoke-interface {p3, v1}, Lcom/google/tagmanager/ValueBuilder;->getMapKey(I)Lcom/google/tagmanager/ValueBuilder;

    move-result-object v4

    invoke-direct {p0, v3, p2, v4}, Lcom/google/tagmanager/Runtime;->macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v3

    .line 748
    .local v3, "macroExpandKey":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    iget-object v4, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v4, v4, v1

    invoke-interface {p3, v1}, Lcom/google/tagmanager/ValueBuilder;->getMapValue(I)Lcom/google/tagmanager/ValueBuilder;

    move-result-object v5

    invoke-direct {p0, v4, p2, v5}, Lcom/google/tagmanager/Runtime;->macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v4

    .line 751
    .local v4, "macroExpandValue":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v5, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-eq v3, v5, :cond_f2

    sget-object v5, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-ne v4, v5, :cond_db

    goto :goto_f2

    .line 756
    :cond_db
    iget-object v5, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v3}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aput-object v6, v5, v1

    .line 757
    iget-object v5, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v4}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aput-object v6, v5, v1

    .line 744
    .end local v3    # "macroExpandKey":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    .end local v4    # "macroExpandValue":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_b5

    .line 754
    .restart local v3    # "macroExpandKey":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    .restart local v4    # "macroExpandValue":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    :cond_f2
    :goto_f2
    sget-object v2, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v2

    .line 760
    .end local v1    # "i":I
    .end local v3    # "macroExpandKey":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    .end local v4    # "macroExpandValue":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    :cond_f5
    new-instance v1, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-direct {v1, v0, v2}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v1

    .line 720
    .end local v0    # "newValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :pswitch_fb
    invoke-static {p1}, Lcom/google/tagmanager/ResourceUtil;->newValueBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    .line 721
    .restart local v0    # "newValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v1, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 722
    move v1, v2

    .restart local v1    # "i":I
    :goto_107
    iget-object v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v3, v3

    if-ge v1, v3, :cond_12c

    .line 723
    iget-object v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v3, v3, v1

    invoke-interface {p3, v1}, Lcom/google/tagmanager/ValueBuilder;->getListItem(I)Lcom/google/tagmanager/ValueBuilder;

    move-result-object v4

    invoke-direct {p0, v3, p2, v4}, Lcom/google/tagmanager/Runtime;->macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v3

    .line 725
    .local v3, "macroExpand":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v4, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-ne v3, v4, :cond_11f

    .line 727
    sget-object v2, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v2

    .line 729
    :cond_11f
    iget-object v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v3}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aput-object v5, v4, v1

    .line 722
    .end local v3    # "macroExpand":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_107

    .line 732
    .end local v1    # "i":I
    :cond_12c
    new-instance v1, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-direct {v1, v0, v2}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v1

    .line 781
    .end local v0    # "newValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_132
    invoke-static {p1}, Lcom/google/tagmanager/ResourceUtil;->newValueBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    .line 782
    .restart local v0    # "newValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v1, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 783
    move v1, v2

    .restart local v1    # "i":I
    :goto_13e
    iget-object v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v3, v3

    if-ge v1, v3, :cond_163

    .line 784
    iget-object v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v3, v3, v1

    invoke-interface {p3, v1}, Lcom/google/tagmanager/ValueBuilder;->getTemplateToken(I)Lcom/google/tagmanager/ValueBuilder;

    move-result-object v4

    invoke-direct {p0, v3, p2, v4}, Lcom/google/tagmanager/Runtime;->macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v3

    .line 786
    .restart local v3    # "macroExpand":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v4, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-ne v3, v4, :cond_156

    .line 788
    sget-object v2, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v2

    .line 790
    :cond_156
    iget-object v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v3}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aput-object v5, v4, v1

    .line 783
    .end local v3    # "macroExpand":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_13e

    .line 792
    .end local v1    # "i":I
    :cond_163
    new-instance v1, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-direct {v1, v0, v2}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v1

    nop

    :pswitch_data_16a
    .packed-switch 0x2
        :pswitch_fb
        :pswitch_7f
        :pswitch_2d
    .end packed-switch
.end method

.method private pushUnevaluatedValueToDataLayer(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)V
    .registers 10
    .param p1, "pushAfterEvaluate"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 665
    .local p2, "pendingMacroExpansions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_3

    .line 666
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 668
    :cond_3
    new-instance v0, Lcom/google/tagmanager/NoopValueBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopValueBuilder;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/tagmanager/Runtime;->macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v0

    .line 670
    .local v0, "evaluatedPush":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v1, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-eq v0, v1, :cond_55

    .line 671
    invoke-virtual {v0}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v1}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v1

    .line 673
    .local v1, "pushValueAsObject":Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_27

    .line 676
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    .line 677
    .local v2, "pushValueAsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/google/tagmanager/Runtime;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    invoke-virtual {v3, v2}, Lcom/google/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    .line 678
    .end local v2    # "pushValueAsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_55

    :cond_27
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_50

    .line 681
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    .line 682
    .local v2, "pushValueAsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 683
    .local v4, "item":Ljava/lang/Object;
    instance-of v5, v4, Ljava/util/Map;

    if-eqz v5, :cond_49

    .line 685
    move-object v5, v4

    check-cast v5, Ljava/util/Map;

    .line 686
    .local v5, "pushValueAsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/google/tagmanager/Runtime;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    invoke-virtual {v6, v5}, Lcom/google/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    .line 687
    .end local v5    # "pushValueAsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_4e

    .line 688
    :cond_49
    const-string v5, "pushAfterEvaluate: value not a Map"

    invoke-static {v5}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 690
    .end local v4    # "item":Ljava/lang/Object;
    :goto_4e
    goto :goto_32

    .line 691
    .end local v2    # "pushValueAsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4f
    goto :goto_55

    .line 692
    :cond_50
    const-string v2, "pushAfterEvaluate: value not a Map or List"

    invoke-static {v2}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 695
    .end local v1    # "pushValueAsObject":Ljava/lang/Object;
    :cond_55
    :goto_55
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static verifyFunctionAndNameListSizes(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .param p2, "operation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 899
    .local p0, "functionList":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;"
    .local p1, "ruleNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_23

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid resource: imbalance of rule names of functions for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " operation. Using default rule name instead"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->i(Ljava/lang/String;)V

    .line 903
    :cond_23
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V
    .registers 3
    .param p1, "macro"    # Lcom/google/tagmanager/FunctionCallImplementation;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mMacroMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/tagmanager/Runtime;->addFunctionImplToMap(Ljava/util/Map;Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 539
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V
    .registers 3
    .param p1, "predicate"    # Lcom/google/tagmanager/FunctionCallImplementation;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mPredicateMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/tagmanager/Runtime;->addFunctionImplToMap(Ljava/util/Map;Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 549
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method addTrackingTag(Lcom/google/tagmanager/FunctionCallImplementation;)V
    .registers 3
    .param p1, "tag"    # Lcom/google/tagmanager/FunctionCallImplementation;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mTrackingTagMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/tagmanager/Runtime;->addFunctionImplToMap(Ljava/util/Map;Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 544
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method calculateMacrosToRun(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .registers 16
    .param p1, "macroName"    # Ljava/lang/String;
    .param p8, "debugRulesEvaluation"    # Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;",
            "Ljava/util/Map<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;",
            "Ljava/util/Map<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;"
        }
    .end annotation

    .line 404
    .local p2, "rules":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/tagmanager/ResourceUtil$ExpandedRule;>;"
    .local p3, "addMacros":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;>;"
    .local p4, "addMacroRuleNames":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p5, "removeMacros":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/util/List<Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;>;>;"
    .local p6, "removeMacroRuleNames":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p7, "pendingMacroExpansions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Lcom/google/tagmanager/Runtime$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/tagmanager/Runtime$3;-><init>(Lcom/google/tagmanager/Runtime;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-direct {p0, p2, p7, v6, p8}, Lcom/google/tagmanager/Runtime;->calculateGenericToRun(Ljava/util/Set;Ljava/util/Set;Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

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
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            ">;",
            "Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;"
        }
    .end annotation

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
    .registers 5
    .param p1, "macroName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->eventInfoDistributor:Lcom/google/tagmanager/EventInfoDistributor;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/EventInfoDistributor;->createMacroEvalutionEventInfo(Ljava/lang/String;)Lcom/google/tagmanager/EventInfoBuilder;

    move-result-object v0

    .line 367
    .local v0, "eventInfoBuilder":Lcom/google/tagmanager/EventInfoBuilder;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Lcom/google/tagmanager/EventInfoBuilder;->createMacroEvaluationInfoBuilder()Lcom/google/tagmanager/MacroEvaluationInfoBuilder;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/google/tagmanager/Runtime;->evaluateMacroReferenceCycleDetection(Ljava/lang/String;Ljava/util/Set;Lcom/google/tagmanager/MacroEvaluationInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

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
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/ResolvedFunctionCallBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 557
    .local p2, "pendingMacroExpansions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mPredicateMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/tagmanager/Runtime;->executeFunction(Ljava/util/Map;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v0

    .line 559
    .local v0, "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-virtual {v0}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v1}, Lcom/google/tagmanager/Types;->valueToBoolean(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Boolean;

    move-result-object v1

    .line 560
    .local v1, "predicateResult":Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/google/tagmanager/ResolvedFunctionCallBuilder;->setFunctionResult(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    .line 561
    new-instance v2, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-virtual {v0}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

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
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/ResolvedRuleBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 573
    .local p2, "pendingMacroExpansions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 575
    .local v0, "allStatic":Z
    invoke-virtual {p1}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getNegativePredicates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 576
    .local v2, "f":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    invoke-interface {p3}, Lcom/google/tagmanager/ResolvedRuleBuilder;->createNegativePredicate()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;

    move-result-object v5

    invoke-virtual {p0, v2, p2, v5}, Lcom/google/tagmanager/Runtime;->evaluatePredicate(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v5

    .line 580
    .local v5, "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Ljava/lang/Boolean;>;"
    invoke-virtual {v5}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_44

    .line 581
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v3

    invoke-interface {p3, v3}, Lcom/google/tagmanager/ResolvedRuleBuilder;->setValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    .line 582
    new-instance v3, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v6

    invoke-direct {v3, v4, v6}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v3

    .line 584
    :cond_44
    if-eqz v0, :cond_4d

    invoke-virtual {v5}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v6

    if-eqz v6, :cond_4d

    goto :goto_4e

    :cond_4d
    move v3, v4

    :goto_4e
    move v0, v3

    .line 586
    .end local v2    # "f":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    .end local v5    # "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Ljava/lang/Boolean;>;"
    goto :goto_9

    .line 588
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_50
    invoke-virtual {p1}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getPositivePredicates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 589
    .restart local v2    # "f":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    invoke-interface {p3}, Lcom/google/tagmanager/ResolvedRuleBuilder;->createPositivePredicate()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;

    move-result-object v5

    invoke-virtual {p0, v2, p2, v5}, Lcom/google/tagmanager/Runtime;->evaluatePredicate(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v5

    .line 593
    .restart local v5    # "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Ljava/lang/Boolean;>;"
    invoke-virtual {v5}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_91

    .line 594
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v3

    invoke-interface {p3, v3}, Lcom/google/tagmanager/ResolvedRuleBuilder;->setValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    .line 595
    new-instance v3, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v6

    invoke-direct {v3, v4, v6}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v3

    .line 597
    :cond_91
    if-eqz v0, :cond_9b

    invoke-virtual {v5}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v6

    if-eqz v6, :cond_9b

    move v6, v3

    goto :goto_9c

    :cond_9b
    move v6, v4

    :goto_9c
    move v0, v6

    .line 598
    .end local v2    # "f":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    .end local v5    # "result":Lcom/google/tagmanager/ObjectAndStatic;, "Lcom/google/tagmanager/ObjectAndStatic<Ljava/lang/Boolean;>;"
    goto :goto_58

    .line 599
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_9e
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/google/tagmanager/ResolvedRuleBuilder;->setValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    .line 600
    new-instance v1, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v1
.end method

.method public declared-synchronized evaluateTags(Ljava/lang/String;)V
    .registers 9
    .param p1, "currentEventName"    # Ljava/lang/String;

    monitor-enter p0

    .line 346
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/Runtime;->setCurrentEventName(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->eventInfoDistributor:Lcom/google/tagmanager/EventInfoDistributor;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/EventInfoDistributor;->createDataLayerEventEvaluationEventInfo(Ljava/lang/String;)Lcom/google/tagmanager/EventInfoBuilder;

    move-result-object v0

    .line 349
    .local v0, "eventInfoBuilder":Lcom/google/tagmanager/EventInfoBuilder;
    invoke-interface {v0}, Lcom/google/tagmanager/EventInfoBuilder;->createDataLayerEventEvaluationInfoBuilder()Lcom/google/tagmanager/DataLayerEventEvaluationInfoBuilder;

    move-result-object v1

    .line 352
    .local v1, "debugDataLayerBuilder":Lcom/google/tagmanager/DataLayerEventEvaluationInfoBuilder;
    iget-object v2, p0, Lcom/google/tagmanager/Runtime;->mRules:Ljava/util/Set;

    invoke-interface {v1}, Lcom/google/tagmanager/DataLayerEventEvaluationInfoBuilder;->createRulesEvaluation()Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/tagmanager/Runtime;->calculateTagsToRun(Ljava/util/Set;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 353
    .local v3, "tag":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    iget-object v4, p0, Lcom/google/tagmanager/Runtime;->mTrackingTagMap:Ljava/util/Map;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Lcom/google/tagmanager/DataLayerEventEvaluationInfoBuilder;->createAndAddResult()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;

    move-result-object v6

    invoke-direct {p0, v4, v3, v5, v6}, Lcom/google/tagmanager/Runtime;->executeFunction(Ljava/util/Map;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    .line 355
    .end local v3    # "tag":Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    goto :goto_22

    .line 356
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3d
    invoke-interface {v0}, Lcom/google/tagmanager/EventInfoBuilder;->processEventInfo()V

    .line 358
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/tagmanager/Runtime;->setCurrentEventName(Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_46

    .line 359
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 345
    .end local v0    # "eventInfoBuilder":Lcom/google/tagmanager/EventInfoBuilder;
    .end local v1    # "debugDataLayerBuilder":Lcom/google/tagmanager/DataLayerEventEvaluationInfoBuilder;
    .end local p1    # "currentEventName":Ljava/lang/String;
    :catchall_46
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/google/tagmanager/Runtime;
    throw p1
.end method

.method declared-synchronized getCurrentEventName()Ljava/lang/String;
    .registers 2

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

    .end local p0    # "this":Lcom/google/tagmanager/Runtime;
    throw v0
.end method

.method public getResource()Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    .registers 2

    .line 325
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mResource:Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    return-object v0
.end method

.method declared-synchronized setCurrentEventName(Ljava/lang/String;)V
    .registers 2
    .param p1, "currentEventName"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 375
    :try_start_1
    iput-object p1, p0, Lcom/google/tagmanager/Runtime;->mCurrentEventName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 376
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 374
    .end local p1    # "currentEventName":Ljava/lang/String;
    :catchall_5
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/google/tagmanager/Runtime;
    throw p1
.end method

.method public declared-synchronized setSupplementals(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Serving$Supplemental;",
            ">;)V"
        }
    .end annotation

    .local p1, "supplementals":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/containertag/proto/Serving$Supplemental;>;"
    monitor-enter p0

    .line 329
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .line 330
    .local v1, "supplemental":Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    iget-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    if-eqz v2, :cond_26

    iget-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    const-string v3, "gaExperiment:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_26

    .line 335
    :cond_20
    iget-object v2, p0, Lcom/google/tagmanager/Runtime;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    invoke-static {v2, v1}, Lcom/google/tagmanager/ExperimentMacroHelper;->handleExperimentSupplemental(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$Supplemental;)V

    .line 336
    .end local v1    # "supplemental":Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    goto :goto_5

    .line 332
    .restart local v1    # "supplemental":Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    :cond_26
    :goto_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignored supplemental: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3d

    .line 333
    goto :goto_5

    .line 337
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "supplemental":Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    :cond_3b
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 328
    .end local p1    # "supplementals":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/containertag/proto/Serving$Supplemental;>;"
    :catchall_3d
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/google/tagmanager/Runtime;
    throw p1
.end method
