.class public Lmiuix/module/Dependency;
.super Ljava/lang/Object;
.source "Dependency.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/module/Dependency$Level;
    }
.end annotation


# static fields
.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_INSTALLED:I = 0x2

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_OPTIONAL:I = 0x1


# instance fields
.field public level:Lmiuix/module/Dependency$Level;

.field public name:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevel()Lmiuix/module/Dependency$Level;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/module/Dependency;->level:Lmiuix/module/Dependency$Level;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/module/Dependency;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/module/Dependency;->type:I

    return p0
.end method

.method public setLevel(Lmiuix/module/Dependency$Level;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/module/Dependency;->level:Lmiuix/module/Dependency$Level;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/module/Dependency;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/module/Dependency;->type:I

    return-void
.end method
