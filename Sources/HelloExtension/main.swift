import Foundation

struct Request: Decodable { let type: String; let protocolVersion: Int; let requestID: String }
struct Response: Encodable {
    let type = "hello"
    let protocolVersion = 1
    let requestID: String
    let message = "Hello Notch"
    let title = "Hello Notch"
    let subtitle = "独立进程扩展已连接 · 本地开发包"
    let progress = 0.65
}
let decoder = JSONDecoder(), encoder = JSONEncoder()
while let line = readLine() {
    guard line.utf8.count <= 65536, let data = line.data(using: .utf8),
          let request = try? decoder.decode(Request.self, from: data), request.protocolVersion == 1 else { break }
    if request.type == "stop" { break }
    guard request.type == "hello" else { continue }
    if let output = try? encoder.encode(Response(requestID: request.requestID)) {
        FileHandle.standardOutput.write(output)
        FileHandle.standardOutput.write(Data([10]))
    }
}
