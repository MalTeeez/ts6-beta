FROM teamspeaksystems/teamspeak6-server:v6.0.0-beta8

USER root
RUN apt-get update && apt-get install --no-install-recommends -y faketime
USER 9987

COPY --chmod=+x ./entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]