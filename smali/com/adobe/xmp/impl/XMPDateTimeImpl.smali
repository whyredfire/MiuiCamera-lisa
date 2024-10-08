.class public Lcom/adobe/xmp/impl/XMPDateTimeImpl;
.super Ljava/lang/Object;
.source "XMPDateTimeImpl.java"

# interfaces
.implements Lcom/adobe/xmp/XMPDateTime;


# instance fields
.field public day:I

.field public hour:I

.field public minute:I

.field public month:I

.field public nanoSeconds:I

.field public second:I

.field public timeZone:Ljava/util/TimeZone;

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 3
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 4
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 5
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 6
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 7
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    const-string v0, "UTC"

    .line 8
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 52
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 53
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 54
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 55
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 56
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    const-string v0, "UTC"

    .line 57
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 58
    invoke-static {p1, p0}, Lcom/adobe/xmp/impl/ISO8601Converter;->parse(Ljava/lang/String;Lcom/adobe/xmp/XMPDateTime;)Lcom/adobe/xmp/XMPDateTime;

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 5

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 11
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 12
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 13
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 14
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 15
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    const-string v0, "UTC"

    .line 16
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 17
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    .line 19
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 20
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    check-cast v1, Ljava/util/GregorianCalendar;

    .line 21
    new-instance v2, Ljava/util/Date;

    const-wide/high16 v3, -0x8000000000000000L

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 22
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 23
    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 24
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    const/4 v0, 0x2

    .line 25
    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    const/4 p1, 0x5

    .line 26
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    const/16 p1, 0xb

    .line 27
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    const/16 p1, 0xc

    .line 28
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    const/16 p1, 0xd

    .line 29
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    const/16 p1, 0xe

    .line 30
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    const v0, 0xf4240

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    .line 31
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/TimeZone;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 34
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 35
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 36
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 37
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 38
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    const-string v0, "UTC"

    .line 39
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 40
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 41
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 42
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    const/4 v1, 0x2

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    const/4 p1, 0x5

    .line 44
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    const/16 p1, 0xb

    .line 45
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    const/16 p1, 0xc

    .line 46
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    const/16 p1, 0xd

    .line 47
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    const/16 p1, 0xe

    .line 48
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    const v0, 0xf4240

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    .line 49
    iput-object p2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    check-cast p1, Lcom/adobe/xmp/XMPDateTime;

    .line 2
    invoke-interface {p1}, Lcom/adobe/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x2

    if-eqz v2, :cond_0

    .line 3
    rem-long/2addr v0, v3

    long-to-int p0, v0

    return p0

    .line 4
    :cond_0
    iget p0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    invoke-interface {p1}, Lcom/adobe/xmp/XMPDateTime;->getNanoSecond()I

    move-result p1

    sub-int/2addr p0, p1

    int-to-long p0, p0

    .line 5
    rem-long/2addr p0, v3

    long-to-int p0, p0

    return p0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 2
    new-instance v1, Ljava/util/Date;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 3
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    iget v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 5
    iget v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 6
    iget v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 7
    iget v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 8
    iget v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 9
    iget v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 10
    iget p0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    const v1, 0xf4240

    div-int/2addr p0, v1

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p0}, Ljava/util/GregorianCalendar;->set(II)V

    return-object v0
.end method

.method public getDay()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    return p0
.end method

.method public getHour()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    return p0
.end method

.method public getISO8601String()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/adobe/xmp/impl/ISO8601Converter;->render(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMinute()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    return p0
.end method

.method public getMonth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    return p0
.end method

.method public getNanoSecond()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    return p0
.end method

.method public getSecond()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    return p0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    return-object p0
.end method

.method public getYear()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    return p0
.end method

.method public setDay(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f

    if-le p1, v0, :cond_1

    .line 2
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    goto :goto_0

    .line 3
    :cond_1
    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    :goto_0
    return-void
.end method

.method public setHour(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x17

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    return-void
.end method

.method public setMinute(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x3b

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    return-void
.end method

.method public setMonth(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    if-le p1, v0, :cond_1

    .line 2
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    goto :goto_0

    .line 3
    :cond_1
    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    :goto_0
    return-void
.end method

.method public setNanoSecond(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    return-void
.end method

.method public setSecond(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x3b

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public setYear(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x270f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->getISO8601String()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
