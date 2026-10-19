# Hello Notch Extension

Separate Swift executable demonstrating the Notch development protocol. No network, account, filesystem scanning or system permissions are requested by its code.

On macOS: `bash Tools/build-fixture.sh`, then import the output directory into NotchHost Development. It is a locally built developer fixture, not a signed/notarized public installation package.

Input: JSON line with type `hello`, protocolVersion `1`, requestID string. Output: same requestID and type/protocol plus message/title/subtitle/progress. EOF ends the process. Host termination stops it.

CI builds and validates the real response. It does not publish or sign releases. Licensed under MIT; see `LICENSE`.
