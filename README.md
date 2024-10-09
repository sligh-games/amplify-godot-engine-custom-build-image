## AWS Amplify for Godot Engine - Custom Build Image

This project contains to docker files to create a custom build image to build and export Godot Engine games for all supported platforms.

## Wiki

The [Wiki](https://github.com/aws-samples/amplify-godot-engine/wiki) contains everything you want to know about getting started with AWS Amplify with the Godot Engine.

## Versions

### Latest

| Version | Image |
| --- | --- | 
| [4.3](https://godotengine.org/download/archive/4.3-stable) | [amplify-godot-engine/4.3]() |

### Stable

| Version | Image |
| --- | --- | 
| [4.2.2](https://godotengine.org/download/archive/4.2.2-stable) | [amplify-godot-engine/4.2.2]() |
| [4.2.1](https://godotengine.org/download/archive/4.2.1-stable) | [amplify-godot-engine/4.2.1]() |
| [4.2](https://godotengine.org/download/archive/4.2-stable) | [amplify-godot-engine/4.2]() |

### Development

| Version | Image |
| --- | --- | 
| [4.4-dev3](https://godotengine.org/download/archive/4.4-dev3) | [amplify-godot-engine/4.4]() |

### Instructions

1. Update GODOT_ENGINE_VERSION in the buildspec.yml
    ```
    version: 0.2

    phases:
    pre_build:
        commands:
        - GODOT_IMAGE_NAME=amplify-godot-engine
        - GODOT_VERSION=4.4-dev3
        - echo Logging in to Amazon ECR...
        - aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws
    ...
    ```
2. Commit the new version of the buildspec.yml
    ```
    git add -A
    git commit -m "bump godot version to 4.4-dev3"
    ```
3. Create a new version branch. Do not create a branch for each Godot Engine patch version.
    ```
    git branch 4.4
    ```
4. Push the new branch to GitHub
    ```
    git push --set-upstream origin 4.4
    ```
5. Push the new branch to CodeCommit
    ```
    git push --set-upstream codecommit 4.4
    ```

## Security

See [CONTRIBUTING](CONTRIBUTING.md#security-issue-notifications) for more information.

## License

This library is licensed under the MIT-0 License. See the [LICENSE](LICENSE.md) file.

## Third Party Licenses

See [THIRD_PARTY_LICENSES](THIRD_PARTY_LICENSES.md) for more information.
