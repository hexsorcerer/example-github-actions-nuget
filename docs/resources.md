# Resources
[Automatic token authentication](https://docs.github.com/en/actions/security-guides/automatic-token-authentication)

Talks about the GITHUB_TOKEN, shows how to use it in some examples, and provides
a list of all the permissions it can be given.

[Cover GITHUB_TOKEN permissions](https://github.com/semantic-release/semantic-release/issues/2469#issuecomment-1158013884)

Contains some guidance on what permissions the token needs for semantic-release
to work.

[apiint.nugettest.org service index](https://apiint.nugettest.org/v3/index.json)
The service index for the NuGet integration environment. This was surprisingly
hard to find, I couldn't find it listed on the site anywhere and several posts
online had other addresses that were just wrong.

Note that this is a totally separate site from
[nuget.org](https://www.nuget.org) so you'll need a separate API key also.

[NuGet.org frequently-asked questions](https://learn.microsoft.com/en-us/nuget/nuget-org/nuget-org-faq)
This is where I found reference to [nugettest.org](https://int.nugettest.org/)
along with the correct service index. Also has quite a bit of information about
working with NuGet.org as a package publisher.

[Quickstart: Create and publish a package with the dotnet CLI](https://learn.microsoft.com/en-us/nuget/quickstart/create-and-publish-a-package-using-the-dotnet-cli)

Also has a lot of info about publishing nuget packages, but from the local dev
perspective.

[dotnet nuget push](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-nuget-push)

Reference for the command, shows all the various options and syntax. Note that I
noticed some possible ordering issues with the options, when I had ```--api-key```
before ```--source``` I had issues, and after switching them around so
```--source``` came first, it started working.

[Triggering a workflow](https://docs.github.com/en/actions/using-workflows/triggering-a-workflow)

Shows how to kick off github actions with repository events.

[Encrypted secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets)

Shows all about encrypted secrets in github workflows. Note the 3 different
types of secrets, I got hung up on this for a little bit. If you make a
repository secret it's available to all jobs, but if you make an environment
secret, a job has to set itself to be in that environment. This detail didn't
jump out to me at first.

[dotnet nuget add source](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-nuget-add-source)

Reference for the command, including options and syntax.

[dotnet nuget push](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-nuget-push)

Reference for the command, including options and syntax.

[dotnet build](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-build)

Reference for the command, including options and syntax.

[actions/upload-artifact](https://github.com/actions/upload-artifact)

Used to share the output of a job with other jobs.

[Publish NuGet packages](https://learn.microsoft.com/en-us/nuget/nuget-org/publish-a-package)

Yet another page about publishing nuget packages.

[Variables](https://docs.github.com/en/actions/learn-github-actions/variables)

All about variables in github actions.

[publish-nuget](https://github.com/brandedoutcast/publish-nuget)

An archived action that apparently used to be the best one, but the devs had to
let it go due to time constraints.

[How to push nuget package in GitHub actions](https://stackoverflow.com/questions/57889719/how-to-push-nuget-package-in-github-actions)

Helped me figure out some stuff along the way.

