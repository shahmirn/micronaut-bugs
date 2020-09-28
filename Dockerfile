FROM oracle/graalvm-ce:20.2.0-java8 as graalvm
RUN gu install native-image

COPY . /home/app/feedback-history-svc
WORKDIR /home/app/feedback-history-svc

RUN native-image -cp build/libs/feedback-history-svc-*-all.jar

FROM frolvlad/alpine-glibc
RUN apk update && apk add libstdc++
EXPOSE 8080
COPY --from=graalvm /home/app/feedback-history-svc/feedback-history-svc /app/feedback-history-svc
ENTRYPOINT ["/app/feedback-history-svc"]
