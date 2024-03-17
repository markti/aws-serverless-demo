
namespace FleetAPI;

public class LambdaRequest
{
    public string requestContext { get; set; }
    public string httpMethod { get; set; }
    public string path { get; set; }
    public string queryStringParameters { get; set; }
    public IDictionary<string, string> headers { get; set; }
    public bool isBase64Encoded { get; set; }
    public string body { get; set; }
}