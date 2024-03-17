
namespace FleetAPI;

public class LambdaResponse {
    public int StatusCode {get;set;}
    public string StatusDescription {get;set;}
    public IDictionary<string, string> Headers {get;set;}
    public string Body {get;set;}
    public bool isBase64Encoded { get; set; }
}