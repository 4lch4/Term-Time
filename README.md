# Terminal Customization

> [!IMPORTANT]
> This repo has been archived as it is either no longer needed, I have another repo that serves the same purpose, or I simply don't want to maintain it anymore.
>
> In the case of this repo, I've moved the relevant code to [my dotfiles repo][3].

This repo is home to a collection of configuration files, scripts, etc., for customizing my
terminal environment.

## Pre-requisites

In order for the following installation steps to work properly, you'll need to have the following software installed:

| Name          | Description                                   |
| ------------- | --------------------------------------------- |
| [Homebrew][0] | Used to install the [Taskfile][1] software.   |
| [Taskfile][1] | A modern replacement for [Make][2]/Makefiles. |

## Applying Customizations

Once you have the pre-requisites installed, you can run the following commands to apply my customizations:

```bash
# Clone this repo to your local machine.
git clone git@github.com:4lch4/Term-Time.git

# Change into the cloned repo.
cd Term-Time

# Run the setup task to apply the customizations.
task setup
```

[0]: https://brew.sh
[1]: https://taskfile.dev
[2]: https://www.gnu.org/software/make
[3]: https://github.com/4lch4/Dotfiles
