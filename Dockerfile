FROM registry.access.redhat.com/ubi9/ubi:latest
LABEL name="rhtap/rh-advisories-component"
LABEL cpe="cpe:/a:redhat:rhtap_large_snapshot:1::el9"

RUN dnf install -y python3 && dnf clean all

ARG IMAGE_SIZE_MB=153
RUN dd if=/dev/urandom of=/opt/data.bin bs=1M count=${IMAGE_SIZE_MB} 2>/dev/null

LABEL description="Large snapshot test component"
LABEL konflux.additional-tags="stable"
