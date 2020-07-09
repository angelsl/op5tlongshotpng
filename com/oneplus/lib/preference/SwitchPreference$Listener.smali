.class Lcom/oneplus/lib/preference/SwitchPreference$Listener;
.super Ljava/lang/Object;
.source "SwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/preference/SwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/preference/SwitchPreference;


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/preference/SwitchPreference;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/oneplus/lib/preference/SwitchPreference$Listener;->this$0:Lcom/oneplus/lib/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/preference/SwitchPreference;Lcom/oneplus/lib/preference/SwitchPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/lib/preference/SwitchPreference;
    .param p2, "x1"    # Lcom/oneplus/lib/preference/SwitchPreference$1;

    .line 46
    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/SwitchPreference$Listener;-><init>(Lcom/oneplus/lib/preference/SwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 49
    iget-object v0, p0, Lcom/oneplus/lib/preference/SwitchPreference$Listener;->this$0:Lcom/oneplus/lib/preference/SwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/preference/SwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 53
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/SwitchPreference$Listener;->this$0:Lcom/oneplus/lib/preference/SwitchPreference;

    invoke-virtual {v0, p2}, Lcom/oneplus/lib/preference/SwitchPreference;->setChecked(Z)V

    .line 57
    return-void
.end method
