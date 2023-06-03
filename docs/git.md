# Git

Git is a version control system that helps you track changes to your code over time. It's like a time machine for your code, allowing you to go back to previous versions of your code and see what changes were made. Git is also a distributed version control system, which means that you can work on your code from multiple computers and share your changes with others.

## Authenticate with GitHub

The most easiet way to authenticate with GitHub is to use `gh` a command line tool to work with GitHub, run the below command.

```sh
gh auth login
````

## Sign commits

You can sign commits and tags locally, to give other people confidence about the origin of a change you have made. If a commit or tag has a GPG, SSH, or S/MIME signature that is cryptographically verifiable, GitHub marks the commit or tag "Verified" or "Partially verified."

### Resources

- [Check for existing GPG keys](https://docs.github.com/en/authentication/managing-commit-signature-verification/checking-for-existing-gpg-keys)
- [Generate a new GPG key](https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key)
- [Add a GPG key to your GitHub account](https://docs.github.com/en/authentication/managing-commit-signature-verification/adding-a-gpg-key-to-your-github-account)
- [Tell Git about your signing key](https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key)
- [Sign commits](https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key)
- [Sign tags](https://docs.github.com/en/authentication/managing-commit-signature-verification/signing-tags)
