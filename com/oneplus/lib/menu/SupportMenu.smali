.class public interface abstract Lcom/oneplus/lib/menu/SupportMenu;
.super Ljava/lang/Object;
.source "SupportMenu.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final CATEGORY_MASK:I = -0x10000

.field public static final CATEGORY_SHIFT:I = 0x10

.field public static final FLAG_KEEP_OPEN_ON_SUBMENU_OPENED:I = 0x4

.field public static final SUPPORTED_MODIFIERS_MASK:I = 0x1100f

.field public static final USER_MASK:I = 0xffff

.field public static final USER_SHIFT:I
