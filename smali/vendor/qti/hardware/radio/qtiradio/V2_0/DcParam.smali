.class public final Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;
.super Ljava/lang/Object;
.source "DcParam.java"


# instance fields
.field public dcnr:I

.field public endc:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->endc:I

    .line 6
    iput v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->dcnr:I

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

    .line 16
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;

    if-eq v2, v3, :cond_2

    return v1

    .line 19
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;

    .line 20
    iget v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->endc:I

    iget v3, p1, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->endc:I

    if-eq v2, v3, :cond_3

    return v1

    .line 23
    :cond_3
    iget p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->dcnr:I

    iget p1, p1, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->dcnr:I

    if-eq p0, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 31
    iget v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->endc:I

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->dcnr:I

    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 31
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 2

    .line 76
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->endc:I

    const-wide/16 v0, 0x4

    add-long/2addr p3, v0

    .line 77
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->dcnr:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x8

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 50
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, ".endc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->endc:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/EndcAvailableType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", .dcnr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->dcnr:I

    invoke-static {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/RestrictDcnrType;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
