.class public Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;
.super Ljava/lang/Object;
.source "OnepulsCalendarUtil.java"


# static fields
.field public static final DAY_OVER_DAYS_OF_MONTH_ERRO:Ljava/lang/String; = "day over days of month erro:"

.field public static final DAY_OVER_ERRO:Ljava/lang/String; = "day over erro:"

.field public static final LEAP_MONTH_ERRO:Ljava/lang/String; = "leap month erro:"

.field public static final LEAP_MONTH_FLAG_ERRO:Ljava/lang/String; = "leap month flag erro:"

.field private static final LUNAR_INFOS:[I

.field public static final MAX_YEAR:I = 0x801

.field public static final MIN_YEAR:I = 0x76c

.field public static final MONTH_OVER_ERRO:Ljava/lang/String; = "month over erro:"

.field public static final START_AFTER_END_ERRO:Ljava/lang/String; = "start after end erro:"

.field private static final START_CALENDAR:Ljava/util/GregorianCalendar;

.field public static final YEAR_OVER_ERRO:Ljava/lang/String; = "year over erro:"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 18
    const/16 v0, 0x96

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->LUNAR_INFOS:[I

    .line 41
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x76c

    const/4 v2, 0x0

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    sput-object v0, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->START_CALENDAR:Ljava/util/GregorianCalendar;

    return-void

    :array_0
    .array-data 4
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5d0
        0x14573
        0x52d0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb5a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x56c0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4bd7
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkLunarDate(IIIZ)V
    .locals 4
    .param p0, "lunarYear"    # I
    .param p1, "lunarMonth"    # I
    .param p2, "lunarDay"    # I
    .param p3, "leapMonthFlag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 119
    const/16 v0, 0x76c

    if-lt p0, v0, :cond_4

    const/16 v0, 0x801

    if-gt p0, v0, :cond_4

    .line 122
    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/16 v1, 0xc

    if-gt p1, v1, :cond_3

    .line 125
    if-lt p2, v0, :cond_2

    const/16 v1, 0x1e

    if-gt p2, v1, :cond_2

    .line 129
    invoke-static {p0}, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->getLeapMonth(I)I

    move-result v1

    .line 130
    .local v1, "leap":I
    if-ne p3, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "leap month erro:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    :goto_0
    return-void

    .line 126
    .end local v1    # "leap":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "day over erro:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "month over erro:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "year over erro:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static daysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 10
    .param p0, "startDate"    # Ljava/util/Calendar;
    .param p1, "endDate"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "days":I
    move-object v1, p0

    .line 94
    .local v1, "can1":Ljava/util/Calendar;
    move-object v2, p1

    .line 96
    .local v2, "can2":Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 97
    .local v4, "year1":I
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 99
    .local v5, "year2":I
    const/4 v6, 0x0

    .line 100
    .local v6, "can":Ljava/util/Calendar;
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 101
    const/4 v7, 0x6

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sub-int/2addr v0, v8

    .line 102
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v0, v8

    .line 103
    move-object v6, v1

    .line 110
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sub-int v9, v5, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 111
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v9

    add-int/2addr v0, v9

    .line 112
    invoke-virtual {v6, v3, v3}, Ljava/util/Calendar;->add(II)V

    .line 110
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 114
    .end local v8    # "i":I
    :cond_0
    return v0

    .line 108
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start after end erro:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getLeapMonth(I)I
    .locals 2
    .param p0, "year"    # I

    .line 53
    sget-object v0, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->LUNAR_INFOS:[I

    add-int/lit16 v1, p0, -0x76c

    aget v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public static getLeapMonthDays(I)I
    .locals 2
    .param p0, "year"    # I

    .line 57
    invoke-static {p0}, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->getLeapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    sget-object v0, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->LUNAR_INFOS:[I

    add-int/lit16 v1, p0, -0x76c

    aget v0, v0, v1

    const/high16 v1, 0xf0000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 59
    const/16 v0, 0x1d

    return v0

    .line 61
    :cond_0
    const/16 v0, 0x1e

    return v0

    .line 64
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getMonthDays(II)I
    .locals 3
    .param p0, "lunarYeay"    # I
    .param p1, "month"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 69
    const/16 v0, 0xc

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 72
    const/4 v0, 0x1

    rsub-int/lit8 v1, p1, 0x10

    shl-int/2addr v0, v1

    .line 73
    .local v0, "bit":I
    sget-object v1, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->LUNAR_INFOS:[I

    add-int/lit16 v2, p0, -0x76c

    aget v1, v1, v2

    const v2, 0xffff

    and-int/2addr v1, v2

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 74
    const/16 v1, 0x1d

    return v1

    .line 76
    :cond_0
    const/16 v1, 0x1e

    return v1

    .line 70
    .end local v0    # "bit":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "month over erro:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getYearDays(I)I
    .locals 4
    .param p0, "year"    # I

    .line 81
    const/16 v0, 0x15c

    .line 82
    .local v0, "sum":I
    const v1, 0x8000

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 83
    sget-object v2, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->LUNAR_INFOS:[I

    add-int/lit16 v3, p0, -0x76c

    aget v2, v2, v3

    const v3, 0xfff0

    and-int/2addr v2, v3

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 82
    :cond_0
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "i":I
    :cond_1
    invoke-static {p0}, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->getLeapMonthDays(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public static lunarToSolar(Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;)Ljava/util/Calendar;
    .locals 11
    .param p0, "lunarCalendar"    # Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;->getLunarYear()I

    move-result v0

    .line 138
    .local v0, "lunarYear":I
    invoke-virtual {p0}, Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;->getLunarMonth()I

    move-result v1

    .line 139
    .local v1, "lunarMonth":I
    invoke-virtual {p0}, Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;->getLunarDay()I

    move-result v2

    .line 140
    .local v2, "lunarDay":I
    invoke-virtual {p0}, Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;->isLeapMonth()Z

    move-result v3

    .line 142
    .local v3, "leapMonthFlag":Z
    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->checkLunarDate(IIIZ)V

    .line 144
    const/4 v4, 0x0

    .line 146
    .local v4, "offset":I
    const/16 v5, 0x76c

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 147
    invoke-static {v5}, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->getYearDays(I)I

    move-result v6

    .line 148
    .local v6, "yearDaysCount":I
    add-int/2addr v4, v6

    .line 146
    .end local v6    # "yearDaysCount":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 150
    .end local v5    # "i":I
    :cond_0
    invoke-static {v0}, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->getLeapMonth(I)I

    move-result v5

    .line 152
    .local v5, "leapMonth":I
    const/4 v6, 0x1

    if-eq v5, v1, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    and-int/2addr v7, v3

    if-nez v7, :cond_a

    .line 156
    const-string v7, "day over days of month erro:"

    if-eqz v5, :cond_7

    if-lt v1, v5, :cond_7

    if-ne v1, v5, :cond_2

    if-nez v3, :cond_2

    goto :goto_3

    .line 168
    :cond_2
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_2
    if-ge v8, v1, :cond_3

    .line 169
    invoke-static {v0, v8}, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->getMonthDays(II)I

    move-result v9

    .line 170
    .local v9, "tempMonthDaysCount":I
    add-int/2addr v4, v9

    .line 168
    .end local v9    # "tempMonthDaysCount":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 172
    .end local v8    # "i":I
    :cond_3
    if-le v1, v5, :cond_5

    .line 173
    invoke-static {v0}, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->getLeapMonthDays(I)I

    move-result v8

    .line 174
    .local v8, "temp":I
    add-int/2addr v4, v8

    .line 176
    invoke-static {v0, v1}, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->getMonthDays(II)I

    move-result v9

    if-gt v2, v9, :cond_4

    .line 180
    add-int/2addr v4, v2

    .line 181
    .end local v8    # "temp":I
    goto :goto_5

    .line 177
    .restart local v8    # "temp":I
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 182
    .end local v8    # "temp":I
    :cond_5
    invoke-static {v0, v1}, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->getMonthDays(II)I

    move-result v8

    .line 183
    .restart local v8    # "temp":I
    add-int/2addr v4, v8

    .line 185
    invoke-static {v0}, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->getLeapMonthDays(I)I

    move-result v9

    if-gt v2, v9, :cond_6

    .line 189
    add-int/2addr v4, v2

    goto :goto_5

    .line 186
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 157
    .end local v8    # "temp":I
    :cond_7
    :goto_3
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_4
    if-ge v8, v1, :cond_8

    .line 158
    invoke-static {v0, v8}, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->getMonthDays(II)I

    move-result v9

    .line 159
    .restart local v9    # "tempMonthDaysCount":I
    add-int/2addr v4, v9

    .line 157
    .end local v9    # "tempMonthDaysCount":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 162
    .end local v8    # "i":I
    :cond_8
    invoke-static {v0, v1}, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->getMonthDays(II)I

    move-result v8

    if-gt v2, v8, :cond_9

    .line 166
    add-int/2addr v4, v2

    .line 193
    :goto_5
    new-instance v7, Ljava/util/GregorianCalendar;

    sget-object v8, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->START_CALENDAR:Ljava/util/GregorianCalendar;

    invoke-virtual {v8, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    sget-object v8, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->START_CALENDAR:Ljava/util/GregorianCalendar;

    const/4 v9, 0x2

    .line 194
    invoke-virtual {v8, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    sget-object v9, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->START_CALENDAR:Ljava/util/GregorianCalendar;

    .line 195
    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    invoke-direct {v7, v6, v8, v9}, Ljava/util/GregorianCalendar;-><init>(III)V

    move-object v6, v7

    .line 196
    .local v6, "c":Ljava/util/Calendar;
    invoke-virtual {v6, v10, v4}, Ljava/util/Calendar;->add(II)V

    .line 198
    return-object v6

    .line 163
    .end local v6    # "c":Ljava/util/Calendar;
    :cond_9
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 153
    :cond_a
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "leap month flag erro:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static solarToLunar(Ljava/util/Calendar;)Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;
    .locals 12
    .param p0, "solarDate"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 205
    const/4 v0, 0x0

    .line 209
    .local v0, "temp":I
    const/4 v1, 0x0

    .line 211
    .local v1, "leapMonthFlag":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 212
    .local v2, "start":Ljava/util/Calendar;
    sget-object v3, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->START_CALENDAR:Ljava/util/GregorianCalendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    sget-object v5, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->START_CALENDAR:Ljava/util/GregorianCalendar;

    .line 213
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    sget-object v6, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->START_CALENDAR:Ljava/util/GregorianCalendar;

    .line 214
    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    .line 212
    invoke-virtual {v2, v3, v5, v6}, Ljava/util/Calendar;->set(III)V

    .line 215
    invoke-static {v2, p0}, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->daysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v3

    .line 217
    .local v3, "offset":I
    const/16 v5, 0x76c

    .local v5, "i":I
    :goto_0
    const/16 v6, 0x801

    if-gt v5, v6, :cond_1

    .line 218
    invoke-static {v5}, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->getYearDays(I)I

    move-result v0

    .line 219
    sub-int v6, v3, v0

    if-ge v6, v4, :cond_0

    .line 220
    goto :goto_1

    .line 222
    :cond_0
    sub-int/2addr v3, v0

    .line 217
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 225
    :cond_1
    :goto_1
    move v6, v5

    .line 227
    .local v6, "lunarYear":I
    invoke-static {v6}, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->getLeapMonth(I)I

    move-result v7

    .line 228
    .local v7, "leapMonth":I
    if-lez v7, :cond_2

    .line 229
    const/4 v8, 0x1

    .local v8, "isLeapYear":Z
    goto :goto_2

    .line 231
    .end local v8    # "isLeapYear":Z
    :cond_2
    const/4 v8, 0x0

    .line 234
    .restart local v8    # "isLeapYear":Z
    :goto_2
    const/4 v5, 0x1

    :goto_3
    const/16 v9, 0xc

    if-gt v5, v9, :cond_5

    .line 235
    add-int/lit8 v9, v7, 0x1

    if-ne v5, v9, :cond_3

    if-eqz v8, :cond_3

    .line 236
    invoke-static {v6}, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->getLeapMonthDays(I)I

    move-result v0

    .line 237
    const/4 v8, 0x0

    .line 238
    const/4 v1, 0x1

    .line 239
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 241
    :cond_3
    invoke-static {v6, v5}, Lcom/oneplus/lib/util/calendar/OnepulsCalendarUtil;->getMonthDays(II)I

    move-result v0

    .line 243
    :goto_4
    sub-int/2addr v3, v0

    .line 244
    if-gtz v3, :cond_4

    .line 245
    goto :goto_5

    .line 234
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 249
    :cond_5
    :goto_5
    add-int/2addr v3, v0

    .line 250
    move v9, v5

    .line 251
    .local v9, "lunarMonth":I
    move v10, v3

    .line 253
    .local v10, "lunarDay":I
    new-instance v11, Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;

    if-ne v9, v7, :cond_6

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    and-int/2addr v4, v1

    invoke-direct {v11, v6, v9, v10, v4}, Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;-><init>(IIIZ)V

    return-object v11
.end method
