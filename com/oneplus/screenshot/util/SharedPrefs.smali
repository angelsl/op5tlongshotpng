.class public Lcom/oneplus/screenshot/util/SharedPrefs;
.super Ljava/lang/Object;
.source "SharedPrefs.java"


# static fields
.field public static final LONGSHOT_GUIDE_EDIT:Ljava/lang/String; = "longshot_guide_edit"

.field private static final PREFS_NAME:Ljava/lang/String; = "com.color.screenshot"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/oneplus/screenshot/util/SharedPrefs;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/screenshot/util/SharedPrefs;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/util/SharedPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 26
    const-string v0, "com.color.screenshot"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/util/SharedPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 27
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/oneplus/screenshot/util/SharedPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 37
    iget-object v0, p0, Lcom/oneplus/screenshot/util/SharedPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    return-void
.end method
