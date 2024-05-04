import os
import boto3

client = boto3.client("codebuild")

PROJECT_NAME = os.getenv("PROJECT_NAME")


def handler(event, _):
    response = client.start_build(projectName=PROJECT_NAME)

    return {"code_build": response}
