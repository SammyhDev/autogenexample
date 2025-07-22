import autogen

# Basic AutoGen agent demo

def main():
    # Create a simple agent
    agent = autogen.Agent(
        name="DemoAgent",
        llm_config={
            "model": "gpt-3.5-turbo",  # Replace with your model
            "api_key": "YOUR_OPENAI_API_KEY"  # Replace with your API key
        }
    )

    # Run a simple task
    result = agent.run("Say hello!")
    print("Agent response:", result)

if __name__ == "__main__":
    main()
