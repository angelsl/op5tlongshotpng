.class public Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;
.super Ljava/lang/Object;
.source "OneplusLunarCalendar.java"


# instance fields
.field private leapMonthFlag:Z

.field private lunarDay:I

.field private lunarMonth:I

.field private lunarYear:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0
    .param p1, "lunarYear"    # I
    .param p2, "lunarMonth"    # I
    .param p3, "lunarDay"    # I
    .param p4, "leapMonthFlag"    # Z

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;->lunarYear:I

    .line 13
    iput p2, p0, Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;->lunarMonth:I

    .line 14
    iput p3, p0, Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;->lunarDay:I

    .line 15
    iput-boolean p4, p0, Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;->leapMonthFlag:Z

    .line 17
    return-void
.end method


# virtual methods
.method public getLunarDay()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;->lunarDay:I

    return v0
.end method

.method public getLunarMonth()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;->lunarMonth:I

    return v0
.end method

.method public getLunarYear()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;->lunarYear:I

    return v0
.end method

.method public getYYMMDD()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v0, "text":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;->lunarYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-boolean v1, p0, Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;->leapMonthFlag:Z

    if-eqz v1, :cond_0

    .line 43
    const-string v1, "\u95f0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_0
    iget v1, p0, Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;->lunarMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;->lunarDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u65e5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isLeapMonth()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;->leapMonthFlag:Z

    return v0
.end method

.method public setLeapMonth(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;->leapMonthFlag:Z

    .line 38
    return-void
.end method

.method public setLunarDay(I)V
    .locals 0
    .param p1, "day"    # I

    .line 31
    iput p1, p0, Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;->lunarDay:I

    .line 32
    return-void
.end method

.method public setLunarYear(I)V
    .locals 0
    .param p1, "year"    # I

    .line 22
    iput p1, p0, Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;->lunarYear:I

    .line 23
    return-void
.end method
