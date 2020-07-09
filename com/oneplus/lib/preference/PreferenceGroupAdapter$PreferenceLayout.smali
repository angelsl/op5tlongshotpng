.class Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/preference/PreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceLayout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private resId:I

.field private widgetResId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/preference/PreferenceGroupAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/lib/preference/PreferenceGroupAdapter$1;

    .line 103
    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # I

    .line 103
    iput p1, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    return p1
.end method

.method static synthetic access$402(Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # I

    .line 103
    iput p1, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    return p1
.end method


# virtual methods
.method public compareTo(Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;)I
    .locals 3
    .param p1, "other"    # Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 109
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 110
    .local v0, "compareNames":I
    if-nez v0, :cond_2

    .line 111
    iget v1, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    iget v2, p1, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    if-ne v1, v2, :cond_1

    .line 112
    iget v1, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    iget v2, p1, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    if-ne v1, v2, :cond_0

    .line 113
    const/4 v1, 0x0

    return v1

    .line 115
    :cond_0
    sub-int/2addr v1, v2

    return v1

    .line 118
    :cond_1
    sub-int/2addr v1, v2

    return v1

    .line 121
    :cond_2
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 103
    check-cast p1, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;->compareTo(Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;)I

    move-result p1

    return p1
.end method
