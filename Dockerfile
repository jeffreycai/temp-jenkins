FROM alpine:latest

COPY helloworld.txt ~/helloworld.txt
CMD ["/bin/cat", "~/helloworld.txt" ] 