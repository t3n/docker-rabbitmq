FROM rabbitmq:3.7-management-alpine

RUN apk --update --no-cache add wget unzip && \
    wget https://dl.bintray.com/rabbitmq/community-plugins/3.7.x/rabbitmq_delayed_message_exchange/rabbitmq_delayed_message_exchange-20171201-3.7.x.zip && \
    unzip rabbitmq_delayed_message_exchange-20171201-3.7.x.zip && \
    rm rabbitmq_delayed_message_exchange-20171201-3.7.x.zip && \
    mv rabbitmq_delayed_message_exchange-20171201-3.7.x.ez plugins/ && \
    rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange
