# Resources
## Official Documentation
[Workflow syntax for GitHub Actions](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions)

[Variables](https://docs.github.com/en/actions/learn-github-actions/variables)

All about variables in github actions.

[Triggering a workflow](https://docs.github.com/en/actions/using-workflows/triggering-a-workflow)

Shows how to kick off github actions with repository events.

[Events that trigger workflows](https://docs.github.com/en/actions/using-workflows/events-that-trigger-workflows)

[Workflow commands for GitHub Actions](https://docs.github.com/en/actions/using-workflows/workflow-commands-for-github-actions)

[Sharing a variable between jobs](https://github.com/orgs/community/discussions/26313)

This is where I figured out how to pass files between jobs.

[Defining outputs for jobs](https://docs.github.com/en/actions/using-jobs/defining-outputs-for-jobs)

Shows how to write to the $GITHUB_OUTPUT variable to pass data between jobs.

[Encrypted secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets)

Shows all about encrypted secrets in github workflows. Note the 3 different
types of secrets, I got hung up on this for a little bit. If you make a
repository secret it's available to all jobs, but if you make an environment
secret, a job has to set itself to be in that environment. This detail didn't
jump out to me at first.

[Automatic token authentication](https://docs.github.com/en/actions/security-guides/automatic-token-authentication)

Talks about the GITHUB_TOKEN, shows how to use it in some examples, and provides
a list of all the permissions it can be given.

[Creating a composite action](https://docs.github.com/en/actions/creating-actions/creating-a-composite-action)

## Actions
[actions/checkout](https://github.com/actions/checkout)

[actions/upload-artifact](https://github.com/actions/upload-artifact)

Used to share the output of a job with other jobs.

[publish-nuget](https://github.com/brandedoutcast/publish-nuget)

An archived action that apparently used to be the best one, but the devs had to
let it go due to time constraints.

## Microsoft Learn

[dotnet nuget add source](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-nuget-add-source)

Reference for the command, including options and syntax.

[dotnet build](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-build)

Reference for the command, including options and syntax.

[dotnet nuget push](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-nuget-push)

Reference for the command, shows all the various options and syntax. Note that I
noticed some possible ordering issues with the options, when I had ```--api-key```
before ```--source``` I had issues, and after switching them around so
```--source``` came first, it started working.

[Create a NuGet package with the dotnet CLI](https://learn.microsoft.com/en-us/nuget/create-packages/creating-a-package-dotnet-cli)

[NuGet.org frequently-asked questions](https://learn.microsoft.com/en-us/nuget/nuget-org/nuget-org-faq)

This is where I found reference to [nugettest.org](https://int.nugettest.org/)
along with the correct service index. Also has quite a bit of information about
working with NuGet.org as a package publisher.

[Publish NuGet packages](https://learn.microsoft.com/en-us/nuget/nuget-org/publish-a-package)

Yet another page about publishing nuget packages.

## Environments

[NuGet integration environment](https://int.nugettest.org/)

You can push packages here to test.

[apiint.nugettest.org service index](https://apiint.nugettest.org/v3/index.json)
The service index for the NuGet integration environment. This was surprisingly
hard to find, I couldn't find it listed on the site anywhere and several posts
online had other addresses that were just wrong.

Note that this is a totally separate site from
[nuget.org](https://www.nuget.org) so you'll need a separate API key also.

## Youtube

[GitHub Actions Tutorial | From Zero to Hero in 90 minutes (Environments, Secrets, Runners, etc)](https://youtu.be/TLB5MY9BBa4)

## stackoverflow

[GitHub Actions to use variables set from shell](https://stackoverflow.com/questions/68381640/github-actions-to-use-variables-set-from-shell)

[How to push nuget package in GitHub actions](https://stackoverflow.com/questions/57889719/how-to-push-nuget-package-in-github-actions)

Helped me figure out some stuff along the way.

[Using Secrets in Composite Actions Github](https://stackoverflow.com/questions/70098241/using-secrets-in-composite-actions-github)

Confirmed that passing secrets to actions through inputs is the correct way to
handle the situation (I wasn't sure at first).

## semantic-release

[Cover GITHUB_TOKEN permissions](https://github.com/semantic-release/semantic-release/issues/2469#issuecomment-1158013884)

Contains some guidance on what permissions the token needs for semantic-release
to work.
