.class public final Lcom/oneplus/lib/widget/EmptyArray;
.super Ljava/lang/Object;
.source "EmptyArray.java"


# static fields
.field public static final BOOLEAN:[Z

.field public static final BYTE:[B

.field public static final CHAR:[C

.field public static final CLASS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final DOUBLE:[D

.field public static final FLOAT:[F

.field public static final INT:[I

.field public static final LONG:[J

.field public static final OBJECT:[Ljava/lang/Object;

.field public static final STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

.field public static final STRING:[Ljava/lang/String;

.field public static final THROWABLE:[Ljava/lang/Throwable;

.field public static final TYPE:[Ljava/lang/reflect/Type;

.field public static final TYPE_VARIABLE:[Ljava/lang/reflect/TypeVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    const/4 v0, 0x0

    new-array v1, v0, [Z

    sput-object v1, Lcom/oneplus/lib/widget/EmptyArray;->BOOLEAN:[Z

    .line 7
    new-array v1, v0, [B

    sput-object v1, Lcom/oneplus/lib/widget/EmptyArray;->BYTE:[B

    .line 8
    new-array v1, v0, [C

    sput-object v1, Lcom/oneplus/lib/widget/EmptyArray;->CHAR:[C

    .line 9
    new-array v1, v0, [D

    sput-object v1, Lcom/oneplus/lib/widget/EmptyArray;->DOUBLE:[D

    .line 10
    new-array v1, v0, [F

    sput-object v1, Lcom/oneplus/lib/widget/EmptyArray;->FLOAT:[F

    .line 11
    new-array v1, v0, [I

    sput-object v1, Lcom/oneplus/lib/widget/EmptyArray;->INT:[I

    .line 12
    new-array v1, v0, [J

    sput-object v1, Lcom/oneplus/lib/widget/EmptyArray;->LONG:[J

    .line 14
    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lcom/oneplus/lib/widget/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 15
    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lcom/oneplus/lib/widget/EmptyArray;->OBJECT:[Ljava/lang/Object;

    .line 16
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/oneplus/lib/widget/EmptyArray;->STRING:[Ljava/lang/String;

    .line 17
    new-array v1, v0, [Ljava/lang/Throwable;

    sput-object v1, Lcom/oneplus/lib/widget/EmptyArray;->THROWABLE:[Ljava/lang/Throwable;

    .line 18
    new-array v1, v0, [Ljava/lang/StackTraceElement;

    sput-object v1, Lcom/oneplus/lib/widget/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    .line 19
    new-array v1, v0, [Ljava/lang/reflect/Type;

    sput-object v1, Lcom/oneplus/lib/widget/EmptyArray;->TYPE:[Ljava/lang/reflect/Type;

    .line 20
    new-array v0, v0, [Ljava/lang/reflect/TypeVariable;

    sput-object v0, Lcom/oneplus/lib/widget/EmptyArray;->TYPE_VARIABLE:[Ljava/lang/reflect/TypeVariable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
