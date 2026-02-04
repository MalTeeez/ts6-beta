FROM teamspeaksystems/teamspeak6-server:v6.0.0-beta8

USER root
RUN apt-get update && apt-get install --no-install-recommends -y libc6
USER 9987

COPY ./libfaketime/src/libfaketime.so.1 /usr/lib/x86_64-linux-gnu/libfaketime.so.1
COPY --chmod=+x ./entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]