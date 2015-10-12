part of kafka;

/// Represents API errors produced by Kafka server.
class KafkaApiError {
  final Map errorCodes = {
    0: 'NoError',
    -1: 'Unknown',
    1: 'OffsetOutOfRange',
    2: 'InvalidMessage',
    3: 'UnknownTopicOrPartition',
    4: 'InvalidMessageSize',
    5: 'LeaderNotAvailable',
    6: 'NotLeaderForPartition',
    7: 'RequestTimedOut',
    8: 'BrokerNotAvailable',
    9: 'ReplicaNotAvailable',
    10: 'MessageSizeTooLarge',
    11: 'StaleControllerEpochCode',
    12: 'OffsetMetadataTooLargeCode',
    14: 'OffsetsLoadInProgressCode',
    15: 'ConsumerCoordinatorNotAvailableCode',
    16: 'NotCoordinatorForConsumerCode',
  };

  final int errorCode;

  String get errorMessage => errorCodes[errorCode];

  KafkaApiError.consumerCoordinatorNotAvailable() : errorCode = 15;

  KafkaApiError.fromErrorCode(this.errorCode);
}
