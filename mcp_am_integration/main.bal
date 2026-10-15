import ballerina/mcp;

listener mcp:StreamableHttpListener mcpListener = new (8080);

@mcp:StreamableHttpServiceConfig {info: {name: "MCP to AM proxy", version: "1.0.0"}}
service mcp:StreamableHttpService /mcp on mcpListener {
    remote function ToolNo1() returns string {
        return "Testing first tool";
    }

}
