# Project README

This is a dummy project used for testing .gitlab-ci.yml and
.github/workflows/release.yaml so they can mostly be copy pasted as examples in
the official sysand-index.

I test them by having two remotes, gitlab and github, configured to two repo's I
control:

```
git remote -v
github	git@github.com:consideratio/sysand-test-repo (fetch)
github	git@github.com:consideratio/sysand-test-repo (push)
gitlab	git@gitlab.com:sensmetry/individual/erik-sundell/sysand-test-repo (fetch)
gitlab	git@gitlab.com:sensmetry/individual/erik-sundell/sysand-test-repo (push)
```

To test either gitlab / github, I do this:

```shell
REMOTE=github
VERSION=4.0.18

sysand info version --set ${VERSION}
git commit -am "Bump to ${VERSION}"
git tag -a v${VERSION} -m v${VERSION}

git push $REMOTE main refs/tags/v${VERSION}
```

Then visit either below to manually approve the run:
- github: https://github.com/consideRatio/sysand-test-repo/actions
- gitlab: https://gitlab.com/sensmetry/individual/erik-sundell/sysand-test-repo/-/pipelines
