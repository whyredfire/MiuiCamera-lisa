.class public final Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IotLocalControlServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$StopOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stop"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;",
        "Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$StopOrBuilder;"
    }
.end annotation


# static fields
.field public static final AID_FIELD_NUMBER:I = 0x1

.field public static final APPID_FIELD_NUMBER:I = 0x2

.field public static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

.field public static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVICETOKEN_FIELD_NUMBER:I = 0x3


# instance fields
.field public aid_:I

.field public appId_:Ljava/lang/String;

.field public serviceToken_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    invoke-direct {v0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;-><init>()V

    .line 2
    sput-object v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    .line 3
    const-class v1, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->appId_:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->serviceToken_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$10600()Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    return-object v0
.end method

.method public static synthetic access$10700(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->setAid(I)V

    return-void
.end method

.method public static synthetic access$10800(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->clearAid()V

    return-void
.end method

.method public static synthetic access$10900(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->setAppId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$11000(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->clearAppId()V

    return-void
.end method

.method public static synthetic access$11100(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->setAppIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$11200(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->setServiceToken(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$11300(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->clearServiceToken()V

    return-void
.end method

.method public static synthetic access$11400(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->setServiceTokenBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAid()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->aid_:I

    return-void
.end method

.method private clearAppId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->getDefaultInstance()Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->appId_:Ljava/lang/String;

    return-void
.end method

.method private clearServiceToken()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->getDefaultInstance()Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->getServiceToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->serviceToken_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->aid_:I

    return-void
.end method

.method private setAppId(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->appId_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method private setAppIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->appId_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 3
    throw p0
.end method

.method private setServiceToken(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->serviceToken_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method private setServiceTokenBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->serviceToken_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 3
    throw p0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 p2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p2

    .line 3
    :pswitch_1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    .line 5
    const-class p1, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    monitor-enter p1

    .line 6
    :try_start_0
    sget-object p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    .line 7
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->PARSER:Lcom/google/protobuf/Parser;

    .line 9
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    .line 10
    :pswitch_3
    sget-object p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    return-object p0

    :pswitch_4
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "aid_"

    aput-object p3, p0, p2

    const-string p2, "appId_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "serviceToken_"

    aput-object p2, p0, p1

    .line 11
    sget-object p1, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0002\u0208\u0003\u0208"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 12
    :pswitch_5
    new-instance p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop$Builder;-><init>(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$1;)V

    return-object p0

    .line 13
    :pswitch_6
    new-instance p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->aid_:I

    return p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->appId_:Ljava/lang/String;

    return-object p0
.end method

.method public getAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->appId_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getServiceToken()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->serviceToken_:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$Stop;->serviceToken_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method
