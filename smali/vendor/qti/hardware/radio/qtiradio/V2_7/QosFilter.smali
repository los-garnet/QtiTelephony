.class public final Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;
.super Ljava/lang/Object;
.source "QosFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;,
        Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$Ipv6FlowLabel;,
        Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$IpsecSpi;
    }
.end annotation


# instance fields
.field public direction:B

.field public flowLabel:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$Ipv6FlowLabel;

.field public localAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public localPort:Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;

.field public precedence:I

.field public protocol:B

.field public remoteAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public remotePort:Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;

.field public spi:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$IpsecSpi;

.field public tos:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->localAddresses:Ljava/util/ArrayList;

    .line 626
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    .line 630
    new-instance v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->localPort:Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;

    .line 631
    new-instance v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->remotePort:Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;

    const/4 v0, 0x0

    .line 635
    iput-byte v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->protocol:B

    .line 639
    new-instance v1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->tos:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;

    .line 643
    new-instance v1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$Ipv6FlowLabel;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$Ipv6FlowLabel;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->flowLabel:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$Ipv6FlowLabel;

    .line 647
    new-instance v1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$IpsecSpi;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$IpsecSpi;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->spi:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$IpsecSpi;

    .line 651
    iput-byte v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->direction:B

    .line 657
    iput v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->precedence:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 667
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;

    if-eq v2, v3, :cond_2

    return v1

    .line 670
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;

    .line 671
    iget-object v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->localAddresses:Ljava/util/ArrayList;

    iget-object v3, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->localAddresses:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 674
    :cond_3
    iget-object v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    iget-object v3, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 677
    :cond_4
    iget-object v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->localPort:Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;

    iget-object v3, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->localPort:Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 680
    :cond_5
    iget-object v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->remotePort:Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;

    iget-object v3, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->remotePort:Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 683
    :cond_6
    iget-byte v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->protocol:B

    iget-byte v3, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->protocol:B

    if-eq v2, v3, :cond_7

    return v1

    .line 686
    :cond_7
    iget-object v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->tos:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;

    iget-object v3, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->tos:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 689
    :cond_8
    iget-object v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->flowLabel:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$Ipv6FlowLabel;

    iget-object v3, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->flowLabel:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$Ipv6FlowLabel;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 692
    :cond_9
    iget-object v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->spi:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$IpsecSpi;

    iget-object v3, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->spi:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$IpsecSpi;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 695
    :cond_a
    iget-byte v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->direction:B

    iget-byte v3, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->direction:B

    if-eq v2, v3, :cond_b

    return v1

    .line 698
    :cond_b
    iget p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->precedence:I

    iget p1, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->precedence:I

    if-eq p0, p1, :cond_c

    return v1

    :cond_c
    return v0
.end method

.method public final hashCode()I
    .locals 11

    .line 706
    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->localAddresses:Ljava/util/ArrayList;

    .line 707
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    .line 708
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->localPort:Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;

    .line 709
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->remotePort:Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;

    .line 710
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-byte v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->protocol:B

    .line 711
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->tos:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;

    .line 712
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->flowLabel:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$Ipv6FlowLabel;

    .line 713
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->spi:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$IpsecSpi;

    .line 714
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-byte v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->direction:B

    .line 715
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->precedence:I

    .line 716
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    .line 706
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-wide/16 v1, 0x8

    add-long v1, p3, v1

    .line 776
    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    mul-int/lit8 v1, v11, 0x10

    int-to-long v2, v1

    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const/4 v8, 0x1

    move-object/from16 v1, p1

    move-wide/from16 v6, p3

    .line 777
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v12

    .line 781
    iget-object v1, v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->localAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v13, 0x0

    move v14, v13

    :goto_0
    if-ge v14, v11, :cond_0

    .line 783
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    mul-int/lit8 v1, v14, 0x10

    int-to-long v2, v1

    .line 784
    invoke-virtual {v12, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v15

    .line 787
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    .line 788
    invoke-virtual {v12}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    int-to-long v6, v1

    const/4 v8, 0x0

    move-object/from16 v1, p1

    .line 786
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 791
    iget-object v1, v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->localAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x10

    add-long v6, p3, v1

    const-wide/16 v1, 0x18

    add-long v1, p3, v1

    .line 795
    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    mul-int/lit8 v1, v11, 0x10

    int-to-long v2, v1

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const/4 v8, 0x1

    move-object/from16 v1, p1

    .line 796
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v12

    .line 800
    iget-object v1, v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_1
    if-ge v13, v11, :cond_1

    .line 802
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    mul-int/lit8 v1, v13, 0x10

    int-to-long v2, v1

    .line 803
    invoke-virtual {v12, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v14

    .line 806
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    .line 807
    invoke-virtual {v12}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    int-to-long v6, v1

    const/4 v8, 0x0

    move-object/from16 v1, p1

    .line 805
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 810
    iget-object v1, v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 813
    :cond_1
    iget-object v1, v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->localPort:Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;

    const-wide/16 v2, 0x20

    add-long v2, p3, v2

    invoke-virtual {v1, v9, v10, v2, v3}, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 814
    iget-object v1, v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->remotePort:Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;

    const-wide/16 v2, 0x2c

    add-long v2, p3, v2

    invoke-virtual {v1, v9, v10, v2, v3}, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v1, 0x38

    add-long v1, p3, v1

    .line 815
    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v1

    iput-byte v1, v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->protocol:B

    .line 816
    iget-object v1, v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->tos:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;

    const-wide/16 v2, 0x39

    add-long v2, p3, v2

    invoke-virtual {v1, v9, v10, v2, v3}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 817
    iget-object v1, v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->flowLabel:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$Ipv6FlowLabel;

    const-wide/16 v2, 0x3c

    add-long v2, p3, v2

    invoke-virtual {v1, v9, v10, v2, v3}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$Ipv6FlowLabel;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 818
    iget-object v1, v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->spi:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$IpsecSpi;

    const-wide/16 v2, 0x44

    add-long v2, p3, v2

    invoke-virtual {v1, v9, v10, v2, v3}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$IpsecSpi;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v1, 0x4c

    add-long v1, p3, v1

    .line 819
    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v1

    iput-byte v1, v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->direction:B

    const-wide/16 v1, 0x50

    add-long v1, p3, v1

    .line 820
    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->precedence:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 722
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    const-string v1, ".localAddresses = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->localAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 725
    const-string v1, ", .remoteAddresses = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 727
    const-string v1, ", .localPort = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->localPort:Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 729
    const-string v1, ", .remotePort = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->remotePort:Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 731
    const-string v1, ", .protocol = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    iget-byte v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->protocol:B

    invoke-static {v1}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosProtocol;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    const-string v1, ", .tos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->tos:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 735
    const-string v1, ", .flowLabel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->flowLabel:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$Ipv6FlowLabel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 737
    const-string v1, ", .spi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->spi:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$IpsecSpi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 739
    const-string v1, ", .direction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    iget-byte v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->direction:B

    invoke-static {v1}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilterDirection;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    const-string v1, ", .precedence = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    iget p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->precedence:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 743
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
