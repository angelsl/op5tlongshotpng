.class public Lcom/oneplus/lib/design/widget/BottomNavigationNotification;
.super Ljava/lang/Object;
.source "BottomNavigationNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/BottomNavigationNotification$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/lib/design/widget/BottomNavigationNotification;",
            ">;"
        }
    .end annotation
.end field

.field private static final FALSE_INT:I = 0x1

.field private static final TRUE_INT:I


# instance fields
.field private mBackgroundColor:I
    .annotation build Lcom/oneplus/support/annotation/ColorInt;
    .end annotation
.end field

.field private mIndeterminate:Z

.field private mNumber:I

.field private mTextColor:I
    .annotation build Lcom/oneplus/support/annotation/ColorInt;
    .end annotation
.end field

.field private udbc:I

.field private udtc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    new-instance v0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification$1;

    invoke-direct {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification$1;-><init>()V

    sput-object v0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udtc:I

    .line 20
    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udbc:I

    .line 23
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udtc:I

    .line 20
    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udbc:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mNumber:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mTextColor:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mBackgroundColor:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udtc:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udbc:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mIndeterminate:Z

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oneplus/lib/design/widget/BottomNavigationNotification$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/oneplus/lib/design/widget/BottomNavigationNotification$1;

    .line 8
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/design/widget/BottomNavigationNotification$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/lib/design/widget/BottomNavigationNotification$1;

    .line 8
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/oneplus/lib/design/widget/BottomNavigationNotification;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/BottomNavigationNotification;
    .param p1, "x1"    # I

    .line 8
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mNumber:I

    return p1
.end method

.method static synthetic access$202(Lcom/oneplus/lib/design/widget/BottomNavigationNotification;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/BottomNavigationNotification;
    .param p1, "x1"    # I

    .line 8
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mTextColor:I

    return p1
.end method

.method static synthetic access$302(Lcom/oneplus/lib/design/widget/BottomNavigationNotification;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/BottomNavigationNotification;
    .param p1, "x1"    # I

    .line 8
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mBackgroundColor:I

    return p1
.end method

.method static synthetic access$402(Lcom/oneplus/lib/design/widget/BottomNavigationNotification;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/BottomNavigationNotification;
    .param p1, "x1"    # Z

    .line 8
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mIndeterminate:Z

    return p1
.end method

.method static synthetic access$502(Lcom/oneplus/lib/design/widget/BottomNavigationNotification;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/BottomNavigationNotification;
    .param p1, "x1"    # I

    .line 8
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udtc:I

    return p1
.end method

.method static synthetic access$602(Lcom/oneplus/lib/design/widget/BottomNavigationNotification;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/BottomNavigationNotification;
    .param p1, "x1"    # I

    .line 8
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udbc:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mBackgroundColor:I

    return v0
.end method

.method public getNumber()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mNumber:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mTextColor:I

    return v0
.end method

.method public isIndeterminate()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mIndeterminate:Z

    return v0
.end method

.method isUseDefaultBackgroundColor()Z
    .locals 1

    .line 55
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udbc:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUseDefaultTextColor()Z
    .locals 1

    .line 51
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udtc:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 65
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mTextColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udtc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udbc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mIndeterminate:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return-void
.end method
