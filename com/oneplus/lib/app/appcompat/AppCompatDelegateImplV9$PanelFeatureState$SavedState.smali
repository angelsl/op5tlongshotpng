.class Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field featureId:I

.field isOpen:Z

.field menuState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2086
    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState$1;

    invoke-direct {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState$1;-><init>()V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 2077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2078
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2081
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->featureId:I

    .line 2082
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->isOpen:Z

    .line 2083
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 2084
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 2100
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2105
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->featureId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2106
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->isOpen:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2108
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v0, :cond_0

    .line 2109
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2111
    :cond_0
    return-void
.end method
